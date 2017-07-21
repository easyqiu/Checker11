; ModuleID = 'test.bc'
source_filename = "test.cpp"
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
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::basic_stringstream" = type { %"class.std::__1::basic_iostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_iostream.base" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_ostream.base" }
%"class.std::__1::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::__1::basic_ostream.base" = type { i32 (...)** }
%"class.std::__1::basic_stringbuf" = type <{ %"class.std::__1::basic_streambuf", %"class.std::__1::basic_string", i8*, i32, [4 x i8] }>
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32, [4 x i8] }>
%"class.std::__1::basic_iostream" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_ios.base" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.0, [23 x i8] }
%union.anon.0 = type { i8 }
%"class.std::__1::thread" = type { %struct._opaque_pthread_t* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%"class.std::__1::basic_istream" = type { i32 (...)**, i64, %"class.std::__1::basic_ios.base" }
%"class.std::__1::fpos" = type { %union.__mbstate_t, i64 }
%union.__mbstate_t = type { i64, [120 x i8] }
%"class.std::__1::__basic_string_common" = type { i8 }
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::__thread_struct" = type { %"class.std::__1::__thread_struct_imp"* }
%"class.std::__1::__thread_struct_imp" = type opaque
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }
%"class.std::__1::__thread_specific_ptr" = type { i64 }

@ptr = global %"struct.std::__1::atomic" zeroinitializer, align 8
@data = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"p2: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"xxxxxxx: %p, %ld, %p\0A\00", align 1
@__func__._Z8consumerv = private unnamed_addr constant [9 x i8] c"consumer\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"test.cpp\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"*p2 == \22Hello\22\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"data == 42\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"store p: \00", align 1
@_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 112 to i8*), i8* inttoptr (i64 -16 to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -128 to i8*), i8* inttoptr (i64 -128 to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringstream"*)* @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*)] }, align 8
@_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant [10 x i8*] [i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i32 0, inrange i32 1, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE, i32 0, inrange i32 0, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE, i32 0, inrange i32 1, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 2, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE, i32 0, inrange i32 1, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 2, i32 3) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, inrange i32 1, i32 3) to i8*)]
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null, i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 112 to i8*), i8* inttoptr (i64 -16 to i8*), i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -128 to i8*), i8* inttoptr (i64 -128 to i8*), i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_iostream"*)* @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev to i8*)] }
@_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null, i8* bitcast (i8** @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -128 to i8*), i8* inttoptr (i64 -128 to i8*), i8* bitcast (i8** @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_istream"*)* @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev to i8*)] }
@_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE = linkonce_odr unnamed_addr constant { [5 x i8*], [5 x i8*] } { [5 x i8*] [i8* inttoptr (i64 112 to i8*), i8* null, i8* bitcast (i8** @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev to i8*)], [5 x i8*] [i8* inttoptr (i64 -112 to i8*), i8* inttoptr (i64 -112 to i8*), i8* bitcast (i8** @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_ostream"*)* @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev to i8*)] }
@_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant [69 x i8] c"NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE\00"
@_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @_ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE to i8*) }
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr unnamed_addr constant { [16 x i8*] } { [16 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE to i8*), i8* bitcast (void (%"class.std::__1::basic_stringbuf"*)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_stringbuf"*)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev to i8*), i8* bitcast (void (%"class.std::__1::basic_streambuf"*, %"class.std::__1::locale"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE to i8*), i8* bitcast (%"class.std::__1::basic_streambuf"* (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl to i8*), i8* bitcast (void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj to i8*), i8* bitcast (void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, %"class.std::__1::fpos"*, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj to i8*), i8* bitcast (i32 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl to i8*), i8* bitcast (i32 (%"class.std::__1::basic_stringbuf"*)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv to i8*), i8* bitcast (i32 (%"class.std::__1::basic_streambuf"*)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv to i8*), i8* bitcast (i32 (%"class.std::__1::basic_stringbuf"*, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi to i8*), i8* bitcast (i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl to i8*), i8* bitcast (i32 (%"class.std::__1::basic_stringbuf"*, i32)* @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi to i8*)] }, align 8
@_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant [66 x i8] c"NSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE\00"
@_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE = external constant i8*
@_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE to i8*) }
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@str = private unnamed_addr constant [9 x i8] c"yyyyyyy!\00"

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i64 @_Z4testv() local_unnamed_addr #0 {
entry:
  ret i64 140583176769504
}

; Function Attrs: ssp uwtable
define void @_Z8producerv() #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call i8* @_Znwm(i64 24) #15
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %call, i8 0, i64 24, i32 8, i1 false) #14
  store i8 10, i8* %call, align 8, !tbaa !2
  %0 = getelementptr inbounds i8, i8* %call, i64 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5, i32 1, i1 false) #14
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %call, i64 6
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !2
  store i32 42, i32* @data, align 4, !tbaa !5
  %1 = ptrtoint i8* %call to i64
  store atomic i64 %1, i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) release, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: ssp uwtable
define void @_Z8consumerv() #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i.i = alloca %"class.std::__1::basic_string", align 8
  %ss = alloca %"class.std::__1::basic_stringstream", align 16
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %0 = load atomic i64, i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) acquire, align 8
  %lnot = icmp eq i64 %0, 0
  br i1 %lnot, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %1 = inttoptr i64 %0 to %"class.std::__1::basic_string"*
  %2 = bitcast %"class.std::__1::basic_stringstream"* %ss to i8*
  call void @llvm.lifetime.start(i64 280, i8* nonnull %2) #14
  %3 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2
  %4 = bitcast %"class.std::__1::basic_ios.base"* %3 to %"class.std::__1::basic_ios"*
  %5 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %5, align 16, !tbaa !7
  %6 = bitcast %"class.std::__1::basic_stringstream"* %ss to %"class.std::__1::basic_iostream"*
  %__sb_.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1
  %7 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0
  %8 = bitcast %"class.std::__1::basic_stringstream"* %ss to i64*
  %9 = bitcast %"class.std::__1::basic_ios.base"* %3 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i64 0, inrange i32 1, i64 3) to i64), i64* %9, align 16, !tbaa !7
  %10 = bitcast %"class.std::__1::basic_stringstream"* %ss to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i64 0, inrange i32 0, i64 3) to i64), i64 0>, <2 x i64>* %10, align 16
  %11 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 0
  %12 = bitcast %"class.std::__1::basic_stringbuf"* %__sb_.i to i8*
  invoke void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"* %11, i8* %12)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %while.end
  %13 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::__1::basic_ios.base", %"class.std::__1::basic_ios.base"* %3, i64 0, i32 0, i32 0
  %__tie_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 1
  store %"class.std::__1::basic_ostream"* null, %"class.std::__1::basic_ostream"** %__tie_.i.i.i.i, align 8, !tbaa !9
  %__fill_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 2
  store i32 -1, i32* %__fill_.i.i.i.i, align 16, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i32 (...)**), i32 (...)*** %13, align 16, !tbaa !7
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i32 (...)**), i32 (...)*** %14, align 16, !tbaa !7
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %5, align 16, !tbaa !7
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"* %7)
          to label %.noexc.i unwind label %lpad6.i

.noexc.i:                                         ; preds = %invoke.cont.i
  %15 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !7
  %__str_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1
  %16 = bitcast %"class.std::__1::basic_string"* %__str_.i.i.i to i8*
  %__mode_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 3
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 32, i32 8, i1 false)
  store i32 24, i32* %__mode_.i.i.i, align 8, !tbaa !13
  %17 = bitcast %"class.std::__1::basic_string"* %ref.tmp.i.i.i to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %17) #14
  call void @llvm.memset.p0i8.i64(i8* nonnull %17, i8 0, i64 24, i32 8, i1 false) #14
  invoke void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(%"class.std::__1::basic_stringbuf"* nonnull %__sb_.i, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %ref.tmp.i.i.i)
          to label %invoke.cont.i.i.i unwind label %lpad.i.i.i

invoke.cont.i.i.i:                                ; preds = %.noexc.i
  %18 = load i8, i8* %17, align 8, !tbaa !2
  %19 = and i8 %18, 1
  %tobool.i.i.i9.i.i.i = icmp eq i8 %19, 0
  br i1 %tobool.i.i.i9.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit, label %if.then.i.i11.i.i.i

if.then.i.i11.i.i.i:                              ; preds = %invoke.cont.i.i.i
  %__data_.i.i.i10.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %20 = load i8*, i8** %__data_.i.i.i10.i.i.i, align 8, !tbaa !17
  call void @_ZdlPv(i8* %20) #16
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit

lpad.i.i.i:                                       ; preds = %.noexc.i
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = load i8, i8* %17, align 8, !tbaa !2
  %23 = and i8 %22, 1
  %tobool.i.i.i4.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool.i.i.i4.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i, label %if.then.i.i6.i.i.i

if.then.i.i6.i.i.i:                               ; preds = %lpad.i.i.i
  %__data_.i.i.i5.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %24 = load i8*, i8** %__data_.i.i.i5.i.i.i, align 8, !tbaa !17
  call void @_ZdlPv(i8* %24) #16
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i: ; preds = %if.then.i.i6.i.i.i, %lpad.i.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %17) #14
  %25 = load i8, i8* %16, align 8, !tbaa !2
  %26 = and i8 %25, 1
  %tobool.i.i.i.i.i.i = icmp eq i8 %26, 0
  br i1 %tobool.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i
  %__data_.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %27 = load i8*, i8** %__data_.i.i.i.i.i.i, align 8, !tbaa !17
  call void @_ZdlPv(i8* %27) #16
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %7) #14
  br label %lpad6.body.i

lpad.i:                                           ; preds = %while.end
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  %30 = extractvalue { i8*, i32 } %28, 1
  br label %ehcleanup.i

lpad6.i:                                          ; preds = %invoke.cont.i
  %31 = landingpad { i8*, i32 }
          cleanup
  br label %lpad6.body.i

lpad6.body.i:                                     ; preds = %lpad6.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i
  %eh.lpad-body.i = phi { i8*, i32 } [ %31, %lpad6.i ], [ %21, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i ]
  %32 = extractvalue { i8*, i32 } %eh.lpad-body.i, 0
  %33 = extractvalue { i8*, i32 } %eh.lpad-body.i, 1
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %6, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  br label %ehcleanup.i

