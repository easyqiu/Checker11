; ModuleID = 'example.bc'
source_filename = "example.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%class.Executor = type { %"class.std::__1::map" }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair.1" }
%"class.std::__1::__tree_end_node" = type { %"class.std::__1::__tree_node_base"* }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8, [7 x i8] }>
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__compressed_pair.1" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"struct.std::__1::__compressed_pair_elem.2" = type { i64 }
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::__tree_node" = type { %"class.std::__1::__tree_node_base.base", %"union.std::__1::__value_type" }
%"class.std::__1::__tree_node_base.base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8 }>
%"union.std::__1::__value_type" = type { %"struct.std::__1::pair" }
%"struct.std::__1::pair" = type { %"class.std::__1::basic_string", %class.Thread* }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.4" }
%"class.std::__1::__compressed_pair.4" = type { %"struct.std::__1::__compressed_pair_elem.5" }
%"struct.std::__1::__compressed_pair_elem.5" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%class.Thread = type { %"class.std::__1::basic_string", %"class.std::__1::vector", %"class.std::__1::vector" }
%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { %class.Action**, %class.Action**, %"class.std::__1::__compressed_pair.11" }
%class.Action = type <{ i32, i32, i8*, i32, [4 x i8], i64, %class.Action*, %class.Action*, i8, [7 x i8] }>
%"class.std::__1::__compressed_pair.11" = type { %"struct.std::__1::__compressed_pair_elem.12" }
%"struct.std::__1::__compressed_pair_elem.12" = type { %class.Action** }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::basic_stringstream" = type { %"class.std::__1::basic_iostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_iostream.base" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_ostream.base" }
%"class.std::__1::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::__1::basic_ostream.base" = type { i32 (...)** }
%"class.std::__1::basic_stringbuf" = type <{ %"class.std::__1::basic_streambuf", %"class.std::__1::basic_string", i8*, i32, [4 x i8] }>
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ofstream" = type { %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_filebuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_filebuf" = type <{ %"class.std::__1::basic_streambuf", i8*, i8*, i8*, [8 x i8], i64, i8*, i64, %struct.__sFILE*, %"class.std::__1::codecvt"*, %union.__mbstate_t, %union.__mbstate_t, i32, i32, i8, i8, i8, [5 x i8] }>
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%"class.std::__1::codecvt" = type { %"class.std::__1::locale::facet" }
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%union.__mbstate_t = type { i64, [120 x i8] }
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32, [4 x i8] }>
%"class.std::__1::basic_iostream" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_ios.base" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.6, [23 x i8] }
%union.anon.6 = type { i8 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%"class.std::__1::fpos" = type { %union.__mbstate_t, i64 }
%"class.std::bad_cast" = type { %"class.std::exception" }
%"class.std::exception" = type { i32 (...)** }
%"class.std::__1::basic_istream" = type { i32 (...)**, i64, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::__basic_string_common" = type { i8 }
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@exe = local_unnamed_addr global %class.Executor* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"thread create: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"thread begin: \00", align 1
@data1 = local_unnamed_addr global i32 0, align 4
@data2 = local_unnamed_addr global i32 0, align 4
@x = global { i32 } zeroinitializer, align 4
@y = global { i32 } zeroinitializer, align 4
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"data: \00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"example.cpp\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"!(data1 == 1 && data2 == 1)\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Generate a new Executor\0A\00", align 1
@_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 416 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_ofstream"*)* @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_ofstream"*)* @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -416 to i8*), i8* inttoptr (i64 -416 to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_ofstream"*)* @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_ofstream"*)* @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev to i8*)] }, align 8
@_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = linkonce_odr unnamed_addr constant [4 x i8*] [i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i32 0, inrange i32 1, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i32 0, inrange i32 1, i32 3) to i8*)]
@_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 416 to i8*), i8* null, i8* bitcast (i8** @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -416 to i8*), i8* inttoptr (i64 -416 to i8*), i8* bitcast (i8** @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev to i8*)] }
@_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = linkonce_odr constant [48 x i8] c"NSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE\00"
@_ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @_ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE to i8*) }
@_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE = linkonce_odr unnamed_addr constant { [16 x i8*] } { [16 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_filebuf"*)* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_filebuf"*)* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_filebuf"*, %"class.std::__1::locale"*)* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE to i8*), i8* bitcast (%"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_filebuf"*, i8*, i64)* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl to i8*), i8* bitcast (void (%"class.std::__1::fpos"*, %"class.std::__1::basic_filebuf"*, i64, i32, i32)* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj to i8*), i8* bitcast (void (%"class.std::__1::fpos"*, %"class.std::__1::basic_filebuf"*, %"class.std::__1::fpos"*, i32)* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj to i8*), i8* bitcast (i32 (%"class.std::__1::basic_filebuf"*)* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl to i8*), i8* bitcast (i32 (%"class.std::__1::basic_filebuf"*)* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv to i8*), i8* bitcast (i32 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv to i8*), i8* bitcast (i32 (%"class.std::__1::basic_filebuf"*, i32)* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl to i8*), i8* bitcast (i32 (%"class.std::__1::basic_filebuf"*, i32)* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi to i8*)] }, align 8
@_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE = linkonce_odr constant [47 x i8] c"NSt3__113basic_filebufIcNS_11char_traitsIcEEEE\00"
@_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE to i8*) }
@_ZNSt3__17codecvtIcc11__mbstate_tE2idE = external global %"class.std::__1::locale::id", align 8
@_ZTISt8bad_cast = external constant i8*
@_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 112 to i8*), i8* inttoptr (i64 -16 to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -128 to i8*), i8* inttoptr (i64 -128 to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*)] }, align 8
@_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant [10 x i8*] [i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i32 0, inrange i32 1, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE, i32 0, inrange i32 1, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 2, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 1, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 2, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 1, i32 3) to i8*)]
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null, i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 112 to i8*), i8* inttoptr (i64 -16 to i8*), i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -128 to i8*), i8* inttoptr (i64 -128 to i8*), i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev to i8*)] }
@_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null, i8* bitcast (i8** @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -128 to i8*), i8* inttoptr (i64 -128 to i8*), i8* bitcast (i8** @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev to i8*)] }
@_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 112 to i8*), i8* null, i8* bitcast (i8** @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -112 to i8*), i8* inttoptr (i64 -112 to i8*), i8* bitcast (i8** @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev to i8*)] }
@_ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant [69 x i8] c"NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE\00"
@_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @_ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*) }
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant { [16 x i8*] } { [16 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringbuf"*)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringbuf"*)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_streambuf"*, %"class.std::__1::locale"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE to i8*), i8* bitcast (%"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl to i8*), i8* bitcast (void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to i8*), i8* bitcast (void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, %"class.std::__1::fpos"*, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj to i8*), i8* bitcast (i32 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl to i8*), i8* bitcast (i32 (%"class.std::__1::basic_stringbuf"*)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to i8*), i8* bitcast (i32 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv to i8*), i8* bitcast (i32 (%"class.std::__1::basic_stringbuf"*, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl to i8*), i8* bitcast (i32 (%"class.std::__1::basic_stringbuf"*, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to i8*)] }, align 8
@_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant [66 x i8] c"NSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE\00"
@_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE to i8*) }
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1

; Function Attrs: ssp uwtable
define void @generateExecutor() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call i8* @_Znwm(i64 24) #13
  %__left_.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %call, i64 8
  tail call void @llvm.memset.p0i8.i64(i8* %__left_.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 16, i32 8, i1 false) #14
  %0 = bitcast i8* %call to i8**
  store i8* %__left_.i.i.i.i.i.i.i.i.i.i.i, i8** %0, align 8, !tbaa !2
  %call1.i3.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 24)
          to label %invoke.cont unwind label %lpad.body

invoke.cont:                                      ; preds = %entry
  store i8* %call, i8** bitcast (%class.Executor** @exe to i8**), align 8, !tbaa !2
  ret void

lpad.body:                                        ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %__tree_.i.i.i.i = bitcast i8* %call to %"class.std::__1::__tree"*
  %2 = bitcast i8* %__left_.i.i.i.i.i.i.i.i.i.i.i to %"class.std::__1::__tree_node"**
  %3 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %2, align 8, !tbaa !6
  tail call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEP6ThreadEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(%"class.std::__1::__tree"* nonnull %__tree_.i.i.i.i, %"class.std::__1::__tree_node"* %3) #14
  tail call void @_ZdlPv(i8* nonnull %call) #15
  resume { i8*, i32 } %1
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #2

; Function Attrs: ssp uwtable
define void @checker_thread_create(%struct._opaque_pthread_t* %id1.coerce, %struct._opaque_pthread_t* %id2.coerce) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i.i = alloca %"class.std::__1::basic_string", align 8
  %ss = alloca %"class.std::__1::basic_stringstream", align 16
  %outfile = alloca %"class.std::__1::basic_ofstream", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp7 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp30 = alloca %"class.std::__1::basic_string", align 8
  %0 = bitcast %"class.std::__1::basic_stringstream"* %ss to i8*
  call void @llvm.lifetime.start(i64 280, i8* nonnull %0) #14
  %1 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2
  %2 = bitcast %"class.std::__1::basic_ios.base"* %1 to %"class.std::__1::basic_ios"*
  %3 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %3, align 16, !tbaa !8
  %4 = bitcast %"class.std::__1::basic_stringstream"* %ss to %"class.std::__1::basic_iostream"*
  %__sb_.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1
  %5 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0
  %6 = bitcast %"class.std::__1::basic_stringstream"* %ss to i64*
  %7 = bitcast %"class.std::__1::basic_ios.base"* %1 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i64 0, inrange i32 1, i64 3) to i64), i64* %7, align 16, !tbaa !8
  %8 = bitcast %"class.std::__1::basic_stringstream"* %ss to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i64 0, inrange i32 0, i64 3) to i64), i64 0>, <2 x i64>* %8, align 16
  %9 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 0
  %10 = bitcast %"class.std::__1::basic_stringbuf"* %__sb_.i to i8*
  invoke void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"* %9, i8* %10)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %entry
  %11 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 0, i32 0
  %12 = getelementptr inbounds %"class.std::__1::basic_ios.base", %"class.std::__1::basic_ios.base"* %1, i64 0, i32 0, i32 0
  %__tie_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 1
  store %"class.std::__1::basic_ostream"* null, %"class.std::__1::basic_ostream"** %__tie_.i.i.i.i, align 8, !tbaa !10
  %__fill_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 2
  store i32 -1, i32* %__fill_.i.i.i.i, align 16, !tbaa !13
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i32 (...)**), i32 (...)*** %11, align 16, !tbaa !8
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i32 (...)**), i32 (...)*** %12, align 16, !tbaa !8
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %3, align 16, !tbaa !8
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"* %5)
          to label %.noexc.i unwind label %lpad6.i

.noexc.i:                                         ; preds = %invoke.cont.i
  %13 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !8
  %__str_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1
  %14 = bitcast %"class.std::__1::basic_string"* %__str_.i.i.i to i8*
  %__mode_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 3
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 32, i32 8, i1 false)
  store i32 24, i32* %__mode_.i.i.i, align 8, !tbaa !14
  %15 = bitcast %"class.std::__1::basic_string"* %ref.tmp.i.i.i to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %15) #14
  call void @llvm.memset.p0i8.i64(i8* nonnull %15, i8 0, i64 24, i32 8, i1 false) #14
  invoke void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(%"class.std::__1::basic_stringbuf"* nonnull %__sb_.i, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %ref.tmp.i.i.i)
          to label %invoke.cont.i.i.i unwind label %lpad.i.i.i

invoke.cont.i.i.i:                                ; preds = %.noexc.i
  %16 = load i8, i8* %15, align 8, !tbaa !18
  %17 = and i8 %16, 1
  %tobool.i.i.i9.i.i.i = icmp eq i8 %17, 0
  br i1 %tobool.i.i.i9.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit, label %if.then.i.i11.i.i.i

if.then.i.i11.i.i.i:                              ; preds = %invoke.cont.i.i.i
  %__data_.i.i.i10.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %18 = load i8*, i8** %__data_.i.i.i10.i.i.i, align 8, !tbaa !19
  call void @_ZdlPv(i8* %18) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit

lpad.i.i.i:                                       ; preds = %.noexc.i
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = load i8, i8* %15, align 8, !tbaa !18
  %21 = and i8 %20, 1
  %tobool.i.i.i4.i.i.i = icmp eq i8 %21, 0
  br i1 %tobool.i.i.i4.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i, label %if.then.i.i6.i.i.i

if.then.i.i6.i.i.i:                               ; preds = %lpad.i.i.i
  %__data_.i.i.i5.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %22 = load i8*, i8** %__data_.i.i.i5.i.i.i, align 8, !tbaa !19
  call void @_ZdlPv(i8* %22) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i: ; preds = %if.then.i.i6.i.i.i, %lpad.i.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %15) #14
  %23 = load i8, i8* %14, align 8, !tbaa !18
  %24 = and i8 %23, 1
  %tobool.i.i.i.i.i.i = icmp eq i8 %24, 0
  br i1 %tobool.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i
  %__data_.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %25 = load i8*, i8** %__data_.i.i.i.i.i.i, align 8, !tbaa !19
  call void @_ZdlPv(i8* %25) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %5) #14
  br label %lpad6.body.i

lpad.i:                                           ; preds = %entry
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = extractvalue { i8*, i32 } %26, 1
  br label %ehcleanup.i

lpad6.i:                                          ; preds = %invoke.cont.i
  %29 = landingpad { i8*, i32 }
          cleanup
  br label %lpad6.body.i

lpad6.body.i:                                     ; preds = %lpad6.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i
  %eh.lpad-body.i = phi { i8*, i32 } [ %29, %lpad6.i ], [ %19, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i ]
  %30 = extractvalue { i8*, i32 } %eh.lpad-body.i, 0
  %31 = extractvalue { i8*, i32 } %eh.lpad-body.i, 1
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %4, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  br label %ehcleanup.i

ehcleanup.i:                                      ; preds = %lpad6.body.i, %lpad.i
  %exn.slot.0.i = phi i8* [ %30, %lpad6.body.i ], [ %27, %lpad.i ]
  %ehselector.slot.0.i = phi i32 [ %31, %lpad6.body.i ], [ %28, %lpad.i ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %2) #14
  %lpad.val.i = insertvalue { i8*, i32 } undef, i8* %exn.slot.0.i, 0
  %lpad.val8.i = insertvalue { i8*, i32 } %lpad.val.i, i32 %ehselector.slot.0.i, 1
  resume { i8*, i32 } %lpad.val8.i

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit: ; preds = %invoke.cont.i.i.i, %if.then.i.i11.i.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %15) #14
  %add.ptr = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 1
  %32 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to %"class.std::__1::basic_ostream"*
  %33 = bitcast %struct._opaque_pthread_t* %id1.coerce to i8*
  %call.i46 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %32, i8* %33)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit
  %34 = bitcast %"class.std::__1::basic_ofstream"* %outfile to i8*
  call void @llvm.lifetime.start(i64 568, i8* nonnull %34) #14
  %35 = bitcast %"class.std::__1::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %35) #14
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* nonnull sret %ref.tmp, %"class.std::__1::basic_stringbuf"* %__sb_.i)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %36 = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 2
  %37 = bitcast %"class.std::__1::basic_ios.base"* %36 to %"class.std::__1::basic_ios"*
  %38 = bitcast %"class.std::__1::basic_ofstream"* %outfile to %"class.std::__1::basic_ostream"*
  %__sb_.i48 = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 1
  %39 = bitcast %"class.std::__1::basic_ofstream"* %outfile to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i64 0, inrange i32 0, i64 3) to i64), i64* %39, align 8, !tbaa !8
  %40 = bitcast %"class.std::__1::basic_ios.base"* %36 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i64 0, inrange i32 1, i64 3) to i64), i64* %40, align 8, !tbaa !8
  %41 = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 2, i32 0
  %42 = bitcast %"class.std::__1::basic_filebuf"* %__sb_.i48 to i8*
  invoke void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"* %41, i8* %42)
          to label %invoke.cont.i49 unwind label %lpad.i52

invoke.cont.i49:                                  ; preds = %invoke.cont4
  %43 = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 0, i32 0
  %44 = getelementptr inbounds %"class.std::__1::basic_ios.base", %"class.std::__1::basic_ios.base"* %36, i64 0, i32 0, i32 0
  %__tie_.i.i.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 2, i32 1
  store %"class.std::__1::basic_ostream"* null, %"class.std::__1::basic_ostream"** %__tie_.i.i.i, align 8, !tbaa !10
  %__fill_.i.i.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 2, i32 2
  store i32 -1, i32* %__fill_.i.i.i, align 8, !tbaa !13
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 3) to i32 (...)**), i32 (...)*** %43, align 8, !tbaa !8
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %44, align 8, !tbaa !8
  invoke void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_filebuf"* %__sb_.i48)
          to label %invoke.cont5.i unwind label %lpad4.i

invoke.cont5.i:                                   ; preds = %invoke.cont.i49
  %__data_.i.i.i.i.i.i51 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %__file_.i.i.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 1, i32 8
  %45 = load %struct.__sFILE*, %struct.__sFILE** %__file_.i.i.i, align 8, !tbaa !22
  %cmp.i.i.i = icmp eq %struct.__sFILE* %45, null
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i

if.then.i.i.i:                                    ; preds = %invoke.cont5.i
  %46 = load i8, i8* %35, align 8, !tbaa !18
  %47 = and i8 %46, 1
  %tobool.i.i.i.i.i.i50 = icmp eq i8 %47, 0
  %__s.i.i.i.i.i.i = bitcast %"class.std::__1::basic_string"* %ref.tmp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i.i.i, i64 0, i32 1, i64 0
  %48 = load i8*, i8** %__data_.i.i.i.i.i.i51, align 8
  %cond.i.i.i.i.i = select i1 %tobool.i.i.i.i.i.i50, i8* %arrayidx.i.i.i.i.i.i, i8* %48
  %call.i.i13.i = invoke %struct.__sFILE* @"\01_fopen"(i8* %cond.i.i.i.i.i, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
          to label %call.i.i.noexc.i unwind label %lpad7.i

call.i.i.noexc.i:                                 ; preds = %if.then.i.i.i
  store %struct.__sFILE* %call.i.i13.i, %struct.__sFILE** %__file_.i.i.i, align 8, !tbaa !22
  %tobool16.i.i.i = icmp eq %struct.__sFILE* %call.i.i13.i, null
  br i1 %tobool16.i.i.i, label %if.then.i, label %if.then17.i.i.i

if.then17.i.i.i:                                  ; preds = %call.i.i.noexc.i
  %__om_.i.i.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 1, i32 12
  store i32 17, i32* %__om_.i.i.i, align 8, !tbaa !25
  br label %invoke.cont6

if.then.i:                                        ; preds = %call.i.i.noexc.i, %invoke.cont5.i
  %49 = bitcast %"class.std::__1::basic_ofstream"* %outfile to i8**
  %vtable.i = load i8*, i8** %49, align 8, !tbaa !8
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %50 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %50, align 8
  %add.ptr9.i = getelementptr inbounds i8, i8* %34, i64 %vbase.offset.i
  %51 = bitcast i8* %add.ptr9.i to %"class.std::__1::ios_base"*
  %__rdstate_.i.i.i = getelementptr inbounds i8, i8* %add.ptr9.i, i64 32
  %52 = bitcast i8* %__rdstate_.i.i.i to i32*
  %53 = load i32, i32* %52, align 8, !tbaa !26
  %or.i.i.i = or i32 %53, 4
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %51, i32 %or.i.i.i)
          to label %invoke.cont6 unwind label %lpad7.i

lpad.i52:                                         ; preds = %invoke.cont4
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  %56 = extractvalue { i8*, i32 } %54, 1
  br label %lpad5.body

lpad4.i:                                          ; preds = %invoke.cont.i49
  %57 = landingpad { i8*, i32 }
          cleanup
  %58 = extractvalue { i8*, i32 } %57, 0
  %59 = extractvalue { i8*, i32 } %57, 1
  br label %ehcleanup.i55

lpad7.i:                                          ; preds = %if.then.i, %if.then.i.i.i
  %60 = landingpad { i8*, i32 }
          cleanup
  %61 = extractvalue { i8*, i32 } %60, 0
  %62 = extractvalue { i8*, i32 } %60, 1
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* nonnull %__sb_.i48) #14
  br label %ehcleanup.i55

ehcleanup.i55:                                    ; preds = %lpad7.i, %lpad4.i
  %exn.slot.0.i53 = phi i8* [ %61, %lpad7.i ], [ %58, %lpad4.i ]
  %ehselector.slot.0.i54 = phi i32 [ %62, %lpad7.i ], [ %59, %lpad4.i ]
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* nonnull %38, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #14
  br label %lpad5.body

invoke.cont6:                                     ; preds = %if.then.i, %if.then17.i.i.i
  %63 = load i8, i8* %35, align 8, !tbaa !18
  %64 = and i8 %63, 1
  %tobool.i.i.i = icmp eq i8 %64, 0
  br i1 %tobool.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont6
  %65 = load i8*, i8** %__data_.i.i.i.i.i.i51, align 8, !tbaa !19
  call void @_ZdlPv(i8* %65) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont6, %if.then.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %35) #14
  %66 = bitcast %"class.std::__1::basic_string"* %ref.tmp7 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %66) #14
  call void @llvm.memset.p0i8.i64(i8* nonnull %66, i8 0, i64 24, i32 8, i1 false)
  invoke void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(%"class.std::__1::basic_stringbuf"* %__sb_.i, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %ref.tmp7)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  %67 = load i8, i8* %66, align 8, !tbaa !18
  %68 = and i8 %67, 1
  %tobool.i.i.i63 = icmp eq i8 %68, 0
  br i1 %tobool.i.i.i63, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit66, label %if.then.i.i65

if.then.i.i65:                                    ; preds = %invoke.cont11
  %__data_.i.i.i64 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %69 = load i8*, i8** %__data_.i.i.i64, align 8, !tbaa !19
  call void @_ZdlPv(i8* %69) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit66

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit66: ; preds = %invoke.cont11, %if.then.i.i65
  call void @llvm.lifetime.end(i64 24, i8* nonnull %66) #14
  %call1.i67 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 15)
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit66
  %call.i68 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i67, i8* %33)
          to label %invoke.cont20 unwind label %lpad15

invoke.cont20:                                    ; preds = %invoke.cont16
  %call1.i71 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call.i68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1)
          to label %invoke.cont22 unwind label %lpad15

invoke.cont22:                                    ; preds = %invoke.cont20
  %70 = bitcast %struct._opaque_pthread_t* %id2.coerce to i8*
  %call.i73 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i71, i8* %70)
          to label %invoke.cont26 unwind label %lpad15

invoke.cont26:                                    ; preds = %invoke.cont22
  %call1.i76 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call.i73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
          to label %invoke.cont28 unwind label %lpad15

invoke.cont28:                                    ; preds = %invoke.cont26
  %71 = bitcast %"class.std::__1::basic_string"* %ref.tmp30 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %71) #14
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* nonnull sret %ref.tmp30, %"class.std::__1::basic_stringbuf"* %__sb_.i)
          to label %invoke.cont32 unwind label %lpad31

invoke.cont32:                                    ; preds = %invoke.cont28
  %72 = load i8, i8* %71, align 8, !tbaa !18
  %73 = and i8 %72, 1
  %tobool.i.i.i.i = icmp eq i8 %73, 0
  %__data_.i.i.i.i82 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %74 = load i8*, i8** %__data_.i.i.i.i82, align 8
  %__s.i.i.i.i83 = bitcast %"class.std::__1::basic_string"* %ref.tmp30 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i84 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i83, i64 0, i32 1, i64 0
  %cond.i.i.i = select i1 %tobool.i.i.i.i, i8* %arrayidx.i.i.i.i84, i8* %74
  %__size_.i5.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %75 = load i64, i64* %__size_.i5.i.i, align 8
  %conv.i.i.i = zext i8 %72 to i64
  %shr3.i.i.i = lshr i64 %conv.i.i.i, 1
  %cond.i.i = select i1 %tobool.i.i.i.i, i64 %shr3.i.i.i, i64 %75
  %call2.i85 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %38, i8* %cond.i.i.i, i64 %cond.i.i)
          to label %invoke.cont34 unwind label %lpad33

invoke.cont34:                                    ; preds = %invoke.cont32
  %76 = load i8, i8* %71, align 8, !tbaa !18
  %77 = and i8 %76, 1
  %tobool.i.i.i87 = icmp eq i8 %77, 0
  br i1 %tobool.i.i.i87, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit90, label %if.then.i.i89

if.then.i.i89:                                    ; preds = %invoke.cont34
  %78 = load i8*, i8** %__data_.i.i.i.i82, align 8, !tbaa !19
  call void @_ZdlPv(i8* %78) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit90

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit90: ; preds = %invoke.cont34, %if.then.i.i89
  call void @llvm.lifetime.end(i64 24, i8* nonnull %71) #14
  %call39 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(%"class.std::__1::basic_ostream"* nonnull %38)
          to label %invoke.cont38 unwind label %lpad15

invoke.cont38:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit90
  %79 = load %struct.__sFILE*, %struct.__sFILE** %__file_.i.i.i, align 8, !tbaa !22
  %tobool.i.i = icmp eq %struct.__sFILE* %79, null
  br i1 %tobool.i.i, label %if.then.i99, label %if.then.i.i93

if.then.i.i93:                                    ; preds = %invoke.cont38
  %80 = bitcast %"class.std::__1::basic_filebuf"* %__sb_.i48 to i32 (%"class.std::__1::basic_filebuf"*)***
  %vtable.i.i = load i32 (%"class.std::__1::basic_filebuf"*)**, i32 (%"class.std::__1::basic_filebuf"*)*** %80, align 8, !tbaa !8
  %vfn.i.i = getelementptr inbounds i32 (%"class.std::__1::basic_filebuf"*)*, i32 (%"class.std::__1::basic_filebuf"*)** %vtable.i.i, i64 6
  %81 = load i32 (%"class.std::__1::basic_filebuf"*)*, i32 (%"class.std::__1::basic_filebuf"*)** %vfn.i.i, align 8
  %call.i.i92 = invoke i32 %81(%"class.std::__1::basic_filebuf"* nonnull %__sb_.i48)
          to label %invoke.cont.i.i unwind label %_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev.exit21.i.i

invoke.cont.i.i:                                  ; preds = %if.then.i.i93
  %call7.i.i = call i32 @fclose(%struct.__sFILE* nonnull %79)
  %cmp.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.then.i99

_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev.exit21.i.i: ; preds = %if.then.i.i93
  %82 = landingpad { i8*, i32 }
          cleanup
  %call6.i.i.i18.i.i = call i32 @fclose(%struct.__sFILE* nonnull %79)
  br label %lpad15.body

if.then8.i.i:                                     ; preds = %invoke.cont.i.i
  %tobool3.i.i = icmp eq i32 %call.i.i92, 0
  store %struct.__sFILE* null, %struct.__sFILE** %__file_.i.i.i, align 8, !tbaa !22
  br i1 %tobool3.i.i, label %invoke.cont40, label %if.then.i99

if.then.i99:                                      ; preds = %if.then8.i.i, %invoke.cont.i.i, %invoke.cont38
  %83 = bitcast %"class.std::__1::basic_ofstream"* %outfile to i8**
  %vtable.i94 = load i8*, i8** %83, align 8, !tbaa !8
  %vbase.offset.ptr.i95 = getelementptr i8, i8* %vtable.i94, i64 -24
  %84 = bitcast i8* %vbase.offset.ptr.i95 to i64*
  %vbase.offset.i96 = load i64, i64* %84, align 8
  %add.ptr.i = getelementptr inbounds i8, i8* %34, i64 %vbase.offset.i96
  %85 = bitcast i8* %add.ptr.i to %"class.std::__1::ios_base"*
  %__rdstate_.i.i.i97 = getelementptr inbounds i8, i8* %add.ptr.i, i64 32
  %86 = bitcast i8* %__rdstate_.i.i.i97 to i32*
  %87 = load i32, i32* %86, align 8, !tbaa !26
  %or.i.i.i98 = or i32 %87, 4
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %85, i32 %or.i.i.i98)
          to label %invoke.cont40 unwind label %lpad15

invoke.cont40:                                    ; preds = %if.then8.i.i, %if.then.i99
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %39, align 8, !tbaa !8
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %40, align 8, !tbaa !8
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* nonnull %__sb_.i48) #14
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* nonnull %38, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* nonnull %37) #14
  call void @llvm.lifetime.end(i64 568, i8* nonnull %34) #14
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %6, align 16, !tbaa !8
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %7, align 16, !tbaa !8
  %88 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %88, align 16, !tbaa !8
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !8
  %89 = load i8, i8* %14, align 8, !tbaa !18
  %90 = and i8 %89, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %90, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %invoke.cont40
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %91 = load i8*, i8** %__data_.i.i.i.i.i.i.i, align 8, !tbaa !19
  call void @_ZdlPv(i8* %91) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont40, %if.then.i.i.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %5) #14
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %4, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* nonnull %2) #14
  call void @llvm.lifetime.end(i64 280, i8* nonnull %0) #14
  ret void

lpad:                                             ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit
  %92 = landingpad { i8*, i32 }
          cleanup
  %93 = extractvalue { i8*, i32 } %92, 0
  %94 = extractvalue { i8*, i32 } %92, 1
  br label %ehcleanup43

lpad3:                                            ; preds = %invoke.cont
  %95 = landingpad { i8*, i32 }
          cleanup
  %96 = extractvalue { i8*, i32 } %95, 0
  %97 = extractvalue { i8*, i32 } %95, 1
  br label %ehcleanup

lpad5.body:                                       ; preds = %lpad.i52, %ehcleanup.i55
  %exn.slot.1.i = phi i8* [ %exn.slot.0.i53, %ehcleanup.i55 ], [ %55, %lpad.i52 ]
  %ehselector.slot.1.i = phi i32 [ %ehselector.slot.0.i54, %ehcleanup.i55 ], [ %56, %lpad.i52 ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %37) #14
  %98 = load i8, i8* %35, align 8, !tbaa !18
  %99 = and i8 %98, 1
  %tobool.i.i.i105 = icmp eq i8 %99, 0
  br i1 %tobool.i.i.i105, label %ehcleanup, label %if.then.i.i107

if.then.i.i107:                                   ; preds = %lpad5.body
  %__data_.i.i.i106 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %100 = load i8*, i8** %__data_.i.i.i106, align 8, !tbaa !19
  call void @_ZdlPv(i8* %100) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i107, %lpad5.body, %lpad3
  %ehselector.slot.0 = phi i32 [ %97, %lpad3 ], [ %ehselector.slot.1.i, %lpad5.body ], [ %ehselector.slot.1.i, %if.then.i.i107 ]
  %exn.slot.0 = phi i8* [ %96, %lpad3 ], [ %exn.slot.1.i, %lpad5.body ], [ %exn.slot.1.i, %if.then.i.i107 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %35) #14
  br label %ehcleanup43

lpad10:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  %101 = landingpad { i8*, i32 }
          cleanup
  %102 = extractvalue { i8*, i32 } %101, 0
  %103 = extractvalue { i8*, i32 } %101, 1
  %104 = load i8, i8* %66, align 8, !tbaa !18
  %105 = and i8 %104, 1
  %tobool.i.i.i110 = icmp eq i8 %105, 0
  br i1 %tobool.i.i.i110, label %ehcleanup13, label %if.then.i.i112

if.then.i.i112:                                   ; preds = %lpad10
  %__data_.i.i.i111 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %106 = load i8*, i8** %__data_.i.i.i111, align 8, !tbaa !19
  call void @_ZdlPv(i8* %106) #15
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %if.then.i.i112, %lpad10
  call void @llvm.lifetime.end(i64 24, i8* nonnull %66) #14
  br label %ehcleanup41

lpad15:                                           ; preds = %if.then.i99, %invoke.cont26, %invoke.cont22, %invoke.cont20, %invoke.cont16, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit66, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit90
  %107 = landingpad { i8*, i32 }
          cleanup
  br label %lpad15.body

lpad15.body:                                      ; preds = %_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev.exit21.i.i, %lpad15
  %eh.lpad-body100 = phi { i8*, i32 } [ %107, %lpad15 ], [ %82, %_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev.exit21.i.i ]
  %108 = extractvalue { i8*, i32 } %eh.lpad-body100, 0
  %109 = extractvalue { i8*, i32 } %eh.lpad-body100, 1
  br label %ehcleanup41

lpad31:                                           ; preds = %invoke.cont28
  %110 = landingpad { i8*, i32 }
          cleanup
  %111 = extractvalue { i8*, i32 } %110, 0
  %112 = extractvalue { i8*, i32 } %110, 1
  br label %ehcleanup37

lpad33:                                           ; preds = %invoke.cont32
  %113 = landingpad { i8*, i32 }
          cleanup
  %114 = extractvalue { i8*, i32 } %113, 0
  %115 = extractvalue { i8*, i32 } %113, 1
  %116 = load i8, i8* %71, align 8, !tbaa !18
  %117 = and i8 %116, 1
  %tobool.i.i.i115 = icmp eq i8 %117, 0
  br i1 %tobool.i.i.i115, label %ehcleanup37, label %if.then.i.i117

if.then.i.i117:                                   ; preds = %lpad33
  %118 = load i8*, i8** %__data_.i.i.i.i82, align 8, !tbaa !19
  call void @_ZdlPv(i8* %118) #15
  br label %ehcleanup37

ehcleanup37:                                      ; preds = %if.then.i.i117, %lpad33, %lpad31
  %ehselector.slot.2 = phi i32 [ %112, %lpad31 ], [ %115, %lpad33 ], [ %115, %if.then.i.i117 ]
  %exn.slot.2 = phi i8* [ %111, %lpad31 ], [ %114, %lpad33 ], [ %114, %if.then.i.i117 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %71) #14
  br label %ehcleanup41

ehcleanup41:                                      ; preds = %ehcleanup37, %lpad15.body, %ehcleanup13
  %ehselector.slot.3 = phi i32 [ %109, %lpad15.body ], [ %ehselector.slot.2, %ehcleanup37 ], [ %103, %ehcleanup13 ]
  %exn.slot.3 = phi i8* [ %108, %lpad15.body ], [ %exn.slot.2, %ehcleanup37 ], [ %102, %ehcleanup13 ]
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %39, align 8, !tbaa !8
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %40, align 8, !tbaa !8
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* %__sb_.i48) #14
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* nonnull %38, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %37) #14
  call void @llvm.lifetime.end(i64 568, i8* nonnull %34) #14
  br label %ehcleanup43

ehcleanup43:                                      ; preds = %ehcleanup41, %ehcleanup, %lpad
  %ehselector.slot.4 = phi i32 [ %ehselector.slot.3, %ehcleanup41 ], [ %ehselector.slot.0, %ehcleanup ], [ %94, %lpad ]
  %exn.slot.4 = phi i8* [ %exn.slot.3, %ehcleanup41 ], [ %exn.slot.0, %ehcleanup ], [ %93, %lpad ]
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %6, align 16, !tbaa !8
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %7, align 16, !tbaa !8
  %119 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %119, align 16, !tbaa !8
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !8
  %120 = load i8, i8* %14, align 8, !tbaa !18
  %121 = and i8 %120, 1
  %tobool.i.i.i.i.i.i.i126 = icmp eq i8 %121, 0
  br i1 %tobool.i.i.i.i.i.i.i126, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit129, label %if.then.i.i.i.i.i.i128

if.then.i.i.i.i.i.i128:                           ; preds = %ehcleanup43
  %__data_.i.i.i.i.i.i.i127 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %122 = load i8*, i8** %__data_.i.i.i.i.i.i.i127, align 8, !tbaa !19
  call void @_ZdlPv(i8* %122) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit129

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit129: ; preds = %ehcleanup43, %if.then.i.i.i.i.i.i128
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %5) #14
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %4, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* nonnull %2) #14
  call void @llvm.lifetime.end(i64 280, i8* nonnull %0) #14
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.4, 0
  %lpad.val45 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.4, 1
  resume { i8*, i32 } %lpad.val45
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(%"class.std::__1::basic_ostream"*) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_ofstream"* %this) unnamed_addr #5 align 2 {
entry:
  %0 = bitcast %"class.std::__1::basic_ofstream"* %this to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %0, align 8, !tbaa !8
  %add.ptr.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %this, i64 0, i32 2
  %1 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %1, align 8, !tbaa !8
  %__sb_.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %this, i64 0, i32 1
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* %__sb_.i) #14
  %2 = bitcast %"class.std::__1::basic_ofstream"* %this to %"class.std::__1::basic_ostream"*
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* %2, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #14
  %3 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %3) #14
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %0, align 8, !tbaa !8
  %add.ptr.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 2
  %1 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %1, align 8, !tbaa !8
  %add.ptr3.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 0, i32 1
  %2 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr3.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %2, align 8, !tbaa !8
  %__sb_.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1
  %3 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !8
  %__str_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1, i32 1
  %__size_.i.i.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_.i.i.i to i8*
  %4 = load i8, i8* %__size_.i.i.i.i.i.i, align 8, !tbaa !18
  %5 = and i8 %4, 1
  %tobool.i.i.i.i.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %entry
  %__data_.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %6 = load i8*, i8** %__data_.i.i.i.i.i.i, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* %6) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %entry, %if.then.i.i.i.i.i
  %7 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %7) #14
  %8 = bitcast %"class.std::__1::basic_stringstream"* %this to %"class.std::__1::basic_iostream"*
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %8, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  %9 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %9) #14
  ret void
}

; Function Attrs: ssp uwtable
define void @checker_thread_begin(%struct._opaque_pthread_t* %id.coerce) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i.i = alloca %"class.std::__1::basic_string", align 8
  %ss = alloca %"class.std::__1::basic_stringstream", align 16
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %outfile = alloca %"class.std::__1::basic_ofstream", align 8
  %ref.tmp6 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp13 = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp30 = alloca %"class.std::__1::basic_string", align 8
  %0 = bitcast %"class.std::__1::basic_stringstream"* %ss to i8*
  call void @llvm.lifetime.start(i64 280, i8* nonnull %0) #14
  %1 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2
  %2 = bitcast %"class.std::__1::basic_ios.base"* %1 to %"class.std::__1::basic_ios"*
  %3 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %3, align 16, !tbaa !8
  %4 = bitcast %"class.std::__1::basic_stringstream"* %ss to %"class.std::__1::basic_iostream"*
  %__sb_.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1
  %5 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0
  %6 = bitcast %"class.std::__1::basic_stringstream"* %ss to i64*
  %7 = bitcast %"class.std::__1::basic_ios.base"* %1 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i64 0, inrange i32 1, i64 3) to i64), i64* %7, align 16, !tbaa !8
  %8 = bitcast %"class.std::__1::basic_stringstream"* %ss to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i64 0, inrange i32 0, i64 3) to i64), i64 0>, <2 x i64>* %8, align 16
  %9 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 0
  %10 = bitcast %"class.std::__1::basic_stringbuf"* %__sb_.i to i8*
  invoke void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"* %9, i8* %10)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %entry
  %11 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 0, i32 0
  %12 = getelementptr inbounds %"class.std::__1::basic_ios.base", %"class.std::__1::basic_ios.base"* %1, i64 0, i32 0, i32 0
  %__tie_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 1
  store %"class.std::__1::basic_ostream"* null, %"class.std::__1::basic_ostream"** %__tie_.i.i.i.i, align 8, !tbaa !10
  %__fill_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 2
  store i32 -1, i32* %__fill_.i.i.i.i, align 16, !tbaa !13
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i32 (...)**), i32 (...)*** %11, align 16, !tbaa !8
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i32 (...)**), i32 (...)*** %12, align 16, !tbaa !8
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %3, align 16, !tbaa !8
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"* %5)
          to label %.noexc.i unwind label %lpad6.i

.noexc.i:                                         ; preds = %invoke.cont.i
  %13 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !8
  %__str_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1
  %14 = bitcast %"class.std::__1::basic_string"* %__str_.i.i.i to i8*
  %__mode_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 3
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 32, i32 8, i1 false)
  store i32 24, i32* %__mode_.i.i.i, align 8, !tbaa !14
  %15 = bitcast %"class.std::__1::basic_string"* %ref.tmp.i.i.i to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %15) #14
  call void @llvm.memset.p0i8.i64(i8* nonnull %15, i8 0, i64 24, i32 8, i1 false) #14
  invoke void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(%"class.std::__1::basic_stringbuf"* nonnull %__sb_.i, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %ref.tmp.i.i.i)
          to label %invoke.cont.i.i.i unwind label %lpad.i.i.i

invoke.cont.i.i.i:                                ; preds = %.noexc.i
  %16 = load i8, i8* %15, align 8, !tbaa !18
  %17 = and i8 %16, 1
  %tobool.i.i.i9.i.i.i = icmp eq i8 %17, 0
  br i1 %tobool.i.i.i9.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit, label %if.then.i.i11.i.i.i

if.then.i.i11.i.i.i:                              ; preds = %invoke.cont.i.i.i
  %__data_.i.i.i10.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %18 = load i8*, i8** %__data_.i.i.i10.i.i.i, align 8, !tbaa !19
  call void @_ZdlPv(i8* %18) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit

lpad.i.i.i:                                       ; preds = %.noexc.i
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = load i8, i8* %15, align 8, !tbaa !18
  %21 = and i8 %20, 1
  %tobool.i.i.i4.i.i.i = icmp eq i8 %21, 0
  br i1 %tobool.i.i.i4.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i, label %if.then.i.i6.i.i.i

if.then.i.i6.i.i.i:                               ; preds = %lpad.i.i.i
  %__data_.i.i.i5.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %22 = load i8*, i8** %__data_.i.i.i5.i.i.i, align 8, !tbaa !19
  call void @_ZdlPv(i8* %22) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i: ; preds = %if.then.i.i6.i.i.i, %lpad.i.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %15) #14
  %23 = load i8, i8* %14, align 8, !tbaa !18
  %24 = and i8 %23, 1
  %tobool.i.i.i.i.i.i = icmp eq i8 %24, 0
  br i1 %tobool.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i
  %__data_.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %25 = load i8*, i8** %__data_.i.i.i.i.i.i, align 8, !tbaa !19
  call void @_ZdlPv(i8* %25) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %5) #14
  br label %lpad6.body.i

lpad.i:                                           ; preds = %entry
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = extractvalue { i8*, i32 } %26, 1
  br label %ehcleanup.i

lpad6.i:                                          ; preds = %invoke.cont.i
  %29 = landingpad { i8*, i32 }
          cleanup
  br label %lpad6.body.i

lpad6.body.i:                                     ; preds = %lpad6.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i
  %eh.lpad-body.i = phi { i8*, i32 } [ %29, %lpad6.i ], [ %19, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i ]
  %30 = extractvalue { i8*, i32 } %eh.lpad-body.i, 0
  %31 = extractvalue { i8*, i32 } %eh.lpad-body.i, 1
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %4, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  br label %ehcleanup.i

ehcleanup.i:                                      ; preds = %lpad6.body.i, %lpad.i
  %exn.slot.0.i = phi i8* [ %30, %lpad6.body.i ], [ %27, %lpad.i ]
  %ehselector.slot.0.i = phi i32 [ %31, %lpad6.body.i ], [ %28, %lpad.i ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %2) #14
  %lpad.val.i = insertvalue { i8*, i32 } undef, i8* %exn.slot.0.i, 0
  %lpad.val8.i = insertvalue { i8*, i32 } %lpad.val.i, i32 %ehselector.slot.0.i, 1
  resume { i8*, i32 } %lpad.val8.i

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit: ; preds = %invoke.cont.i.i.i, %if.then.i.i11.i.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %15) #14
  %32 = bitcast %"class.std::__1::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %32) #14
  call void @llvm.memset.p0i8.i64(i8* nonnull %32, i8 0, i64 24, i32 8, i1 false)
  invoke void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(%"class.std::__1::basic_stringbuf"* nonnull %__sb_.i, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %ref.tmp)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit
  %33 = load i8, i8* %32, align 8, !tbaa !18
  %34 = and i8 %33, 1
  %tobool.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont2
  %__data_.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %35 = load i8*, i8** %__data_.i.i.i, align 8, !tbaa !19
  call void @_ZdlPv(i8* %35) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont2, %if.then.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %32) #14
  %add.ptr = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 1
  %36 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to %"class.std::__1::basic_ostream"*
  %37 = bitcast %struct._opaque_pthread_t* %id.coerce to i8*
  %call.i49 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %36, i8* %37)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  %38 = bitcast %"class.std::__1::basic_ofstream"* %outfile to i8*
  call void @llvm.lifetime.start(i64 568, i8* nonnull %38) #14
  %39 = bitcast %"class.std::__1::basic_string"* %ref.tmp6 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %39) #14
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* nonnull sret %ref.tmp6, %"class.std::__1::basic_stringbuf"* %__sb_.i)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont5
  %40 = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 2
  %41 = bitcast %"class.std::__1::basic_ios.base"* %40 to %"class.std::__1::basic_ios"*
  %42 = bitcast %"class.std::__1::basic_ofstream"* %outfile to %"class.std::__1::basic_ostream"*
  %__sb_.i52 = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 1
  %43 = bitcast %"class.std::__1::basic_ofstream"* %outfile to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i64 0, inrange i32 0, i64 3) to i64), i64* %43, align 8, !tbaa !8
  %44 = bitcast %"class.std::__1::basic_ios.base"* %40 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i64 0, inrange i32 1, i64 3) to i64), i64* %44, align 8, !tbaa !8
  %45 = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 2, i32 0
  %46 = bitcast %"class.std::__1::basic_filebuf"* %__sb_.i52 to i8*
  invoke void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"* %45, i8* %46)
          to label %invoke.cont.i53 unwind label %lpad.i58

invoke.cont.i53:                                  ; preds = %invoke.cont8
  %47 = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 0, i32 0
  %48 = getelementptr inbounds %"class.std::__1::basic_ios.base", %"class.std::__1::basic_ios.base"* %40, i64 0, i32 0, i32 0
  %__tie_.i.i.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 2, i32 1
  store %"class.std::__1::basic_ostream"* null, %"class.std::__1::basic_ostream"** %__tie_.i.i.i, align 8, !tbaa !10
  %__fill_.i.i.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 2, i32 2
  store i32 -1, i32* %__fill_.i.i.i, align 8, !tbaa !13
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 3) to i32 (...)**), i32 (...)*** %47, align 8, !tbaa !8
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %48, align 8, !tbaa !8
  invoke void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_filebuf"* %__sb_.i52)
          to label %invoke.cont5.i unwind label %lpad4.i

invoke.cont5.i:                                   ; preds = %invoke.cont.i53
  %__data_.i.i.i.i.i.i55 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %__file_.i.i.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 1, i32 8
  %49 = load %struct.__sFILE*, %struct.__sFILE** %__file_.i.i.i, align 8, !tbaa !22
  %cmp.i.i.i56 = icmp eq %struct.__sFILE* %49, null
  br i1 %cmp.i.i.i56, label %if.then.i.i.i57, label %if.then.i

if.then.i.i.i57:                                  ; preds = %invoke.cont5.i
  %50 = load i8, i8* %39, align 8, !tbaa !18
  %51 = and i8 %50, 1
  %tobool.i.i.i.i.i.i54 = icmp eq i8 %51, 0
  %__s.i.i.i.i.i.i = bitcast %"class.std::__1::basic_string"* %ref.tmp6 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i.i.i, i64 0, i32 1, i64 0
  %52 = load i8*, i8** %__data_.i.i.i.i.i.i55, align 8
  %cond.i.i.i.i.i = select i1 %tobool.i.i.i.i.i.i54, i8* %arrayidx.i.i.i.i.i.i, i8* %52
  %call.i.i13.i = invoke %struct.__sFILE* @"\01_fopen"(i8* %cond.i.i.i.i.i, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
          to label %call.i.i.noexc.i unwind label %lpad7.i

call.i.i.noexc.i:                                 ; preds = %if.then.i.i.i57
  store %struct.__sFILE* %call.i.i13.i, %struct.__sFILE** %__file_.i.i.i, align 8, !tbaa !22
  %tobool16.i.i.i = icmp eq %struct.__sFILE* %call.i.i13.i, null
  br i1 %tobool16.i.i.i, label %if.then.i, label %if.then17.i.i.i

if.then17.i.i.i:                                  ; preds = %call.i.i.noexc.i
  %__om_.i.i.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %outfile, i64 0, i32 1, i32 12
  store i32 17, i32* %__om_.i.i.i, align 8, !tbaa !25
  br label %invoke.cont10

if.then.i:                                        ; preds = %call.i.i.noexc.i, %invoke.cont5.i
  %53 = bitcast %"class.std::__1::basic_ofstream"* %outfile to i8**
  %vtable.i = load i8*, i8** %53, align 8, !tbaa !8
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %54 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %54, align 8
  %add.ptr9.i = getelementptr inbounds i8, i8* %38, i64 %vbase.offset.i
  %55 = bitcast i8* %add.ptr9.i to %"class.std::__1::ios_base"*
  %__rdstate_.i.i.i = getelementptr inbounds i8, i8* %add.ptr9.i, i64 32
  %56 = bitcast i8* %__rdstate_.i.i.i to i32*
  %57 = load i32, i32* %56, align 8, !tbaa !26
  %or.i.i.i = or i32 %57, 4
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %55, i32 %or.i.i.i)
          to label %invoke.cont10 unwind label %lpad7.i

lpad.i58:                                         ; preds = %invoke.cont8
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  %60 = extractvalue { i8*, i32 } %58, 1
  br label %lpad9.body

lpad4.i:                                          ; preds = %invoke.cont.i53
  %61 = landingpad { i8*, i32 }
          cleanup
  %62 = extractvalue { i8*, i32 } %61, 0
  %63 = extractvalue { i8*, i32 } %61, 1
  br label %ehcleanup.i61

lpad7.i:                                          ; preds = %if.then.i, %if.then.i.i.i57
  %64 = landingpad { i8*, i32 }
          cleanup
  %65 = extractvalue { i8*, i32 } %64, 0
  %66 = extractvalue { i8*, i32 } %64, 1
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* nonnull %__sb_.i52) #14
  br label %ehcleanup.i61

ehcleanup.i61:                                    ; preds = %lpad7.i, %lpad4.i
  %exn.slot.0.i59 = phi i8* [ %65, %lpad7.i ], [ %62, %lpad4.i ]
  %ehselector.slot.0.i60 = phi i32 [ %66, %lpad7.i ], [ %63, %lpad4.i ]
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* nonnull %42, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #14
  br label %lpad9.body

invoke.cont10:                                    ; preds = %if.then.i, %if.then17.i.i.i
  %67 = load i8, i8* %39, align 8, !tbaa !18
  %68 = and i8 %67, 1
  %tobool.i.i.i64 = icmp eq i8 %68, 0
  br i1 %tobool.i.i.i64, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit67, label %if.then.i.i66

if.then.i.i66:                                    ; preds = %invoke.cont10
  %69 = load i8*, i8** %__data_.i.i.i.i.i.i55, align 8, !tbaa !19
  call void @_ZdlPv(i8* %69) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit67

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit67: ; preds = %invoke.cont10, %if.then.i.i66
  call void @llvm.lifetime.end(i64 24, i8* nonnull %39) #14
  %70 = bitcast %"class.std::__1::basic_string"* %ref.tmp13 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %70) #14
  call void @llvm.memset.p0i8.i64(i8* nonnull %70, i8 0, i64 24, i32 8, i1 false)
  invoke void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(%"class.std::__1::basic_stringbuf"* %__sb_.i, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %ref.tmp13)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit67
  %71 = load i8, i8* %70, align 8, !tbaa !18
  %72 = and i8 %71, 1
  %tobool.i.i.i98 = icmp eq i8 %72, 0
  br i1 %tobool.i.i.i98, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit101, label %if.then.i.i100

if.then.i.i100:                                   ; preds = %invoke.cont17
  %__data_.i.i.i99 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %73 = load i8*, i8** %__data_.i.i.i99, align 8, !tbaa !19
  call void @_ZdlPv(i8* %73) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit101

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit101: ; preds = %invoke.cont17, %if.then.i.i100
  call void @llvm.lifetime.end(i64 24, i8* nonnull %70) #14
  %call1.i102 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 14)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit101
  %call.i103 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i102, i8* %37)
          to label %invoke.cont26 unwind label %lpad21

invoke.cont26:                                    ; preds = %invoke.cont22
  %call1.i106 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call.i103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
          to label %invoke.cont28 unwind label %lpad21

invoke.cont28:                                    ; preds = %invoke.cont26
  %74 = bitcast %"class.std::__1::basic_string"* %ref.tmp30 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %74) #14
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* nonnull sret %ref.tmp30, %"class.std::__1::basic_stringbuf"* %__sb_.i)
          to label %invoke.cont32 unwind label %lpad31

invoke.cont32:                                    ; preds = %invoke.cont28
  %75 = load i8, i8* %74, align 8, !tbaa !18
  %76 = and i8 %75, 1
  %tobool.i.i.i.i = icmp eq i8 %76, 0
  %__data_.i.i.i.i112 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %77 = load i8*, i8** %__data_.i.i.i.i112, align 8
  %__s.i.i.i.i113 = bitcast %"class.std::__1::basic_string"* %ref.tmp30 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i114 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i113, i64 0, i32 1, i64 0
  %cond.i.i.i = select i1 %tobool.i.i.i.i, i8* %arrayidx.i.i.i.i114, i8* %77
  %__size_.i5.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %78 = load i64, i64* %__size_.i5.i.i, align 8
  %conv.i.i.i = zext i8 %75 to i64
  %shr3.i.i.i = lshr i64 %conv.i.i.i, 1
  %cond.i.i = select i1 %tobool.i.i.i.i, i64 %shr3.i.i.i, i64 %78
  %call2.i115 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %42, i8* %cond.i.i.i, i64 %cond.i.i)
          to label %invoke.cont34 unwind label %lpad33

invoke.cont34:                                    ; preds = %invoke.cont32
  %79 = load i8, i8* %74, align 8, !tbaa !18
  %80 = and i8 %79, 1
  %tobool.i.i.i117 = icmp eq i8 %80, 0
  br i1 %tobool.i.i.i117, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit120, label %if.then.i.i119

if.then.i.i119:                                   ; preds = %invoke.cont34
  %81 = load i8*, i8** %__data_.i.i.i.i112, align 8, !tbaa !19
  call void @_ZdlPv(i8* %81) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit120

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit120: ; preds = %invoke.cont34, %if.then.i.i119
  call void @llvm.lifetime.end(i64 24, i8* nonnull %74) #14
  %call39 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(%"class.std::__1::basic_ostream"* nonnull %42)
          to label %invoke.cont38 unwind label %lpad21

invoke.cont38:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit120
  %82 = load %struct.__sFILE*, %struct.__sFILE** %__file_.i.i.i, align 8, !tbaa !22
  %tobool.i.i = icmp eq %struct.__sFILE* %82, null
  br i1 %tobool.i.i, label %if.then.i129, label %if.then.i.i123

if.then.i.i123:                                   ; preds = %invoke.cont38
  %83 = bitcast %"class.std::__1::basic_filebuf"* %__sb_.i52 to i32 (%"class.std::__1::basic_filebuf"*)***
  %vtable.i.i = load i32 (%"class.std::__1::basic_filebuf"*)**, i32 (%"class.std::__1::basic_filebuf"*)*** %83, align 8, !tbaa !8
  %vfn.i.i = getelementptr inbounds i32 (%"class.std::__1::basic_filebuf"*)*, i32 (%"class.std::__1::basic_filebuf"*)** %vtable.i.i, i64 6
  %84 = load i32 (%"class.std::__1::basic_filebuf"*)*, i32 (%"class.std::__1::basic_filebuf"*)** %vfn.i.i, align 8
  %call.i.i122 = invoke i32 %84(%"class.std::__1::basic_filebuf"* nonnull %__sb_.i52)
          to label %invoke.cont.i.i unwind label %_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev.exit21.i.i

invoke.cont.i.i:                                  ; preds = %if.then.i.i123
  %call7.i.i = call i32 @fclose(%struct.__sFILE* nonnull %82)
  %cmp.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.then.i129

_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev.exit21.i.i: ; preds = %if.then.i.i123
  %85 = landingpad { i8*, i32 }
          cleanup
  %call6.i.i.i18.i.i = call i32 @fclose(%struct.__sFILE* nonnull %82)
  br label %lpad21.body

if.then8.i.i:                                     ; preds = %invoke.cont.i.i
  %tobool3.i.i = icmp eq i32 %call.i.i122, 0
  store %struct.__sFILE* null, %struct.__sFILE** %__file_.i.i.i, align 8, !tbaa !22
  br i1 %tobool3.i.i, label %invoke.cont40, label %if.then.i129