ehcleanup.i:                                      ; preds = %lpad6.body.i, %lpad.i
  %exn.slot.0.i = phi i8* [ %32, %lpad6.body.i ], [ %29, %lpad.i ]
  %ehselector.slot.0.i = phi i32 [ %33, %lpad6.body.i ], [ %30, %lpad.i ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %4) #14
  %lpad.val.i = insertvalue { i8*, i32 } undef, i8* %exn.slot.0.i, 0
  %lpad.val8.i = insertvalue { i8*, i32 } %lpad.val.i, i32 %ehselector.slot.0.i, 1
  resume { i8*, i32 } %lpad.val8.i

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit: ; preds = %invoke.cont.i.i.i, %if.then.i.i11.i.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %17) #14
  %add.ptr = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 1
  %34 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to %"class.std::__1::basic_ostream"*
  %call1.i42 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit
  %35 = inttoptr i64 %0 to i8*
  %call3 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i42, i8* %35)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %call1.i44 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %36 = load i8, i8* %35, align 8, !tbaa !2
  %37 = and i8 %36, 1
  %tobool.i.i.i.i = icmp eq i8 %37, 0
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %38 = load i8*, i8** %__data_.i.i.i.i, align 8
  %__s.i.i.i.i = inttoptr i64 %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0
  %cond.i.i.i = select i1 %tobool.i.i.i.i, i8* %arrayidx.i.i.i.i, i8* %38
  %__size_.i5.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %39 = load i64, i64* %__size_.i5.i.i, align 8
  %conv.i.i.i = zext i8 %36 to i64
  %shr3.i.i.i = lshr i64 %conv.i.i.i, 1
  %cond.i.i = select i1 %tobool.i.i.i.i, i64 %shr3.i.i.i, i64 %39
  %call2.i46 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call1.i44, i8* %cond.i.i.i, i64 %cond.i.i)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  %call1.i48 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call2.i46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont6
  %40 = bitcast %"class.std::__1::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %40) #14
  invoke void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* nonnull sret %ref.tmp, %"class.std::__1::basic_stringbuf"* %__sb_.i)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont8
  %41 = load i8, i8* %40, align 8, !tbaa !2
  %42 = and i8 %41, 1
  %tobool.i.i.i.i52 = icmp eq i8 %42, 0
  %__data_.i.i.i.i53 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %43 = load i8*, i8** %__data_.i.i.i.i53, align 8
  %__s.i.i.i.i54 = bitcast %"class.std::__1::basic_string"* %ref.tmp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i55 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i54, i64 0, i32 1, i64 0
  %cond.i.i.i56 = select i1 %tobool.i.i.i.i52, i8* %arrayidx.i.i.i.i55, i8* %43
  %__size_.i5.i.i57 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %44 = load i64, i64* %__size_.i5.i.i57, align 8
  %conv.i.i.i58 = zext i8 %41 to i64
  %shr3.i.i.i59 = lshr i64 %conv.i.i.i58, 1
  %cond.i.i60 = select i1 %tobool.i.i.i.i52, i64 %shr3.i.i.i59, i64 %44
  %call2.i61 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) @_ZNSt3__14coutE, i8* %cond.i.i.i56, i64 %cond.i.i60)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %invoke.cont11
  %45 = load i8, i8* %40, align 8, !tbaa !2
  %46 = and i8 %45, 1
  %tobool.i.i.i = icmp eq i8 %46, 0
  br i1 %tobool.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont13
  %47 = load i8*, i8** %__data_.i.i.i.i53, align 8, !tbaa !17
  call void @_ZdlPv(i8* %47) #16
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont13, %if.then.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %40) #14
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), %"class.std::__1::basic_string"* nonnull %1, %"class.std::__1::basic_string"* nonnull %1, %"class.std::__1::basic_string"* nonnull %1)
  %48 = load i8, i8* %35, align 8, !tbaa !2
  %49 = and i8 %48, 1
  %tobool.i.i.i65 = icmp eq i8 %49, 0
  %50 = load i64, i64* %__size_.i5.i.i, align 8
  %conv.i.i.i67 = zext i8 %48 to i64
  %shr3.i.i.i68 = lshr i64 %conv.i.i.i67, 1
  %cond.i.i69 = select i1 %tobool.i.i.i65, i64 %shr3.i.i.i68, i64 %50
  %cmp.i = icmp eq i64 %cond.i.i69, 5
  br i1 %cmp.i, label %if.end.i, label %cond.true

if.end.i:                                         ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit
  %call2.i = invoke i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(%"class.std::__1::basic_string"* nonnull %1, i64 0, i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5)
          to label %_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit unwind label %lpad.i71

lpad.i71:                                         ; preds = %if.end.i
  %51 = landingpad { i8*, i32 }
          catch i8* null
  %52 = extractvalue { i8*, i32 } %51, 0
  call void @__clang_call_terminate(i8* %52) #17
  unreachable

_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %if.end.i
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %cond.end, label %cond.true, !prof !20

cond.true:                                        ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  invoke void @__assert_rtn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__._Z8consumerv, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)) #18
          to label %invoke.cont20 unwind label %lpad

invoke.cont20:                                    ; preds = %cond.true
  unreachable

lpad:                                             ; preds = %invoke.cont6, %invoke.cont4, %invoke.cont2, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit, %cond.true27, %cond.true, %invoke.cont
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = extractvalue { i8*, i32 } %53, 0
  %55 = extractvalue { i8*, i32 } %53, 1
  br label %ehcleanup31

lpad10:                                           ; preds = %invoke.cont8
  %56 = landingpad { i8*, i32 }
          cleanup
  %57 = extractvalue { i8*, i32 } %56, 0
  %58 = extractvalue { i8*, i32 } %56, 1
  br label %ehcleanup

lpad12:                                           ; preds = %invoke.cont11
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  %61 = extractvalue { i8*, i32 } %59, 1
  %62 = load i8, i8* %40, align 8, !tbaa !2
  %63 = and i8 %62, 1
  %tobool.i.i.i73 = icmp eq i8 %63, 0
  br i1 %tobool.i.i.i73, label %ehcleanup, label %if.then.i.i75

if.then.i.i75:                                    ; preds = %lpad12
  %64 = load i8*, i8** %__data_.i.i.i.i53, align 8, !tbaa !17
  call void @_ZdlPv(i8* %64) #16
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i75, %lpad12, %lpad10
  %exn.slot.0 = phi i8* [ %57, %lpad10 ], [ %60, %lpad12 ], [ %60, %if.then.i.i75 ]
  %ehselector.slot.0 = phi i32 [ %58, %lpad10 ], [ %61, %lpad12 ], [ %61, %if.then.i.i75 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %40) #14
  br label %ehcleanup31

cond.end:                                         ; preds = %_ZNSt3__1eqIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %puts = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @str, i64 0, i64 0))
  %65 = load i32, i32* @data, align 4, !tbaa !5
  %lnot23 = icmp eq i32 %65, 42
  br i1 %lnot23, label %cond.end30, label %cond.true27, !prof !20

cond.true27:                                      ; preds = %cond.end
  invoke void @__assert_rtn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__._Z8consumerv, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)) #18
          to label %invoke.cont28 unwind label %lpad

invoke.cont28:                                    ; preds = %cond.true27
  unreachable

cond.end30:                                       ; preds = %cond.end
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %8, align 16, !tbaa !7
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %9, align 16, !tbaa !7
  %66 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %66, align 16, !tbaa !7
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !7
  %67 = load i8, i8* %16, align 8, !tbaa !2
  %68 = and i8 %67, 1
  %tobool.i.i.i.i.i.i.i82 = icmp eq i8 %68, 0
  br i1 %tobool.i.i.i.i.i.i.i82, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit85, label %if.then.i.i.i.i.i.i84

if.then.i.i.i.i.i.i84:                            ; preds = %cond.end30
  %__data_.i.i.i.i.i.i.i83 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %69 = load i8*, i8** %__data_.i.i.i.i.i.i.i83, align 8, !tbaa !17
  call void @_ZdlPv(i8* %69) #16
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit85

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit85: ; preds = %cond.end30, %if.then.i.i.i.i.i.i84
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %7) #14
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %6, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* nonnull %4) #14
  call void @llvm.lifetime.end(i64 280, i8* nonnull %2) #14
  ret void

ehcleanup31:                                      ; preds = %ehcleanup, %lpad
  %exn.slot.1 = phi i8* [ %54, %lpad ], [ %exn.slot.0, %ehcleanup ]
  %ehselector.slot.1 = phi i32 [ %55, %lpad ], [ %ehselector.slot.0, %ehcleanup ]
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %8, align 16, !tbaa !7
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %9, align 16, !tbaa !7
  %70 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %70, align 16, !tbaa !7
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !7
  %71 = load i8, i8* %16, align 8, !tbaa !2
  %72 = and i8 %71, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %72, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %ehcleanup31
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %73 = load i8*, i8** %__data_.i.i.i.i.i.i.i, align 8, !tbaa !17
  call void @_ZdlPv(i8* %73) #16
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %ehcleanup31, %if.then.i.i.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %7) #14
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %6, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* nonnull %4) #14
  call void @llvm.lifetime.end(i64 280, i8* nonnull %2) #14
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.1, 0
  %lpad.val34 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { i8*, i32 } %lpad.val34
}

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #8 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %0, align 8, !tbaa !7
  %add.ptr.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 2
  %1 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %1, align 8, !tbaa !7
  %add.ptr3.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 0, i32 1
  %2 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr3.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %2, align 8, !tbaa !7
  %__sb_.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1
  %3 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !7
  %__str_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1, i32 1
  %__size_.i.i.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_.i.i.i to i8*
  %4 = load i8, i8* %__size_.i.i.i.i.i.i, align 8, !tbaa !2
  %5 = and i8 %4, 1
  %tobool.i.i.i.i.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %entry
  %__data_.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %6 = load i8*, i8** %__data_.i.i.i.i.i.i, align 8, !tbaa !17
  tail call void @_ZdlPv(i8* %6) #16
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

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #9 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i.i = alloca %"class.std::__1::basic_string", align 8
  %ss = alloca %"class.std::__1::basic_stringstream", align 16
  %a = alloca %"class.std::__1::thread", align 8
  %b = alloca %"class.std::__1::thread", align 8
  %call = tail call i8* @_Znwm(i64 24) #15
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %call, i8 0, i64 24, i32 8, i1 false) #14
  store i8 2, i8* %call, align 8, !tbaa !2
  %0 = getelementptr inbounds i8, i8* %call, i64 1
  store i8 72, i8* %0, align 1
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %call, i64 2
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !2
  %1 = ptrtoint i8* %call to i64
  store atomic i64 %1, i64* bitcast (%"struct.std::__1::atomic"* @ptr to i64*) seq_cst, align 8
  %2 = bitcast %"class.std::__1::basic_stringstream"* %ss to i8*
  call void @llvm.lifetime.start(i64 280, i8* nonnull %2) #14
  %3 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2
  %4 = bitcast %"class.std::__1::basic_ios.base"* %3 to %"class.std::__1::basic_ios"*
  %5 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %5, align 16, !tbaa !7
  %6 = bitcast %"class.std::__1::basic_stringstream"* %ss to %"class.std::__1::basic_iostream"*
  %__sb_.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1
  %7 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0
  %8 = bitcast %"class.std::__1::basic_stringstream"* %ss to i64*
  %9 = bitcast %"class.std::__1::basic_ios.base"* %3 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i64 0, inrange i32 1, i64 3) to i64), i64* %9, align 16, !tbaa !7
  %10 = bitcast %"class.std::__1::basic_stringstream"* %ss to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE, i64 0, inrange i32 0, i64 3) to i64), i64 0>, <2 x i64>* %10, align 16
  %11 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 0
  %12 = bitcast %"class.std::__1::basic_stringbuf"* %__sb_.i to i8*
  invoke void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"* %11, i8* %12)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %entry
  %13 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::__1::basic_ios.base", %"class.std::__1::basic_ios.base"* %3, i64 0, i32 0, i32 0
  %__tie_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 1
  store %"class.std::__1::basic_ostream"* null, %"class.std::__1::basic_ostream"** %__tie_.i.i.i.i, align 8, !tbaa !9
  %__fill_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 2, i32 2
  store i32 -1, i32* %__fill_.i.i.i.i, align 16, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i32 (...)**), i32 (...)*** %13, align 16, !tbaa !7
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i32 (...)**), i32 (...)*** %14, align 16, !tbaa !7
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %5, align 16, !tbaa !7
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"* %7)
          to label %.noexc.i unwind label %lpad6.i

.noexc.i:                                         ; preds = %invoke.cont.i
  %15 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !7
  %__str_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1
  %16 = bitcast %"class.std::__1::basic_string"* %__str_.i.i.i to i8*
  %__mode_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 3
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 32, i32 8, i1 false)
  store i32 24, i32* %__mode_.i.i.i, align 8, !tbaa !13
  %17 = bitcast %"class.std::__1::basic_string"* %ref.tmp.i.i.i to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %17) #14
  call void @llvm.memset.p0i8.i64(i8* nonnull %17, i8 0, i64 24, i32 8, i1 false) #14
  invoke void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(%"class.std::__1::basic_stringbuf"* nonnull %__sb_.i, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %ref.tmp.i.i.i)
          to label %invoke.cont.i.i.i unwind label %lpad.i.i.i

invoke.cont.i.i.i:                                ; preds = %.noexc.i
  %18 = load i8, i8* %17, align 8, !tbaa !2
  %19 = and i8 %18, 1
  %tobool.i.i.i9.i.i.i = icmp eq i8 %19, 0
  br i1 %tobool.i.i.i9.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit, label %if.then.i.i11.i.i.i