if.then.i129:                                     ; preds = %if.then8.i.i, %invoke.cont.i.i, %invoke.cont38
  %86 = bitcast %"class.std::__1::basic_ofstream"* %outfile to i8**
  %vtable.i124 = load i8*, i8** %86, align 8, !tbaa !8
  %vbase.offset.ptr.i125 = getelementptr i8, i8* %vtable.i124, i64 -24
  %87 = bitcast i8* %vbase.offset.ptr.i125 to i64*
  %vbase.offset.i126 = load i64, i64* %87, align 8
  %add.ptr.i = getelementptr inbounds i8, i8* %38, i64 %vbase.offset.i126
  %88 = bitcast i8* %add.ptr.i to %"class.std::__1::ios_base"*
  %__rdstate_.i.i.i127 = getelementptr inbounds i8, i8* %add.ptr.i, i64 32
  %89 = bitcast i8* %__rdstate_.i.i.i127 to i32*
  %90 = load i32, i32* %89, align 8, !tbaa !26
  %or.i.i.i128 = or i32 %90, 4
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %88, i32 %or.i.i.i128)
          to label %invoke.cont40 unwind label %lpad21

invoke.cont40:                                    ; preds = %if.then8.i.i, %if.then.i129
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %43, align 8, !tbaa !8
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %44, align 8, !tbaa !8
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* nonnull %__sb_.i52) #14
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* nonnull %42, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* nonnull %41) #14
  call void @llvm.lifetime.end(i64 568, i8* nonnull %38) #14
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %6, align 16, !tbaa !8
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %7, align 16, !tbaa !8
  %91 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %91, align 16, !tbaa !8
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !8
  %92 = load i8, i8* %14, align 8, !tbaa !18
  %93 = and i8 %92, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %93, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %invoke.cont40
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %94 = load i8*, i8** %__data_.i.i.i.i.i.i.i, align 8, !tbaa !19
  call void @_ZdlPv(i8* %94) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont40, %if.then.i.i.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %5) #14
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %4, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* nonnull %2) #14
  call void @llvm.lifetime.end(i64 280, i8* nonnull %0) #14
  ret void

lpad1:                                            ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit
  %95 = landingpad { i8*, i32 }
          cleanup
  %96 = extractvalue { i8*, i32 } %95, 0
  %97 = extractvalue { i8*, i32 } %95, 1
  %98 = load i8, i8* %32, align 8, !tbaa !18
  %99 = and i8 %98, 1
  %tobool.i.i.i135 = icmp eq i8 %99, 0
  br i1 %tobool.i.i.i135, label %ehcleanup, label %if.then.i.i137

if.then.i.i137:                                   ; preds = %lpad1
  %__data_.i.i.i136 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %100 = load i8*, i8** %__data_.i.i.i136, align 8, !tbaa !19
  call void @_ZdlPv(i8* %100) #15
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i137, %lpad1
  call void @llvm.lifetime.end(i64 24, i8* nonnull %32) #14
  %.pre = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 1
  br label %ehcleanup43

lpad4:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  %101 = landingpad { i8*, i32 }
          cleanup
  %102 = extractvalue { i8*, i32 } %101, 0
  %103 = extractvalue { i8*, i32 } %101, 1
  br label %ehcleanup43

lpad7:                                            ; preds = %invoke.cont5
  %104 = landingpad { i8*, i32 }
          cleanup
  %105 = extractvalue { i8*, i32 } %104, 0
  %106 = extractvalue { i8*, i32 } %104, 1
  br label %ehcleanup12

lpad9.body:                                       ; preds = %lpad.i58, %ehcleanup.i61
  %exn.slot.1.i = phi i8* [ %exn.slot.0.i59, %ehcleanup.i61 ], [ %59, %lpad.i58 ]
  %ehselector.slot.1.i = phi i32 [ %ehselector.slot.0.i60, %ehcleanup.i61 ], [ %60, %lpad.i58 ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %41) #14
  %107 = load i8, i8* %39, align 8, !tbaa !18
  %108 = and i8 %107, 1
  %tobool.i.i.i140 = icmp eq i8 %108, 0
  br i1 %tobool.i.i.i140, label %ehcleanup12, label %if.then.i.i142

if.then.i.i142:                                   ; preds = %lpad9.body
  %__data_.i.i.i141 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %109 = load i8*, i8** %__data_.i.i.i141, align 8, !tbaa !19
  call void @_ZdlPv(i8* %109) #15
  br label %ehcleanup12

ehcleanup12:                                      ; preds = %if.then.i.i142, %lpad9.body, %lpad7
  %ehselector.slot.1 = phi i32 [ %106, %lpad7 ], [ %ehselector.slot.1.i, %lpad9.body ], [ %ehselector.slot.1.i, %if.then.i.i142 ]
  %exn.slot.1 = phi i8* [ %105, %lpad7 ], [ %exn.slot.1.i, %lpad9.body ], [ %exn.slot.1.i, %if.then.i.i142 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %39) #14
  br label %ehcleanup43

lpad16:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit67
  %110 = landingpad { i8*, i32 }
          cleanup
  %111 = extractvalue { i8*, i32 } %110, 0
  %112 = extractvalue { i8*, i32 } %110, 1
  %113 = load i8, i8* %70, align 8, !tbaa !18
  %114 = and i8 %113, 1
  %tobool.i.i.i145 = icmp eq i8 %114, 0
  br i1 %tobool.i.i.i145, label %ehcleanup19, label %if.then.i.i147

if.then.i.i147:                                   ; preds = %lpad16
  %__data_.i.i.i146 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %115 = load i8*, i8** %__data_.i.i.i146, align 8, !tbaa !19
  call void @_ZdlPv(i8* %115) #15
  br label %ehcleanup19

ehcleanup19:                                      ; preds = %if.then.i.i147, %lpad16
  call void @llvm.lifetime.end(i64 24, i8* nonnull %70) #14
  br label %ehcleanup41

lpad21:                                           ; preds = %if.then.i129, %invoke.cont26, %invoke.cont22, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit101, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit120
  %116 = landingpad { i8*, i32 }
          cleanup
  br label %lpad21.body

lpad21.body:                                      ; preds = %_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev.exit21.i.i, %lpad21
  %eh.lpad-body130 = phi { i8*, i32 } [ %116, %lpad21 ], [ %85, %_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev.exit21.i.i ]
  %117 = extractvalue { i8*, i32 } %eh.lpad-body130, 0
  %118 = extractvalue { i8*, i32 } %eh.lpad-body130, 1
  br label %ehcleanup41

lpad31:                                           ; preds = %invoke.cont28
  %119 = landingpad { i8*, i32 }
          cleanup
  %120 = extractvalue { i8*, i32 } %119, 0
  %121 = extractvalue { i8*, i32 } %119, 1
  br label %ehcleanup37

lpad33:                                           ; preds = %invoke.cont32
  %122 = landingpad { i8*, i32 }
          cleanup
  %123 = extractvalue { i8*, i32 } %122, 0
  %124 = extractvalue { i8*, i32 } %122, 1
  %125 = load i8, i8* %74, align 8, !tbaa !18
  %126 = and i8 %125, 1
  %tobool.i.i.i150 = icmp eq i8 %126, 0
  br i1 %tobool.i.i.i150, label %ehcleanup37, label %if.then.i.i152

if.then.i.i152:                                   ; preds = %lpad33
  %127 = load i8*, i8** %__data_.i.i.i.i112, align 8, !tbaa !19
  call void @_ZdlPv(i8* %127) #15
  br label %ehcleanup37

ehcleanup37:                                      ; preds = %if.then.i.i152, %lpad33, %lpad31
  %ehselector.slot.3 = phi i32 [ %121, %lpad31 ], [ %124, %lpad33 ], [ %124, %if.then.i.i152 ]
  %exn.slot.3 = phi i8* [ %120, %lpad31 ], [ %123, %lpad33 ], [ %123, %if.then.i.i152 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %74) #14
  br label %ehcleanup41

ehcleanup41:                                      ; preds = %ehcleanup37, %lpad21.body, %ehcleanup19
  %ehselector.slot.4 = phi i32 [ %118, %lpad21.body ], [ %ehselector.slot.3, %ehcleanup37 ], [ %112, %ehcleanup19 ]
  %exn.slot.4 = phi i8* [ %117, %lpad21.body ], [ %exn.slot.3, %ehcleanup37 ], [ %111, %ehcleanup19 ]
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %43, align 8, !tbaa !8
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %44, align 8, !tbaa !8
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* %__sb_.i52) #14
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* nonnull %42, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %41) #14
  call void @llvm.lifetime.end(i64 568, i8* nonnull %38) #14
  br label %ehcleanup43

ehcleanup43:                                      ; preds = %ehcleanup41, %ehcleanup12, %lpad4, %ehcleanup
  %add.ptr3.i.i157.pre-phi = phi %"class.std::__1::basic_ostream.base"* [ %add.ptr, %ehcleanup41 ], [ %add.ptr, %ehcleanup12 ], [ %add.ptr, %lpad4 ], [ %.pre, %ehcleanup ]
  %ehselector.slot.5 = phi i32 [ %ehselector.slot.4, %ehcleanup41 ], [ %ehselector.slot.1, %ehcleanup12 ], [ %103, %lpad4 ], [ %97, %ehcleanup ]
  %exn.slot.5 = phi i8* [ %exn.slot.4, %ehcleanup41 ], [ %exn.slot.1, %ehcleanup12 ], [ %102, %lpad4 ], [ %96, %ehcleanup ]
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %6, align 16, !tbaa !8
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %7, align 16, !tbaa !8
  %128 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr3.i.i157.pre-phi to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %128, align 8, !tbaa !8
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !8
  %129 = load i8, i8* %14, align 8, !tbaa !18
  %130 = and i8 %129, 1
  %tobool.i.i.i.i.i.i.i161 = icmp eq i8 %130, 0
  br i1 %tobool.i.i.i.i.i.i.i161, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit164, label %if.then.i.i.i.i.i.i163

if.then.i.i.i.i.i.i163:                           ; preds = %ehcleanup43
  %__data_.i.i.i.i.i.i.i162 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %131 = load i8*, i8** %__data_.i.i.i.i.i.i.i162, align 8, !tbaa !19
  call void @_ZdlPv(i8* %131) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit164

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit164: ; preds = %ehcleanup43, %if.then.i.i.i.i.i.i163
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %5) #14
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %4, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* nonnull %2) #14
  call void @llvm.lifetime.end(i64 280, i8* nonnull %0) #14
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.5, 0
  %lpad.val45 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.5, 1
  resume { i8*, i32 } %lpad.val45
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @_Z2f1v() #6 {
entry:
  %0 = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) monotonic, align 4
  store i32 %0, i32* @data1, align 4, !tbaa !28
  store atomic i32 1, i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) monotonic, align 4
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @_Z2f2v() #6 {
entry:
  %0 = load atomic i32, i32* getelementptr inbounds ({ i32 }, { i32 }* @y, i64 0, i32 0) monotonic, align 4
  store i32 %0, i32* @data2, align 4, !tbaa !28
  store atomic i32 1, i32* getelementptr inbounds ({ i32 }, { i32 }* @x, i64 0, i32 0) monotonic, align 4
  ret void
}

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca %"class.std::__1::thread", align 8
  %b = alloca %"class.std::__1::thread", align 8
  %call.i = tail call i8* @_Znwm(i64 24) #13
  %__left_.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %call.i, i64 8
  tail call void @llvm.memset.p0i8.i64(i8* %__left_.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 16, i32 8, i1 false) #14
  %0 = bitcast i8* %call.i to i8**
  store i8* %__left_.i.i.i.i.i.i.i.i.i.i.i.i, i8** %0, align 8, !tbaa !2
  %call1.i3.i.i.i = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 24)
          to label %generateExecutor.exit unwind label %lpad.body.i

lpad.body.i:                                      ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %__tree_.i.i.i.i.i = bitcast i8* %call.i to %"class.std::__1::__tree"*
  %2 = bitcast i8* %__left_.i.i.i.i.i.i.i.i.i.i.i.i to %"class.std::__1::__tree_node"**
  %3 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %2, align 8, !tbaa !6
  tail call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEP6ThreadEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(%"class.std::__1::__tree"* nonnull %__tree_.i.i.i.i.i, %"class.std::__1::__tree_node"* %3) #14
  tail call void @_ZdlPv(i8* nonnull %call.i) #15
  resume { i8*, i32 } %1

generateExecutor.exit:                            ; preds = %entry
  store i8* %call.i, i8** bitcast (%class.Executor** @exe to i8**), align 8, !tbaa !2
  %4 = bitcast %"class.std::__1::thread"* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #14
  call void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z2f1v)
  %5 = bitcast %"class.std::__1::thread"* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #14
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z2f2v)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %generateExecutor.exit
  %__t_.i = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %a, i64 0, i32 0
  %6 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i, align 8, !tbaa !2
  %__t_.i25 = getelementptr inbounds %"class.std::__1::thread", %"class.std::__1::thread"* %b, i64 0, i32 0
  %7 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %__t_.i25, align 8, !tbaa !2
  invoke void @checker_thread_create(%struct._opaque_pthread_t* %6, %struct._opaque_pthread_t* %7)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont8 unwind label %lpad6

invoke.cont8:                                     ; preds = %invoke.cont7
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont9 unwind label %lpad6

invoke.cont9:                                     ; preds = %invoke.cont8
  %call1.i26 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 6)
          to label %invoke.cont10 unwind label %lpad6

invoke.cont10:                                    ; preds = %invoke.cont9
  %8 = load i32, i32* @data1, align 4, !tbaa !28
  %call13 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* nonnull %call1.i26, i32 %8)
          to label %invoke.cont12 unwind label %lpad6

invoke.cont12:                                    ; preds = %invoke.cont10
  %call1.i28 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1)
          to label %invoke.cont14 unwind label %lpad6

invoke.cont14:                                    ; preds = %invoke.cont12
  %9 = load i32, i32* @data2, align 4, !tbaa !28
  %call17 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* nonnull %call1.i28, i32 %9)
          to label %invoke.cont16 unwind label %lpad6

invoke.cont16:                                    ; preds = %invoke.cont14
  %call1.i31 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
          to label %invoke.cont18 unwind label %lpad6

invoke.cont18:                                    ; preds = %invoke.cont16
  %10 = load i32, i32* @data1, align 4, !tbaa !28
  %cmp = icmp eq i32 %10, 1
  %11 = load i32, i32* @data2, align 4
  %cmp20 = icmp eq i32 %11, 1
  %12 = and i1 %cmp, %cmp20
  br i1 %12, label %cond.true, label %cond.end, !prof !29

cond.true:                                        ; preds = %invoke.cont18
  invoke void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0)) #16
          to label %invoke.cont22 unwind label %lpad6

invoke.cont22:                                    ; preds = %cond.true
  unreachable

lpad:                                             ; preds = %generateExecutor.exit
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont16, %invoke.cont12, %invoke.cont9, %cond.true, %invoke.cont14, %invoke.cont10, %invoke.cont8, %invoke.cont7, %invoke.cont
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #14
  br label %ehcleanup

cond.end:                                         ; preds = %invoke.cont18
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #14
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #14
  ret i32 0

ehcleanup:                                        ; preds = %lpad6, %lpad
  %ehselector.slot.0 = phi i32 [ %18, %lpad6 ], [ %15, %lpad ]
  %exn.slot.0 = phi i8* [ %17, %lpad6 ], [ %14, %lpad ]
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #14
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0
  %lpad.val24 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1
  resume { i8*, i32 } %lpad.val24
}

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #4

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #9

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #10 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #14
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEP6ThreadEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(%"class.std::__1::__tree"* %this, %"class.std::__1::__tree_node"* %__nd) local_unnamed_addr #11 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %cmp = icmp eq %"class.std::__1::__tree_node"* %__nd, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %"class.std::__1::__tree_node"* %__nd to %"class.std::__1::__tree_node"**
  %1 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %0, align 8, !tbaa !6
  tail call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEP6ThreadEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(%"class.std::__1::__tree"* %this, %"class.std::__1::__tree_node"* %1) #14
  %2 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %__nd, i64 0, i32 0, i32 1
  %3 = bitcast %"class.std::__1::__tree_node_base"** %2 to %"class.std::__1::__tree_node"**
  %4 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %3, align 8, !tbaa !30
  tail call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEP6ThreadEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE7destroyEPNS_11__tree_nodeISA_PvEE(%"class.std::__1::__tree"* %this, %"class.std::__1::__tree_node"* %4) #14
  %__cc.i = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %__nd, i64 0, i32 1, i32 0
  %__size_.i.i.i.i.i.i.i = bitcast %"struct.std::__1::pair"* %__cc.i to i8*
  %5 = load i8, i8* %__size_.i.i.i.i.i.i.i, align 8, !tbaa !18
  %6 = and i8 %5, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %invoke.cont3, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %__nd, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %7 = load i8*, i8** %__data_.i.i.i.i.i.i.i, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* %7) #15
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %if.then.i.i.i.i.i.i, %if.then
  %8 = bitcast %"class.std::__1::__tree_node"* %__nd to i8*
  tail call void @_ZdlPv(i8* %8) #15
  br label %if.end

if.end:                                           ; preds = %entry, %invoke.cont3
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"*) unnamed_addr #9

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_ofstream"* %this) unnamed_addr #5 align 2 {
entry:
  %0 = bitcast %"class.std::__1::basic_ofstream"* %this to i8*
  %1 = bitcast %"class.std::__1::basic_ofstream"* %this to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 -24
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = bitcast i8* %6 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %7, align 8, !tbaa !8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %6, i64 416
  %8 = bitcast i8* %add.ptr.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %8, align 8, !tbaa !8
  %__sb_.i.i = getelementptr inbounds i8, i8* %6, i64 8
  %9 = bitcast i8* %__sb_.i.i to %"class.std::__1::basic_filebuf"*
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* %9) #14
  %10 = bitcast i8* %6 to %"class.std::__1::basic_ostream"*
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* %10, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #14
  %11 = bitcast i8* %add.ptr.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %11) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #9

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #11 align 2

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #11 align 2

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_ofstream"* %this) unnamed_addr #5 align 2 {
entry:
  %0 = bitcast %"class.std::__1::basic_ofstream"* %this to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %0, align 8, !tbaa !8
  %add.ptr.i.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %this, i64 0, i32 2
  %1 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %1, align 8, !tbaa !8
  %__sb_.i.i = getelementptr inbounds %"class.std::__1::basic_ofstream", %"class.std::__1::basic_ofstream"* %this, i64 0, i32 1
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* %__sb_.i.i) #14
  %2 = bitcast %"class.std::__1::basic_ofstream"* %this to %"class.std::__1::basic_ostream"*
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* %2, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #14
  %3 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %3) #14
  %4 = bitcast %"class.std::__1::basic_ofstream"* %this to i8*
  tail call void @_ZdlPv(i8* %4) #15
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_ofstream"* %this) unnamed_addr #5 align 2 {
entry:
  %0 = bitcast %"class.std::__1::basic_ofstream"* %this to i8*
  %1 = bitcast %"class.std::__1::basic_ofstream"* %this to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 -24
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = bitcast i8* %6 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %7, align 8, !tbaa !8
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %6, i64 416
  %8 = bitcast i8* %add.ptr.i.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %8, align 8, !tbaa !8
  %__sb_.i.i.i = getelementptr inbounds i8, i8* %6, i64 8
  %9 = bitcast i8* %__sb_.i.i.i to %"class.std::__1::basic_filebuf"*
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* %9) #14
  %10 = bitcast i8* %6 to %"class.std::__1::basic_ostream"*
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* %10, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #14
  %11 = bitcast i8* %add.ptr.i.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %11) #14
  tail call void @_ZdlPv(i8* %6) #15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_filebuf"* %this) unnamed_addr #11 align 2 {
entry:
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* %this) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"*, i8**) unnamed_addr #9

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* %this) unnamed_addr #11 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !8
  %__file_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 8
  %1 = load %struct.__sFILE*, %struct.__sFILE** %__file_.i, align 8, !tbaa !22
  %tobool.i = icmp eq %struct.__sFILE* %1, null
  br i1 %tobool.i, label %try.cont, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = invoke i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv(%"class.std::__1::basic_filebuf"* nonnull %this)
          to label %invoke.cont.i unwind label %lpad.body

invoke.cont.i:                                    ; preds = %if.then.i
  %call7.i = tail call i32 @fclose(%struct.__sFILE* nonnull %1)
  %cmp.i = icmp eq i32 %call7.i, 0
  br i1 %cmp.i, label %if.then8.i, label %try.cont

if.then8.i:                                       ; preds = %invoke.cont.i
  store %struct.__sFILE* null, %struct.__sFILE** %__file_.i, align 8, !tbaa !22
  br label %try.cont

lpad.body:                                        ; preds = %if.then.i
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %call6.i.i.i18.i = tail call i32 @fclose(%struct.__sFILE* nonnull %1)
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = tail call i8* @__cxa_begin_catch(i8* %3) #14
  invoke void @__cxa_end_catch()
          to label %try.cont unwind label %lpad2

try.cont:                                         ; preds = %if.then8.i, %invoke.cont.i, %entry, %lpad.body
  %__owns_eb_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 14
  %5 = load i8, i8* %__owns_eb_, align 8, !tbaa !32, !range !33
  %tobool = icmp eq i8 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %try.cont
  %__extbuf_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  %6 = load i8*, i8** %__extbuf_, align 8, !tbaa !34
  %isnull = icmp eq i8* %6, null
  br i1 %isnull, label %if.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.then
  tail call void @_ZdaPv(i8* nonnull %6) #15
  br label %if.end

lpad2:                                            ; preds = %lpad.body
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %9) #14
  tail call void @__clang_call_terminate(i8* %8) #17
  unreachable

if.end:                                           ; preds = %try.cont, %if.then, %delete.notnull
  %__owns_ib_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 15
  %10 = load i8, i8* %__owns_ib_, align 1, !tbaa !35, !range !33
  %tobool4 = icmp eq i8 %10, 0
  br i1 %tobool4, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  %__intbuf_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 6
  %11 = load i8*, i8** %__intbuf_, align 8, !tbaa !36
  %isnull6 = icmp eq i8* %11, null
  br i1 %isnull6, label %if.end9, label %delete.notnull7

delete.notnull7:                                  ; preds = %if.then5
  tail call void @_ZdaPv(i8* nonnull %11) #15
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5, %delete.notnull7
  %12 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %12) #14
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"*) unnamed_addr #9

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_filebuf"* %this) unnamed_addr #11 align 2 {
entry:
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_filebuf"* %this) #14
  %0 = bitcast %"class.std::__1::basic_filebuf"* %this to i8*
  tail call void @_ZdlPv(i8* %0) #15
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE(%"class.std::__1::basic_filebuf"* %this, %"class.std::__1::locale"* dereferenceable(8) %__loc) unnamed_addr #0 align 2 {
entry:
  %0 = bitcast %"class.std::__1::basic_filebuf"* %this to i32 (%"class.std::__1::basic_filebuf"*)***
  %vtable = load i32 (%"class.std::__1::basic_filebuf"*)**, i32 (%"class.std::__1::basic_filebuf"*)*** %0, align 8, !tbaa !8
  %vfn = getelementptr inbounds i32 (%"class.std::__1::basic_filebuf"*)*, i32 (%"class.std::__1::basic_filebuf"*)** %vtable, i64 6
  %1 = load i32 (%"class.std::__1::basic_filebuf"*)*, i32 (%"class.std::__1::basic_filebuf"*)** %vfn, align 8
  %call = tail call i32 %1(%"class.std::__1::basic_filebuf"* %this)
  %call.i = tail call %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %__loc, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__17codecvtIcc11__mbstate_tE2idE)
  %2 = bitcast %"class.std::__1::locale::facet"* %call.i to %"class.std::__1::codecvt"*
  %__cv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 9
  %3 = bitcast %"class.std::__1::codecvt"** %__cv_ to %"class.std::__1::locale::facet"**
  store %"class.std::__1::locale::facet"* %call.i, %"class.std::__1::locale::facet"** %3, align 8, !tbaa !37
  %__always_noconv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 16
  %4 = load i8, i8* %__always_noconv_, align 2, !tbaa !38, !range !33
  %5 = bitcast %"class.std::__1::locale::facet"* %call.i to i1 (%"class.std::__1::codecvt"*)***
  %vtable.i = load i1 (%"class.std::__1::codecvt"*)**, i1 (%"class.std::__1::codecvt"*)*** %5, align 8, !tbaa !8
  %vfn.i = getelementptr inbounds i1 (%"class.std::__1::codecvt"*)*, i1 (%"class.std::__1::codecvt"*)** %vtable.i, i64 7
  %6 = load i1 (%"class.std::__1::codecvt"*)*, i1 (%"class.std::__1::codecvt"*)** %vfn.i, align 8
  %call.i47 = tail call zeroext i1 %6(%"class.std::__1::codecvt"* %2) #14
  %frombool6 = zext i1 %call.i47 to i8
  store i8 %frombool6, i8* %__always_noconv_, align 2, !tbaa !38
  %7 = zext i8 %4 to i32
  %conv10 = zext i1 %call.i47 to i32
  %cmp = icmp eq i32 %7, %conv10
  br i1 %cmp, label %if.end46, label %if.then

if.then:                                          ; preds = %entry
  %__binp_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  %__owns_eb_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 14
  %8 = bitcast i8** %__binp_.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 48, i32 8, i1 false)
  %9 = load i8, i8* %__owns_eb_, align 8, !tbaa !32, !range !33
  %tobool14 = icmp ne i8 %9, 0
  br i1 %call.i47, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  %__extbuf_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then13
  %10 = load i8*, i8** %__extbuf_, align 8, !tbaa !34
  %isnull = icmp eq i8* %10, null
  br i1 %isnull, label %if.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.then15
  tail call void @_ZdaPv(i8* nonnull %10) #15
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then15, %delete.notnull
  %__owns_ib_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 15
  %11 = load i8, i8* %__owns_ib_, align 1, !tbaa !35, !range !33
  store i8 %11, i8* %__owns_eb_, align 8, !tbaa !32
  %__ibs_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 7
  %12 = load i64, i64* %__ibs_, align 8, !tbaa !39
  %__ebs_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 5
  store i64 %12, i64* %__ebs_, align 8, !tbaa !40
  %__intbuf_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 6
  %13 = bitcast i8** %__intbuf_ to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !36
  %15 = bitcast i8** %__extbuf_ to i64*
  store i64 %14, i64* %15, align 8, !tbaa !34
  store i8 0, i8* %__owns_ib_, align 1, !tbaa !35
  %16 = bitcast i8** %__intbuf_ to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 16, i32 8, i1 false)
  br label %if.end46

if.else:                                          ; preds = %if.then
  br i1 %tobool14, label %if.else37, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %__extbuf_25 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  %17 = load i8*, i8** %__extbuf_25, align 8, !tbaa !34
  %arraydecay = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 4, i64 0
  %cmp26 = icmp eq i8* %17, %arraydecay
  br i1 %cmp26, label %if.else37, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  %18 = ptrtoint i8* %17 to i64
  %__ebs_28 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 5
  %19 = load i64, i64* %__ebs_28, align 8, !tbaa !40
  %__ibs_29 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 7
  store i64 %19, i64* %__ibs_29, align 8, !tbaa !39
  %__intbuf_31 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 6
  %20 = bitcast i8** %__intbuf_31 to i64*
  store i64 %18, i64* %20, align 8, !tbaa !36
  %__owns_ib_32 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 15
  store i8 0, i8* %__owns_ib_32, align 1, !tbaa !35
  %call34 = tail call i8* @_Znam(i64 %19) #13
  store i8* %call34, i8** %__extbuf_25, align 8, !tbaa !34
  store i8 1, i8* %__owns_eb_, align 8, !tbaa !32
  br label %if.end46

if.else37:                                        ; preds = %land.lhs.true, %if.else
  %__ebs_38 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 5
  %21 = load i64, i64* %__ebs_38, align 8, !tbaa !40
  %__ibs_39 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 7
  store i64 %21, i64* %__ibs_39, align 8, !tbaa !39
  %call41 = tail call i8* @_Znam(i64 %21) #13
  %__intbuf_42 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 6
  store i8* %call41, i8** %__intbuf_42, align 8, !tbaa !36
  %__owns_ib_43 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 15
  store i8 1, i8* %__owns_ib_43, align 1, !tbaa !35
  br label %if.end46

if.end46:                                         ; preds = %entry, %if.end, %if.else37, %if.then27
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr %"class.std::__1::basic_streambuf"* @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl(%"class.std::__1::basic_filebuf"* %this, i8* %__s, i64 %__n) unnamed_addr #0 align 2 {
entry:
  %0 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0
  %__binp_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  %__owns_eb_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 14
  %1 = bitcast i8** %__binp_.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = load i8, i8* %__owns_eb_, align 8, !tbaa !32, !range !33
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %__extbuf_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  %3 = load i8*, i8** %__extbuf_, align 8, !tbaa !34
  %isnull = icmp eq i8* %3, null
  br i1 %isnull, label %if.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.then
  tail call void @_ZdaPv(i8* nonnull %3) #15
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %delete.notnull
  %__owns_ib_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 15
  %4 = load i8, i8* %__owns_ib_, align 1, !tbaa !35, !range !33
  %tobool2 = icmp eq i8 %4, 0
  br i1 %tobool2, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %__intbuf_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 6
  %5 = load i8*, i8** %__intbuf_, align 8, !tbaa !36
  %isnull4 = icmp eq i8* %5, null
  br i1 %isnull4, label %if.end7, label %delete.notnull5

delete.notnull5:                                  ; preds = %if.then3
  tail call void @_ZdaPv(i8* nonnull %5) #15
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then3, %delete.notnull5
  %__ebs_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 5
  store i64 %__n, i64* %__ebs_, align 8, !tbaa !40
  %cmp = icmp ugt i64 %__n, 8
  br i1 %cmp, label %if.then9, label %if.else19

if.then9:                                         ; preds = %if.end7
  %__always_noconv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 16
  %6 = load i8, i8* %__always_noconv_, align 2, !tbaa !38, !range !33
  %tobool10 = icmp ne i8 %6, 0
  %tobool11 = icmp ne i8* %__s, null
  %or.cond = and i1 %tobool11, %tobool10
  br i1 %or.cond, label %if.end18, label %if.else

if.else:                                          ; preds = %if.then9
  %call = tail call i8* @_Znam(i64 %__n) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.else
  %call.sink = phi i8* [ %call, %if.else ], [ %__s, %if.then9 ]
  %.sink = phi i8 [ 1, %if.else ], [ 0, %if.then9 ]
  %__extbuf_16 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  store i8* %call.sink, i8** %__extbuf_16, align 8, !tbaa !34
  br label %if.end23

if.else19:                                        ; preds = %if.end7
  %arraydecay = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 4, i64 0
  %__extbuf_20 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  store i8* %arraydecay, i8** %__extbuf_20, align 8, !tbaa !34
  store i64 8, i64* %__ebs_, align 8, !tbaa !40
  %__always_noconv_24.phi.trans.insert = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 16
  %.pre = load i8, i8* %__always_noconv_24.phi.trans.insert, align 2, !tbaa !38, !range !33
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.end18
  %7 = phi i8 [ %.pre, %if.else19 ], [ %6, %if.end18 ]
  %.sink46 = phi i8 [ 0, %if.else19 ], [ %.sink, %if.end18 ]
  store i8 %.sink46, i8* %__owns_eb_, align 8, !tbaa !32
  %tobool25 = icmp eq i8 %7, 0
  br i1 %tobool25, label %if.then26, label %if.else41

if.then26:                                        ; preds = %if.end23
  %8 = icmp sgt i64 %__n, 8
  %.sroa.speculated = select i1 %8, i64 %__n, i64 8
  %__ibs_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 7
  store i64 %.sroa.speculated, i64* %__ibs_, align 8, !tbaa !39
  %tobool28 = icmp ne i8* %__s, null
  %cmp31 = icmp ugt i64 %.sroa.speculated, 7
  %or.cond58 = and i1 %tobool28, %cmp31
  br i1 %or.cond58, label %if.end45, label %if.else35

if.else35:                                        ; preds = %if.then26
  %call37 = tail call i8* @_Znam(i64 %.sroa.speculated) #13
  br label %if.end45

if.else41:                                        ; preds = %if.end23
  %__ibs_42 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 7
  store i64 0, i64* %__ibs_42, align 8, !tbaa !39
  br label %if.end45

if.end45:                                         ; preds = %if.then26, %if.else35, %if.else41
  %.sink49 = phi i8* [ null, %if.else41 ], [ %call37, %if.else35 ], [ %__s, %if.then26 ]
  %.sink48 = phi i8 [ 0, %if.else41 ], [ 1, %if.else35 ], [ 0, %if.then26 ]
  %__intbuf_43 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 6
  store i8* %.sink49, i8** %__intbuf_43, align 8, !tbaa !36
  store i8 %.sink48, i8* %__owns_ib_, align 1, !tbaa !35
  ret %"class.std::__1::basic_streambuf"* %0
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj(%"class.std::__1::fpos"* noalias sret %agg.result, %"class.std::__1::basic_filebuf"* %this, i64 %__off, i32 %__way, i32) unnamed_addr #0 align 2 {
entry:
  %__cv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 9
  %1 = load %"class.std::__1::codecvt"*, %"class.std::__1::codecvt"** %__cv_, align 8, !tbaa !37
  %tobool = icmp eq %"class.std::__1::codecvt"* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %exception.i = tail call i8* @__cxa_allocate_exception(i64 8) #14
  %2 = bitcast i8* %exception.i to %"class.std::bad_cast"*
  tail call void @_ZNSt8bad_castC1Ev(%"class.std::bad_cast"* %2) #14
  tail call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt8bad_cast to i8*), i8* bitcast (void (%"class.std::bad_cast"*)* @_ZNSt8bad_castD1Ev to i8*)) #16
  unreachable

if.end:                                           ; preds = %entry
  %3 = bitcast %"class.std::__1::codecvt"* %1 to i32 (%"class.std::__1::codecvt"*)***
  %vtable.i = load i32 (%"class.std::__1::codecvt"*)**, i32 (%"class.std::__1::codecvt"*)*** %3, align 8, !tbaa !8
  %vfn.i = getelementptr inbounds i32 (%"class.std::__1::codecvt"*)*, i32 (%"class.std::__1::codecvt"*)** %vtable.i, i64 6
  %4 = load i32 (%"class.std::__1::codecvt"*)*, i32 (%"class.std::__1::codecvt"*)** %vfn.i, align 8
  %call.i = tail call i32 %4(%"class.std::__1::codecvt"* nonnull %1) #14
  %__file_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 8
  %5 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %cmp = icmp eq %struct.__sFILE* %5, null
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp3 = icmp slt i32 %call.i, 1
  %cmp4 = icmp ne i64 %__off, 0
  %or.cond = and i1 %cmp4, %cmp3
  br i1 %or.cond, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = bitcast %"class.std::__1::basic_filebuf"* %this to i32 (%"class.std::__1::basic_filebuf"*)***
  %vtable = load i32 (%"class.std::__1::basic_filebuf"*)**, i32 (%"class.std::__1::basic_filebuf"*)*** %6, align 8, !tbaa !8
  %vfn = getelementptr inbounds i32 (%"class.std::__1::basic_filebuf"*)*, i32 (%"class.std::__1::basic_filebuf"*)** %vtable, i64 6
  %7 = load i32 (%"class.std::__1::basic_filebuf"*)*, i32 (%"class.std::__1::basic_filebuf"*)** %vfn, align 8
  %call6 = tail call i32 %7(%"class.std::__1::basic_filebuf"* nonnull %this)
  %tobool7 = icmp eq i32 %call6, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end
  %8 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 128, i32 8, i1 false) #14
  br label %cleanup20

if.end9:                                          ; preds = %lor.lhs.false5
  %9 = icmp ult i32 %__way, 3
  br i1 %9, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end9
  %10 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 128, i32 8, i1 false) #14
  br label %cleanup20

sw.epilog:                                        ; preds = %if.end9
  %11 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %cmp13 = icmp sgt i32 %call.i, 0
  %conv = sext i32 %call.i to i64
  %mul = mul nsw i64 %conv, %__off
  %cond = select i1 %cmp13, i64 %mul, i64 0
  %call14 = tail call i32 @fseeko(%struct.__sFILE* %11, i64 %cond, i32 %__way)
  %tobool15 = icmp eq i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %sw.epilog
  %12 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 128, i32 8, i1 false) #14
  br label %cleanup20

if.end17:                                         ; preds = %sw.epilog
  %13 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %call19 = tail call i64 @ftello(%struct.__sFILE* %13)
  %__st_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 10
  %14 = bitcast %union.__mbstate_t* %__st_ to i8*
  %__r.sroa.0.0..sroa_cast30 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__r.sroa.0.0..sroa_cast30, i8* %14, i64 128, i32 8, i1 false)
  br label %cleanup20

cleanup20:                                        ; preds = %sw.default, %if.then16, %if.end17, %if.then8
  %.sink = phi i64 [ -1, %sw.default ], [ -1, %if.then16 ], [ %call19, %if.end17 ], [ -1, %if.then8 ]
  %__off_.i.i26 = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %agg.result, i64 0, i32 1
  store i64 %.sink, i64* %__off_.i.i26, align 8
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj(%"class.std::__1::fpos"* noalias sret %agg.result, %"class.std::__1::basic_filebuf"* %this, %"class.std::__1::fpos"* byval align 8 %__sp, i32) unnamed_addr #0 align 2 {
entry:
  %__file_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 8
  %1 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %cmp = icmp eq %struct.__sFILE* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = bitcast %"class.std::__1::basic_filebuf"* %this to i32 (%"class.std::__1::basic_filebuf"*)***
  %vtable = load i32 (%"class.std::__1::basic_filebuf"*)**, i32 (%"class.std::__1::basic_filebuf"*)*** %2, align 8, !tbaa !8
  %vfn = getelementptr inbounds i32 (%"class.std::__1::basic_filebuf"*)*, i32 (%"class.std::__1::basic_filebuf"*)** %vtable, i64 6
  %3 = load i32 (%"class.std::__1::basic_filebuf"*)*, i32 (%"class.std::__1::basic_filebuf"*)** %vfn, align 8
  %call = tail call i32 %3(%"class.std::__1::basic_filebuf"* nonnull %this)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 128, i32 8, i1 false) #14
  %__off_.i.i = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %agg.result, i64 0, i32 1
  store i64 -1, i64* %__off_.i.i, align 8, !tbaa !41
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %__off_.i = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %__sp, i64 0, i32 1
  %6 = load i64, i64* %__off_.i, align 8, !tbaa !41
  %call4 = tail call i32 @fseeko(%struct.__sFILE* %5, i64 %6, i32 0)
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %7 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 128, i32 8, i1 false) #14
  %__off_.i.i8 = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %agg.result, i64 0, i32 1
  store i64 -1, i64* %__off_.i.i8, align 8, !tbaa !41
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = bitcast %"class.std::__1::fpos"* %__sp to i8*
  %__st_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 10
  %9 = bitcast %union.__mbstate_t* %__st_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* nonnull %8, i64 128, i32 8, i1 false)
  %10 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* nonnull %8, i64 136, i32 8, i1 false), !tbaa.struct !44
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv(%"class.std::__1::basic_filebuf"* %this) unnamed_addr #0 align 2 {
entry:
  %__extbe = alloca i8*, align 8
  %__state = alloca %union.__mbstate_t, align 8
  %__file_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %cmp = icmp eq %struct.__sFILE* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %__cv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 9
  %1 = load %"class.std::__1::codecvt"*, %"class.std::__1::codecvt"** %__cv_, align 8, !tbaa !37
  %tobool = icmp eq %"class.std::__1::codecvt"* %1, null
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %exception.i = tail call i8* @__cxa_allocate_exception(i64 8) #14
  %2 = bitcast i8* %exception.i to %"class.std::bad_cast"*
  tail call void @_ZNSt8bad_castC1Ev(%"class.std::bad_cast"* %2) #14
  tail call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt8bad_cast to i8*), i8* bitcast (void (%"class.std::bad_cast"*)* @_ZNSt8bad_castD1Ev to i8*)) #16
  unreachable

if.end3:                                          ; preds = %if.end
  %__cm_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 13
  %3 = load i32, i32* %__cm_, align 4, !tbaa !46
  %and = and i32 %3, 16
  %tobool4 = icmp eq i32 %and, 0
  br i1 %tobool4, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %__nout_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 6
  %4 = load i8*, i8** %__nout_.i, align 8, !tbaa !47
  %__bout_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 5
  %5 = load i8*, i8** %__bout_.i, align 8, !tbaa !50
  %cmp7 = icmp eq i8* %4, %5
  br i1 %cmp7, label %do.body.preheader, label %if.then8

if.then8:                                         ; preds = %if.then5
  %6 = bitcast %"class.std::__1::basic_filebuf"* %this to i32 (%"class.std::__1::basic_filebuf"*, i32)***
  %vtable = load i32 (%"class.std::__1::basic_filebuf"*, i32)**, i32 (%"class.std::__1::basic_filebuf"*, i32)*** %6, align 8, !tbaa !8
  %vfn = getelementptr inbounds i32 (%"class.std::__1::basic_filebuf"*, i32)*, i32 (%"class.std::__1::basic_filebuf"*, i32)** %vtable, i64 13
  %7 = load i32 (%"class.std::__1::basic_filebuf"*, i32)*, i32 (%"class.std::__1::basic_filebuf"*, i32)** %vfn, align 8
  %call10 = tail call i32 %7(%"class.std::__1::basic_filebuf"* nonnull %this, i32 -1)
  %cmp12 = icmp eq i32 %call10, -1
  br i1 %cmp12, label %return, label %do.body.preheader

do.body.preheader:                                ; preds = %if.then5, %if.then8
  %8 = bitcast i8** %__extbe to i8*
  %__st_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 10
  %__extbuf_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  %__ebs_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 5
  %9 = bitcast i8** %__extbe to i64*
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  call void @llvm.lifetime.start(i64 8, i8* nonnull %8) #14
  %10 = load %"class.std::__1::codecvt"*, %"class.std::__1::codecvt"** %__cv_, align 8, !tbaa !37
  %11 = load i8*, i8** %__extbuf_, align 8, !tbaa !34
  %12 = load i64, i64* %__ebs_, align 8, !tbaa !40
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = bitcast %"class.std::__1::codecvt"* %10 to i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**)***
  %vtable.i131 = load i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**)**, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**)*** %13, align 8, !tbaa !8
  %vfn.i132 = getelementptr inbounds i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**)*, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**)** %vtable.i131, i64 5
  %14 = load i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**)*, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**)** %vfn.i132, align 8
  %call.i133 = call i32 %14(%"class.std::__1::codecvt"* %10, %union.__mbstate_t* nonnull dereferenceable(128) %__st_, i8* %11, i8* %add.ptr, i8** nonnull dereferenceable(8) %__extbe)
  %15 = load i64, i64* %9, align 8, !tbaa !2
  %16 = load i8*, i8** %__extbuf_, align 8, !tbaa !34
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %15, %sub.ptr.rhs.cast
  %17 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %call22 = call i64 @"\01_fwrite"(i8* %16, i64 1, i64 %sub.ptr.sub, %struct.__sFILE* %17)
  %cmp23 = icmp eq i64 %call22, %sub.ptr.sub
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #14
  br i1 %cmp23, label %do.cond, label %return.loopexit

do.cond:                                          ; preds = %do.body
  switch i32 %call.i133, label %if.end30 [
    i32 1, label %do.body
    i32 2, label %return.loopexit
  ]

if.end30:                                         ; preds = %do.cond
  %18 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %call32 = call i32 @fflush(%struct.__sFILE* %18)
  %tobool33 = icmp eq i32 %call32, 0
  br i1 %tobool33, label %if.end107, label %return

if.else:                                          ; preds = %if.end3
  %and40 = and i32 %3, 8
  %tobool41 = icmp eq i32 %and40, 0
  br i1 %tobool41, label %if.end107, label %if.then42

if.then42:                                        ; preds = %if.else
  %19 = bitcast %union.__mbstate_t* %__state to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %19) #14
  %__st_last_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 11
  %20 = bitcast %union.__mbstate_t* %__st_last_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %19, i8* %20, i64 128, i32 8, i1 false), !tbaa.struct !51
  %__always_noconv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 16
  %21 = load i8, i8* %__always_noconv_, align 2, !tbaa !38, !range !33
  %tobool43 = icmp eq i8 %21, 0
  br i1 %tobool43, label %if.else50, label %if.then44

if.then44:                                        ; preds = %if.then42
  %__einp_.i134 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 4
  %22 = bitcast i8** %__einp_.i134 to i64*
  %23 = load i64, i64* %22, align 8, !tbaa !52
  %__ninp_.i135 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 3
  %24 = bitcast i8** %__ninp_.i135 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !53
  %sub.ptr.sub49 = sub i64 %23, %25
  br label %if.end86

if.else50:                                        ; preds = %if.then42
  %26 = bitcast %"class.std::__1::codecvt"* %1 to i32 (%"class.std::__1::codecvt"*)***
  %vtable.i128 = load i32 (%"class.std::__1::codecvt"*)**, i32 (%"class.std::__1::codecvt"*)*** %26, align 8, !tbaa !8
  %vfn.i129 = getelementptr inbounds i32 (%"class.std::__1::codecvt"*)*, i32 (%"class.std::__1::codecvt"*)** %vtable.i128, i64 6
  %27 = load i32 (%"class.std::__1::codecvt"*)*, i32 (%"class.std::__1::codecvt"*)** %vfn.i129, align 8
  %call.i130 = tail call i32 %27(%"class.std::__1::codecvt"* nonnull %1) #14
  %__extbufend_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 3
  %28 = bitcast i8** %__extbufend_ to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !54
  %__extbufnext_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 2
  %30 = bitcast i8** %__extbufnext_ to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !55
  %sub.ptr.sub55 = sub i64 %29, %31
  %cmp56 = icmp sgt i32 %call.i130, 0
  %32 = inttoptr i64 %31 to i8*
  br i1 %cmp56, label %if.then57, label %if.else63

if.then57:                                        ; preds = %if.else50
  %conv = sext i32 %call.i130 to i64
  %__einp_.i127 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 4
  %33 = bitcast i8** %__einp_.i127 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !52
  %__ninp_.i126 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 3
  %35 = bitcast i8** %__ninp_.i126 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !53
  %sub.ptr.sub62 = sub i64 %34, %36
  %mul = mul nsw i64 %sub.ptr.sub62, %conv
  %add = add nsw i64 %mul, %sub.ptr.sub55
  br label %if.end86

if.else63:                                        ; preds = %if.else50
  %__ninp_.i125 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 3
  %37 = load i8*, i8** %__ninp_.i125, align 8, !tbaa !53
  %__einp_.i124 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 4
  %38 = load i8*, i8** %__einp_.i124, align 8, !tbaa !52
  %cmp66 = icmp eq i8* %37, %38
  br i1 %cmp66, label %if.end86, label %if.then67

if.then67:                                        ; preds = %if.else63
  %39 = load %"class.std::__1::codecvt"*, %"class.std::__1::codecvt"** %__cv_, align 8, !tbaa !37
  %__extbuf_69 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  %40 = load i8*, i8** %__extbuf_69, align 8, !tbaa !34
  %__binp_.i122 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  %41 = bitcast i8** %__binp_.i122 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !56
  %sub.ptr.lhs.cast73 = ptrtoint i8* %37 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %42
  %43 = bitcast %"class.std::__1::codecvt"* %39 to i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i64)***
  %vtable.i = load i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i64)**, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i64)*** %43, align 8, !tbaa !8
  %vfn.i = getelementptr inbounds i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i64)*, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i64)** %vtable.i, i64 8
  %44 = load i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i64)*, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i64)** %vfn.i, align 8
  %call.i = call i32 %44(%"class.std::__1::codecvt"* %39, %union.__mbstate_t* nonnull dereferenceable(128) %__state, i8* %40, i8* %32, i64 %sub.ptr.sub75)
  %45 = load i64, i64* %30, align 8, !tbaa !55
  %46 = bitcast i8** %__extbuf_69 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !34
  %conv82 = sext i32 %call.i to i64
  %sub.ptr.sub81 = add i64 %45, %sub.ptr.sub55
  %sub = sub i64 %sub.ptr.sub81, %conv82
  %add83 = sub i64 %sub, %47
  br label %if.end86

if.end86:                                         ; preds = %if.then57, %if.then67, %if.else63, %if.then44
  %__c.1 = phi i64 [ %sub.ptr.sub49, %if.then44 ], [ %add, %if.then57 ], [ %add83, %if.then67 ], [ %sub.ptr.sub55, %if.else63 ]
  %__update_st.1 = phi i8 [ 0, %if.then44 ], [ 0, %if.then57 ], [ 1, %if.then67 ], [ 0, %if.else63 ]
  %48 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %sub88 = sub nsw i64 0, %__c.1
  %call89 = call i32 @fseeko(%struct.__sFILE* %48, i64 %sub88, i32 1)
  %tobool90 = icmp eq i32 %call89, 0
  br i1 %tobool90, label %if.end92, label %cleanup101

if.end92:                                         ; preds = %if.end86
  %tobool93 = icmp eq i8 %__update_st.1, 0
  br i1 %tobool93, label %if.end96, label %if.then94

if.then94:                                        ; preds = %if.end92
  %__st_95 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 10
  %49 = bitcast %union.__mbstate_t* %__st_95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* nonnull %19, i64 128, i32 8, i1 false), !tbaa.struct !51
  br label %if.end96

if.end96:                                         ; preds = %if.end92, %if.then94
  %__extbuf_97 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  %50 = bitcast i8** %__extbuf_97 to i64*
  %51 = load i64, i64* %50, align 8, !tbaa !34
  %__extbufend_98 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 3
  %52 = bitcast i8** %__extbufend_98 to i64*
  store i64 %51, i64* %52, align 8, !tbaa !54
  %__extbufnext_99 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 2
  %53 = bitcast i8** %__extbufnext_99 to i64*
  store i64 %51, i64* %53, align 8, !tbaa !55
  %__binp_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  store i32 0, i32* %__cm_, align 4, !tbaa !46
  %54 = bitcast i8** %__binp_.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 24, i32 8, i1 false)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %19) #14
  br label %if.end107

cleanup101:                                       ; preds = %if.end86
  call void @llvm.lifetime.end(i64 128, i8* nonnull %19) #14
  br label %return

if.end107:                                        ; preds = %if.end30, %if.end96, %if.else
  br label %return

return.loopexit:                                  ; preds = %do.cond, %do.body
  br label %return

return:                                           ; preds = %return.loopexit, %if.end30, %cleanup101, %if.then8, %entry, %if.end107
  %retval.4 = phi i32 [ 0, %if.end107 ], [ -1, %cleanup101 ], [ 0, %entry ], [ -1, %if.then8 ], [ -1, %if.end30 ], [ -1, %return.loopexit ]
  ret i32 %retval.4
}

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #4

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #4

; Function Attrs: ssp uwtable
define linkonce_odr i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv(%"class.std::__1::basic_filebuf"* %this) unnamed_addr #0 align 2 {
entry:
  %__1buf = alloca i8, align 1
  %__inext = alloca i8*, align 8
  %__file_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %cmp = icmp eq %struct.__sFILE* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %__cm_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 13
  %1 = load i32, i32* %__cm_.i, align 4, !tbaa !46
  %and.i = and i32 %1, 8
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %if.then.i, label %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit_crit_edge

if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit_crit_edge: ; preds = %if.end
  %__ninp_.i166.phi.trans.insert = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 3
  %.pre = load i8*, i8** %__ninp_.i166.phi.trans.insert, align 8, !tbaa !53
  br label %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit

if.then.i:                                        ; preds = %if.end
  %__bout_.i.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 5
  %__always_noconv_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 16
  %2 = bitcast i8** %__bout_.i.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false) #14
  %3 = load i8, i8* %__always_noconv_.i, align 2, !tbaa !38, !range !33
  %tobool2.i = icmp eq i8 %3, 0
  %__intbuf_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 6
  %__ibs_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 7
  %__extbuf_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  %__ebs_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 5
  %__ibs_.sink.i = select i1 %tobool2.i, i64* %__ibs_.i, i64* %__ebs_.i
  %.sink19.in.i = select i1 %tobool2.i, i8** %__intbuf_.i, i8** %__extbuf_.i
  %.sink19.i = load i8*, i8** %.sink19.in.i, align 8, !tbaa !2
  %4 = load i64, i64* %__ibs_.sink.i, align 8, !tbaa !57
  %add.ptr9.i = getelementptr inbounds i8, i8* %.sink19.i, i64 %4
  %__binp_.i.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  store i8* %.sink19.i, i8** %__binp_.i.i, align 8, !tbaa !56
  %__ninp_.i.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 3
  store i8* %add.ptr9.i, i8** %__ninp_.i.i, align 8, !tbaa !53
  %__einp_.i.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 4
  store i8* %add.ptr9.i, i8** %__einp_.i.i, align 8, !tbaa !52
  store i32 8, i32* %__cm_.i, align 4, !tbaa !46
  br label %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit

_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit: ; preds = %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit_crit_edge, %if.then.i
  %__ninp_.i166.pre-phi = phi i8** [ %__ninp_.i166.phi.trans.insert, %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit_crit_edge ], [ %__ninp_.i.i, %if.then.i ]
  %5 = phi i8* [ %.pre, %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit_crit_edge ], [ %add.ptr9.i, %if.then.i ]
  %retval.0.i = phi i1 [ false, %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit_crit_edge ], [ true, %if.then.i ]
  call void @llvm.lifetime.start(i64 1, i8* nonnull %__1buf) #14
  %cmp4 = icmp eq i8* %5, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit
  %add.ptr = getelementptr inbounds i8, i8* %__1buf, i64 1
  %__binp_.i167 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  store i8* %__1buf, i8** %__binp_.i167, align 8, !tbaa !56
  store i8* %add.ptr, i8** %__ninp_.i166.pre-phi, align 8, !tbaa !53
  %__einp_.i169 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 4
  store i8* %add.ptr, i8** %__einp_.i169, align 8, !tbaa !52
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit
  %6 = phi i8* [ %add.ptr, %if.then5 ], [ %5, %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv.exit ]
  %__einp_.i184.phi.trans.insert = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 4
  br i1 %retval.0.i, label %if.end7.cleanup.done15_crit_edge, label %cleanup.action

if.end7.cleanup.done15_crit_edge:                 ; preds = %if.end7
  %.pre203 = load i8*, i8** %__einp_.i184.phi.trans.insert, align 8, !tbaa !52
  br label %cleanup.done15

cleanup.action:                                   ; preds = %if.end7
  %7 = bitcast i8** %__einp_.i184.phi.trans.insert to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !52
  %__binp_.i188 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  %9 = bitcast i8** %__binp_.i188 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !56
  %sub.ptr.sub = sub i64 %8, %10
  %div = sdiv i64 %sub.ptr.sub, 2
  %11 = icmp ult i64 %div, 4
  %.sroa.speculated195 = select i1 %11, i64 %div, i64 4
  %12 = inttoptr i64 %8 to i8*
  br label %cleanup.done15

cleanup.done15:                                   ; preds = %if.end7.cleanup.done15_crit_edge, %cleanup.action
  %13 = phi i8* [ %.pre203, %if.end7.cleanup.done15_crit_edge ], [ %12, %cleanup.action ]
  %cond200 = phi i64 [ 0, %if.end7.cleanup.done15_crit_edge ], [ %.sroa.speculated195, %cleanup.action ]
  %cmp19 = icmp eq i8* %6, %13
  br i1 %cmp19, label %if.then20, label %if.else125

if.then20:                                        ; preds = %cleanup.done15
  %idx.neg = sub nsw i64 0, %cond200
  %__binp_.i183 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  %14 = load i8*, i8** %__binp_.i183, align 8, !tbaa !56
  %add.ptr23 = getelementptr inbounds i8, i8* %6, i64 %idx.neg
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %add.ptr23, i64 %cond200, i32 1, i1 false)
  %__always_noconv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 16
  %15 = load i8, i8* %__always_noconv_, align 2, !tbaa !38, !range !33
  %tobool24 = icmp eq i8 %15, 0
  br i1 %tobool24, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then20
  %16 = bitcast i8** %__einp_.i184.phi.trans.insert to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !52
  %18 = load i8*, i8** %__binp_.i183, align 8, !tbaa !56
  %sub.ptr.rhs.cast29 = ptrtoint i8* %18 to i64
  %sub.ptr.sub30 = sub i64 %17, %cond200
  %sub = sub i64 %sub.ptr.sub30, %sub.ptr.rhs.cast29
  %add.ptr32 = getelementptr inbounds i8, i8* %18, i64 %cond200
  %19 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %call34 = call i64 @fread(i8* %add.ptr32, i64 1, i64 %sub, %struct.__sFILE* %19)
  %cmp35 = icmp eq i64 %call34, 0
  br i1 %cmp35, label %if.end128, label %if.then36