if.then.i.i11.i.i.i:                              ; preds = %invoke.cont.i.i.i
  %__data_.i.i.i10.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %20 = load i8*, i8** %__data_.i.i.i10.i.i.i, align 8, !tbaa !17
  call void @_ZdlPv(i8* %20) #16
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit

lpad.i.i.i:                                       ; preds = %.noexc.i
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = load i8, i8* %17, align 8, !tbaa !2
  %23 = and i8 %22, 1
  %tobool.i.i.i4.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool.i.i.i4.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i, label %if.then.i.i6.i.i.i

if.then.i.i6.i.i.i:                               ; preds = %lpad.i.i.i
  %__data_.i.i.i5.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %ref.tmp.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %24 = load i8*, i8** %__data_.i.i.i5.i.i.i, align 8, !tbaa !17
  call void @_ZdlPv(i8* %24) #16
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i: ; preds = %if.then.i.i6.i.i.i, %lpad.i.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %17) #14
  %25 = load i8, i8* %16, align 8, !tbaa !2
  %26 = and i8 %25, 1
  %tobool.i.i.i.i.i.i = icmp eq i8 %26, 0
  br i1 %tobool.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i
  %__data_.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %27 = load i8*, i8** %__data_.i.i.i.i.i.i, align 8, !tbaa !17
  call void @_ZdlPv(i8* %27) #16
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i: ; preds = %if.then.i.i.i.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit7.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %7) #14
  br label %lpad6.body.i

lpad.i:                                           ; preds = %entry
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  %30 = extractvalue { i8*, i32 } %28, 1
  br label %ehcleanup.i

lpad6.i:                                          ; preds = %invoke.cont.i
  %31 = landingpad { i8*, i32 }
          cleanup
  br label %lpad6.body.i

lpad6.body.i:                                     ; preds = %lpad6.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i
  %eh.lpad-body.i = phi { i8*, i32 } [ %31, %lpad6.i ], [ %21, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit.i.i.i ]
  %32 = extractvalue { i8*, i32 } %eh.lpad-body.i, 0
  %33 = extractvalue { i8*, i32 } %eh.lpad-body.i, 1
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %6, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  br label %ehcleanup.i

ehcleanup.i:                                      ; preds = %lpad6.body.i, %lpad.i
  %exn.slot.0.i = phi i8* [ %32, %lpad6.body.i ], [ %29, %lpad.i ]
  %ehselector.slot.0.i = phi i32 [ %33, %lpad6.body.i ], [ %30, %lpad.i ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %4) #14
  %lpad.val.i = insertvalue { i8*, i32 } undef, i8* %exn.slot.0.i, 0
  %lpad.val8.i = insertvalue { i8*, i32 } %lpad.val.i, i32 %ehselector.slot.0.i, 1
  resume { i8*, i32 } %lpad.val8.i

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit: ; preds = %invoke.cont.i.i.i, %if.then.i.i11.i.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %17) #14
  %add.ptr = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 0, i32 1
  %34 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to %"class.std::__1::basic_ostream"*
  %call1.i28 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 9)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit
  %call5 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv(%"class.std::__1::basic_ostream"* nonnull %call1.i28, i8* nonnull %call)
          to label %invoke.cont4 unwind label %lpad1

invoke.cont4:                                     ; preds = %invoke.cont2
  %call1.i30 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1)
          to label %invoke.cont6 unwind label %lpad1

invoke.cont6:                                     ; preds = %invoke.cont4
  %35 = load i8, i8* %call, align 8, !tbaa !2
  %36 = and i8 %35, 1
  %tobool.i.i.i.i = icmp eq i8 %36, 0
  %__data_.i.i.i.i32 = getelementptr inbounds i8, i8* %call, i64 16
  %37 = bitcast i8* %__data_.i.i.i.i32 to i8**
  %38 = load i8*, i8** %37, align 8
  %cond.i.i.i = select i1 %tobool.i.i.i.i, i8* %0, i8* %38
  %__size_.i5.i.i = getelementptr inbounds i8, i8* %call, i64 8
  %39 = bitcast i8* %__size_.i5.i.i to i64*
  %40 = load i64, i64* %39, align 8
  %conv.i.i.i = zext i8 %35 to i64
  %shr3.i.i.i = lshr i64 %conv.i.i.i, 1
  %cond.i.i = select i1 %tobool.i.i.i.i, i64 %shr3.i.i.i, i64 %40
  %call2.i35 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call1.i30, i8* %cond.i.i.i, i64 %cond.i.i)
          to label %invoke.cont8 unwind label %lpad1

invoke.cont8:                                     ; preds = %invoke.cont6
  %call1.i37 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %call2.i35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
          to label %invoke.cont10 unwind label %lpad1

invoke.cont10:                                    ; preds = %invoke.cont8
  %41 = bitcast %"class.std::__1::thread"* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %41) #14
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %a, void ()* nonnull @_Z8producerv)
          to label %invoke.cont12 unwind label %lpad1

invoke.cont12:                                    ; preds = %invoke.cont10
  %42 = bitcast %"class.std::__1::thread"* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %42) #14
  invoke void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* nonnull %b, void ()* nonnull @_Z8consumerv)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont12
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %a)
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %invoke.cont14
  invoke void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"* nonnull %b)
          to label %invoke.cont17 unwind label %lpad15

invoke.cont17:                                    ; preds = %invoke.cont16
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %42) #14
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %41) #14
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %8, align 16, !tbaa !7
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %9, align 16, !tbaa !7
  %43 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %43, align 16, !tbaa !7
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !7
  %44 = load i8, i8* %16, align 8, !tbaa !2
  %45 = and i8 %44, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %45, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %invoke.cont17
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %46 = load i8*, i8** %__data_.i.i.i.i.i.i.i, align 8, !tbaa !17
  call void @_ZdlPv(i8* %46) #16
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont17, %if.then.i.i.i.i.i.i
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %7) #14
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %6, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* nonnull %4) #14
  call void @llvm.lifetime.end(i64 280, i8* nonnull %2) #14
  ret i32 0

lpad1:                                            ; preds = %invoke.cont10, %invoke.cont8, %invoke.cont6, %invoke.cont4, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ej.exit, %invoke.cont2
  %47 = landingpad { i8*, i32 }
          cleanup
  %48 = extractvalue { i8*, i32 } %47, 0
  %49 = extractvalue { i8*, i32 } %47, 1
  br label %ehcleanup19

lpad13:                                           ; preds = %invoke.cont12
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  %52 = extractvalue { i8*, i32 } %50, 1
  br label %ehcleanup

lpad15:                                           ; preds = %invoke.cont16, %invoke.cont14
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = extractvalue { i8*, i32 } %53, 0
  %55 = extractvalue { i8*, i32 } %53, 1
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %b) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %42) #14
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad15, %lpad13
  %exn.slot.0 = phi i8* [ %54, %lpad15 ], [ %51, %lpad13 ]
  %ehselector.slot.0 = phi i32 [ %55, %lpad15 ], [ %52, %lpad13 ]
  call void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"* nonnull %a) #14
  call void @llvm.lifetime.end(i64 8, i8* nonnull %41) #14
  br label %ehcleanup19

ehcleanup19:                                      ; preds = %ehcleanup, %lpad1
  %exn.slot.1 = phi i8* [ %exn.slot.0, %ehcleanup ], [ %48, %lpad1 ]
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %ehcleanup ], [ %49, %lpad1 ]
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %8, align 16, !tbaa !7
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %9, align 16, !tbaa !7
  %56 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %56, align 16, !tbaa !7
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !7
  %57 = load i8, i8* %16, align 8, !tbaa !2
  %58 = and i8 %57, 1
  %tobool.i.i.i.i.i.i.i47 = icmp eq i8 %58, 0
  br i1 %tobool.i.i.i.i.i.i.i47, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit50, label %if.then.i.i.i.i.i.i49

if.then.i.i.i.i.i.i49:                            ; preds = %ehcleanup19
  %__data_.i.i.i.i.i.i.i48 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %ss, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %59 = load i8*, i8** %__data_.i.i.i.i.i.i.i48, align 8, !tbaa !17
  call void @_ZdlPv(i8* %59) #16
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit50

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit50: ; preds = %ehcleanup19, %if.then.i.i.i.i.i.i49
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* nonnull %7) #14
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* nonnull %6, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* nonnull %4) #14
  call void @llvm.lifetime.end(i64 280, i8* nonnull %2) #14
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.1, 0
  %lpad.val22 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { i8*, i32 } %lpad.val22
}