if.then36:                                        ; preds = %if.then25
  %20 = load i8*, i8** %__binp_.i183, align 8, !tbaa !56
  %add.ptr39 = getelementptr inbounds i8, i8* %20, i64 %cond200
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr39, i64 %call34
  store i8* %add.ptr39, i8** %__ninp_.i166.pre-phi, align 8, !tbaa !53
  store i8* %add.ptr42, i8** %__einp_.i184.phi.trans.insert, align 8, !tbaa !52
  %21 = load i8, i8* %add.ptr39, align 1, !tbaa !18
  %conv.i171 = zext i8 %21 to i32
  br label %if.end128

if.else:                                          ; preds = %if.then20
  %__extbufend_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 3
  %22 = load i8*, i8** %__extbufend_, align 8, !tbaa !54
  %__extbufnext_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 2
  %23 = load i8*, i8** %__extbufnext_, align 8, !tbaa !55
  %cmp46 = icmp eq i8* %22, %23
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %.pre208 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  br i1 %cmp46, label %if.end54, label %if.then47

if.then47:                                        ; preds = %if.else
  %26 = load i8*, i8** %.pre208, align 8, !tbaa !34
  %sub.ptr.sub53 = sub i64 %24, %25
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %26, i8* %23, i64 %sub.ptr.sub53, i32 1, i1 false)
  %.phi.trans.insert = bitcast i8** %__extbufend_ to i64*
  %.pre204 = load i64, i64* %.phi.trans.insert, align 8, !tbaa !54
  %.phi.trans.insert205 = bitcast i8** %__extbufnext_ to i64*
  %.pre206 = load i64, i64* %.phi.trans.insert205, align 8, !tbaa !55
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then47
  %27 = phi i64 [ %.pre206, %if.then47 ], [ %25, %if.else ]
  %28 = phi i64 [ %.pre204, %if.then47 ], [ %24, %if.else ]
  %29 = load i8*, i8** %.pre208, align 8, !tbaa !34
  %sub.ptr.sub60 = sub i64 %28, %27
  %add.ptr61 = getelementptr inbounds i8, i8* %29, i64 %sub.ptr.sub60
  store i8* %add.ptr61, i8** %__extbufnext_, align 8, !tbaa !55
  %arraydecay = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 4, i64 0
  %cmp65 = icmp eq i8* %29, %arraydecay
  %30 = ptrtoint i8* %add.ptr61 to i64
  br i1 %cmp65, label %cond.end68, label %cond.false67

cond.false67:                                     ; preds = %if.end54
  %__ebs_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 5
  %31 = load i64, i64* %__ebs_, align 8, !tbaa !40
  br label %cond.end68

cond.end68:                                       ; preds = %if.end54, %cond.false67
  %cond69 = phi i64 [ %31, %cond.false67 ], [ 8, %if.end54 ]
  %add.ptr70 = getelementptr inbounds i8, i8* %29, i64 %cond69
  store i8* %add.ptr70, i8** %__extbufend_, align 8, !tbaa !54
  %__ibs_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 7
  %32 = load i64, i64* %__ibs_, align 8, !tbaa !39
  %sub74 = sub i64 %32, %cond200
  %.cast = ptrtoint i8* %add.ptr70 to i64
  %sub.ptr.sub80 = sub i64 %.cast, %30
  %cmp.i.i.i = icmp ult i64 %sub.ptr.sub80, %sub74
  %.sroa.speculated = select i1 %cmp.i.i.i, i64 %sub.ptr.sub80, i64 %sub74
  %__st_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 10
  %__st_last_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 11
  %33 = bitcast %union.__mbstate_t* %__st_last_ to i8*
  %34 = bitcast %union.__mbstate_t* %__st_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 128, i32 8, i1 false), !tbaa.struct !51
  %35 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %call84 = call i64 @fread(i8* %add.ptr61, i64 1, i64 %.sroa.speculated, %struct.__sFILE* %35)
  %cmp85 = icmp eq i64 %call84, 0
  br i1 %cmp85, label %if.end128, label %if.then86

if.then86:                                        ; preds = %cond.end68
  %__cv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 9
  %36 = load %"class.std::__1::codecvt"*, %"class.std::__1::codecvt"** %__cv_, align 8, !tbaa !37
  %tobool87 = icmp eq %"class.std::__1::codecvt"* %36, null
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.then86
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #14
  %37 = bitcast i8* %exception.i to %"class.std::bad_cast"*
  call void @_ZNSt8bad_castC1Ev(%"class.std::bad_cast"* %37) #14
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt8bad_cast to i8*), i8* bitcast (void (%"class.std::bad_cast"*)* @_ZNSt8bad_castD1Ev to i8*)) #16
  unreachable

if.end89:                                         ; preds = %if.then86
  %38 = load i8*, i8** %__extbufnext_, align 8, !tbaa !55
  %add.ptr91 = getelementptr inbounds i8, i8* %38, i64 %call84
  store i8* %add.ptr91, i8** %__extbufend_, align 8, !tbaa !54
  %39 = bitcast i8** %__inext to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %39) #14
  %40 = load i8*, i8** %.pre208, align 8, !tbaa !34
  %41 = load i8*, i8** %__binp_.i183, align 8, !tbaa !56
  %add.ptr99 = getelementptr inbounds i8, i8* %41, i64 %cond200
  %42 = load i64, i64* %__ibs_, align 8, !tbaa !39
  %add.ptr102 = getelementptr inbounds i8, i8* %41, i64 %42
  %43 = bitcast %"class.std::__1::codecvt"* %36 to i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)***
  %vtable.i = load i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)**, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)*** %43, align 8, !tbaa !8
  %vfn.i = getelementptr inbounds i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)*, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)** %vtable.i, i64 4
  %44 = load i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)*, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)** %vfn.i, align 8
  %call.i = call i32 %44(%"class.std::__1::codecvt"* nonnull %36, %union.__mbstate_t* nonnull dereferenceable(128) %__st_, i8* %40, i8* %add.ptr91, i8** nonnull dereferenceable(8) %__extbufnext_, i8* %add.ptr99, i8* %add.ptr102, i8** nonnull dereferenceable(8) %__inext)
  %cmp104 = icmp eq i32 %call.i, 3
  br i1 %cmp104, label %if.then105, label %if.else111

if.then105:                                       ; preds = %if.end89
  %45 = load i8*, i8** %.pre208, align 8, !tbaa !34
  %46 = load i8*, i8** %__extbufend_, align 8, !tbaa !54
  store i8* %45, i8** %__binp_.i183, align 8, !tbaa !56
  br label %if.end122.sink.split

if.else111:                                       ; preds = %if.end89
  %47 = load i8*, i8** %__inext, align 8, !tbaa !2
  %48 = load i8*, i8** %__binp_.i183, align 8, !tbaa !56
  %add.ptr113 = getelementptr inbounds i8, i8* %48, i64 %cond200
  %cmp114 = icmp eq i8* %47, %add.ptr113
  br i1 %cmp114, label %if.end122, label %if.end122.sink.split

if.end122.sink.split:                             ; preds = %if.else111, %if.then105
  %.sink202 = phi i8* [ %45, %if.then105 ], [ %add.ptr113, %if.else111 ]
  %.sink = phi i8* [ %46, %if.then105 ], [ %47, %if.else111 ]
  store i8* %.sink202, i8** %__ninp_.i166.pre-phi, align 8, !tbaa !53
  store i8* %.sink, i8** %__einp_.i184.phi.trans.insert, align 8, !tbaa !52
  %49 = load i8, i8* %.sink202, align 1, !tbaa !18
  %conv.i153 = zext i8 %49 to i32
  br label %if.end122

if.end122:                                        ; preds = %if.end122.sink.split, %if.else111
  %__c.1 = phi i32 [ -1, %if.else111 ], [ %conv.i153, %if.end122.sink.split ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %39) #14
  br label %if.end128

if.else125:                                       ; preds = %cleanup.done15
  %50 = load i8, i8* %6, align 1, !tbaa !18
  %conv.i = zext i8 %50 to i32
  %.pre207 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  br label %if.end128

if.end128:                                        ; preds = %if.end122, %cond.end68, %if.then36, %if.then25, %if.else125
  %__binp_.i151.pre-phi = phi i8** [ %__binp_.i183, %if.end122 ], [ %__binp_.i183, %cond.end68 ], [ %__binp_.i183, %if.then36 ], [ %__binp_.i183, %if.then25 ], [ %.pre207, %if.else125 ]
  %__c.3 = phi i32 [ %__c.1, %if.end122 ], [ -1, %cond.end68 ], [ %conv.i171, %if.then36 ], [ -1, %if.then25 ], [ %conv.i, %if.else125 ]
  %51 = load i8*, i8** %__binp_.i151.pre-phi, align 8, !tbaa !56
  %cmp130 = icmp eq i8* %51, %__1buf
  br i1 %cmp130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end128
  store i8* null, i8** %__binp_.i151.pre-phi, align 8, !tbaa !56
  store i8* null, i8** %__ninp_.i166.pre-phi, align 8, !tbaa !53
  store i8* null, i8** %__einp_.i184.phi.trans.insert, align 8, !tbaa !52
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.end128
  call void @llvm.lifetime.end(i64 1, i8* nonnull %__1buf) #14
  br label %return

return:                                           ; preds = %entry, %if.end132
  %retval.0 = phi i32 [ %__c.3, %if.end132 ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #4

; Function Attrs: norecurse ssp uwtable
define linkonce_odr i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi(%"class.std::__1::basic_filebuf"* %this, i32 %__c) unnamed_addr #7 align 2 {
entry:
  %__file_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %tobool = icmp eq %struct.__sFILE* %0, null
  br i1 %tobool, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %__binp_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  %1 = load i8*, i8** %__binp_.i, align 8, !tbaa !56
  %__ninp_.i27 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 3
  %2 = load i8*, i8** %__ninp_.i27, align 8, !tbaa !53
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %cmp.i26 = icmp eq i32 %__c, -1
  br i1 %cmp.i26, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %add.ptr.i25 = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr.i25, i8** %__ninp_.i27, align 8, !tbaa !53
  br label %return

if.end:                                           ; preds = %if.then
  %__om_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 12
  %3 = load i32, i32* %__om_, align 8, !tbaa !25
  %and = and i32 %3, 16
  %tobool7 = icmp eq i32 %and, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  %.pre = getelementptr inbounds i8, i8* %2, i64 -1
  %.pre28 = trunc i32 %__c to i8
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %conv.i23 = trunc i32 %__c to i8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 -1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %cmp.i = icmp eq i8 %conv.i23, %4
  br i1 %cmp.i, label %if.then11, label %return

if.then11:                                        ; preds = %if.end.if.then11_crit_edge, %lor.lhs.false
  %conv.i.pre-phi = phi i8 [ %.pre28, %if.end.if.then11_crit_edge ], [ %conv.i23, %lor.lhs.false ]
  %add.ptr.i.pre-phi = phi i8* [ %.pre, %if.end.if.then11_crit_edge ], [ %arrayidx, %lor.lhs.false ]
  store i8* %add.ptr.i.pre-phi, i8** %__ninp_.i27, align 8, !tbaa !53
  store i8 %conv.i.pre-phi, i8* %add.ptr.i.pre-phi, align 1, !tbaa !18
  br label %return

return:                                           ; preds = %land.lhs.true, %lor.lhs.false, %entry, %if.then11, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %__c, %if.then11 ], [ -1, %entry ], [ -1, %lor.lhs.false ], [ -1, %land.lhs.true ]
  ret i32 %retval.0
}

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #4

; Function Attrs: ssp uwtable
define linkonce_odr i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi(%"class.std::__1::basic_filebuf"* %this, i32 %__c) unnamed_addr #0 align 2 {
entry:
  %__1buf = alloca i8, align 1
  %__extbe = alloca i8*, align 8
  %__e = alloca i8*, align 8
  %__file_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %cmp = icmp eq %struct.__sFILE* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %__cm_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 13
  %1 = load i32, i32* %__cm_.i, align 4, !tbaa !46
  %and.i = and i32 %1, 16
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %if.then.i, label %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit_crit_edge

if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit_crit_edge: ; preds = %if.end
  %__bout_.i144.phi.trans.insert = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 5
  %.phi.trans.insert = bitcast i8** %__bout_.i144.phi.trans.insert to i64*
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !tbaa !50
  %__eout_.i145.phi.trans.insert = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 7
  %.phi.trans.insert176 = bitcast i8** %__eout_.i145.phi.trans.insert to i64*
  %.pre177 = load i64, i64* %.phi.trans.insert176, align 8, !tbaa !58
  %2 = inttoptr i64 %.pre to i8*
  br label %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit

if.then.i:                                        ; preds = %if.end
  %__binp_.i.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 2
  %__ebs_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 5
  %3 = bitcast i8** %__binp_.i.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false) #14
  %4 = load i64, i64* %__ebs_.i, align 8, !tbaa !40
  %cmp.i = icmp ugt i64 %4, 8
  br i1 %cmp.i, label %if.then2.i, label %if.end11.i

if.then2.i:                                       ; preds = %if.then.i
  %__always_noconv_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 16
  %5 = load i8, i8* %__always_noconv_.i, align 2, !tbaa !38, !range !33
  %tobool3.i = icmp eq i8 %5, 0
  br i1 %tobool3.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then2.i
  %__extbuf_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  %6 = load i8*, i8** %__extbuf_.i, align 8, !tbaa !34
  %sub.i = add i64 %4, -1
  %add.ptr.i141 = getelementptr inbounds i8, i8* %6, i64 %sub.i
  br label %if.end11.i

if.else.i:                                        ; preds = %if.then2.i
  %__intbuf_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 6
  %7 = load i8*, i8** %__intbuf_.i, align 8, !tbaa !36
  %__ibs_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 7
  %8 = load i64, i64* %__ibs_.i, align 8, !tbaa !39
  %sub8.i = add i64 %8, -1
  %add.ptr9.i = getelementptr inbounds i8, i8* %7, i64 %sub8.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then4.i, %if.then.i
  %.sink20.i = phi i8* [ %6, %if.then4.i ], [ %7, %if.else.i ], [ null, %if.then.i ]
  %add.ptr.sink.i = phi i8* [ %add.ptr.i141, %if.then4.i ], [ %add.ptr9.i, %if.else.i ], [ null, %if.then.i ]
  %__nout_.i17.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 6
  store i8* %.sink20.i, i8** %__nout_.i17.i, align 8, !tbaa !47
  %__bout_.i18.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 5
  store i8* %.sink20.i, i8** %__bout_.i18.i, align 8, !tbaa !50
  %__eout_.i19.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 7
  store i8* %add.ptr.sink.i, i8** %__eout_.i19.i, align 8, !tbaa !58
  store i32 16, i32* %__cm_.i, align 4, !tbaa !46
  %9 = ptrtoint i8* %.sink20.i to i64
  %10 = ptrtoint i8* %add.ptr.sink.i to i64
  %.pre181 = bitcast i8** %__bout_.i18.i to i64*
  %.pre182 = bitcast i8** %__eout_.i19.i to i64*
  br label %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit

_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit: ; preds = %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit_crit_edge, %if.end11.i
  %.pre-phi183 = phi i64* [ %.phi.trans.insert176, %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit_crit_edge ], [ %.pre182, %if.end11.i ]
  %__eout_.i145.pre-phi = phi i8** [ %__eout_.i145.phi.trans.insert, %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit_crit_edge ], [ %__eout_.i19.i, %if.end11.i ]
  %.pre-phi = phi i64* [ %.phi.trans.insert, %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit_crit_edge ], [ %.pre181, %if.end11.i ]
  %__bout_.i144.pre-phi = phi i8** [ %__bout_.i144.phi.trans.insert, %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit_crit_edge ], [ %__bout_.i18.i, %if.end11.i ]
  %11 = phi i8* [ %2, %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit_crit_edge ], [ %.sink20.i, %if.end11.i ]
  %12 = phi i64 [ %.pre177, %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit_crit_edge ], [ %10, %if.end11.i ]
  %13 = phi i64 [ %.pre, %if.end._ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit_crit_edge ], [ %9, %if.end11.i ]
  call void @llvm.lifetime.start(i64 1, i8* nonnull %__1buf) #14
  %cmp.i158 = icmp eq i32 %__c, -1
  %__nout_.i150.phi.trans.insert = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 6
  %.pre178 = load i8*, i8** %__nout_.i150.phi.trans.insert, align 8, !tbaa !47
  br i1 %cmp.i158, label %if.end13, label %if.then6

if.then6:                                         ; preds = %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit
  %cmp8 = icmp eq i8* %.pre178, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  %add.ptr = getelementptr inbounds i8, i8* %__1buf, i64 1
  store i8* %__1buf, i8** %__nout_.i150.phi.trans.insert, align 8, !tbaa !47
  store i8* %__1buf, i8** %__bout_.i144.pre-phi, align 8, !tbaa !50
  store i8* %add.ptr, i8** %__eout_.i145.pre-phi, align 8, !tbaa !58
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then6
  %14 = phi i8* [ %__1buf, %if.then9 ], [ %.pre178, %if.then6 ]
  %conv.i = trunc i32 %__c to i8
  store i8 %conv.i, i8* %14, align 1, !tbaa !18
  %15 = load i8*, i8** %__nout_.i150.phi.trans.insert, align 8, !tbaa !47
  %add.ptr.i152 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %add.ptr.i152, i8** %__nout_.i150.phi.trans.insert, align 8, !tbaa !47
  %.pre179 = load i8*, i8** %__bout_.i144.pre-phi, align 8, !tbaa !50
  br label %if.end13

if.end13:                                         ; preds = %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit, %if.end10
  %16 = phi i8* [ %.pre179, %if.end10 ], [ %11, %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit ]
  %17 = phi i8* [ %add.ptr.i152, %if.end10 ], [ %.pre178, %_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv.exit ]
  %cmp16 = icmp eq i8* %17, %16
  br i1 %cmp16, label %if.end102, label %if.then17

if.then17:                                        ; preds = %if.end13
  %__always_noconv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 16
  %18 = load i8, i8* %__always_noconv_, align 2, !tbaa !38, !range !33
  %tobool = icmp eq i8 %18, 0
  br i1 %tobool, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then17
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %call23 = call i64 @"\01_fwrite"(i8* %16, i64 1, i64 %sub.ptr.sub, %struct.__sFILE* %19)
  %cmp24 = icmp eq i64 %call23, %sub.ptr.sub
  br i1 %cmp24, label %if.then18.if.end101_crit_edge, label %cleanup104

if.then18.if.end101_crit_edge:                    ; preds = %if.then18
  %.pre184 = bitcast i8** %__nout_.i150.phi.trans.insert to i64*
  br label %if.end101

if.else:                                          ; preds = %if.then17
  %20 = bitcast i8** %__extbe to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %20) #14
  %__extbuf_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  %21 = bitcast i8** %__extbuf_ to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !34
  %23 = bitcast i8** %__extbe to i64*
  store i64 %22, i64* %23, align 8, !tbaa !2
  %__cv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 9
  %24 = load %"class.std::__1::codecvt"*, %"class.std::__1::codecvt"** %__cv_, align 8, !tbaa !37
  %tobool28172 = icmp eq %"class.std::__1::codecvt"* %24, null
  br i1 %tobool28172, label %if.then29, label %if.end30.lr.ph

if.end30.lr.ph:                                   ; preds = %if.else
  %25 = inttoptr i64 %22 to i8*
  %26 = bitcast i8** %__e to i8*
  %__st_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 10
  %__ebs_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 5
  %27 = bitcast i8** %__e to i64*
  %28 = bitcast i8** %__nout_.i150.phi.trans.insert to i64*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %26) #14
  %29 = load i64, i64* %__ebs_, align 8, !tbaa !40
  %add.ptr36192 = getelementptr inbounds i8, i8* %25, i64 %29
  %30 = bitcast %"class.std::__1::codecvt"* %24 to i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)***
  %vtable.i193 = load i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)**, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)*** %30, align 8, !tbaa !8
  %vfn.i194 = getelementptr inbounds i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)*, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)** %vtable.i193, i64 3
  %31 = load i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)*, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)** %vfn.i194, align 8
  %call.i195 = call i32 %31(%"class.std::__1::codecvt"* nonnull %24, %union.__mbstate_t* nonnull dereferenceable(128) %__st_, i8* %16, i8* %17, i8** nonnull dereferenceable(8) %__e, i8* %25, i8* %add.ptr36192, i8** nonnull dereferenceable(8) %__extbe)
  %32 = load i8*, i8** %__e, align 8, !tbaa !2
  %33 = load i8*, i8** %__bout_.i144.pre-phi, align 8, !tbaa !50
  %cmp39196 = icmp eq i8* %32, %33
  br i1 %cmp39196, label %cleanup97, label %if.end42.preheader

if.end42.preheader:                               ; preds = %if.end30.lr.ph
  br label %if.end42

if.then29.loopexit:                               ; preds = %do.cond.thread164
  br label %if.then29

if.then29:                                        ; preds = %if.then29.loopexit, %if.else
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #14
  %34 = bitcast i8* %exception.i to %"class.std::bad_cast"*
  call void @_ZNSt8bad_castC1Ev(%"class.std::bad_cast"* %34) #14
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt8bad_cast to i8*), i8* bitcast (void (%"class.std::bad_cast"*)* @_ZNSt8bad_castD1Ev to i8*)) #16
  unreachable

if.end42:                                         ; preds = %if.end42.preheader, %do.cond.thread164.if.end30_crit_edge
  %35 = phi i8* [ %50, %do.cond.thread164.if.end30_crit_edge ], [ %33, %if.end42.preheader ]
  %call.i197 = phi i32 [ %call.i, %do.cond.thread164.if.end30_crit_edge ], [ %call.i195, %if.end42.preheader ]
  %cmp43 = icmp eq i32 %call.i197, 3
  br i1 %cmp43, label %if.then44, label %if.else61

if.then44:                                        ; preds = %if.end42
  %36 = load i64, i64* %28, align 8, !tbaa !47
  %sub.ptr.rhs.cast49 = ptrtoint i8* %35 to i64
  %sub.ptr.sub50 = sub i64 %36, %sub.ptr.rhs.cast49
  %37 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %call53 = call i64 @"\01_fwrite"(i8* %35, i64 1, i64 %sub.ptr.sub50, %struct.__sFILE* %37)
  %cmp54 = icmp eq i64 %call53, %sub.ptr.sub50
  br i1 %cmp54, label %do.cond.thread, label %cleanup97

do.cond.thread:                                   ; preds = %if.then44
  call void @llvm.lifetime.end(i64 8, i8* nonnull %26) #14
  br label %cleanup97.thread

if.else61:                                        ; preds = %if.end42
  %cmp63 = icmp eq i32 %call.i197, 1
  %38 = or i32 %call.i197, 1
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %if.then64, label %cleanup97.loopexit

if.then64:                                        ; preds = %if.else61
  %40 = load i64, i64* %23, align 8, !tbaa !2
  %41 = load i8*, i8** %__extbuf_, align 8, !tbaa !34
  %sub.ptr.rhs.cast68 = ptrtoint i8* %41 to i64
  %sub.ptr.sub69 = sub i64 %40, %sub.ptr.rhs.cast68
  %42 = load %struct.__sFILE*, %struct.__sFILE** %__file_, align 8, !tbaa !22
  %call72 = call i64 @"\01_fwrite"(i8* %41, i64 1, i64 %sub.ptr.sub69, %struct.__sFILE* %42)
  %cmp73 = icmp eq i64 %call72, %sub.ptr.sub69
  br i1 %cmp73, label %if.end76, label %cleanup97.loopexit

if.end76:                                         ; preds = %if.then64
  br i1 %cmp63, label %do.cond.thread164, label %do.cond

do.cond.thread164:                                ; preds = %if.end76
  %43 = load i64, i64* %27, align 8, !tbaa !2
  %44 = load i8*, i8** %__nout_.i150.phi.trans.insert, align 8, !tbaa !47
  store i64 %43, i64* %.pre-phi, align 8, !tbaa !50
  store i8* %44, i8** %__eout_.i145.pre-phi, align 8, !tbaa !58
  %sub.ptr.lhs.cast82 = ptrtoint i8* %44 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %43
  %.cast = inttoptr i64 %43 to i8*
  %sext = shl i64 %sub.ptr.sub84, 32
  %idx.ext.i = ashr exact i64 %sext, 32
  %add.ptr.i = getelementptr inbounds i8, i8* %.cast, i64 %idx.ext.i
  store i8* %add.ptr.i, i8** %__nout_.i150.phi.trans.insert, align 8, !tbaa !47
  call void @llvm.lifetime.end(i64 8, i8* nonnull %26) #14
  %45 = load %"class.std::__1::codecvt"*, %"class.std::__1::codecvt"** %__cv_, align 8, !tbaa !37
  %tobool28 = icmp eq %"class.std::__1::codecvt"* %45, null
  br i1 %tobool28, label %if.then29.loopexit, label %do.cond.thread164.if.end30_crit_edge

do.cond.thread164.if.end30_crit_edge:             ; preds = %do.cond.thread164
  %.pre180 = load i8*, i8** %__extbuf_, align 8, !tbaa !34
  call void @llvm.lifetime.start(i64 8, i8* nonnull %26) #14
  %46 = load i64, i64* %__ebs_, align 8, !tbaa !40
  %add.ptr36 = getelementptr inbounds i8, i8* %.pre180, i64 %46
  %47 = bitcast %"class.std::__1::codecvt"* %45 to i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)***
  %vtable.i = load i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)**, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)*** %47, align 8, !tbaa !8
  %vfn.i = getelementptr inbounds i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)*, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)** %vtable.i, i64 3
  %48 = load i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)*, i32 (%"class.std::__1::codecvt"*, %union.__mbstate_t*, i8*, i8*, i8**, i8*, i8*, i8**)** %vfn.i, align 8
  %call.i = call i32 %48(%"class.std::__1::codecvt"* nonnull %45, %union.__mbstate_t* nonnull dereferenceable(128) %__st_, i8* %.cast, i8* %add.ptr.i, i8** nonnull dereferenceable(8) %__e, i8* %.pre180, i8* %add.ptr36, i8** nonnull dereferenceable(8) %__extbe)
  %49 = load i8*, i8** %__e, align 8, !tbaa !2
  %50 = load i8*, i8** %__bout_.i144.pre-phi, align 8, !tbaa !50
  %cmp39 = icmp eq i8* %49, %50
  br i1 %cmp39, label %cleanup97.loopexit, label %if.end42

do.cond:                                          ; preds = %if.end76
  call void @llvm.lifetime.end(i64 8, i8* nonnull %26) #14
  br label %cleanup97.thread

cleanup97.thread:                                 ; preds = %do.cond, %do.cond.thread
  call void @llvm.lifetime.end(i64 8, i8* nonnull %20) #14
  br label %if.end101

cleanup97.loopexit:                               ; preds = %do.cond.thread164.if.end30_crit_edge, %if.then64, %if.else61
  br label %cleanup97

cleanup97:                                        ; preds = %cleanup97.loopexit, %if.end30.lr.ph, %if.then44
  call void @llvm.lifetime.end(i64 8, i8* nonnull %26) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %20) #14
  br label %cleanup104

if.end101:                                        ; preds = %if.then18.if.end101_crit_edge, %cleanup97.thread
  %.pre-phi185 = phi i64* [ %.pre184, %if.then18.if.end101_crit_edge ], [ %28, %cleanup97.thread ]
  store i64 %13, i64* %.pre-phi185, align 8, !tbaa !47
  store i64 %13, i64* %.pre-phi, align 8, !tbaa !50
  store i64 %12, i64* %.pre-phi183, align 8, !tbaa !58
  br label %if.end102

if.end102:                                        ; preds = %if.end13, %if.end101
  %.__c.i = select i1 %cmp.i158, i32 0, i32 %__c
  br label %cleanup104

cleanup104:                                       ; preds = %cleanup97, %if.then18, %if.end102
  %retval.6 = phi i32 [ %.__c.i, %if.end102 ], [ -1, %cleanup97 ], [ -1, %if.then18 ]
  call void @llvm.lifetime.end(i64 1, i8* nonnull %__1buf) #14
  br label %return

return:                                           ; preds = %entry, %cleanup104
  %retval.7 = phi i32 [ %retval.6, %cleanup104 ], [ -1, %entry ]
  ret i32 %retval.7
}