declare void @_ZNSt3__16thread4joinEv(%"class.std::__1::thread"*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(%"class.std::__1::thread"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"*) unnamed_addr #6

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #8 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 -1, i32 2, i32 1
  %1 = bitcast %"class.std::__1::basic_ostream"** %0 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %1, align 8, !tbaa !7
  %add.ptr.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 16
  %2 = bitcast %"class.std::__1::basic_ostream"** %add.ptr.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %2, align 8, !tbaa !7
  %add.ptr3.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 2
  %3 = bitcast %"class.std::__1::basic_ostream"** %add.ptr3.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %3, align 8, !tbaa !7
  %__sb_.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 3
  %4 = bitcast %"class.std::__1::basic_ostream"** %__sb_.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !7
  %__str_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 11
  %__size_.i.i.i.i.i.i.i = bitcast %"class.std::__1::basic_ostream"** %__str_.i.i.i.i to i8*
  %5 = load i8, i8* %__size_.i.i.i.i.i.i.i, align 8, !tbaa !2
  %6 = and i8 %5, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %entry
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 13
  %7 = bitcast %"class.std::__1::basic_ostream"** %__data_.i.i.i.i.i.i.i to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !17
  tail call void @_ZdlPv(i8* %8) #16
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
define linkonce_odr void @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #8 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this to i8*
  %1 = bitcast %"class.std::__1::basic_stringstream"* %this to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 -24
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = bitcast i8* %6 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %7, align 8, !tbaa !7
  %add.ptr.i.i = getelementptr inbounds i8, i8* %6, i64 128
  %8 = bitcast i8* %add.ptr.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %8, align 8, !tbaa !7
  %add.ptr3.i.i = getelementptr inbounds i8, i8* %6, i64 16
  %9 = bitcast i8* %add.ptr3.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %9, align 8, !tbaa !7
  %__sb_.i.i = getelementptr inbounds i8, i8* %6, i64 24
  %10 = bitcast i8* %__sb_.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %10, align 8, !tbaa !7
  %__str_.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 88
  %11 = load i8, i8* %__str_.i.i.i.i, align 8, !tbaa !2
  %12 = and i8 %11, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %12, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %entry
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 104
  %13 = bitcast i8* %__data_.i.i.i.i.i.i.i to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !17
  tail call void @_ZdlPv(i8* %14) #16
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
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
declare void @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #10 align 2

; Function Attrs: nounwind ssp uwtable
declare void @_ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #10 align 2

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #10 align 2

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_iostream"*) unnamed_addr #10 align 2

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_istream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_istream"*) unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_istream"*) unnamed_addr #10 align 2

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_istream"*) unnamed_addr #10 align 2

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #10 align 2

; Function Attrs: nounwind ssp uwtable
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(%"class.std::__1::basic_ostream"*) unnamed_addr #10 align 2

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #8 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %0, align 8, !tbaa !7
  %add.ptr.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 2
  %1 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %1, align 8, !tbaa !7
  %add.ptr3.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 0, i32 1
  %2 = bitcast %"class.std::__1::basic_ostream.base"* %add.ptr3.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %2, align 8, !tbaa !7
  %__sb_.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1
  %3 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i.i, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !7
  %__str_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1, i32 1
  %__size_.i.i.i.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_.i.i.i.i to i8*
  %4 = load i8, i8* %__size_.i.i.i.i.i.i.i, align 8, !tbaa !2
  %5 = and i8 %4, 1
  %tobool.i.i.i.i.i.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %entry
  %__data_.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %6 = load i8*, i8** %__data_.i.i.i.i.i.i.i, align 8, !tbaa !17
  tail call void @_ZdlPv(i8* %6) #16
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %entry, %if.then.i.i.i.i.i.i
  %7 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %__sb_.i.i, i64 0, i32 0
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %7) #14
  %8 = bitcast %"class.std::__1::basic_stringstream"* %this to %"class.std::__1::basic_iostream"*
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %8, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  %9 = bitcast %"class.std::__1::basic_ios.base"* %add.ptr.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %9) #14
  %10 = bitcast %"class.std::__1::basic_stringstream"* %this to i8*
  tail call void @_ZdlPv(i8* %10) #16
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #8 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.std::__1::basic_stringstream", %"class.std::__1::basic_stringstream"* %this, i64 -1, i32 2, i32 1
  %1 = bitcast %"class.std::__1::basic_ostream"** %0 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %1, align 8, !tbaa !7
  %add.ptr.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 16
  %2 = bitcast %"class.std::__1::basic_ostream"** %add.ptr.i.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %2, align 8, !tbaa !7
  %add.ptr3.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 2
  %3 = bitcast %"class.std::__1::basic_ostream"** %add.ptr3.i.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %3, align 8, !tbaa !7
  %__sb_.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 3
  %4 = bitcast %"class.std::__1::basic_ostream"** %__sb_.i.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !7
  %__str_.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 11
  %__size_.i.i.i.i.i.i.i.i = bitcast %"class.std::__1::basic_ostream"** %__str_.i.i.i.i.i to i8*
  %5 = load i8, i8* %__size_.i.i.i.i.i.i.i.i, align 8, !tbaa !2
  %6 = and i8 %5, 1
  %tobool.i.i.i.i.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit, label %if.then.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %entry
  %__data_.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %0, i64 13
  %7 = bitcast %"class.std::__1::basic_ostream"** %__data_.i.i.i.i.i.i.i.i to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !17
  tail call void @_ZdlPv(i8* %8) #16
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit: ; preds = %entry, %if.then.i.i.i.i.i.i.i
  %9 = bitcast %"class.std::__1::basic_ostream"** %__sb_.i.i.i to %"class.std::__1::basic_streambuf"*
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %9) #14
  %10 = bitcast %"class.std::__1::basic_ostream"** %0 to %"class.std::__1::basic_iostream"*
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %10, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  %11 = bitcast %"class.std::__1::basic_ostream"** %add.ptr.i.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %11) #14
  %12 = bitcast %"class.std::__1::basic_ostream"** %0 to i8*
  tail call void @_ZdlPv(i8* %12) #16
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringstream"* %this) unnamed_addr #8 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = bitcast %"class.std::__1::basic_stringstream"* %this to i8*
  %1 = bitcast %"class.std::__1::basic_stringstream"* %this to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 -24
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = bitcast i8* %6 to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 3) to i64), i64* %7, align 8, !tbaa !7
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %6, i64 128
  %8 = bitcast i8* %add.ptr.i.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 2, i64 3) to i64), i64* %8, align 8, !tbaa !7
  %add.ptr3.i.i.i = getelementptr inbounds i8, i8* %6, i64 16
  %9 = bitcast i8* %add.ptr3.i.i.i to i64*
  store i64 ptrtoint (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*], [5 x i8*] }* @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 1, i64 3) to i64), i64* %9, align 8, !tbaa !7
  %__sb_.i.i.i = getelementptr inbounds i8, i8* %6, i64 24
  %10 = bitcast i8* %__sb_.i.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %10, align 8, !tbaa !7
  %__str_.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 88
  %11 = load i8, i8* %__str_.i.i.i.i.i, align 8, !tbaa !2
  %12 = and i8 %11, 1
  %tobool.i.i.i.i.i.i.i.i = icmp eq i8 %12, 0
  br i1 %tobool.i.i.i.i.i.i.i.i, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit, label %if.then.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %entry
  %__data_.i.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 104
  %13 = bitcast i8* %__data_.i.i.i.i.i.i.i.i to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !17
  tail call void @_ZdlPv(i8* %14) #16
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev.exit: ; preds = %entry, %if.then.i.i.i.i.i.i.i
  %15 = bitcast i8* %__sb_.i.i.i to %"class.std::__1::basic_streambuf"*
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %15) #14
  %16 = bitcast i8* %6 to %"class.std::__1::basic_iostream"*
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"* %16, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, i64 1)) #14
  %17 = bitcast i8* %add.ptr.i.i.i to %"class.std::__1::basic_ios"*
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* %17) #14
  tail call void @_ZdlPv(i8* %6) #16
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #8 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !7
  %__str_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %__size_.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_.i to i8*
  %1 = load i8, i8* %__size_.i.i.i.i, align 8, !tbaa !2
  %2 = and i8 %1, 1
  %tobool.i.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.i.i.i, label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %3 = load i8*, i8** %__data_.i.i.i.i, align 8, !tbaa !17
  tail call void @_ZdlPv(i8* %3) #16
  br label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %entry, %if.then.i.i.i
  %4 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %4) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_iostream"*, i8**) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"*) unnamed_addr #6

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #8 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !7
  %__str_.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %__size_.i.i.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_.i.i to i8*
  %1 = load i8, i8* %__size_.i.i.i.i.i, align 8, !tbaa !2
  %2 = and i8 %1, 1
  %tobool.i.i.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.i.i.i.i, label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  %__data_.i.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %3 = load i8*, i8** %__data_.i.i.i.i.i, align 8, !tbaa !17
  tail call void @_ZdlPv(i8* %3) #16
  br label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %entry, %if.then.i.i.i.i
  %4 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_streambuf"* %4) #14
  %5 = bitcast %"class.std::__1::basic_stringbuf"* %this to i8*
  tail call void @_ZdlPv(i8* %5) #16
  ret void
}

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE(%"class.std::__1::basic_streambuf"*, %"class.std::__1::locale"* dereferenceable(8)) unnamed_addr #5

declare %"class.std::__1::basic_streambuf"* @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj(%"class.std::__1::fpos"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this, i64 %__off, i32 %__way, i32 %__wch) unnamed_addr #1 align 2 {
entry:
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %0 = load i8*, i8** %__hm_, align 8, !tbaa !21
  %__nout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  %1 = load i8*, i8** %__nout_.i, align 8, !tbaa !22
  %cmp = icmp ult i8* %0, %1
  %2 = ptrtoint i8* %0 to i64
  %3 = ptrtoint i8* %1 to i64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* %1, i8** %__hm_, align 8, !tbaa !21
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
  %8 = load i64, i64* %7, align 8, !tbaa !25
  %__binp_.i106 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 2
  %9 = bitcast i8** %__binp_.i106 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !26
  %sub.ptr.sub = sub i64 %8, %10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb12
  %__bout_.i104 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 5
  %11 = bitcast i8** %__bout_.i104 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !27
  %sub.ptr.sub21 = sub i64 %3, %12
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end11
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %__size_.i.i.i95 = bitcast %"class.std::__1::basic_string"* %__str_ to i8*
  %13 = load i8, i8* %__size_.i.i.i95, align 8, !tbaa !2
  %14 = and i8 %13, 1
  %tobool.i.i.i96 = icmp eq i8 %14, 0
  br i1 %tobool.i.i.i96, label %cond.false.i.i101, label %cond.true.i.i98

cond.true.i.i98:                                  ; preds = %sw.bb23
  %__data_.i.i.i97 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %15 = load i8*, i8** %__data_.i.i.i97, align 8, !tbaa !17
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
  %17 = load i8, i8* %__size_.i.i.i, align 8, !tbaa !2
  %18 = and i8 %17, 1
  %tobool.i.i.i = icmp eq i8 %18, 0
  br i1 %tobool.i.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %lor.lhs.false
  %__data_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %19 = load i8*, i8** %__data_.i.i.i, align 8, !tbaa !17
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
  %21 = load i8*, i8** %__ninp_.i92, align 8, !tbaa !25
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
  %24 = load i8*, i8** %__binp_.i88, align 8, !tbaa !26
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %add
  %__ninp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  store i8* %add.ptr, i8** %__ninp_.i, align 8, !tbaa !25
  %__einp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %25 = bitcast i8** %__einp_.i to i64*
  store i64 %4, i64* %25, align 8, !tbaa !28
  br label %if.end62

if.end62:                                         ; preds = %if.end55, %if.then58
  %and63 = and i32 %__wch, 16
  %tobool64 = icmp eq i32 %and63, 0
  br i1 %tobool64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %if.end62
  %__bout_.i86 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 5
  %26 = load i8*, i8** %__bout_.i86, align 8, !tbaa !27
  %sext = shl i64 %add, 32
  %idx.ext.i = ashr exact i64 %sext, 32
  %add.ptr.i = getelementptr inbounds i8, i8* %26, i64 %idx.ext.i
  store i8* %add.ptr.i, i8** %__nout_.i, align 8, !tbaa !22
  br label %if.end68

if.end68:                                         ; preds = %if.end62, %if.then65
  %27 = bitcast %"class.std::__1::fpos"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 128, i32 8, i1 false) #14
  br label %return

return:                                           ; preds = %sw.default, %if.then37, %if.then46, %if.then53, %if.end68, %if.then10, %if.then5
  %.sink = phi i64 [ -1, %sw.default ], [ -1, %if.then37 ], [ -1, %if.then46 ], [ -1, %if.then53 ], [ %add, %if.end68 ], [ -1, %if.then10 ], [ -1, %if.then5 ]
  %__off_.i.i94 = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %agg.result, i64 0, i32 1
  store i64 %.sink, i64* %__off_.i.i94, align 8, !tbaa !29
  ret void
}

; Function Attrs: alwaysinline ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj(%"class.std::__1::fpos"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::fpos"* byval align 8 %__sp, i32 %__wch) unnamed_addr #11 align 2 {
entry:
  %0 = bitcast %"class.std::__1::basic_stringbuf"* %this to void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)***
  %vtable = load void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)**, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*** %0, align 8, !tbaa !7
  %vfn = getelementptr inbounds void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)** %vtable, i64 4
  %1 = load void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)*, void (%"class.std::__1::fpos"*, %"class.std::__1::basic_stringbuf"*, i64, i32, i32)** %vfn, align 8
  %__off_.i = getelementptr inbounds %"class.std::__1::fpos", %"class.std::__1::fpos"* %__sp, i64 0, i32 1
  %2 = load i64, i64* %__off_.i, align 8, !tbaa !29
  tail call void %1(%"class.std::__1::fpos"* sret %agg.result, %"class.std::__1::basic_stringbuf"* %this, i64 %2, i32 0, i32 %__wch)
  ret void
}

declare i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #5

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #5

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #5

; Function Attrs: norecurse ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv(%"class.std::__1::basic_stringbuf"* %this) unnamed_addr #9 align 2 {
entry:
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %0 = load i8*, i8** %__hm_, align 8, !tbaa !21
  %__nout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  %1 = load i8*, i8** %__nout_.i, align 8, !tbaa !22
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* %1, i8** %__hm_, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i8* [ %1, %if.then ], [ %0, %entry ]
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  %3 = load i32, i32* %__mode_, align 8, !tbaa !13
  %and = and i32 %3, 8
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %return, label %if.then4

if.then4:                                         ; preds = %if.end
  %__einp_.i27 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %4 = load i8*, i8** %__einp_.i27, align 8, !tbaa !28
  %cmp7 = icmp ult i8* %4, %2
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then4
  store i8* %2, i8** %__einp_.i27, align 8, !tbaa !28
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4
  %5 = phi i8* [ %2, %if.then8 ], [ %4, %if.then4 ]
  %__ninp_.i22 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  %6 = load i8*, i8** %__ninp_.i22, align 8, !tbaa !25
  %cmp15 = icmp ult i8* %6, %5
  br i1 %cmp15, label %if.then16, label %return

if.then16:                                        ; preds = %if.end12
  %7 = load i8, i8* %6, align 1, !tbaa !2
  %conv.i = zext i8 %7 to i32
  br label %return

return:                                           ; preds = %if.end12, %if.end, %if.then16
  %retval.0 = phi i32 [ %conv.i, %if.then16 ], [ -1, %if.end ], [ -1, %if.end12 ]
  ret i32 %retval.0
}

declare i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv(%"class.std::__1::basic_streambuf"*) unnamed_addr #5

; Function Attrs: norecurse nounwind ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi(%"class.std::__1::basic_stringbuf"* %this, i32 %__c) unnamed_addr #12 align 2 {
entry:
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %0 = load i8*, i8** %__hm_, align 8, !tbaa !21
  %__nout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  %1 = load i8*, i8** %__nout_.i, align 8, !tbaa !22
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* %1, i8** %__hm_, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.in = phi i8* [ %1, %if.then ], [ %0, %entry ]
  %2 = ptrtoint i8* %.in to i64
  %__binp_.i45 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 2
  %3 = load i8*, i8** %__binp_.i45, align 8, !tbaa !26
  %__ninp_.i44 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  %4 = load i8*, i8** %__ninp_.i44, align 8, !tbaa !25
  %cmp6 = icmp ult i8* %3, %4
  br i1 %cmp6, label %if.then7, label %return

if.then7:                                         ; preds = %if.end
  %cmp.i43 = icmp eq i32 %__c, -1
  br i1 %cmp.i43, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.then7
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -1
  store i8* %add.ptr, i8** %__ninp_.i44, align 8, !tbaa !25
  %__einp_.i40 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %5 = bitcast i8** %__einp_.i40 to i64*
  store i64 %2, i64* %5, align 8, !tbaa !28
  br label %return

if.end15:                                         ; preds = %if.then7
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  %6 = load i32, i32* %__mode_, align 8, !tbaa !13
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
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %cmp.i = icmp eq i8 %conv.i37, %7
  br i1 %cmp.i, label %if.then19, label %return

if.then19:                                        ; preds = %if.end15.if.then19_crit_edge, %lor.lhs.false
  %conv.i.pre-phi = phi i8 [ %.pre47, %if.end15.if.then19_crit_edge ], [ %conv.i37, %lor.lhs.false ]
  %add.ptr22.pre-phi = phi i8* [ %.pre, %if.end15.if.then19_crit_edge ], [ %arrayidx, %lor.lhs.false ]
  store i8* %add.ptr22.pre-phi, i8** %__ninp_.i44, align 8, !tbaa !25
  %__einp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %8 = bitcast i8** %__einp_.i to i64*
  store i64 %2, i64* %8, align 8, !tbaa !28
  store i8 %conv.i.pre-phi, i8* %add.ptr22.pre-phi, align 1, !tbaa !2
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %if.then19, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %__c, %if.then19 ], [ -1, %lor.lhs.false ], [ -1, %if.end ]
  ret i32 %retval.0
}

declare i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl(%"class.std::__1::basic_streambuf"*, i8*, i64) unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi(%"class.std::__1::basic_stringbuf"* %this, i32 %__c) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca i8*, align 8
  %cmp.i72 = icmp eq i32 %__c, -1
  br i1 %cmp.i72, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0
  %__ninp_.i88 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  %1 = bitcast i8** %__ninp_.i88 to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !25
  %__binp_.i98 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 2
  %3 = bitcast i8** %__binp_.i98 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !26
  %sub.ptr.sub = sub i64 %2, %4
  %__nout_.i97 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  %5 = load i8*, i8** %__nout_.i97, align 8, !tbaa !22
  %__eout_.i96 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 7
  %6 = load i8*, i8** %__eout_.i96, align 8, !tbaa !32
  %cmp = icmp eq i8* %5, %6
  br i1 %cmp, label %if.then7, label %if.then.if.end41_crit_edge

if.then.if.end41_crit_edge:                       ; preds = %if.then
  %__hm_44.phi.trans.insert = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %.pre = load i8*, i8** %__hm_44.phi.trans.insert, align 8, !tbaa !33
  %.pre100 = bitcast i8** %__hm_44.phi.trans.insert to i64*
  %.pre101 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  br label %if.end41

if.then7:                                         ; preds = %if.then
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  %7 = load i32, i32* %__mode_, align 8, !tbaa !13
  %and = and i32 %7, 16
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %if.then7
  %__bout_.i94 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 5
  %8 = bitcast i8** %__bout_.i94 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !27
  %sub.ptr.lhs.cast13 = ptrtoint i8* %5 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %9
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %10 = bitcast i8** %__hm_ to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !21
  %sub.ptr.sub21 = sub i64 %11, %9
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"* %__str_, i8 signext 0)
          to label %invoke.cont23 unwind label %lpad22

invoke.cont23:                                    ; preds = %if.end
  %__size_.i.i89 = bitcast %"class.std::__1::basic_string"* %__str_ to i8*
  %12 = load i8, i8* %__size_.i.i89, align 8, !tbaa !2
  %13 = and i8 %12, 1
  %tobool.i.i90 = icmp eq i8 %13, 0
  br i1 %tobool.i.i90, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit, label %cond.true.i91

cond.true.i91:                                    ; preds = %invoke.cont23
  %__cap_.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__str_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %14 = load i64, i64* %__cap_.i.i, align 8, !tbaa !34
  %and.i.i = and i64 %14, -2
  %phitmp.i = add i64 %and.i.i, -1
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit: ; preds = %invoke.cont23, %cond.true.i91
  %cond.i92 = phi i64 [ %phitmp.i, %cond.true.i91 ], [ 22, %invoke.cont23 ]
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(%"class.std::__1::basic_string"* nonnull %__str_, i64 %cond.i92, i8 signext 0)
          to label %invoke.cont27 unwind label %lpad22

invoke.cont27:                                    ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit
  %15 = load i8, i8* %__size_.i.i89, align 8, !tbaa !2
  %16 = and i8 %15, 1
  %tobool.i.i.i80 = icmp eq i8 %16, 0
  br i1 %tobool.i.i.i80, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %invoke.cont27
  %__data_.i.i.i81 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %17 = load i8*, i8** %__data_.i.i.i81, align 8, !tbaa !17
  %__size_.i5.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %18 = load i64, i64* %__size_.i5.i, align 8, !tbaa !35
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
  store i8* %cond.i.i86102, i8** %__bout_.i94, align 8, !tbaa !27
  store i8* %add.ptr, i8** %__eout_.i96, align 8, !tbaa !32
  %sext = shl i64 %sub.ptr.sub15, 32
  %idx.ext.i = ashr exact i64 %sext, 32
  %add.ptr.i = getelementptr inbounds i8, i8* %cond.i.i86102, i64 %idx.ext.i
  store i8* %add.ptr.i, i8** %__nout_.i97, align 8, !tbaa !22
  %add.ptr37 = getelementptr inbounds i8, i8* %cond.i.i86102, i64 %sub.ptr.sub21
  store i8* %add.ptr37, i8** %__hm_, align 8, !tbaa !21
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
  %26 = load i64, i64* %25, align 8, !tbaa !33
  store i64 %26, i64* %.pre-phi, align 8, !tbaa !21
  call void @llvm.lifetime.end(i64 8, i8* nonnull %ref.tmp.0..sroa_cast)
  %27 = load i32, i32* %__mode_47.pre-phi, align 8, !tbaa !13
  %and48 = and i32 %27, 8
  %tobool49 = icmp eq i32 %and48, 0
  br i1 %tobool49, label %if.end56, label %if.then50

if.then50:                                        ; preds = %if.end41
  %__str_52 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %__size_.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_52 to i8*
  %28 = load i8, i8* %__size_.i.i.i, align 8, !tbaa !2
  %29 = and i8 %28, 1
  %tobool.i.i.i = icmp eq i8 %29, 0
  br i1 %tobool.i.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then50
  %__data_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %30 = load i8*, i8** %__data_.i.i.i, align 8, !tbaa !17
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

cond.false.i.i:                                   ; preds = %if.then50
  %__s.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_52 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i, i64 0, i32 1, i64 0
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit: ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i8* [ %30, %cond.true.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i ]
  %add.ptr54 = getelementptr inbounds i8, i8* %cond.i.i, i64 %sub.ptr.sub
  store i8* %cond.i.i, i8** %__binp_.i98, align 8, !tbaa !26
  store i8* %add.ptr54, i8** %__ninp_.i88, align 8, !tbaa !25
  %__einp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %31 = bitcast i8** %__einp_.i to i64*
  store i64 %26, i64* %31, align 8, !tbaa !28
  br label %if.end56

if.end56:                                         ; preds = %if.end41, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
  %cmp.i = icmp eq i8* %24, %22
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end56
  %32 = bitcast %"class.std::__1::basic_stringbuf"* %this to i32 (%"class.std::__1::basic_streambuf"*, i32)***
  %vtable.i = load i32 (%"class.std::__1::basic_streambuf"*, i32)**, i32 (%"class.std::__1::basic_streambuf"*, i32)*** %32, align 8, !tbaa !7
  %vfn.i = getelementptr inbounds i32 (%"class.std::__1::basic_streambuf"*, i32)*, i32 (%"class.std::__1::basic_streambuf"*, i32)** %vtable.i, i64 13
  %33 = load i32 (%"class.std::__1::basic_streambuf"*, i32)*, i32 (%"class.std::__1::basic_streambuf"*, i32)** %vfn.i, align 8
  %conv.i.i = and i32 %__c, 255
  %call2.i = tail call i32 %33(%"class.std::__1::basic_streambuf"* nonnull %0, i32 %conv.i.i)
  br label %return

if.end.i:                                         ; preds = %if.end56
  %conv57 = trunc i32 %__c to i8
  store i8* %add.ptr43, i8** %__nout_.i97, align 8, !tbaa !22
  store i8 %conv57, i8* %24, align 1, !tbaa !2
  %conv.i7.i = and i32 %__c, 255
  br label %return

return:                                           ; preds = %entry, %if.end.i, %if.then.i, %if.then7, %lpad22
  %retval.1 = phi i32 [ -1, %lpad22 ], [ -1, %if.then7 ], [ %call2.i, %if.then.i ], [ %conv.i7.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(%"class.std::__1::basic_string"*, i8 signext) local_unnamed_addr #5

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(%"class.std::__1::basic_string"*, i64, i8 signext) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #13 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #14
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"*) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"*, i8*) local_unnamed_addr #5

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_streambuf"*) unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE(%"class.std::__1::basic_stringbuf"* %this, %"class.std::__1::basic_string"* dereferenceable(24) %__s) local_unnamed_addr #1 align 2 {
entry:
  %__str_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1
  %call = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(%"class.std::__1::basic_string"* %__str_, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %__s)
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  store i8* null, i8** %__hm_, align 8, !tbaa !21
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  %0 = load i32, i32* %__mode_, align 8, !tbaa !13
  %and = and i32 %0, 8
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %__size_.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_ to i8*
  %1 = load i8, i8* %__size_.i.i.i, align 8, !tbaa !2
  %2 = and i8 %1, 1
  %tobool.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.i.i, label %cond.false.i.i96, label %cond.true.i.i93

cond.true.i.i93:                                  ; preds = %if.then
  %__data_.i.i.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %3 = load i8*, i8** %__data_.i.i.i, align 8, !tbaa !17
  %__size_.i5.i61 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %4 = load i64, i64* %__size_.i5.i61, align 8, !tbaa !35
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4
  store i8* %add.ptr, i8** %__hm_, align 8, !tbaa !21
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit98

cond.false.i.i96:                                 ; preds = %if.then
  %__s.i.i.i = bitcast %"class.std::__1::basic_string"* %__str_ to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %conv.i.i63 = zext i8 %1 to i64
  %shr3.i.i64 = lshr i64 %conv.i.i63, 1
  %add.ptr110 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i, i64 0, i32 1, i64 %shr3.i.i64
  store i8* %add.ptr110, i8** %__hm_, align 8, !tbaa !21
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
  store i8* %cond.i.i106111, i8** %__binp_.i, align 8, !tbaa !26
  %__ninp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 3
  store i8* %cond.i.i97, i8** %__ninp_.i, align 8, !tbaa !25
  %__einp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %6 = bitcast i8** %__einp_.i to i64*
  store i64 %5, i64* %6, align 8, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %entry, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit98
  %and13 = and i32 %0, 16
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %if.end37, label %if.then15