; Function Attrs: nounwind
declare i32 @fclose(%struct.__sFILE* nocapture) #9

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znam(i64) local_unnamed_addr #1

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fseeko(%struct.__sFILE* nocapture, i64, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @ftello(%struct.__sFILE* nocapture) local_unnamed_addr #9

declare i8* @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt8bad_castC1Ev(%"class.std::bad_cast"*) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8bad_castD1Ev(%"class.std::bad_cast"*) unnamed_addr #9

declare void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fflush(%struct.__sFILE* nocapture) local_unnamed_addr #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 -1, i32 2, i32 1
  %1 = bitcast %"class.std::__1::basic_ostream"** %0 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %1, align 8, !tbaa !8
  %add.ptr.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 16
  %2 = bitcast %"class.std::__1::basic_ostream"** %add.ptr.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %2, align 8, !tbaa !8
  %add.ptr3.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 2
  %3 = bitcast %"class.std::__1::basic_ostream"** %add.ptr3.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %3, align 8, !tbaa !8
  %__sb_.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 3
  %4 = bitcast %"class.std::__1::basic_ostream"** %__sb_.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !8
  %__str_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 11
  %__size_.i.i.i.i.i.i.i = bitcast %"class.std::__1::basic_ostream"** %__str_.i.i.i.i to i8*
  %5 = load i8, i8* %__size_.i.i.i.i.i.i.i, align 8, !tbaa !18
  %6 = and i8 %5, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %entry
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 13
  %7 = bitcast %"class.std::__1::basic_ostream"** %__data_.i.i.i.i.i.i.i to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* %8) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %entry, %if.then.i.i.i.i.i.i
  %9 = bitcast %"class.std::__1::basic_ostream"** %__sb_.i.i to %"class.std::__1::basic_streambuf"*
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %9) #14
  %10 = bitcast %"class.std::__1::basic_ostream"** %0 to %"class.std::__1::basic_iostream"*
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %10, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  %11 = bitcast %"class.std::__1::basic_ostream"** %add.ptr.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %11) #14
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this to i8*
  %1 = bitcast %"class.std::__1::basic_stringstream"* %this to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 -24
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = bitcast i8* %6 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %7, align 8, !tbaa !8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %6, i64 128
  %8 = bitcast i8* %add.ptr.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %8, align 8, !tbaa !8
  %add.ptr3.i.i = getelementptr inbounds i8, i8* %6, i64 16
  %9 = bitcast i8* %add.ptr3.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %9, align 8, !tbaa !8
  %__sb_.i.i = getelementptr inbounds i8, i8* %6, i64 24
  %10 = bitcast i8* %__sb_.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %10, align 8, !tbaa !8
  %__str_.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 88
  %11 = load i8, i8* %__str_.i.i.i.i, align 8, !tbaa !18
  %12 = and i8 %11, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %12, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %entry
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 104
  %13 = bitcast i8* %__data_.i.i.i.i.i.i.i to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* %14) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %entry, %if.then.i.i.i.i.i.i
  %15 = bitcast i8* %__sb_.i.i to %"class.std::__1::basic_streambuf"*
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %15) #14
  %16 = bitcast i8* %6 to %"class.std::__1::basic_iostream"*
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %16, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  %17 = bitcast i8* %add.ptr.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %17) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #9

; Function Attrs: nounwind ssp uwtable
declare void @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #11 align 2

; Function Attrs: nounwind ssp uwtable
declare void @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #11 align 2

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #11 align 2

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #11 align 2

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_istream"*) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_istream"*) unnamed_addr #9

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_istream"*) unnamed_addr #11 align 2

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_istream"*) unnamed_addr #11 align 2

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %0, align 8, !tbaa !8
  %add.ptr.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 2
  %1 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %1, align 8, !tbaa !8
  %add.ptr3.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 0, i32 1
  %2 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr3.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %2, align 8, !tbaa !8
  %__sb_.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1
  %3 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i.i, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !8
  %__str_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1, i32 1
  %__size_.i.i.i.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_.i.i.i.i to i8*
  %4 = load i8, i8* %__size_.i.i.i.i.i.i.i, align 8, !tbaa !18
  %5 = and i8 %4, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %entry
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %6 = load i8*, i8** %__data_.i.i.i.i.i.i.i, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* %6) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %entry, %if.then.i.i.i.i.i.i
  %7 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i.i, i64 0, i32 0
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %7) #14
  %8 = bitcast %"class.std::__1::basic_stringstream"* %this to %"class.std::__1::basic_iostream"*
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %8, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  %9 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %9) #14
  %10 = bitcast %"class.std::__1::basic_stringstream"* %this to i8*
  tail call void @_ZdlPv(i8* %10) #15
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 -1, i32 2, i32 1
  %1 = bitcast %"class.std::__1::basic_ostream"** %0 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %1, align 8, !tbaa !8
  %add.ptr.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 16
  %2 = bitcast %"class.std::__1::basic_ostream"** %add.ptr.i.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %2, align 8, !tbaa !8
  %add.ptr3.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 2
  %3 = bitcast %"class.std::__1::basic_ostream"** %add.ptr3.i.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %3, align 8, !tbaa !8
  %__sb_.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 3
  %4 = bitcast %"class.std::__1::basic_ostream"** %__sb_.i.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !8
  %__str_.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 11
  %__size_.i.i.i.i.i.i.i.i = bitcast %"class.std::__1::basic_ostream"** %__str_.i.i.i.i.i to i8*
  %5 = load i8, i8* %__size_.i.i.i.i.i.i.i.i, align 8, !tbaa !18
  %6 = and i8 %5, 1
  %tobool.i.i.i.i.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit, label %if.then.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %entry
  %__data_.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 13
  %7 = bitcast %"class.std::__1::basic_ostream"** %__data_.i.i.i.i.i.i.i.i to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* %8) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit: ; preds = %entry, %if.then.i.i.i.i.i.i.i
  %9 = bitcast %"class.std::__1::basic_ostream"** %__sb_.i.i.i to %"class.std::__1::basic_streambuf"*
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %9) #14
  %10 = bitcast %"class.std::__1::basic_ostream"** %0 to %"class.std::__1::basic_iostream"*
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %10, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  %11 = bitcast %"class.std::__1::basic_ostream"** %add.ptr.i.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %11) #14
  %12 = bitcast %"class.std::__1::basic_ostream"** %0 to i8*
  tail call void @_ZdlPv(i8* %12) #15
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this to i8*
  %1 = bitcast %"class.std::__1::basic_stringstream"* %this to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 -24
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = bitcast i8* %6 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %7, align 8, !tbaa !8
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %6, i64 128
  %8 = bitcast i8* %add.ptr.i.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %8, align 8, !tbaa !8
  %add.ptr3.i.i.i = getelementptr inbounds i8, i8* %6, i64 16
  %9 = bitcast i8* %add.ptr3.i.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %9, align 8, !tbaa !8
  %__sb_.i.i.i = getelementptr inbounds i8, i8* %6, i64 24
  %10 = bitcast i8* %__sb_.i.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %10, align 8, !tbaa !8
  %__str_.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 88
  %11 = load i8, i8* %__str_.i.i.i.i.i, align 8, !tbaa !18
  %12 = and i8 %11, 1
  %tobool.i.i.i.i.i.i.i.i = icmp eq i8 %12, 0
  br i1 %tobool.i.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit, label %if.then.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %entry
  %__data_.i.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 104
  %13 = bitcast i8* %__data_.i.i.i.i.i.i.i.i to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* %14) #15
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit: ; preds = %entry, %if.then.i.i.i.i.i.i.i
  %15 = bitcast i8* %__sb_.i.i.i to %"class.std::__1::basic_streambuf"*
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %15) #14
  %16 = bitcast i8* %6 to %"class.std::__1::basic_iostream"*
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %16, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  %17 = bitcast i8* %add.ptr.i.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %17) #14
  tail call void @_ZdlPv(i8* %6) #15
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !8
  %__str_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %__size_.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_.i to i8*
  %1 = load i8, i8* %__size_.i.i.i.i, align 8, !tbaa !18
  %2 = and i8 %1, 1
  %tobool.i.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.i.i.i, label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %3 = load i8*, i8** %__data_.i.i.i.i, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* %3) #15
  br label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %entry, %if.then.i.i.i
  %4 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %4) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"*, i8**) unnamed_addr #9

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !8
  %__str_.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %__size_.i.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_.i.i to i8*
  %1 = load i8, i8* %__size_.i.i.i.i.i, align 8, !tbaa !18
  %2 = and i8 %1, 1
  %tobool.i.i.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.i.i.i.i, label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  %__data_.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %3 = load i8*, i8** %__data_.i.i.i.i.i, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* %3) #15
  br label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %entry, %if.then.i.i.i.i
  %4 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %4) #14
  %5 = bitcast %"class.std::__1::basic_stringbuf"* %this to i8*
  tail call void @_ZdlPv(i8* %5) #15
  ret void
}

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE(%"class.std::__1::basic_streambuf"*, %"class.std::__1::locale"* dereferenceable(8)) unnamed_addr #4

declare %"class.std::__1::basic_streambuf"* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #4

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj(%"class.std::__1::fpos"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this, i64 %__off, i32 %__way, i32 %__wch) unnamed_addr #0 align 2 {
entry:
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %0 = load i8*, i8** %__hm_, align 8, !tbaa !59
  %__nout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  %1 = load i8*, i8** %__nout_.i, align 8, !tbaa !47
  %cmp = icmp ult i8* %0, %1
  %2 = ptrtoint i8* %0 to i64
  %3 = ptrtoint i8* %1 to i64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* %1, i8** %__hm_, align 8, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi i64 [ %3, %if.then ], [ %2, %entry ]
  %and = and i32 %__wch, 24
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 128, i32 8, i1 false) #14
  br label %return

if.end6:                                          ; preds = %if.end
  %cmp8 = icmp eq i32 %and, 24
  %cmp9 = icmp eq i32 %__way, 1
  %or.cond = and i1 %cmp9, %cmp8
  br i1 %or.cond, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  %6 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 128, i32 8, i1 false) #14
  br label %return

if.end11:                                         ; preds = %if.end6
  switch i32 %__way, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb12
    i32 2, label %sw.bb23
  ]

sw.bb12:                                          ; preds = %if.end11
  %and13 = and i32 %__wch, 8
  %tobool = icmp eq i32 %and13, 0
  br i1 %tobool, label %if.else, label %if.then14

if.then14:                                        ; preds = %sw.bb12
  %__ninp_.i107 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  %7 = bitcast i8** %__ninp_.i107 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !53
  %__binp_.i106 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 2
  %9 = bitcast i8** %__binp_.i106 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !56
  %sub.ptr.sub = sub i64 %8, %10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb12
  %__bout_.i104 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 5
  %11 = bitcast i8** %__bout_.i104 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !50
  %sub.ptr.sub21 = sub i64 %3, %12
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end11
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %__size_.i.i.i95 = bitcast %"class.std::__1::basic_string"* %__str_ to i8*
  %13 = load i8, i8* %__size_.i.i.i95, align 8, !tbaa !18
  %14 = and i8 %13, 1
  %tobool.i.i.i96 = icmp eq i8 %14, 0
  br i1 %tobool.i.i.i96, label %cond.false.i.i101, label %cond.true.i.i98

cond.true.i.i98:                                  ; preds = %sw.bb23
  %__data_.i.i.i97 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %15 = load i8*, i8** %__data_.i.i.i97, align 8, !tbaa !19
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit103

cond.false.i.i101:                                ; preds = %sw.bb23
  %__s.i.i.i99 = bitcast %"class.std::__1::basic_string"* %__str_ to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i100 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i99, i64 0, i32 1, i64 0
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit103

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit103: ; preds = %cond.true.i.i98, %cond.false.i.i101
  %cond.i.i102 = phi i8* [ %15, %cond.true.i.i98 ], [ %arrayidx.i.i.i100, %cond.false.i.i101 ]
  %sub.ptr.rhs.cast27 = ptrtoint i8* %cond.i.i102 to i64
  %sub.ptr.sub28 = sub i64 %4, %sub.ptr.rhs.cast27
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  %16 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 128, i32 8, i1 false) #14
  br label %return

sw.epilog:                                        ; preds = %if.end11, %if.then14, %if.else, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit103
  %__noff.0 = phi i64 [ %sub.ptr.sub28, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit103 ], [ %sub.ptr.sub, %if.then14 ], [ %sub.ptr.sub21, %if.else ], [ 0, %if.end11 ]
  %add = add nsw i64 %__noff.0, %__off
  %cmp29 = icmp slt i64 %add, 0
  br i1 %cmp29, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %__str_31 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %__size_.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_31 to i8*
  %17 = load i8, i8* %__size_.i.i.i, align 8, !tbaa !18
  %18 = and i8 %17, 1
  %tobool.i.i.i = icmp eq i8 %18, 0
  br i1 %tobool.i.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %lor.lhs.false
  %__data_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %19 = load i8*, i8** %__data_.i.i.i, align 8, !tbaa !19
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

cond.false.i.i:                                   ; preds = %lor.lhs.false
  %__s.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_31 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i, i64 0, i32 1, i64 0
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit: ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i8* [ %19, %cond.true.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i ]
  %sub.ptr.rhs.cast34 = ptrtoint i8* %cond.i.i to i64
  %sub.ptr.sub35 = sub i64 %4, %sub.ptr.rhs.cast34
  %cmp36 = icmp slt i64 %sub.ptr.sub35, %add
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit, %sw.epilog
  %20 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 128, i32 8, i1 false) #14
  br label %return

if.end38:                                         ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  %cmp39 = icmp eq i64 %add, 0
  %.pre = and i32 %__wch, 8
  br i1 %cmp39, label %if.end55, label %if.then40

if.then40:                                        ; preds = %if.end38
  %tobool42 = icmp eq i32 %.pre, 0
  br i1 %tobool42, label %if.end47, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.then40
  %__ninp_.i92 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  %21 = load i8*, i8** %__ninp_.i92, align 8, !tbaa !53
  %cmp45 = icmp eq i8* %21, null
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true43
  %22 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 128, i32 8, i1 false) #14
  br label %return

if.end47:                                         ; preds = %if.then40, %land.lhs.true43
  %and48 = and i32 %__wch, 16
  %tobool49 = icmp ne i32 %and48, 0
  %cmp52 = icmp eq i8* %1, null
  %or.cond111 = and i1 %tobool49, %cmp52
  br i1 %or.cond111, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end47
  %23 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 128, i32 8, i1 false) #14
  br label %return

if.end55:                                         ; preds = %if.end47, %if.end38
  %tobool57 = icmp eq i32 %.pre, 0
  br i1 %tobool57, label %if.end62, label %if.then58

if.then58:                                        ; preds = %if.end55
  %__binp_.i88 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 2
  %24 = load i8*, i8** %__binp_.i88, align 8, !tbaa !56
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %add
  %__ninp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  store i8* %add.ptr, i8** %__ninp_.i, align 8, !tbaa !53
  %__einp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %25 = bitcast i8** %__einp_.i to i64*
  store i64 %4, i64* %25, align 8, !tbaa !52
  br label %if.end62

if.end62:                                         ; preds = %if.end55, %if.then58
  %and63 = and i32 %__wch, 16
  %tobool64 = icmp eq i32 %and63, 0
  br i1 %tobool64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %if.end62
  %__bout_.i86 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 5
  %26 = load i8*, i8** %__bout_.i86, align 8, !tbaa !50
  %sext = shl i64 %add, 32
  %idx.ext.i = ashr exact i64 %sext, 32
  %add.ptr.i = getelementptr inbounds i8, i8* %26, i64 %idx.ext.i
  store i8* %add.ptr.i, i8** %__nout_.i, align 8, !tbaa !47
  br label %if.end68

if.end68:                                         ; preds = %if.end62, %if.then65
  %27 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 128, i32 8, i1 false) #14
  br label %return

return:                                           ; preds = %sw.default, %if.then37, %if.then46, %if.then53, %if.end68, %if.then10, %if.then5
  %.sink = phi i64 [ -1, %sw.default ], [ -1, %if.then37 ], [ -1, %if.then46 ], [ -1, %if.then53 ], [ %add, %if.end68 ], [ -1, %if.then10 ], [ -1, %if.then5 ]
  %__off_.i.i94 = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %agg.result, i64 0, i32 1
  store i64 %.sink, i64* %__off_.i.i94, align 8, !tbaa !41
  ret void
}

; Function Attrs: alwaysinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj(%"class.std::__1::fpos"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::fpos"* byval align 8 %__sp, i32 %__wch) unnamed_addr #12 align 2 {
entry:
  %0 = bitcast %"class.std::__1::basic_stringbuf"* %this to void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)***
  %vtable = load void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)**, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*** %0, align 8, !tbaa !8
  %vfn = getelementptr inbounds void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)** %vtable, i64 4
  %1 = load void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)** %vfn, align 8
  %__off_.i = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %__sp, i64 0, i32 1
  %2 = load i64, i64* %__off_.i, align 8, !tbaa !41
  tail call void %1(%"class.std::__1::fpos"* sret %agg.result, %"class.std::__1::basic_stringbuf"* %this, i64 %2, i32 0, i32 %__wch)
  ret void
}

declare i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #4

; Function Attrs: norecurse nounwind ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #6 align 2 {
entry:
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %0 = load i8*, i8** %__hm_, align 8, !tbaa !59
  %__nout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  %1 = load i8*, i8** %__nout_.i, align 8, !tbaa !47
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* %1, i8** %__hm_, align 8, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i8* [ %1, %if.then ], [ %0, %entry ]
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  %3 = load i32, i32* %__mode_, align 8, !tbaa !14
  %and = and i32 %3, 8
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %return, label %if.then4

if.then4:                                         ; preds = %if.end
  %__einp_.i27 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %4 = load i8*, i8** %__einp_.i27, align 8, !tbaa !52
  %cmp7 = icmp ult i8* %4, %2
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then4
  store i8* %2, i8** %__einp_.i27, align 8, !tbaa !52
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4
  %5 = phi i8* [ %2, %if.then8 ], [ %4, %if.then4 ]
  %__ninp_.i22 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  %6 = load i8*, i8** %__ninp_.i22, align 8, !tbaa !53
  %cmp15 = icmp ult i8* %6, %5
  br i1 %cmp15, label %if.then16, label %return

if.then16:                                        ; preds = %if.end12
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv.i = zext i8 %7 to i32
  br label %return

return:                                           ; preds = %if.end12, %if.end, %if.then16
  %retval.0 = phi i32 [ %conv.i, %if.then16 ], [ -1, %if.end ], [ -1, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: norecurse nounwind ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi(%"class.std::__1::basic_stringbuf"* %this, i32 %__c) unnamed_addr #6 align 2 {
entry:
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %0 = load i8*, i8** %__hm_, align 8, !tbaa !59
  %__nout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  %1 = load i8*, i8** %__nout_.i, align 8, !tbaa !47
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* %1, i8** %__hm_, align 8, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.in = phi i8* [ %1, %if.then ], [ %0, %entry ]
  %2 = ptrtoint i8* %.in to i64
  %__binp_.i45 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 2
  %3 = load i8*, i8** %__binp_.i45, align 8, !tbaa !56
  %__ninp_.i44 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  %4 = load i8*, i8** %__ninp_.i44, align 8, !tbaa !53
  %cmp6 = icmp ult i8* %3, %4
  br i1 %cmp6, label %if.then7, label %return

if.then7:                                         ; preds = %if.end
  %cmp.i43 = icmp eq i32 %__c, -1
  br i1 %cmp.i43, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.then7
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -1
  store i8* %add.ptr, i8** %__ninp_.i44, align 8, !tbaa !53
  %__einp_.i40 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %5 = bitcast i8** %__einp_.i40 to i64*
  store i64 %2, i64* %5, align 8, !tbaa !52
  br label %return

if.end15:                                         ; preds = %if.then7
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  %6 = load i32, i32* %__mode_, align 8, !tbaa !14
  %and = and i32 %6, 16
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end15.if.then19_crit_edge

if.end15.if.then19_crit_edge:                     ; preds = %if.end15
  %.pre = getelementptr inbounds i8, i8* %4, i64 -1
  %.pre47 = trunc i32 %__c to i8
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end15
  %conv.i37 = trunc i32 %__c to i8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 -1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %cmp.i = icmp eq i8 %conv.i37, %7
  br i1 %cmp.i, label %if.then19, label %return

if.then19:                                        ; preds = %if.end15.if.then19_crit_edge, %lor.lhs.false
  %conv.i.pre-phi = phi i8 [ %.pre47, %if.end15.if.then19_crit_edge ], [ %conv.i37, %lor.lhs.false ]
  %add.ptr22.pre-phi = phi i8* [ %.pre, %if.end15.if.then19_crit_edge ], [ %arrayidx, %lor.lhs.false ]
  store i8* %add.ptr22.pre-phi, i8** %__ninp_.i44, align 8, !tbaa !53
  %__einp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %8 = bitcast i8** %__einp_.i to i64*
  store i64 %2, i64* %8, align 8, !tbaa !52
  store i8 %conv.i.pre-phi, i8* %add.ptr22.pre-phi, align 1, !tbaa !18
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %if.then19, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %__c, %if.then19 ], [ -1, %lor.lhs.false ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi(%"class.std::__1::basic_stringbuf"* %this, i32 %__c) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca i8*, align 8
  %cmp.i72 = icmp eq i32 %__c, -1
  br i1 %cmp.i72, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0
  %__ninp_.i88 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  %1 = bitcast i8** %__ninp_.i88 to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !53
  %__binp_.i98 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 2
  %3 = bitcast i8** %__binp_.i98 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !56
  %sub.ptr.sub = sub i64 %2, %4
  %__nout_.i97 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  %5 = load i8*, i8** %__nout_.i97, align 8, !tbaa !47
  %__eout_.i96 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 7
  %6 = load i8*, i8** %__eout_.i96, align 8, !tbaa !58
  %cmp = icmp eq i8* %5, %6
  br i1 %cmp, label %if.then7, label %if.then.if.end41_crit_edge

if.then.if.end41_crit_edge:                       ; preds = %if.then
  %__hm_44.phi.trans.insert = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %.pre = load i8*, i8** %__hm_44.phi.trans.insert, align 8, !tbaa !2
  %.pre100 = bitcast i8** %__hm_44.phi.trans.insert to i64*
  %.pre101 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  br label %if.end41

if.then7:                                         ; preds = %if.then
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  %7 = load i32, i32* %__mode_, align 8, !tbaa !14
  %and = and i32 %7, 16
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %if.then7
  %__bout_.i94 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 5
  %8 = bitcast i8** %__bout_.i94 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !50
  %sub.ptr.lhs.cast13 = ptrtoint i8* %5 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %9
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %10 = bitcast i8** %__hm_ to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !59
  %sub.ptr.sub21 = sub i64 %11, %9
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"* %__str_, i8 signext 0)
          to label %invoke.cont23 unwind label %lpad22

invoke.cont23:                                    ; preds = %if.end
  %__size_.i.i89 = bitcast %"class.std::__1::basic_string"* %__str_ to i8*
  %12 = load i8, i8* %__size_.i.i89, align 8, !tbaa !18
  %13 = and i8 %12, 1
  %tobool.i.i90 = icmp eq i8 %13, 0
  br i1 %tobool.i.i90, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit, label %cond.true.i91

cond.true.i91:                                    ; preds = %invoke.cont23
  %__cap_.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__str_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %14 = load i64, i64* %__cap_.i.i, align 8, !tbaa !60
  %and.i.i = and i64 %14, -2
  %phitmp.i = add i64 %and.i.i, -1
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit: ; preds = %invoke.cont23, %cond.true.i91
  %cond.i92 = phi i64 [ %phitmp.i, %cond.true.i91 ], [ 22, %invoke.cont23 ]
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(%"class.std::__1::basic_string"* nonnull %__str_, i64 %cond.i92, i8 signext 0)
          to label %invoke.cont27 unwind label %lpad22

invoke.cont27:                                    ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit
  %15 = load i8, i8* %__size_.i.i89, align 8, !tbaa !18
  %16 = and i8 %15, 1
  %tobool.i.i.i80 = icmp eq i8 %16, 0
  br i1 %tobool.i.i.i80, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %invoke.cont27
  %__data_.i.i.i81 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %17 = load i8*, i8** %__data_.i.i.i81, align 8, !tbaa !19
  %__size_.i5.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %18 = load i64, i64* %__size_.i5.i, align 8, !tbaa !61
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit

cond.false.i:                                     ; preds = %invoke.cont27
  %__s.i.i.i83 = bitcast %"class.std::__1::basic_string"* %__str_ to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i84 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i83, i64 0, i32 1, i64 0
  %conv.i.i78 = zext i8 %15 to i64
  %shr3.i.i = lshr i64 %conv.i.i78, 1
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i.i86102 = phi i8* [ %17, %cond.true.i ], [ %arrayidx.i.i.i84, %cond.false.i ]
  %cond.i = phi i64 [ %18, %cond.true.i ], [ %shr3.i.i, %cond.false.i ]
  %add.ptr = getelementptr inbounds i8, i8* %cond.i.i86102, i64 %cond.i
  store i8* %cond.i.i86102, i8** %__bout_.i94, align 8, !tbaa !50
  store i8* %add.ptr, i8** %__eout_.i96, align 8, !tbaa !58
  %sext = shl i64 %sub.ptr.sub15, 32
  %idx.ext.i = ashr exact i64 %sext, 32
  %add.ptr.i = getelementptr inbounds i8, i8* %cond.i.i86102, i64 %idx.ext.i
  store i8* %add.ptr.i, i8** %__nout_.i97, align 8, !tbaa !47
  %add.ptr37 = getelementptr inbounds i8, i8* %cond.i.i86102, i64 %sub.ptr.sub21
  store i8* %add.ptr37, i8** %__hm_, align 8, !tbaa !59
  br label %if.end41

lpad22:                                           ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit, %if.end
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = tail call i8* @__cxa_begin_catch(i8* %20) #14
  tail call void @__cxa_end_catch()
  br label %return

if.end41:                                         ; preds = %if.then.if.end41_crit_edge, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit
  %__mode_47.pre-phi = phi i32* [ %.pre101, %if.then.if.end41_crit_edge ], [ %__mode_, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit ]
  %.pre-phi = phi i64* [ %.pre100, %if.then.if.end41_crit_edge ], [ %10, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit ]
  %__hm_44.pre-phi = phi i8** [ %__hm_44.phi.trans.insert, %if.then.if.end41_crit_edge ], [ %__hm_, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit ]
  %22 = phi i8* [ %6, %if.then.if.end41_crit_edge ], [ %add.ptr, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit ]
  %23 = phi i8* [ %.pre, %if.then.if.end41_crit_edge ], [ %add.ptr37, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit ]
  %24 = phi i8* [ %5, %if.then.if.end41_crit_edge ], [ %add.ptr.i, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit ]
  %ref.tmp.0..sroa_cast = bitcast i8** %ref.tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %ref.tmp.0..sroa_cast)
  %add.ptr43 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %add.ptr43, i8** %ref.tmp, align 8
  %cmp.i.i.i = icmp ult i8* %add.ptr43, %23
  %cond-lvalue.i.i = select i1 %cmp.i.i.i, i8** %__hm_44.pre-phi, i8** %ref.tmp
  %25 = bitcast i8** %cond-lvalue.i.i to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !2
  store i64 %26, i64* %.pre-phi, align 8, !tbaa !59
  call void @llvm.lifetime.end(i64 8, i8* nonnull %ref.tmp.0..sroa_cast)
  %27 = load i32, i32* %__mode_47.pre-phi, align 8, !tbaa !14
  %and48 = and i32 %27, 8
  %tobool49 = icmp eq i32 %and48, 0
  br i1 %tobool49, label %if.end56, label %if.then50

if.then50:                                        ; preds = %if.end41
  %__str_52 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %__size_.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_52 to i8*
  %28 = load i8, i8* %__size_.i.i.i, align 8, !tbaa !18
  %29 = and i8 %28, 1
  %tobool.i.i.i = icmp eq i8 %29, 0
  br i1 %tobool.i.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then50
  %__data_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %30 = load i8*, i8** %__data_.i.i.i, align 8, !tbaa !19
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

cond.false.i.i:                                   ; preds = %if.then50
  %__s.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_52 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i, i64 0, i32 1, i64 0
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit: ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i8* [ %30, %cond.true.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i ]
  %add.ptr54 = getelementptr inbounds i8, i8* %cond.i.i, i64 %sub.ptr.sub
  store i8* %cond.i.i, i8** %__binp_.i98, align 8, !tbaa !56
  store i8* %add.ptr54, i8** %__ninp_.i88, align 8, !tbaa !53
  %__einp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %31 = bitcast i8** %__einp_.i to i64*
  store i64 %26, i64* %31, align 8, !tbaa !52
  br label %if.end56