if.then15:                                        ; preds = %if.end
  %__size_.i.i81 = bitcast %"class.std::__1::basic_string"* %__str_ to i8*
  %7 = load i8, i8* %__size_.i.i81, align 8, !tbaa !2
  %8 = and i8 %7, 1
  %tobool.i.i82 = icmp eq i8 %8, 0
  br i1 %tobool.i.i82, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit80.thread, label %cond.true.i70

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit80.thread: ; preds = %if.then15
  %conv.i.i85 = zext i8 %7 to i64
  %shr3.i.i86 = lshr i64 %conv.i.i85, 1
  %__s.i.i.i76 = bitcast %"class.std::__1::basic_string"* %__str_ to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %add.ptr20115 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i76, i64 0, i32 1, i64 %shr3.i.i86
  store i8* %add.ptr20115, i8** %__hm_, align 8, !tbaa !21
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit

cond.true.i70:                                    ; preds = %if.then15
  %__size_.i5.i83 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %9 = load i64, i64* %__size_.i5.i83, align 8, !tbaa !35
  %__data_.i.i.i74 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %10 = load i8*, i8** %__data_.i.i.i74, align 8, !tbaa !17
  %add.ptr20 = getelementptr inbounds i8, i8* %10, i64 %9
  store i8* %add.ptr20, i8** %__hm_, align 8, !tbaa !21
  %__cap_.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__str_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %11 = load i64, i64* %__cap_.i.i, align 8, !tbaa !34
  %and.i.i = and i64 %11, -2
  %phitmp.i = add i64 %and.i.i, -1
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit: ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit80.thread, %cond.true.i70
  %cond.i88113116 = phi i64 [ %9, %cond.true.i70 ], [ %shr3.i.i86, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit80.thread ]
  %cond.i71 = phi i64 [ %phitmp.i, %cond.true.i70 ], [ 22, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit80.thread ]
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc(%"class.std::__1::basic_string"* nonnull %__str_, i64 %cond.i71, i8 signext 0)
  %12 = load i8, i8* %__size_.i.i81, align 8, !tbaa !2
  %13 = and i8 %12, 1
  %tobool.i.i.i51 = icmp eq i8 %13, 0
  br i1 %tobool.i.i.i51, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8capacityEv.exit
  %__data_.i.i.i52 = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %14 = load i8*, i8** %__data_.i.i.i52, align 8, !tbaa !17
  %__size_.i5.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %__size_.i5.i, align 8, !tbaa !35
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
  store i8* %16, i8** %__nout_.i40, align 8, !tbaa !22
  %__bout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 5
  store i8* %16, i8** %__bout_.i, align 8, !tbaa !27
  %__eout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 7
  store i8* %add.ptr31, i8** %__eout_.i, align 8, !tbaa !32
  %17 = load i32, i32* %__mode_, align 8, !tbaa !13
  %and33 = and i32 %17, 3
  %tobool34 = icmp eq i32 %and33, 0
  br i1 %tobool34, label %if.end37, label %if.then35

if.then35:                                        ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit
  %sext = shl i64 %cond.i88113116, 32
  %idx.ext.i = ashr exact i64 %sext, 32
  %add.ptr.i = getelementptr inbounds i8, i8* %16, i64 %idx.ext.i
  store i8* %add.ptr.i, i8** %__nout_.i40, align 8, !tbaa !22
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit, %if.end
  ret void
}

declare dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(%"class.std::__1::basic_string"*, %"class.std::__1::basic_string"* dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %__os, i8* %__str, i64 %__len) local_unnamed_addr #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i = alloca %"class.std::__1::locale", align 8
  %__s = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %0 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %__s, i64 0, i32 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #14
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %__s, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %__os)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i8, i8* %0, align 8, !tbaa !36, !range !39
  %tobool.i = icmp eq i8 %1, 0
  br i1 %tobool.i, label %if.end28, label %if.then

if.then:                                          ; preds = %invoke.cont
  %2 = bitcast %"class.std::__1::basic_ostream"* %__os to i8**
  %vtable.i.i = load i8*, i8** %2, align 8, !tbaa !7
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::__1::basic_ostream"* %__os to i8*
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i
  %__rdbuf_.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 40
  %5 = bitcast i8* %__rdbuf_.i.i.i.i to %"class.std::__1::basic_streambuf"**
  %6 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %5, align 8, !tbaa !40
  %7 = bitcast i8* %add.ptr.i.i to %"class.std::__1::ios_base"*
  %__fmtflags_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 8
  %8 = bitcast i8* %__fmtflags_.i to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !42
  %add.ptr6 = getelementptr inbounds i8, i8* %__str, i64 %__len
  %__fill_.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 144
  %10 = bitcast i8* %__fill_.i to i32*
  %11 = load i32, i32* %10, align 8, !tbaa !12
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
  %vtable.i.i.i = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %14, align 8, !tbaa !7
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
  store i32 %conv.i, i32* %10, align 8, !tbaa !12
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
  %vtable23 = load i8*, i8** %2, align 8, !tbaa !7
  %vbase.offset.ptr24 = getelementptr i8, i8* %vtable23, i64 -24
  %18 = bitcast i8* %vbase.offset.ptr24 to i64*
  %vbase.offset25 = load i64, i64* %18, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset25
  %19 = bitcast i8* %add.ptr26 to %"class.std::__1::ios_base"*
  %__rdstate_.i.i = getelementptr inbounds i8, i8* %add.ptr26, i64 32
  %20 = bitcast i8* %__rdstate_.i.i to i32*
  %21 = load i32, i32* %20, align 8, !tbaa !43
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
  %vtable30 = load i8*, i8** %.pre-phi, align 8, !tbaa !7
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

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* dereferenceable(136) %__iob, i8 signext %__fl) local_unnamed_addr #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %__s.coerce, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %__oe to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %__ob to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %__width_.i = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %__iob, i64 0, i32 3
  %0 = load i64, i64* %__width_.i, align 8, !tbaa !44
  %cmp1 = icmp sgt i64 %0, %sub.ptr.sub
  %sub = sub nsw i64 %0, %sub.ptr.sub
  %__ns.0 = select i1 %cmp1, i64 %sub, i64 0
  %sub.ptr.lhs.cast4 = ptrtoint i8* %__op to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  %1 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable.i80 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %1, align 8, !tbaa !7
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
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #15
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !tbaa !17
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !tbaa !34
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %__sp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %__ns.0, i64* %__size_.i.i.i.i, align 8, !tbaa !35
  %.pre96 = bitcast %"class.std::__1::basic_string"* %__sp to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %.pre97 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %.pre96, i64 0, i32 1, i64 0
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  %__s.tr.i.i.i.i = trunc i64 %__ns.0 to i8
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1
  store i8 %conv.i.i.i.i, i8* %3, align 8, !tbaa !2
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
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !2
  %4 = load i8, i8* %3, align 8, !tbaa !2
  %5 = and i8 %4, 1
  %tobool.i.i.i = icmp eq i8 %5, 0
  %6 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8
  %cond.i.i = select i1 %tobool.i.i.i, i8* %arrayidx.i.i.i83.pre-phi, i8* %6
  %7 = bitcast %"class.std::__1::basic_streambuf"* %__s.coerce to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable.i84 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %7, align 8, !tbaa !7
  %vfn.i85 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i84, i64 12
  %8 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i85, align 8
  %call.i8687 = invoke i64 %8(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %cond.i.i, i64 %__ns.0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %cmp21 = icmp eq i64 %call.i8687, %__ns.0
  %9 = load i8, i8* %3, align 8, !tbaa !2
  %10 = and i8 %9, 1
  %tobool.i.i.i89 = icmp eq i8 %10, 0
  br i1 %tobool.i.i.i89, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont
  %11 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !17
  call void @_ZdlPv(i8* %11) #16
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit: ; preds = %invoke.cont, %if.then.i.i
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #14
  br i1 %cmp21, label %if.end26, label %return

lpad:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc.exit
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = load i8, i8* %3, align 8, !tbaa !2
  %14 = and i8 %13, 1
  %tobool.i.i.i92 = icmp eq i8 %14, 0
  br i1 %tobool.i.i.i92, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit95, label %if.then.i.i94

if.then.i.i94:                                    ; preds = %lpad
  %15 = load i8*, i8** %__data_.i.i.i.pre-phi, align 8, !tbaa !17
  call void @_ZdlPv(i8* %15) #16
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
  %vtable.i = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %16, align 8, !tbaa !7
  %vfn.i = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable.i, i64 12
  %17 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn.i, align 8
  %call.i = call i64 %17(%"class.std::__1::basic_streambuf"* nonnull %__s.coerce, i8* %__op, i64 %sub.ptr.sub29)
  %cmp34 = icmp eq i64 %call.i, %sub.ptr.sub29
  br i1 %cmp34, label %if.end38, label %return

if.end38:                                         ; preds = %if.then31, %if.end26
  store i64 0, i64* %__width_.i, align 8, !tbaa !44
  br label %return

return:                                           ; preds = %if.end38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %if.then8, %if.then31, %entry
  %retval.sroa.0.2 = phi %"class.std::__1::basic_streambuf"* [ null, %entry ], [ %__s.coerce, %if.end38 ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit ], [ null, %if.then8 ], [ null, %if.then31 ]
  ret %"class.std::__1::basic_streambuf"* %retval.sroa.0.2
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #6

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #5

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #6

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #5

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv(%"class.std::__1::basic_string"* noalias sret %agg.result, %"class.std::__1::basic_stringbuf"* %this) local_unnamed_addr #1 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %__mode_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 3
  %0 = load i32, i32* %__mode_, align 8, !tbaa !13
  %and = and i32 %0, 16
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %__hm_ = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 2
  %1 = load i8*, i8** %__hm_, align 8, !tbaa !21
  %__nout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 6
  %2 = load i8*, i8** %__nout_.i, align 8, !tbaa !22
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i8* %2, i8** %__hm_, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %3 = phi i8* [ %2, %if.then2 ], [ %1, %if.then ]
  %__bout_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 5
  %4 = load i8*, i8** %__bout_.i, align 8, !tbaa !27
  %sub.ptr.rhs.cast.i.i.i.i.i22 = ptrtoint i8* %4 to i64
  %5 = bitcast %"class.std::__1::basic_string"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 24, i32 8, i1 false) #14
  %sub.ptr.lhs.cast.i.i.i.i.i23 = ptrtoint i8* %3 to i64
  %sub.ptr.sub.i.i.i.i.i24 = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i23, %sub.ptr.rhs.cast.i.i.i.i.i22
  %cmp.i.i.i25 = icmp ugt i64 %sub.ptr.sub.i.i.i.i.i24, -17
  br i1 %cmp.i.i.i25, label %if.then.i.i.i26, label %if.end.i.i.i28

if.then.i.i.i26:                                  ; preds = %if.end
  %6 = bitcast %"class.std::__1::basic_string"* %agg.result to %"class.std::__1::__basic_string_common"*
  tail call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %6) #18
  unreachable

if.end.i.i.i28:                                   ; preds = %if.end
  %cmp3.i.i.i27 = icmp ult i64 %sub.ptr.sub.i.i.i.i.i24, 23
  br i1 %cmp3.i.i.i27, label %if.then4.i.i.i33, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i41