if.end56:                                         ; preds = %if.end41, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  %cmp.i = icmp eq i8* %24, %22
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end56
  %32 = bitcast %"class.std::__1::basic_stringbuf"* %this to i32 (%"class.std::__1::basic_streambuf"*, i32)***
  %vtable.i = load i32 (%"class.std::__1::basic_streambuf"*, i32)**, i32 (%"class.std::__1::basic_streambuf"*, i32)*** %32, align 8, !tbaa !8
  %vfn.i = getelementptr inbounds i32 (%"class.std::__1::basic_streambuf"*, i32)*, i32 (%"class.std::__1::basic_streambuf"*, i32)** %vtable.i, i64 13
  %33 = load i32 (%"class.std::__1::basic_streambuf"*, i32)*, i32 (%"class.std::__1::basic_streambuf"*, i32)** %vfn.i, align 8
  %conv.i.i = and i32 %__c, 255
  %call2.i = tail call i32 %33(%"class.std::__1::basic_streambuf"* nonnull %0, i32 %conv.i.i)
  br label %return

if.end.i:                                         ; preds = %if.end56
  %conv57 = trunc i32 %__c to i8
  store i8* %add.ptr43, i8** %__nout_.i97, align 8, !tbaa !47
  store i8 %conv57, i8* %24, align 1, !tbaa !18
  %conv.i7.i = and i32 %__c, 255
  br label %return

return:                                           ; preds = %entry, %if.end.i, %if.then.i, %if.then7, %lpad22
  %retval.1 = phi i32 [ -1, %lpad22 ], [ -1, %if.then7 ], [ %call2.i, %if.then.i ], [ %conv.i7.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.1
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"*, i8 signext) local_unnamed_addr #4

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(%"class.std::__1::basic_string"*, i64, i8 signext) local_unnamed_addr #4

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %0 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, i32 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #14
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %__os)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i8, i8* %0, align 8, !tbaa !62, !range !33
  %tobool.i = icmp eq i8 %1, 0
  br i1 %tobool.i, label %if.end28, label %if.then

if.then:                                          ; preds = %invoke.cont
  %2 = bitcast %"class.std::__1::basic_ostream"* %__os to i8**
  %vtable.i.i = load i8*, i8** %2, align 8, !tbaa !8
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i
  %__rdbuf_.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 40
  %5 = bitcast i8* %__rdbuf_.i.i.i.i to %"class.std::__1::basic_streambuf"**
  %6 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %5, align 8, !tbaa !64
  %7 = bitcast i8* %add.ptr.i.i to %"class.std::__1::ios_base"*
  %__fmtflags_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 8
  %8 = bitcast i8* %__fmtflags_.i to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !65
  %add.ptr6 = getelementptr inbounds i8, i8* %__str, i64 %__len
  %__fill_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 144
  %10 = bitcast i8* %__fill_.i to i32*
  %11 = load i32, i32* %10, align 8, !tbaa !13
  %cmp.i.i = icmp eq i32 %11, -1
  br i1 %cmp.i.i, label %if.then.i, label %invoke.cont16

if.then.i:                                        ; preds = %if.then
  %12 = bitcast %"class.std::__1::locale"* %ref.tmp.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #14
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* nonnull sret %ref.tmp.i.i, %"class.std::__1::ios_base"* %7)
          to label %.noexc unwind label %lpad3

.noexc:                                           ; preds = %if.then.i
  %call.i5.i.i = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp.i.i, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %invoke.cont.i.i unwind label %lpad.i.i

invoke.cont.i.i:                                  ; preds = %.noexc
  %13 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to %"class.std::__1::ctype"*
  %14 = bitcast %"class.std::__1::locale::facet"* %call.i5.i.i to i8 (%"class.std::__1::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %14, align 8, !tbaa !8
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable.i.i.i, i64 7
  %15 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn.i.i.i, align 8
  %call.i6.i.i = invoke signext i8 %15(%"class.std::__1::ctype"* %13, i8 signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i unwind label %lpad.i.i

lpad.i.i:                                         ; preds = %invoke.cont.i.i, %.noexc
  %16 = landingpad { i8*, i32 }
          catch i8* null
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #14
  br label %ehcleanup

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i: ; preds = %invoke.cont.i.i
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp.i.i) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #14
  %conv.i = sext i8 %call.i6.i.i to i32
  store i32 %conv.i, i32* %10, align 8, !tbaa !13
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
  %vtable23 = load i8*, i8** %2, align 8, !tbaa !8
  %vbase.offset.ptr24 = getelementptr i8, i8* %vtable23, i64 -24
  %18 = bitcast i8* %vbase.offset.ptr24 to i64*
  %vbase.offset25 = load i64, i64* %18, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset25
  %19 = bitcast i8* %add.ptr26 to %"class.std::__1::ios_base"*
  %__rdstate_.i.i = getelementptr inbounds i8, i8* %add.ptr26, i64 32
  %20 = bitcast i8* %__rdstate_.i.i to i32*
  %21 = load i32, i32* %20, align 8, !tbaa !26
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
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #14
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #14
  br label %try.cont

ehcleanup:                                        ; preds = %lpad3, %lpad.i.i, %lpad1
  %eh.lpad-body.sink = phi { i8*, i32 } [ %24, %lpad1 ], [ %25, %lpad3 ], [ %16, %lpad.i.i ]
  %26 = extractvalue { i8*, i32 } %eh.lpad-body.sink, 0
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s) #14
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #14
  br label %catch

catch:                                            ; preds = %ehcleanup, %lpad
  %.pre-phi54 = phi i8* [ %4, %ehcleanup ], [ %.pre53, %lpad ]
  %.pre-phi = phi i8** [ %2, %ehcleanup ], [ %.pre, %lpad ]
  %exn.slot.1 = phi i8* [ %26, %ehcleanup ], [ %23, %lpad ]
  %27 = call i8* @__cxa_begin_catch(i8* %exn.slot.1) #14
  %vtable30 = load i8*, i8** %.pre-phi, align 8, !tbaa !8
  %vbase.offset.ptr31 = getelementptr i8, i8* %vtable30, i64 -24
  %28 = bitcast i8* %vbase.offset.ptr31 to i64*
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
  call void @__clang_call_terminate(i8* %32) #17
  unreachable
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #4

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %__s.coerce, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %__oe to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %__ob to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %__iob, i64 0, i32 3
  %0 = load i64, i64* %__width_.i, align 8, !tbaa !66
  %cmp1 = icmp sgt i64 %0, %sub.ptr.sub
  %sub = sub nsw i64 %0, %sub.ptr.sub
  %__ns.0 = select i1 %cmp1, i64 %sub, i64 0
  %sub.ptr.lhs.cast4 = ptrtoint i8* %__op to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  %1 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable.i80 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1, align 8, !tbaa !8
  %vfn.i81 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i80, i64 12
  %2 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i81, align 8
  %call.i82 = tail call i64 %2(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__ob, i64 %sub.ptr.sub6)
  %cmp11 = icmp eq i64 %call.i82, %sub.ptr.sub6
  br i1 %cmp11, label %if.end15, label %return

if.end15:                                         ; preds = %if.then8, %if.end
  %cmp16 = icmp sgt i64 %__ns.0, 0
  br i1 %cmp16, label %if.end.i.i.i, label %if.end26

if.end.i.i.i:                                     ; preds = %if.end15
  %3 = bitcast %"class.std::__1::basic_string"* %__sp to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #14
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 24, i32 8, i1 false) #14
  %cmp2.i.i.i = icmp ult i64 %__ns.0, 23
  br i1 %cmp2.i.i.i, label %if.end9.i.i.i, label %if.end9.thread.i.i.i

if.end9.thread.i.i.i:                             ; preds = %if.end.i.i.i
  %add.i.i.i.i.i = add nuw i64 %__ns.0, 16
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #13
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !tbaa !19
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !tbaa !60
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %__ns.0, i64* %__size_.i.i.i.i, align 8, !tbaa !61
  %.pre96 = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %.pre97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %.pre96, i64 0, i32 1, i64 0
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  %__s.tr.i.i.i.i = trunc i64 %__ns.0 to i8
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1
  store i8 %conv.i.i.i.i, i8* %3, align 8, !tbaa !18
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0
  %.pre = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit: ; preds = %if.end9.thread.i.i.i, %if.end9.i.i.i
  %arrayidx.i.i.i83.pre-phi = phi i8* [ %.pre97, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ]
  %__data_.i.i.i.pre-phi = phi i8** [ %__data_.i.i.i.i, %if.end9.thread.i.i.i ], [ %.pre, %if.end9.i.i.i ]
  %__p.027.i.i.i = phi i8* [ %call.i.i.i.i.i.i, %if.end9.thread.i.i.i ], [ %arrayidx.i.i.i.i, %if.end9.i.i.i ]
  call void @llvm.memset.p0i8.i64(i8* %__p.027.i.i.i, i8 %__fl, i64 %__ns.0, i32 1, i1 false) #14
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %__p.027.i.i.i, i64 %__ns.0
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !18
  %4 = load i8, i8* %3, align 8, !tbaa !18
  %5 = and i8 %4, 1
  %tobool.i.i.i = icmp eq i8 %5, 0
  %6 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8
  %cond.i.i = select i1 %tobool.i.i.i, i8* %arrayidx.i.i.i83.pre-phi, i8* %6
  %7 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable.i84 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7, align 8, !tbaa !8
  %vfn.i85 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i84, i64 12
  %8 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85, align 8
  %call.i8687 = invoke i64 %8(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %cond.i.i, i64 %__ns.0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %cmp21 = icmp eq i64 %call.i8687, %__ns.0
  %9 = load i8, i8* %3, align 8, !tbaa !18
  %10 = and i8 %9, 1
  %tobool.i.i.i89 = icmp eq i8 %10, 0
  br i1 %tobool.i.i.i89, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont
  %11 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !19
  call void @_ZdlPv(i8* %11) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #14
  br i1 %cmp21, label %if.end26, label %return

lpad:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = load i8, i8* %3, align 8, !tbaa !18
  %14 = and i8 %13, 1
  %tobool.i.i.i92 = icmp eq i8 %14, 0
  br i1 %tobool.i.i.i92, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, label %if.then.i.i94

if.then.i.i94:                                    ; preds = %lpad
  %15 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !19
  call void @_ZdlPv(i8* %15) #15
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95: ; preds = %lpad, %if.then.i.i94
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #14
  resume { i8*, i32 } %12

if.end26:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.end15
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast4
  %cmp30 = icmp sgt i64 %sub.ptr.sub29, 0
  br i1 %cmp30, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end26
  %16 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16, align 8, !tbaa !8
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12
  %17 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8
  %call.i = call i64 %17(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__op, i64 %sub.ptr.sub29)
  %cmp34 = icmp eq i64 %call.i, %sub.ptr.sub29
  br i1 %cmp34, label %if.end38, label %return

if.end38:                                         ; preds = %if.then31, %if.end26
  store i64 0, i64* %__width_.i, align 8, !tbaa !66
  br label %return

return:                                           ; preds = %if.end38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then8, %if.then31, %entry
  %retval.sroa.0.2 = phi %"class.std::__1::basic_streambuf"* [ null, %entry ], [ %__s.coerce, %if.end38 ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ null, %if.then8 ], [ null, %if.then31 ]
  ret %"class.std::__1::basic_streambuf"* %retval.sroa.0.2
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #9

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"*) local_unnamed_addr #8

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #9

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #4

declare void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"*, i8*) local_unnamed_addr #4

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"*) unnamed_addr #4

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(%"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_string"* dereferenceable(24) %__s) local_unnamed_addr #0 align 2 {
entry:
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %call = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(%"class.std::__1::basic_string"* %__str_, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %__s)
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  store i8* null, i8** %__hm_, align 8, !tbaa !59
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  %0 = load i32, i32* %__mode_, align 8, !tbaa !14
  %and = and i32 %0, 8
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %__size_.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_ to i8*
  %1 = load i8, i8* %__size_.i.i.i, align 8, !tbaa !18
  %2 = and i8 %1, 1
  %tobool.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.i.i, label %cond.false.i.i96, label %cond.true.i.i93

cond.true.i.i93:                                  ; preds = %if.then
  %__data_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %3 = load i8*, i8** %__data_.i.i.i, align 8, !tbaa !19
  %__size_.i5.i61 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %4 = load i64, i64* %__size_.i5.i61, align 8, !tbaa !61
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4
  store i8* %add.ptr, i8** %__hm_, align 8, !tbaa !59
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit98

cond.false.i.i96:                                 ; preds = %if.then
  %__s.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_ to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %conv.i.i63 = zext i8 %1 to i64
  %shr3.i.i64 = lshr i64 %conv.i.i63, 1
  %add.ptr110 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i, i64 0, i32 1, i64 %shr3.i.i64
  store i8* %add.ptr110, i8** %__hm_, align 8, !tbaa !59
  %__s.i.i.i103 = bitcast %"class.std::__1::basic_string"* %__str_ to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i104 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i103, i64 0, i32 1, i64 0
  %__s.i.i.i94 = bitcast %"class.std::__1::basic_string"* %__str_ to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i95 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i94, i64 0, i32 1, i64 0
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit98

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit98: ; preds = %cond.true.i.i93, %cond.false.i.i96
  %cond.i.i106111 = phi i8* [ %3, %cond.true.i.i93 ], [ %arrayidx.i.i.i104, %cond.false.i.i96 ]
  %.in = phi i8* [ %add.ptr, %cond.true.i.i93 ], [ %add.ptr110, %cond.false.i.i96 ]
  %cond.i.i97 = phi i8* [ %3, %cond.true.i.i93 ], [ %arrayidx.i.i.i95, %cond.false.i.i96 ]
  %5 = ptrtoint i8* %.in to i64
  %__binp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 2
  store i8* %cond.i.i106111, i8** %__binp_.i, align 8, !tbaa !56
  %__ninp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  store i8* %cond.i.i97, i8** %__ninp_.i, align 8, !tbaa !53
  %__einp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %6 = bitcast i8** %__einp_.i to i64*
  store i64 %5, i64* %6, align 8, !tbaa !52
  br label %if.end

if.end:                                           ; preds = %entry, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit98
  %and13 = and i32 %0, 16
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %if.end37, label %if.then15

if.then15:                                        ; preds = %if.end
  %__size_.i.i81 = bitcast %"class.std::__1::basic_string"* %__str_ to i8*
  %7 = load i8, i8* %__size_.i.i81, align 8, !tbaa !18
  %8 = and i8 %7, 1
  %tobool.i.i82 = icmp eq i8 %8, 0
  br i1 %tobool.i.i82, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit80.thread, label %cond.true.i70

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit80.thread: ; preds = %if.then15
  %conv.i.i85 = zext i8 %7 to i64
  %shr3.i.i86 = lshr i64 %conv.i.i85, 1
  %__s.i.i.i76 = bitcast %"class.std::__1::basic_string"* %__str_ to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %add.ptr20115 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i76, i64 0, i32 1, i64 %shr3.i.i86
  store i8* %add.ptr20115, i8** %__hm_, align 8, !tbaa !59
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit

cond.true.i70:                                    ; preds = %if.then15
  %__size_.i5.i83 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %9 = load i64, i64* %__size_.i5.i83, align 8, !tbaa !61
  %__data_.i.i.i74 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %10 = load i8*, i8** %__data_.i.i.i74, align 8, !tbaa !19
  %add.ptr20 = getelementptr inbounds i8, i8* %10, i64 %9
  store i8* %add.ptr20, i8** %__hm_, align 8, !tbaa !59
  %__cap_.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__str_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %11 = load i64, i64* %__cap_.i.i, align 8, !tbaa !60
  %and.i.i = and i64 %11, -2
  %phitmp.i = add i64 %and.i.i, -1
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit: ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit80.thread, %cond.true.i70
  %cond.i88113116 = phi i64 [ %9, %cond.true.i70 ], [ %shr3.i.i86, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit80.thread ]
  %cond.i71 = phi i64 [ %phitmp.i, %cond.true.i70 ], [ 22, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit80.thread ]
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(%"class.std::__1::basic_string"* nonnull %__str_, i64 %cond.i71, i8 signext 0)
  %12 = load i8, i8* %__size_.i.i81, align 8, !tbaa !18
  %13 = and i8 %12, 1
  %tobool.i.i.i51 = icmp eq i8 %13, 0
  br i1 %tobool.i.i.i51, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit
  %__data_.i.i.i52 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %14 = load i8*, i8** %__data_.i.i.i52, align 8, !tbaa !19
  %__size_.i5.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %__size_.i5.i, align 8, !tbaa !61
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit

cond.false.i:                                     ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit
  %__s.i.i.i54 = bitcast %"class.std::__1::basic_string"* %__str_ to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i55 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i54, i64 0, i32 1, i64 0
  %__s.i.i.i45 = bitcast %"class.std::__1::basic_string"* %__str_ to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i46 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i45, i64 0, i32 1, i64 0
  %conv.i.i = zext i8 %12 to i64
  %shr3.i.i = lshr i64 %conv.i.i, 1
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit: ; preds = %cond.true.i, %cond.false.i
  %cond.i.i48117 = phi i8* [ %14, %cond.true.i ], [ %arrayidx.i.i.i46, %cond.false.i ]
  %16 = phi i8* [ %14, %cond.true.i ], [ %arrayidx.i.i.i55, %cond.false.i ]
  %cond.i = phi i64 [ %15, %cond.true.i ], [ %shr3.i.i, %cond.false.i ]
  %add.ptr31 = getelementptr inbounds i8, i8* %cond.i.i48117, i64 %cond.i
  %__nout_.i40 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  store i8* %16, i8** %__nout_.i40, align 8, !tbaa !47
  %__bout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 5
  store i8* %16, i8** %__bout_.i, align 8, !tbaa !50
  %__eout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 7
  store i8* %add.ptr31, i8** %__eout_.i, align 8, !tbaa !58
  %17 = load i32, i32* %__mode_, align 8, !tbaa !14
  %and33 = and i32 %17, 3
  %tobool34 = icmp eq i32 %and33, 0
  br i1 %tobool34, label %if.end37, label %if.then35

if.then35:                                        ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit
  %sext = shl i64 %cond.i88113116, 32
  %idx.ext.i = ashr exact i64 %sext, 32
  %add.ptr.i = getelementptr inbounds i8, i8* %16, i64 %idx.ext.i
  store i8* %add.ptr.i, i8** %__nout_.i40, align 8, !tbaa !47
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit, %if.end
  ret void
}

declare dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(%"class.std::__1::basic_string"*, %"class.std::__1::basic_string"* dereferenceable(24)) local_unnamed_addr #4

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"*, i8*) local_unnamed_addr #4

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this) local_unnamed_addr #0 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  %0 = load i32, i32* %__mode_, align 8, !tbaa !14
  %and = and i32 %0, 16
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %1 = load i8*, i8** %__hm_, align 8, !tbaa !59
  %__nout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  %2 = load i8*, i8** %__nout_.i, align 8, !tbaa !47
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i8* %2, i8** %__hm_, align 8, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %3 = phi i8* [ %2, %if.then2 ], [ %1, %if.then ]
  %__bout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 5
  %4 = load i8*, i8** %__bout_.i, align 8, !tbaa !50
  %sub.ptr.rhs.cast.i.i.i.i.i22 = ptrtoint i8* %4 to i64
  %5 = bitcast %"class.std::__1::basic_string"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 24, i32 8, i1 false) #14
  %sub.ptr.lhs.cast.i.i.i.i.i23 = ptrtoint i8* %3 to i64
  %sub.ptr.sub.i.i.i.i.i24 = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i23, %sub.ptr.rhs.cast.i.i.i.i.i22
  %cmp.i.i.i25 = icmp ugt i64 %sub.ptr.sub.i.i.i.i.i24, -17
  br i1 %cmp.i.i.i25, label %if.then.i.i.i26, label %if.end.i.i.i28

if.then.i.i.i26:                                  ; preds = %if.end
  %6 = bitcast %"class.std::__1::basic_string"* %agg.result to %"class.std::__1::__basic_string_common"*
  tail call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %6) #16
  unreachable

if.end.i.i.i28:                                   ; preds = %if.end
  %cmp3.i.i.i27 = icmp ult i64 %sub.ptr.sub.i.i.i.i.i24, 23
  br i1 %cmp3.i.i.i27, label %if.then4.i.i.i33, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i41

if.then4.i.i.i33:                                 ; preds = %if.end.i.i.i28
  %__s.tr.i.i.i.i29 = trunc i64 %sub.ptr.sub.i.i.i.i.i24 to i8
  %conv.i.i.i.i30 = shl i8 %__s.tr.i.i.i.i29, 1
  store i8 %conv.i.i.i.i30, i8* %5, align 8, !tbaa !18
  %__s.i.i.i.i31 = bitcast %"class.std::__1::basic_string"* %agg.result to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i32 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i31, i64 0, i32 1, i64 0
  br label %for.cond.preheader.i.i.i44

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i41: ; preds = %if.end.i.i.i28
  %add.i.i.i.i.i34 = add i64 %sub.ptr.sub.i.i.i.i.i24, 16
  %and.i.i.i.i.i35 = and i64 %add.i.i.i.i.i34, -16
  %call.i.i.i.i.i.i36 = tail call i8* @_Znwm(i64 %and.i.i.i.i.i35) #13
  %__data_.i.i.i.i37 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i8* %call.i.i.i.i.i.i36, i8** %__data_.i.i.i.i37, align 8, !tbaa !19
  %or.i.i.i.i38 = or i64 %and.i.i.i.i.i35, 1
  %__cap_.i.i.i.i39 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %or.i.i.i.i38, i64* %__cap_.i.i.i.i39, align 8, !tbaa !60
  %__size_.i.i.i.i40 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %sub.ptr.sub.i.i.i.i.i24, i64* %__size_.i.i.i.i40, align 8, !tbaa !61
  br label %for.cond.preheader.i.i.i44

for.cond.preheader.i.i.i44:                       ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i41, %if.then4.i.i.i33
  %__p.0.ph.i.i.i42 = phi i8* [ %call.i.i.i.i.i.i36, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i41 ], [ %arrayidx.i.i.i.i32, %if.then4.i.i.i33 ]
  %cmp1128.i.i.i43 = icmp eq i8* %4, %3
  br i1 %cmp1128.i.i.i43, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit54, label %for.body.i.i.i50.preheader

for.body.i.i.i50.preheader:                       ; preds = %for.cond.preheader.i.i.i44
  %7 = sub i64 0, %sub.ptr.rhs.cast.i.i.i.i.i22
  %scevgep = getelementptr i8, i8* %3, i64 %7
  %exitcount.ptrcnt.to.int = ptrtoint i8* %scevgep to i64
  %min.iters.check = icmp ult i8* %scevgep, inttoptr (i64 32 to i8*)
  br i1 %min.iters.check, label %for.body.i.i.i50.preheader98, label %min.iters.checked

min.iters.checked:                                ; preds = %for.body.i.i.i50.preheader
  %n.vec = and i64 %exitcount.ptrcnt.to.int, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %for.body.i.i.i50.preheader98, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %8 = sub i64 0, %sub.ptr.rhs.cast.i.i.i.i.i22
  %scevgep55 = getelementptr i8, i8* %3, i64 %8
  %scevgep5556 = ptrtoint i8* %scevgep55 to i64
  %scevgep57 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %scevgep5556
  %bound0 = icmp ult i8* %__p.0.ph.i.i.i42, %3
  %bound1 = icmp ult i8* %4, %scevgep57
  %memcheck.conflict = and i1 %bound0, %bound1
  %ind.end = getelementptr i8, i8* %4, i64 %n.vec
  %ind.end59 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %n.vec
  br i1 %memcheck.conflict, label %for.body.i.i.i50.preheader98, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.memcheck
  %9 = add i64 %n.vec, -32
  %10 = lshr exact i64 %9, 5
  %11 = add nuw nsw i64 %10, 1
  %xtraiter99 = and i64 %11, 3
  %lcmp.mod100 = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100, label %vector.body.prol.loopexit, label %vector.body.prol.preheader

vector.body.prol.preheader:                       ; preds = %vector.body.preheader
  br label %vector.body.prol

vector.body.prol:                                 ; preds = %vector.body.prol, %vector.body.prol.preheader
  %index.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ]
  %prol.iter101 = phi i64 [ %prol.iter101.sub, %vector.body.prol ], [ %xtraiter99, %vector.body.prol.preheader ]
  %next.gep.prol = getelementptr i8, i8* %4, i64 %index.prol
  %next.gep61.prol = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %index.prol
  %12 = bitcast i8* %next.gep.prol to <16 x i8>*
  %wide.load.prol = load <16 x i8>, <16 x i8>* %12, align 1, !tbaa !18, !alias.scope !67
  %13 = getelementptr i8, i8* %next.gep.prol, i64 16
  %14 = bitcast i8* %13 to <16 x i8>*
  %wide.load63.prol = load <16 x i8>, <16 x i8>* %14, align 1, !tbaa !18, !alias.scope !67
  %15 = bitcast i8* %next.gep61.prol to <16 x i8>*
  store <16 x i8> %wide.load.prol, <16 x i8>* %15, align 1, !tbaa !18, !alias.scope !70, !noalias !67
  %16 = getelementptr i8, i8* %next.gep61.prol, i64 16
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> %wide.load63.prol, <16 x i8>* %17, align 1, !tbaa !18, !alias.scope !70, !noalias !67
  %index.next.prol = add i64 %index.prol, 32
  %prol.iter101.sub = add i64 %prol.iter101, -1
  %prol.iter101.cmp = icmp eq i64 %prol.iter101.sub, 0
  br i1 %prol.iter101.cmp, label %vector.body.prol.loopexit.unr-lcssa, label %vector.body.prol, !llvm.loop !72

vector.body.prol.loopexit.unr-lcssa:              ; preds = %vector.body.prol
  br label %vector.body.prol.loopexit

vector.body.prol.loopexit:                        ; preds = %vector.body.preheader, %vector.body.prol.loopexit.unr-lcssa
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ %index.next.prol, %vector.body.prol.loopexit.unr-lcssa ]
  %18 = icmp ult i64 %9, 96
  br i1 %18, label %middle.block, label %vector.body.preheader.new

vector.body.preheader.new:                        ; preds = %vector.body.prol.loopexit
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.new
  %index = phi i64 [ %index.unr, %vector.body.preheader.new ], [ %index.next.3, %vector.body ]
  %next.gep = getelementptr i8, i8* %4, i64 %index
  %next.gep61 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %index
  %19 = bitcast i8* %next.gep to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %19, align 1, !tbaa !18, !alias.scope !67
  %20 = getelementptr i8, i8* %next.gep, i64 16
  %21 = bitcast i8* %20 to <16 x i8>*
  %wide.load63 = load <16 x i8>, <16 x i8>* %21, align 1, !tbaa !18, !alias.scope !67
  %22 = bitcast i8* %next.gep61 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %22, align 1, !tbaa !18, !alias.scope !70, !noalias !67
  %23 = getelementptr i8, i8* %next.gep61, i64 16
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> %wide.load63, <16 x i8>* %24, align 1, !tbaa !18, !alias.scope !70, !noalias !67
  %index.next = add i64 %index, 32
  %next.gep.1 = getelementptr i8, i8* %4, i64 %index.next
  %next.gep61.1 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %index.next
  %25 = bitcast i8* %next.gep.1 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %25, align 1, !tbaa !18, !alias.scope !67
  %26 = getelementptr i8, i8* %next.gep.1, i64 16
  %27 = bitcast i8* %26 to <16 x i8>*
  %wide.load63.1 = load <16 x i8>, <16 x i8>* %27, align 1, !tbaa !18, !alias.scope !67
  %28 = bitcast i8* %next.gep61.1 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %28, align 1, !tbaa !18, !alias.scope !70, !noalias !67
  %29 = getelementptr i8, i8* %next.gep61.1, i64 16
  %30 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> %wide.load63.1, <16 x i8>* %30, align 1, !tbaa !18, !alias.scope !70, !noalias !67
  %index.next.1 = add i64 %index, 64
  %next.gep.2 = getelementptr i8, i8* %4, i64 %index.next.1
  %next.gep61.2 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %index.next.1
  %31 = bitcast i8* %next.gep.2 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %31, align 1, !tbaa !18, !alias.scope !67
  %32 = getelementptr i8, i8* %next.gep.2, i64 16
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load63.2 = load <16 x i8>, <16 x i8>* %33, align 1, !tbaa !18, !alias.scope !67
  %34 = bitcast i8* %next.gep61.2 to <16 x i8>*
  store <16 x i8> %wide.load.2, <16 x i8>* %34, align 1, !tbaa !18, !alias.scope !70, !noalias !67
  %35 = getelementptr i8, i8* %next.gep61.2, i64 16
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %wide.load63.2, <16 x i8>* %36, align 1, !tbaa !18, !alias.scope !70, !noalias !67
  %index.next.2 = add i64 %index, 96
  %next.gep.3 = getelementptr i8, i8* %4, i64 %index.next.2
  %next.gep61.3 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %index.next.2
  %37 = bitcast i8* %next.gep.3 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %37, align 1, !tbaa !18, !alias.scope !67
  %38 = getelementptr i8, i8* %next.gep.3, i64 16
  %39 = bitcast i8* %38 to <16 x i8>*
  %wide.load63.3 = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !18, !alias.scope !67
  %40 = bitcast i8* %next.gep61.3 to <16 x i8>*
  store <16 x i8> %wide.load.3, <16 x i8>* %40, align 1, !tbaa !18, !alias.scope !70, !noalias !67
  %41 = getelementptr i8, i8* %next.gep61.3, i64 16
  %42 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> %wide.load63.3, <16 x i8>* %42, align 1, !tbaa !18, !alias.scope !70, !noalias !67
  %index.next.3 = add i64 %index, 128
  %43 = icmp eq i64 %index.next.3, %n.vec
  br i1 %43, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !74

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %vector.body.prol.loopexit, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %exitcount.ptrcnt.to.int, %n.vec
  br i1 %cmp.n, label %for.end.loopexit.i.i.i52, label %for.body.i.i.i50.preheader98

for.body.i.i.i50.preheader98:                     ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %for.body.i.i.i50.preheader
  %__first.addr.030.i.i.i45.ph = phi i8* [ %4, %vector.memcheck ], [ %4, %min.iters.checked ], [ %4, %for.body.i.i.i50.preheader ], [ %ind.end, %middle.block ]
  %__p.029.i.i.i46.ph = phi i8* [ %__p.0.ph.i.i.i42, %vector.memcheck ], [ %__p.0.ph.i.i.i42, %min.iters.checked ], [ %__p.0.ph.i.i.i42, %for.body.i.i.i50.preheader ], [ %ind.end59, %middle.block ]
  br label %for.body.i.i.i50

for.body.i.i.i50:                                 ; preds = %for.body.i.i.i50.preheader98, %for.body.i.i.i50
  %__first.addr.030.i.i.i45 = phi i8* [ %incdec.ptr.i.i.i47, %for.body.i.i.i50 ], [ %__first.addr.030.i.i.i45.ph, %for.body.i.i.i50.preheader98 ]
  %__p.029.i.i.i46 = phi i8* [ %incdec.ptr12.i.i.i48, %for.body.i.i.i50 ], [ %__p.029.i.i.i46.ph, %for.body.i.i.i50.preheader98 ]
  %44 = load i8, i8* %__first.addr.030.i.i.i45, align 1, !tbaa !18
  store i8 %44, i8* %__p.029.i.i.i46, align 1, !tbaa !18
  %incdec.ptr.i.i.i47 = getelementptr inbounds i8, i8* %__first.addr.030.i.i.i45, i64 1
  %incdec.ptr12.i.i.i48 = getelementptr inbounds i8, i8* %__p.029.i.i.i46, i64 1
  %cmp11.i.i.i49 = icmp eq i8* %incdec.ptr.i.i.i47, %3
  br i1 %cmp11.i.i.i49, label %for.end.loopexit.i.i.i52.loopexit, label %for.body.i.i.i50, !llvm.loop !77

for.end.loopexit.i.i.i52.loopexit:                ; preds = %for.body.i.i.i50
  br label %for.end.loopexit.i.i.i52

for.end.loopexit.i.i.i52:                         ; preds = %for.end.loopexit.i.i.i52.loopexit, %middle.block
  %scevgep32.i.i.i51 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %sub.ptr.sub.i.i.i.i.i24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit54

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit54: ; preds = %for.cond.preheader.i.i.i44, %for.end.loopexit.i.i.i52
  %__p.0.lcssa.i.i.i53 = phi i8* [ %__p.0.ph.i.i.i42, %for.cond.preheader.i.i.i44 ], [ %scevgep32.i.i.i51, %for.end.loopexit.i.i.i52 ]
  store i8 0, i8* %__p.0.lcssa.i.i.i53, align 1, !tbaa !18
  br label %return

if.else:                                          ; preds = %entry
  %and8 = and i32 %0, 8
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %if.end17, label %if.then10

if.then10:                                        ; preds = %if.else
  %__binp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 2
  %45 = load i8*, i8** %__binp_.i, align 8, !tbaa !56
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint i8* %45 to i64
  %__einp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %46 = load i8*, i8** %__einp_.i, align 8, !tbaa !52
  %47 = bitcast %"class.std::__1::basic_string"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 24, i32 8, i1 false) #14
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint i8* %46 to i64
  %sub.ptr.sub.i.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %cmp.i.i.i = icmp ugt i64 %sub.ptr.sub.i.i.i.i.i, -17
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then10
  %48 = bitcast %"class.std::__1::basic_string"* %agg.result to %"class.std::__1::__basic_string_common"*
  tail call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %48) #16
  unreachable

if.end.i.i.i:                                     ; preds = %if.then10
  %cmp3.i.i.i = icmp ult i64 %sub.ptr.sub.i.i.i.i.i, 23
  br i1 %cmp3.i.i.i, label %if.then4.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %__s.tr.i.i.i.i = trunc i64 %sub.ptr.sub.i.i.i.i.i to i8
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1
  store i8 %conv.i.i.i.i, i8* %47, align 8, !tbaa !18
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %agg.result to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0
  br label %for.cond.preheader.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i: ; preds = %if.end.i.i.i
  %add.i.i.i.i.i = add i64 %sub.ptr.sub.i.i.i.i.i, 16
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #13
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !tbaa !19
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !tbaa !60
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %sub.ptr.sub.i.i.i.i.i, i64* %__size_.i.i.i.i, align 8, !tbaa !61
  br label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i, %if.then4.i.i.i
  %__p.0.ph.i.i.i = phi i8* [ %call.i.i.i.i.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i ], [ %arrayidx.i.i.i.i, %if.then4.i.i.i ]
  %cmp1128.i.i.i = icmp eq i8* %45, %46
  br i1 %cmp1128.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit, label %for.body.i.i.i.preheader

for.body.i.i.i.preheader:                         ; preds = %for.cond.preheader.i.i.i
  %49 = ptrtoint i8* %46 to i64
  %50 = sub i64 %49, %sub.ptr.rhs.cast.i.i.i.i.i
  %min.iters.check69 = icmp ult i64 %50, 32
  br i1 %min.iters.check69, label %for.body.i.i.i.preheader97, label %min.iters.checked70

min.iters.checked70:                              ; preds = %for.body.i.i.i.preheader
  %n.vec72 = and i64 %50, -32
  %cmp.zero73 = icmp eq i64 %n.vec72, 0
  br i1 %cmp.zero73, label %for.body.i.i.i.preheader97, label %vector.memcheck82

vector.memcheck82:                                ; preds = %min.iters.checked70
  %51 = ptrtoint i8* %46 to i64
  %52 = sub i64 %51, %sub.ptr.rhs.cast.i.i.i.i.i
  %scevgep77 = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %52
  %bound078 = icmp ult i8* %__p.0.ph.i.i.i, %46
  %bound179 = icmp ult i8* %45, %scevgep77
  %memcheck.conflict81 = and i1 %bound078, %bound179
  %ind.end87 = getelementptr i8, i8* %45, i64 %n.vec72
  %ind.end89 = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %n.vec72
  br i1 %memcheck.conflict81, label %for.body.i.i.i.preheader97, label %vector.body64.preheader

vector.body64.preheader:                          ; preds = %vector.memcheck82
  %53 = add i64 %n.vec72, -32
  %54 = lshr exact i64 %53, 5
  %55 = add nuw nsw i64 %54, 1
  %xtraiter = and i64 %55, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %vector.body64.prol.loopexit, label %vector.body64.prol.preheader

vector.body64.prol.preheader:                     ; preds = %vector.body64.preheader
  br label %vector.body64.prol

vector.body64.prol:                               ; preds = %vector.body64.prol, %vector.body64.prol.preheader
  %index84.prol = phi i64 [ %index.next85.prol, %vector.body64.prol ], [ 0, %vector.body64.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body64.prol ], [ %xtraiter, %vector.body64.prol.preheader ]
  %next.gep91.prol = getelementptr i8, i8* %45, i64 %index84.prol
  %next.gep93.prol = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %index84.prol
  %56 = bitcast i8* %next.gep91.prol to <16 x i8>*
  %wide.load95.prol = load <16 x i8>, <16 x i8>* %56, align 1, !tbaa !18, !alias.scope !78
  %57 = getelementptr i8, i8* %next.gep91.prol, i64 16
  %58 = bitcast i8* %57 to <16 x i8>*
  %wide.load96.prol = load <16 x i8>, <16 x i8>* %58, align 1, !tbaa !18, !alias.scope !78
  %59 = bitcast i8* %next.gep93.prol to <16 x i8>*
  store <16 x i8> %wide.load95.prol, <16 x i8>* %59, align 1, !tbaa !18, !alias.scope !81, !noalias !78
  %60 = getelementptr i8, i8* %next.gep93.prol, i64 16
  %61 = bitcast i8* %60 to <16 x i8>*
  store <16 x i8> %wide.load96.prol, <16 x i8>* %61, align 1, !tbaa !18, !alias.scope !81, !noalias !78
  %index.next85.prol = add i64 %index84.prol, 32
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.body64.prol.loopexit.unr-lcssa, label %vector.body64.prol, !llvm.loop !83

vector.body64.prol.loopexit.unr-lcssa:            ; preds = %vector.body64.prol
  br label %vector.body64.prol.loopexit

vector.body64.prol.loopexit:                      ; preds = %vector.body64.preheader, %vector.body64.prol.loopexit.unr-lcssa
  %index84.unr = phi i64 [ 0, %vector.body64.preheader ], [ %index.next85.prol, %vector.body64.prol.loopexit.unr-lcssa ]
  %62 = icmp ult i64 %53, 96
  br i1 %62, label %middle.block65, label %vector.body64.preheader.new

vector.body64.preheader.new:                      ; preds = %vector.body64.prol.loopexit
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.body64.preheader.new
  %index84 = phi i64 [ %index84.unr, %vector.body64.preheader.new ], [ %index.next85.3, %vector.body64 ]
  %next.gep91 = getelementptr i8, i8* %45, i64 %index84
  %next.gep93 = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %index84
  %63 = bitcast i8* %next.gep91 to <16 x i8>*
  %wide.load95 = load <16 x i8>, <16 x i8>* %63, align 1, !tbaa !18, !alias.scope !78
  %64 = getelementptr i8, i8* %next.gep91, i64 16
  %65 = bitcast i8* %64 to <16 x i8>*
  %wide.load96 = load <16 x i8>, <16 x i8>* %65, align 1, !tbaa !18, !alias.scope !78
  %66 = bitcast i8* %next.gep93 to <16 x i8>*
  store <16 x i8> %wide.load95, <16 x i8>* %66, align 1, !tbaa !18, !alias.scope !81, !noalias !78
  %67 = getelementptr i8, i8* %next.gep93, i64 16
  %68 = bitcast i8* %67 to <16 x i8>*
  store <16 x i8> %wide.load96, <16 x i8>* %68, align 1, !tbaa !18, !alias.scope !81, !noalias !78
  %index.next85 = add i64 %index84, 32
  %next.gep91.1 = getelementptr i8, i8* %45, i64 %index.next85
  %next.gep93.1 = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %index.next85
  %69 = bitcast i8* %next.gep91.1 to <16 x i8>*
  %wide.load95.1 = load <16 x i8>, <16 x i8>* %69, align 1, !tbaa !18, !alias.scope !78
  %70 = getelementptr i8, i8* %next.gep91.1, i64 16
  %71 = bitcast i8* %70 to <16 x i8>*
  %wide.load96.1 = load <16 x i8>, <16 x i8>* %71, align 1, !tbaa !18, !alias.scope !78
  %72 = bitcast i8* %next.gep93.1 to <16 x i8>*
  store <16 x i8> %wide.load95.1, <16 x i8>* %72, align 1, !tbaa !18, !alias.scope !81, !noalias !78
  %73 = getelementptr i8, i8* %next.gep93.1, i64 16
  %74 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> %wide.load96.1, <16 x i8>* %74, align 1, !tbaa !18, !alias.scope !81, !noalias !78
  %index.next85.1 = add i64 %index84, 64
  %next.gep91.2 = getelementptr i8, i8* %45, i64 %index.next85.1
  %next.gep93.2 = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %index.next85.1
  %75 = bitcast i8* %next.gep91.2 to <16 x i8>*
  %wide.load95.2 = load <16 x i8>, <16 x i8>* %75, align 1, !tbaa !18, !alias.scope !78
  %76 = getelementptr i8, i8* %next.gep91.2, i64 16
  %77 = bitcast i8* %76 to <16 x i8>*
  %wide.load96.2 = load <16 x i8>, <16 x i8>* %77, align 1, !tbaa !18, !alias.scope !78
  %78 = bitcast i8* %next.gep93.2 to <16 x i8>*
  store <16 x i8> %wide.load95.2, <16 x i8>* %78, align 1, !tbaa !18, !alias.scope !81, !noalias !78
  %79 = getelementptr i8, i8* %next.gep93.2, i64 16
  %80 = bitcast i8* %79 to <16 x i8>*
  store <16 x i8> %wide.load96.2, <16 x i8>* %80, align 1, !tbaa !18, !alias.scope !81, !noalias !78
  %index.next85.2 = add i64 %index84, 96
  %next.gep91.3 = getelementptr i8, i8* %45, i64 %index.next85.2
  %next.gep93.3 = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %index.next85.2
  %81 = bitcast i8* %next.gep91.3 to <16 x i8>*
  %wide.load95.3 = load <16 x i8>, <16 x i8>* %81, align 1, !tbaa !18, !alias.scope !78
  %82 = getelementptr i8, i8* %next.gep91.3, i64 16
  %83 = bitcast i8* %82 to <16 x i8>*
  %wide.load96.3 = load <16 x i8>, <16 x i8>* %83, align 1, !tbaa !18, !alias.scope !78
  %84 = bitcast i8* %next.gep93.3 to <16 x i8>*
  store <16 x i8> %wide.load95.3, <16 x i8>* %84, align 1, !tbaa !18, !alias.scope !81, !noalias !78
  %85 = getelementptr i8, i8* %next.gep93.3, i64 16
  %86 = bitcast i8* %85 to <16 x i8>*
  store <16 x i8> %wide.load96.3, <16 x i8>* %86, align 1, !tbaa !18, !alias.scope !81, !noalias !78
  %index.next85.3 = add i64 %index84, 128
  %87 = icmp eq i64 %index.next85.3, %n.vec72
  br i1 %87, label %middle.block65.unr-lcssa, label %vector.body64, !llvm.loop !84

middle.block65.unr-lcssa:                         ; preds = %vector.body64
  br label %middle.block65

middle.block65:                                   ; preds = %vector.body64.prol.loopexit, %middle.block65.unr-lcssa
  %cmp.n90 = icmp eq i64 %50, %n.vec72
  br i1 %cmp.n90, label %for.end.loopexit.i.i.i, label %for.body.i.i.i.preheader97

for.body.i.i.i.preheader97:                       ; preds = %middle.block65, %vector.memcheck82, %min.iters.checked70, %for.body.i.i.i.preheader
  %__first.addr.030.i.i.i.ph = phi i8* [ %45, %vector.memcheck82 ], [ %45, %min.iters.checked70 ], [ %45, %for.body.i.i.i.preheader ], [ %ind.end87, %middle.block65 ]
  %__p.029.i.i.i.ph = phi i8* [ %__p.0.ph.i.i.i, %vector.memcheck82 ], [ %__p.0.ph.i.i.i, %min.iters.checked70 ], [ %__p.0.ph.i.i.i, %for.body.i.i.i.preheader ], [ %ind.end89, %middle.block65 ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.preheader97, %for.body.i.i.i
  %__first.addr.030.i.i.i = phi i8* [ %incdec.ptr.i.i.i, %for.body.i.i.i ], [ %__first.addr.030.i.i.i.ph, %for.body.i.i.i.preheader97 ]
  %__p.029.i.i.i = phi i8* [ %incdec.ptr12.i.i.i, %for.body.i.i.i ], [ %__p.029.i.i.i.ph, %for.body.i.i.i.preheader97 ]
  %88 = load i8, i8* %__first.addr.030.i.i.i, align 1, !tbaa !18
  store i8 %88, i8* %__p.029.i.i.i, align 1, !tbaa !18
  %incdec.ptr.i.i.i = getelementptr inbounds i8, i8* %__first.addr.030.i.i.i, i64 1
  %incdec.ptr12.i.i.i = getelementptr inbounds i8, i8* %__p.029.i.i.i, i64 1
  %cmp11.i.i.i = icmp eq i8* %incdec.ptr.i.i.i, %46
  br i1 %cmp11.i.i.i, label %for.end.loopexit.i.i.i.loopexit, label %for.body.i.i.i, !llvm.loop !85

for.end.loopexit.i.i.i.loopexit:                  ; preds = %for.body.i.i.i
  br label %for.end.loopexit.i.i.i

for.end.loopexit.i.i.i:                           ; preds = %for.end.loopexit.i.i.i.loopexit, %middle.block65
  %scevgep32.i.i.i = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %sub.ptr.sub.i.i.i.i.i
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit: ; preds = %for.cond.preheader.i.i.i, %for.end.loopexit.i.i.i
  %__p.0.lcssa.i.i.i = phi i8* [ %__p.0.ph.i.i.i, %for.cond.preheader.i.i.i ], [ %scevgep32.i.i.i, %for.end.loopexit.i.i.i ]
  store i8 0, i8* %__p.0.lcssa.i.i.i, align 1, !tbaa !18
  br label %return

if.end17:                                         ; preds = %if.else
  %89 = bitcast %"class.std::__1::basic_string"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %89, i8 0, i64 24, i32 8, i1 false) #14
  br label %return

return:                                           ; preds = %if.end17, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit54
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_filebuf"* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__1::locale", align 8
  %ref.tmp2 = alloca %"class.std::__1::locale", align 8
  %0 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"* %0)
  %1 = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !8
  %__extbuf_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 1
  %__ebs_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 5
  %__cv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 9
  %__always_noconv_ = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 16
  %2 = bitcast %"class.std::__1::locale"* %ref.tmp to i8*
  %3 = bitcast i8** %__extbuf_ to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false)
  %4 = bitcast i64* %__ebs_ to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 307, i32 8, i1 false)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %2) #14
  %__loc_.i = getelementptr inbounds %"class.std::__1::basic_filebuf", %"class.std::__1::basic_filebuf"* %this, i64 0, i32 0, i32 1
  call void @_ZNSt3__16localeC1ERKS0_(%"class.std::__1::locale"* nonnull %ref.tmp, %"class.std::__1::locale"* dereferenceable(8) %__loc_.i) #14
  %call.i = invoke zeroext i1 @_ZNKSt3__16locale9has_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__17codecvtIcc11__mbstate_tE2idE)
          to label %_ZNSt3__19has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %entry
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  call void @__clang_call_terminate(i8* %6) #17
  unreachable

_ZNSt3__19has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE.exit: ; preds = %entry
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %2) #14
  br i1 %call.i, label %if.then, label %if.end

if.then:                                          ; preds = %_ZNSt3__19has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE.exit
  %7 = bitcast %"class.std::__1::locale"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #14
  call void @_ZNSt3__16localeC1ERKS0_(%"class.std::__1::locale"* nonnull %ref.tmp2, %"class.std::__1::locale"* dereferenceable(8) %__loc_.i) #14
  %call.i1819 = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %ref.tmp2, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__17codecvtIcc11__mbstate_tE2idE)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %if.then
  %8 = bitcast %"class.std::__1::codecvt"** %__cv_ to %"class.std::__1::locale::facet"**
  store %"class.std::__1::locale::facet"* %call.i1819, %"class.std::__1::locale::facet"** %8, align 8, !tbaa !37
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp2) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #14
  %9 = load %"class.std::__1::codecvt"*, %"class.std::__1::codecvt"** %__cv_, align 8, !tbaa !37
  %10 = bitcast %"class.std::__1::codecvt"* %9 to i1 (%"class.std::__1::codecvt"*)***
  %vtable.i = load i1 (%"class.std::__1::codecvt"*)**, i1 (%"class.std::__1::codecvt"*)*** %10, align 8, !tbaa !8
  %vfn.i = getelementptr inbounds i1 (%"class.std::__1::codecvt"*)*, i1 (%"class.std::__1::codecvt"*)** %vtable.i, i64 7
  %11 = load i1 (%"class.std::__1::codecvt"*)*, i1 (%"class.std::__1::codecvt"*)** %vfn.i, align 8
  %call.i20 = call zeroext i1 %11(%"class.std::__1::codecvt"* %9) #14
  %frombool = zext i1 %call.i20 to i8
  store i8 %frombool, i8* %__always_noconv_, align 2, !tbaa !38
  br label %if.end

lpad5:                                            ; preds = %if.then
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %ref.tmp2) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #14
  br label %ehcleanup15

if.end:                                           ; preds = %invoke.cont6, %_ZNSt3__19has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE.exit
  %15 = bitcast %"class.std::__1::basic_filebuf"* %this to %"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_filebuf"*, i8*, i64)***
  %vtable = load %"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_filebuf"*, i8*, i64)**, %"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_filebuf"*, i8*, i64)*** %15, align 8, !tbaa !8
  %vfn = getelementptr inbounds %"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_filebuf"*, i8*, i64)*, %"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_filebuf"*, i8*, i64)** %vtable, i64 3
  %16 = load %"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_filebuf"*, i8*, i64)*, %"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_filebuf"*, i8*, i64)** %vfn, align 8
  %call14 = invoke %"class.std::__1::basic_streambuf"* %16(%"class.std::__1::basic_filebuf"* nonnull %this, i8* null, i64 4096)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %if.end
  ret void

lpad12:                                           ; preds = %if.end
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  br label %ehcleanup15

ehcleanup15:                                      ; preds = %lpad12, %lpad5
  %exn.slot.0 = phi i8* [ %18, %lpad12 ], [ %13, %lpad5 ]
  %ehselector.slot.0 = phi i32 [ %19, %lpad12 ], [ %14, %lpad5 ]
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %0) #14
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.0, 0
  %lpad.val16 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.0, 1
  resume { i8*, i32 } %lpad.val16
}

declare zeroext i1 @_ZNKSt3__16locale9has_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt3__16localeC1ERKS0_(%"class.std::__1::locale"*, %"class.std::__1::locale"* dereferenceable(8)) unnamed_addr #9

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) local_unnamed_addr #4

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call i8* @_Znwm(i64 8) #13
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #13
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  %2 = ptrtoint void ()* %__f to i64
  %3 = bitcast i8* %call4 to i64*
  store i64 %1, i64* %3, align 8, !tbaa !86
  %4 = getelementptr inbounds i8, i8* %call4, i64 8
  %5 = bitcast i8* %4 to i64*
  store i64 %2, i64* %5, align 8, !tbaa !88
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
  tail call void @_ZdlPv(i8* nonnull %call) #15
  br label %eh.resume

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup
  br label %delete.notnull.i.i.i.i

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0)) #16
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
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !2
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !2
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #14
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*
  tail call void @_ZdlPv(i8* %14) #15
  br label %ehcleanup18.thread

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #15
  br label %eh.resume

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #14
  tail call void @_ZdlPv(i8* nonnull %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1
  resume { i8*, i32 } %lpad.val20
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #4

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**
  %0 = bitcast i8* %__vp to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !2
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !2
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !90
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8
  %3 = bitcast i8* %value.i.i.i to void ()**
  %4 = load void ()*, void ()** %3, align 8, !tbaa !2
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !2
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !2
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #14
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*
  tail call void @_ZdlPv(i8* %6) #15
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #15
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
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !2
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !2
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #14
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*
  tail call void @_ZdlPv(i8* %8) #15
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #15
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #8

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #4

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #4

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #9

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { alwaysinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { builtin }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !3, i64 0}
!7 = !{!"_ZTSNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEE", !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !5, i64 0}
!10 = !{!11, !3, i64 136}
!11 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !3, i64 136, !12, i64 144}
!12 = !{!"int", !4, i64 0}
!13 = !{!11, !12, i64 144}
!14 = !{!15, !12, i64 96}
!15 = !{!"_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !16, i64 64, !3, i64 88, !12, i64 96}
!16 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !17, i64 0}
!17 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE"}
!18 = !{!4, !4, i64 0}
!19 = !{!20, !3, i64 16}
!20 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !21, i64 0, !21, i64 8, !3, i64 16}
!21 = !{!"long", !4, i64 0}
!22 = !{!23, !3, i64 120}
!23 = !{!"_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE", !3, i64 64, !3, i64 72, !3, i64 80, !4, i64 88, !21, i64 96, !3, i64 104, !21, i64 112, !3, i64 120, !3, i64 128, !4, i64 136, !4, i64 264, !12, i64 392, !12, i64 396, !24, i64 400, !24, i64 401, !24, i64 402}
!24 = !{!"bool", !4, i64 0}
!25 = !{!23, !12, i64 392}
!26 = !{!27, !12, i64 32}
!27 = !{!"_ZTSNSt3__18ios_baseE", !12, i64 8, !21, i64 16, !21, i64 24, !12, i64 32, !12, i64 36, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !21, i64 72, !21, i64 80, !3, i64 88, !21, i64 96, !21, i64 104, !3, i64 112, !21, i64 120, !21, i64 128}
!28 = !{!12, !12, i64 0}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{!31, !3, i64 8}
!31 = !{!"_ZTSNSt3__116__tree_node_baseIPvEE", !3, i64 8, !3, i64 16, !24, i64 24}
!32 = !{!23, !24, i64 400}
!33 = !{i8 0, i8 2}
!34 = !{!23, !3, i64 64}
!35 = !{!23, !24, i64 401}
!36 = !{!23, !3, i64 104}
!37 = !{!23, !3, i64 128}
!38 = !{!23, !24, i64 402}
!39 = !{!23, !21, i64 112}
!40 = !{!23, !21, i64 96}
!41 = !{!42, !43, i64 128}
!42 = !{!"_ZTSNSt3__14fposI11__mbstate_tEE", !4, i64 0, !43, i64 128}
!43 = !{!"long long", !4, i64 0}
!44 = !{i64 0, i64 128, !18, i64 0, i64 8, !45, i64 128, i64 8, !45}
!45 = !{!43, !43, i64 0}
!46 = !{!23, !12, i64 396}
!47 = !{!48, !3, i64 48}
!48 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !49, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56}
!49 = !{!"_ZTSNSt3__16localeE", !3, i64 0}
!50 = !{!48, !3, i64 40}
!51 = !{i64 0, i64 128, !18, i64 0, i64 8, !45}
!52 = !{!48, !3, i64 32}
!53 = !{!48, !3, i64 24}
!54 = !{!23, !3, i64 80}
!55 = !{!23, !3, i64 72}
!56 = !{!48, !3, i64 16}
!57 = !{!21, !21, i64 0}
!58 = !{!48, !3, i64 56}
!59 = !{!15, !3, i64 88}
!60 = !{!20, !21, i64 0}
!61 = !{!20, !21, i64 8}
!62 = !{!63, !24, i64 0}
!63 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !24, i64 0, !4, i64 8}
!64 = !{!27, !3, i64 40}
!65 = !{!27, !12, i64 8}
!66 = !{!27, !21, i64 24}
!67 = !{!68}
!68 = distinct !{!68, !69}
!69 = distinct !{!69, !"LVerDomain"}
!70 = !{!71}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.vectorize.width", i32 1}
!76 = !{!"llvm.loop.interleave.count", i32 1}
!77 = distinct !{!77, !75, !76}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !73}
!84 = distinct !{!84, !75, !76}
!85 = distinct !{!85, !75, !76}
!86 = !{!87, !3, i64 0}
!87 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !3, i64 0}
!88 = !{!89, !3, i64 0}
!89 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !3, i64 0}
!90 = !{!91, !21, i64 0}
!91 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !21, i64 0}