if.then4.i.i.i33:                                 ; preds = %if.end.i.i.i28
  %__s.tr.i.i.i.i29 = trunc i64 %sub.ptr.sub.i.i.i.i.i24 to i8
  %conv.i.i.i.i30 = shl i8 %__s.tr.i.i.i.i29, 1
  store i8 %conv.i.i.i.i30, i8* %5, align 8, !tbaa !2
  %__s.i.i.i.i31 = bitcast %"class.std::__1::basic_string"* %agg.result to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i32 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i31, i64 0, i32 1, i64 0
  br label %for.cond.preheader.i.i.i44

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i41: ; preds = %if.end.i.i.i28
  %add.i.i.i.i.i34 = add i64 %sub.ptr.sub.i.i.i.i.i24, 16
  %and.i.i.i.i.i35 = and i64 %add.i.i.i.i.i34, -16
  %call.i.i.i.i.i.i36 = tail call i8* @_Znwm(i64 %and.i.i.i.i.i35) #15
  %__data_.i.i.i.i37 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i8* %call.i.i.i.i.i.i36, i8** %__data_.i.i.i.i37, align 8, !tbaa !17
  %or.i.i.i.i38 = or i64 %and.i.i.i.i.i35, 1
  %__cap_.i.i.i.i39 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %or.i.i.i.i38, i64* %__cap_.i.i.i.i39, align 8, !tbaa !34
  %__size_.i.i.i.i40 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %sub.ptr.sub.i.i.i.i.i24, i64* %__size_.i.i.i.i40, align 8, !tbaa !35
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
  %wide.load.prol = load <16 x i8>, <16 x i8>* %12, align 1, !tbaa !2, !alias.scope !45
  %13 = getelementptr i8, i8* %next.gep.prol, i64 16
  %14 = bitcast i8* %13 to <16 x i8>*
  %wide.load63.prol = load <16 x i8>, <16 x i8>* %14, align 1, !tbaa !2, !alias.scope !45
  %15 = bitcast i8* %next.gep61.prol to <16 x i8>*
  store <16 x i8> %wide.load.prol, <16 x i8>* %15, align 1, !tbaa !2, !alias.scope !48, !noalias !45
  %16 = getelementptr i8, i8* %next.gep61.prol, i64 16
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> %wide.load63.prol, <16 x i8>* %17, align 1, !tbaa !2, !alias.scope !48, !noalias !45
  %index.next.prol = add i64 %index.prol, 32
  %prol.iter101.sub = add i64 %prol.iter101, -1
  %prol.iter101.cmp = icmp eq i64 %prol.iter101.sub, 0
  br i1 %prol.iter101.cmp, label %vector.body.prol.loopexit.unr-lcssa, label %vector.body.prol, !llvm.loop !50

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
  %wide.load = load <16 x i8>, <16 x i8>* %19, align 1, !tbaa !2, !alias.scope !45
  %20 = getelementptr i8, i8* %next.gep, i64 16
  %21 = bitcast i8* %20 to <16 x i8>*
  %wide.load63 = load <16 x i8>, <16 x i8>* %21, align 1, !tbaa !2, !alias.scope !45
  %22 = bitcast i8* %next.gep61 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %22, align 1, !tbaa !2, !alias.scope !48, !noalias !45
  %23 = getelementptr i8, i8* %next.gep61, i64 16
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> %wide.load63, <16 x i8>* %24, align 1, !tbaa !2, !alias.scope !48, !noalias !45
  %index.next = add i64 %index, 32
  %next.gep.1 = getelementptr i8, i8* %4, i64 %index.next
  %next.gep61.1 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %index.next
  %25 = bitcast i8* %next.gep.1 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %25, align 1, !tbaa !2, !alias.scope !45
  %26 = getelementptr i8, i8* %next.gep.1, i64 16
  %27 = bitcast i8* %26 to <16 x i8>*
  %wide.load63.1 = load <16 x i8>, <16 x i8>* %27, align 1, !tbaa !2, !alias.scope !45
  %28 = bitcast i8* %next.gep61.1 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %28, align 1, !tbaa !2, !alias.scope !48, !noalias !45
  %29 = getelementptr i8, i8* %next.gep61.1, i64 16
  %30 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> %wide.load63.1, <16 x i8>* %30, align 1, !tbaa !2, !alias.scope !48, !noalias !45
  %index.next.1 = add i64 %index, 64
  %next.gep.2 = getelementptr i8, i8* %4, i64 %index.next.1
  %next.gep61.2 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %index.next.1
  %31 = bitcast i8* %next.gep.2 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %31, align 1, !tbaa !2, !alias.scope !45
  %32 = getelementptr i8, i8* %next.gep.2, i64 16
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load63.2 = load <16 x i8>, <16 x i8>* %33, align 1, !tbaa !2, !alias.scope !45
  %34 = bitcast i8* %next.gep61.2 to <16 x i8>*
  store <16 x i8> %wide.load.2, <16 x i8>* %34, align 1, !tbaa !2, !alias.scope !48, !noalias !45
  %35 = getelementptr i8, i8* %next.gep61.2, i64 16
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %wide.load63.2, <16 x i8>* %36, align 1, !tbaa !2, !alias.scope !48, !noalias !45
  %index.next.2 = add i64 %index, 96
  %next.gep.3 = getelementptr i8, i8* %4, i64 %index.next.2
  %next.gep61.3 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %index.next.2
  %37 = bitcast i8* %next.gep.3 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %37, align 1, !tbaa !2, !alias.scope !45
  %38 = getelementptr i8, i8* %next.gep.3, i64 16
  %39 = bitcast i8* %38 to <16 x i8>*
  %wide.load63.3 = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !2, !alias.scope !45
  %40 = bitcast i8* %next.gep61.3 to <16 x i8>*
  store <16 x i8> %wide.load.3, <16 x i8>* %40, align 1, !tbaa !2, !alias.scope !48, !noalias !45
  %41 = getelementptr i8, i8* %next.gep61.3, i64 16
  %42 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> %wide.load63.3, <16 x i8>* %42, align 1, !tbaa !2, !alias.scope !48, !noalias !45
  %index.next.3 = add i64 %index, 128
  %43 = icmp eq i64 %index.next.3, %n.vec
  br i1 %43, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !52

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
  %44 = load i8, i8* %__first.addr.030.i.i.i45, align 1, !tbaa !2
  store i8 %44, i8* %__p.029.i.i.i46, align 1, !tbaa !2
  %incdec.ptr.i.i.i47 = getelementptr inbounds i8, i8* %__first.addr.030.i.i.i45, i64 1
  %incdec.ptr12.i.i.i48 = getelementptr inbounds i8, i8* %__p.029.i.i.i46, i64 1
  %cmp11.i.i.i49 = icmp eq i8* %incdec.ptr.i.i.i47, %3
  br i1 %cmp11.i.i.i49, label %for.end.loopexit.i.i.i52.loopexit, label %for.body.i.i.i50, !llvm.loop !55

for.end.loopexit.i.i.i52.loopexit:                ; preds = %for.body.i.i.i50
  br label %for.end.loopexit.i.i.i52

for.end.loopexit.i.i.i52:                         ; preds = %for.end.loopexit.i.i.i52.loopexit, %middle.block
  %scevgep32.i.i.i51 = getelementptr i8, i8* %__p.0.ph.i.i.i42, i64 %sub.ptr.sub.i.i.i.i.i24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit54

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit54: ; preds = %for.cond.preheader.i.i.i44, %for.end.loopexit.i.i.i52
  %__p.0.lcssa.i.i.i53 = phi i8* [ %__p.0.ph.i.i.i42, %for.cond.preheader.i.i.i44 ], [ %scevgep32.i.i.i51, %for.end.loopexit.i.i.i52 ]
  store i8 0, i8* %__p.0.lcssa.i.i.i53, align 1, !tbaa !2
  br label %return

if.else:                                          ; preds = %entry
  %and8 = and i32 %0, 8
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %if.end17, label %if.then10

if.then10:                                        ; preds = %if.else
  %__binp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 2
  %45 = load i8*, i8** %__binp_.i, align 8, !tbaa !26
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint i8* %45 to i64
  %__einp_.i = getelementptr inbounds %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_stringbuf"* %this, i64 0, i32 0, i32 4
  %46 = load i8*, i8** %__einp_.i, align 8, !tbaa !28
  %47 = bitcast %"class.std::__1::basic_string"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 24, i32 8, i1 false) #14
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint i8* %46 to i64
  %sub.ptr.sub.i.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %cmp.i.i.i = icmp ugt i64 %sub.ptr.sub.i.i.i.i.i, -17
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then10
  %48 = bitcast %"class.std::__1::basic_string"* %agg.result to %"class.std::__1::__basic_string_common"*
  tail call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %48) #18
  unreachable

if.end.i.i.i:                                     ; preds = %if.then10
  %cmp3.i.i.i = icmp ult i64 %sub.ptr.sub.i.i.i.i.i, 23
  br i1 %cmp3.i.i.i, label %if.then4.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %__s.tr.i.i.i.i = trunc i64 %sub.ptr.sub.i.i.i.i.i to i8
  %conv.i.i.i.i = shl i8 %__s.tr.i.i.i.i, 1
  store i8 %conv.i.i.i.i, i8* %47, align 8, !tbaa !2
  %__s.i.i.i.i = bitcast %"class.std::__1::basic_string"* %agg.result to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %arrayidx.i.i.i.i = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %__s.i.i.i.i, i64 0, i32 1, i64 0
  br label %for.cond.preheader.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm.exit.i.i.i: ; preds = %if.end.i.i.i
  %add.i.i.i.i.i = add i64 %sub.ptr.sub.i.i.i.i.i, 16
  %and.i.i.i.i.i = and i64 %add.i.i.i.i.i, -16
  %call.i.i.i.i.i.i = tail call i8* @_Znwm(i64 %and.i.i.i.i.i) #15
  %__data_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i8* %call.i.i.i.i.i.i, i8** %__data_.i.i.i.i, align 8, !tbaa !17
  %or.i.i.i.i = or i64 %and.i.i.i.i.i, 1
  %__cap_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %or.i.i.i.i, i64* %__cap_.i.i.i.i, align 8, !tbaa !34
  %__size_.i.i.i.i = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %agg.result, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %sub.ptr.sub.i.i.i.i.i, i64* %__size_.i.i.i.i, align 8, !tbaa !35
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
  %wide.load95.prol = load <16 x i8>, <16 x i8>* %56, align 1, !tbaa !2, !alias.scope !56
  %57 = getelementptr i8, i8* %next.gep91.prol, i64 16
  %58 = bitcast i8* %57 to <16 x i8>*
  %wide.load96.prol = load <16 x i8>, <16 x i8>* %58, align 1, !tbaa !2, !alias.scope !56
  %59 = bitcast i8* %next.gep93.prol to <16 x i8>*
  store <16 x i8> %wide.load95.prol, <16 x i8>* %59, align 1, !tbaa !2, !alias.scope !59, !noalias !56
  %60 = getelementptr i8, i8* %next.gep93.prol, i64 16
  %61 = bitcast i8* %60 to <16 x i8>*
  store <16 x i8> %wide.load96.prol, <16 x i8>* %61, align 1, !tbaa !2, !alias.scope !59, !noalias !56
  %index.next85.prol = add i64 %index84.prol, 32
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.body64.prol.loopexit.unr-lcssa, label %vector.body64.prol, !llvm.loop !61

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
  %wide.load95 = load <16 x i8>, <16 x i8>* %63, align 1, !tbaa !2, !alias.scope !56
  %64 = getelementptr i8, i8* %next.gep91, i64 16
  %65 = bitcast i8* %64 to <16 x i8>*
  %wide.load96 = load <16 x i8>, <16 x i8>* %65, align 1, !tbaa !2, !alias.scope !56
  %66 = bitcast i8* %next.gep93 to <16 x i8>*
  store <16 x i8> %wide.load95, <16 x i8>* %66, align 1, !tbaa !2, !alias.scope !59, !noalias !56
  %67 = getelementptr i8, i8* %next.gep93, i64 16
  %68 = bitcast i8* %67 to <16 x i8>*
  store <16 x i8> %wide.load96, <16 x i8>* %68, align 1, !tbaa !2, !alias.scope !59, !noalias !56
  %index.next85 = add i64 %index84, 32
  %next.gep91.1 = getelementptr i8, i8* %45, i64 %index.next85
  %next.gep93.1 = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %index.next85
  %69 = bitcast i8* %next.gep91.1 to <16 x i8>*
  %wide.load95.1 = load <16 x i8>, <16 x i8>* %69, align 1, !tbaa !2, !alias.scope !56
  %70 = getelementptr i8, i8* %next.gep91.1, i64 16
  %71 = bitcast i8* %70 to <16 x i8>*
  %wide.load96.1 = load <16 x i8>, <16 x i8>* %71, align 1, !tbaa !2, !alias.scope !56
  %72 = bitcast i8* %next.gep93.1 to <16 x i8>*
  store <16 x i8> %wide.load95.1, <16 x i8>* %72, align 1, !tbaa !2, !alias.scope !59, !noalias !56
  %73 = getelementptr i8, i8* %next.gep93.1, i64 16
  %74 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> %wide.load96.1, <16 x i8>* %74, align 1, !tbaa !2, !alias.scope !59, !noalias !56
  %index.next85.1 = add i64 %index84, 64
  %next.gep91.2 = getelementptr i8, i8* %45, i64 %index.next85.1
  %next.gep93.2 = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %index.next85.1
  %75 = bitcast i8* %next.gep91.2 to <16 x i8>*
  %wide.load95.2 = load <16 x i8>, <16 x i8>* %75, align 1, !tbaa !2, !alias.scope !56
  %76 = getelementptr i8, i8* %next.gep91.2, i64 16
  %77 = bitcast i8* %76 to <16 x i8>*
  %wide.load96.2 = load <16 x i8>, <16 x i8>* %77, align 1, !tbaa !2, !alias.scope !56
  %78 = bitcast i8* %next.gep93.2 to <16 x i8>*
  store <16 x i8> %wide.load95.2, <16 x i8>* %78, align 1, !tbaa !2, !alias.scope !59, !noalias !56
  %79 = getelementptr i8, i8* %next.gep93.2, i64 16
  %80 = bitcast i8* %79 to <16 x i8>*
  store <16 x i8> %wide.load96.2, <16 x i8>* %80, align 1, !tbaa !2, !alias.scope !59, !noalias !56
  %index.next85.2 = add i64 %index84, 96
  %next.gep91.3 = getelementptr i8, i8* %45, i64 %index.next85.2
  %next.gep93.3 = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %index.next85.2
  %81 = bitcast i8* %next.gep91.3 to <16 x i8>*
  %wide.load95.3 = load <16 x i8>, <16 x i8>* %81, align 1, !tbaa !2, !alias.scope !56
  %82 = getelementptr i8, i8* %next.gep91.3, i64 16
  %83 = bitcast i8* %82 to <16 x i8>*
  %wide.load96.3 = load <16 x i8>, <16 x i8>* %83, align 1, !tbaa !2, !alias.scope !56
  %84 = bitcast i8* %next.gep93.3 to <16 x i8>*
  store <16 x i8> %wide.load95.3, <16 x i8>* %84, align 1, !tbaa !2, !alias.scope !59, !noalias !56
  %85 = getelementptr i8, i8* %next.gep93.3, i64 16
  %86 = bitcast i8* %85 to <16 x i8>*
  store <16 x i8> %wide.load96.3, <16 x i8>* %86, align 1, !tbaa !2, !alias.scope !59, !noalias !56
  %index.next85.3 = add i64 %index84, 128
  %87 = icmp eq i64 %index.next85.3, %n.vec72
  br i1 %87, label %middle.block65.unr-lcssa, label %vector.body64, !llvm.loop !62

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
  %88 = load i8, i8* %__first.addr.030.i.i.i, align 1, !tbaa !2
  store i8 %88, i8* %__p.029.i.i.i, align 1, !tbaa !2
  %incdec.ptr.i.i.i = getelementptr inbounds i8, i8* %__first.addr.030.i.i.i, i64 1
  %incdec.ptr12.i.i.i = getelementptr inbounds i8, i8* %__p.029.i.i.i, i64 1
  %cmp11.i.i.i = icmp eq i8* %incdec.ptr.i.i.i, %46
  br i1 %cmp11.i.i.i, label %for.end.loopexit.i.i.i.loopexit, label %for.body.i.i.i, !llvm.loop !63

for.end.loopexit.i.i.i.loopexit:                  ; preds = %for.body.i.i.i
  br label %for.end.loopexit.i.i.i

for.end.loopexit.i.i.i:                           ; preds = %for.end.loopexit.i.i.i.loopexit, %middle.block65
  %scevgep32.i.i.i = getelementptr i8, i8* %__p.0.ph.i.i.i, i64 %sub.ptr.sub.i.i.i.i.i
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit: ; preds = %for.cond.preheader.i.i.i, %for.end.loopexit.i.i.i
  %__p.0.lcssa.i.i.i = phi i8* [ %__p.0.ph.i.i.i, %for.cond.preheader.i.i.i ], [ %scevgep32.i.i.i, %for.end.loopexit.i.i.i ]
  store i8 0, i8* %__p.0.lcssa.i.i.i, align 1, !tbaa !2
  br label %return

if.end17:                                         ; preds = %if.else
  %89 = bitcast %"class.std::__1::basic_string"* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %89, i8 0, i64 24, i32 8, i1 false) #14
  br label %return

return:                                           ; preds = %if.end17, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IPcEET_S8_RKS4_.exit54
  ret void
}

declare i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(%"class.std::__1::basic_string"*, i64, i64, i8*, i64) local_unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IRFvvEJEvEEOT_DpOT0_(%"class.std::__1::thread"* %this, void ()* %__f) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call i8* @_Znwm(i64 8) #15
  %0 = bitcast i8* %call to %"class.std::__1::__thread_struct"*
  invoke void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"* nonnull %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = invoke i8* @_Znwm(i64 16) #15
          to label %invoke.cont3 unwind label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = ptrtoint i8* %call to i64
  %2 = ptrtoint void ()* %__f to i64
  %3 = bitcast i8* %call4 to i64*
  store i64 %1, i64* %3, align 8, !tbaa !64
  %4 = getelementptr inbounds i8, i8* %call4, i64 8
  %5 = bitcast i8* %4 to i64*
  store i64 %2, i64* %5, align 8, !tbaa !66
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
  tail call void @_ZdlPv(i8* nonnull %call) #16
  br label %eh.resume

lpad11:                                           ; preds = %invoke.cont3
  %9 = landingpad { i8*, i32 }
          cleanup
  br label %delete.notnull.i.i.i.i

if.else:                                          ; preds = %invoke.cont12
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 %call.i31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #18
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
  %13 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %13, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %ehcleanup18.thread, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %13) #14
  %14 = bitcast %"class.std::__1::__thread_struct"* %13 to i8*
  tail call void @_ZdlPv(i8* %14) #16
  br label %ehcleanup18.thread

ehcleanup18.thread:                               ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call4) #16
  br label %eh.resume

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i: ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %0) #14
  tail call void @_ZdlPv(i8* nonnull %call) #16
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup18.thread, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i, %lpad
  %ehselector.slot.2 = phi i32 [ %8, %lpad ], [ %17, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %12, %ehcleanup18.thread ]
  %exn.slot.2 = phi i8* [ %7, %lpad ], [ %16, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i ], [ %11, %ehcleanup18.thread ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1
  resume { i8*, i32 } %lpad.val20
}

declare void @_ZNSt3__115__thread_structC1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr i8* @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEPFvvEEEEEEPvSA_(i8* %__vp) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = invoke dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__value_.i.i.i10 = bitcast i8* %__vp to %"class.std::__1::__thread_struct"**
  %0 = bitcast i8* %__vp to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !33
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !33
  %__key_.i = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", %"class.std::__1::__thread_specific_ptr"* %call, i64 0, i32 0
  %2 = load i64, i64* %__key_.i, align 8, !tbaa !68
  %call.i.i19 = invoke i32 @pthread_setspecific(i64 %2, i8* %1)
          to label %invoke.cont5 unwind label %lpad.thread

invoke.cont5:                                     ; preds = %invoke.cont
  %value.i.i.i = getelementptr inbounds i8, i8* %__vp, i64 8
  %3 = bitcast i8* %value.i.i.i to void ()**
  %4 = load void ()*, void ()** %3, align 8, !tbaa !33
  invoke void %4()
          to label %delete.notnull.i.i.i.i15 unwind label %lpad.thread

delete.notnull.i.i.i.i15:                         ; preds = %invoke.cont5
  %5 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !33
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i10, align 8, !tbaa !33
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i14 = icmp eq %"class.std::__1::__thread_struct"* %5, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i14, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16: ; preds = %delete.notnull.i.i.i.i15
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %5) #14
  %6 = bitcast %"class.std::__1::__thread_struct"* %5 to i8*
  tail call void @_ZdlPv(i8* %6) #16
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit18: ; preds = %delete.notnull.i.i.i.i15, %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i16
  tail call void @_ZdlPv(i8* nonnull %__vp) #16
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
  %7 = load %"class.std::__1::__thread_struct"*, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !33
  store %"class.std::__1::__thread_struct"* null, %"class.std::__1::__thread_struct"** %__value_.i.i.i.i.i.i.i.i.i.i.i.i.i.i.pre-phi, align 8, !tbaa !33
  %tobool.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq %"class.std::__1::__thread_struct"* %7, null
  br i1 %tobool.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %delete.notnull.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"* nonnull %7) #14
  %8 = bitcast %"class.std::__1::__thread_struct"* %7 to i8*
  tail call void @_ZdlPv(i8* %8) #16
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %delete.notnull.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %__vp) #16
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEPFvvEEEENS3_IS8_EEED1Ev.exit: ; preds = %lpad, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i
  %lpad.phi30 = phi { i8*, i32 } [ %lpad.thr_comm.split-lp27, %lpad ], [ %lpad.phi29, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEPFvvEEEEEclEPS8_.exit.i.i.i ]
  resume { i8*, i32 } %lpad.phi30
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32, i8*) local_unnamed_addr #7

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #5

declare dereferenceable(8) %"class.std::__1::__thread_specific_ptr"* @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #5

declare i32 @pthread_setspecific(i64, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(%"class.std::__1::__thread_struct"*) unnamed_addr #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #14

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { alwaysinline ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!10, !11, i64 136}
!10 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !11, i64 136, !6, i64 144}
!11 = !{!"any pointer", !3, i64 0}
!12 = !{!10, !6, i64 144}
!13 = !{!14, !6, i64 96}
!14 = !{!"_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !15, i64 64, !11, i64 88, !6, i64 96}
!15 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !16, i64 0}
!16 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE"}
!17 = !{!18, !11, i64 16}
!18 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !19, i64 0, !19, i64 8, !11, i64 16}
!19 = !{!"long", !3, i64 0}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!14, !11, i64 88}
!22 = !{!23, !11, i64 48}
!23 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !24, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!24 = !{!"_ZTSNSt3__16localeE", !11, i64 0}
!25 = !{!23, !11, i64 24}
!26 = !{!23, !11, i64 16}
!27 = !{!23, !11, i64 40}
!28 = !{!23, !11, i64 32}
!29 = !{!30, !31, i64 128}
!30 = !{!"_ZTSNSt3__14fposI11__mbstate_tEE", !3, i64 0, !31, i64 128}
!31 = !{!"long long", !3, i64 0}
!32 = !{!23, !11, i64 56}
!33 = !{!11, !11, i64 0}
!34 = !{!18, !19, i64 0}
!35 = !{!18, !19, i64 8}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !38, i64 0, !3, i64 8}
!38 = !{!"bool", !3, i64 0}
!39 = !{i8 0, i8 2}
!40 = !{!41, !11, i64 40}
!41 = !{!"_ZTSNSt3__18ios_baseE", !6, i64 8, !19, i64 16, !19, i64 24, !6, i64 32, !6, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !19, i64 72, !19, i64 80, !11, i64 88, !19, i64 96, !19, i64 104, !11, i64 112, !19, i64 120, !19, i64 128}
!42 = !{!41, !6, i64 8}
!43 = !{!41, !6, i64 32}
!44 = !{!41, !19, i64 24}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!49}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.vectorize.width", i32 1}
!54 = !{!"llvm.loop.interleave.count", i32 1}
!55 = distinct !{!55, !53, !54}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!60}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !51}
!62 = distinct !{!62, !53, !54}
!63 = distinct !{!63, !53, !54}
!64 = !{!65, !11, i64 0}
!65 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !11, i64 0}
!66 = !{!67, !11, i64 0}
!67 = !{!"_ZTSNSt3__112__tuple_leafILm1EPFvvELb0EEE", !11, i64 0}
!68 = !{!69, !19, i64 0}
!69 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !19, i64 0}
