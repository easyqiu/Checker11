#include <vector>
#include <iostream>
#include <thread>
#include <atomic>
#include <cassert>

std::atomic<char> x_char;
std::atomic<signed char> x_signed_char;
std::atomic<unsigned char> x_unsigned_char;
std::atomic<short> x_short;
std::atomic<unsigned short> x_unsigned_short;
std::atomic<unsigned int> x_unsigned_int;
std::atomic<long> x_long;
std::atomic<unsigned long> x_unsigned_long;
std::atomic<long long> x_long_long;
std::atomic<unsigned long long> x_unsigned_long_long;
std::atomic<char16_t> x_char16_t;
std::atomic<char32_t> x_char32_t;
std::atomic<wchar_t> x_wchar_t;
std::atomic<std::int8_t> x_int8_t;
std::atomic<std::uint8_t> x_uint8_t;
std::atomic<std::int16_t> x_int16_t;
std::atomic<std::uint16_t> x_uint16_t;
std::atomic<std::int32_t> x_int32_t;
std::atomic<std::uint32_t> x_uint32_t;
std::atomic<std::int64_t> x_int64_t;
std::atomic<std::uint64_t> x_uint64_t;
std::atomic<std::int_least8_t> x_int_least8_t;
std::atomic<std::uint_least8_t> x_uint_least8_t;
std::atomic<std::int_least16_t> x_int_least16_t;
std::atomic<std::uint_least16_t> x_uint_least16_t;
std::atomic<std::int_least32_t> x_int_least32_t;
std::atomic<std::uint_least32_t> x_uint_least32_t;
std::atomic<std::int_least64_t> x_int_least64_t;
std::atomic<std::uint_least64_t> x_uint_least64_t;
std::atomic<std::int_fast8_t> x_int_fast8_t;
std::atomic<std::uint_fast8_t> x_uint_fast8_t;
std::atomic<std::int_fast16_t> x_int_fast16_t;
std::atomic<std::uint_fast16_t> x_uint_fast16_t;
std::atomic<std::int_fast32_t> x_int_fast32_t;
std::atomic<std::uint_fast32_t> x_uint_fast32_t;
std::atomic<std::int_fast64_t> x_int_fast64_t;
std::atomic<std::uint_fast64_t> x_uint_fast64_t;
std::atomic<std::intptr_t> x_intptr_t;
std::atomic<std::uintptr_t> x_uintptr_t;
std::atomic<std::size_t> x_size_t;
std::atomic<std::ptrdiff_t> x_ptrdiff_t;
std::atomic<std::intmax_t> x_intmax_t;
std::atomic<std::uintmax_t> x_uintmax_t;

int data1, data2;
std::atomic<int> x, y;
 
void f1()
{
    data1 = x.load(std::memory_order_relaxed);
    //y.store(1, std::memory_order_relaxed);
    y.fetch_add(1, std::memory_order_relaxed);
}

void f2()
{
    data2 = y.load(std::memory_order_relaxed);
    //x.store(1, std::memory_order_relaxed);
    x.fetch_add(1, std::memory_order_relaxed);
}
 
 
int main()
{
    x_char.fetch_add(1, std::memory_order_relaxed);
    x_signed_char.fetch_add(1, std::memory_order_relaxed);
    x_unsigned_char.fetch_add(1, std::memory_order_relaxed);
    x_short.fetch_add(1, std::memory_order_relaxed);
    x_unsigned_short.fetch_add(1, std::memory_order_relaxed);
    x_unsigned_int.fetch_add(1, std::memory_order_relaxed);
    x_long.fetch_add(1, std::memory_order_relaxed);
    x_unsigned_long.fetch_add(1, std::memory_order_relaxed);
    x_long_long.fetch_add(1, std::memory_order_relaxed);
    x_char16_t.fetch_add(1, std::memory_order_relaxed);
    x_char32_t.fetch_add(1, std::memory_order_relaxed);
    x_wchar_t.fetch_add(1, std::memory_order_relaxed);
    x_int_fast64_t.fetch_add(1, std::memory_order_relaxed);
    x_ptrdiff_t.fetch_add(1, std::memory_order_relaxed);
    x_uintmax_t.fetch_add(1, std::memory_order_relaxed);
    /*std::atomic<signed char> x_signed_char = 1;
    std::atomic<long long> x_long_long = 1;
    std::atomic<std::int8_t> x_int8_t = 1;
    std::atomic<std::uint8_t> x_uint8_t = 1;
    std::atomic<std::int16_t> x_int16_t = 1;
    std::atomic<std::uint16_t> x_uint16_t = 1;
    std::atomic<std::int32_t> x_int32_t = 1;
    std::atomic<std::uint32_t> x_uint32_t = 1;
    std::atomic<std::int64_t> x_int64_t = 1;
    std::atomic<std::uint64_t> x_uint64_t = 1;
    std::atomic<std::int_least8_t> x_int_least8_t = 1;
    std::atomic<std::uint_least8_t> x_uint_least8_t = 1;
    std::atomic<std::int_least16_t> x_int_least16_t = 1;
    std::atomic<std::uint_least16_t> x_uint_least16_t = 1;
    std::atomic<std::int_least32_t> x_int_least32_t = 1;
    std::atomic<std::uint_least32_t> x_uint_least32_t = 1;
    std::atomic<std::int_least64_t> x_int_least64_t = 1;
    std::atomic<std::uint_least64_t> x_uint_least64_t = 1;
    std::atomic<std::int_fast8_t> x_int_fast8_t = 1;
    std::atomic<std::uint_fast8_t> x_uint_fast8_t = 1;
    std::atomic<std::int_fast16_t> x_int_fast16_t = 1;
    std::atomic<std::uint_fast16_t> x_uint_fast16_t = 1;
    std::atomic<std::int_fast32_t> x_int_fast32_t = 1;
    std::atomic<std::uint_fast32_t> x_uint_fast32_t = 1;
    std::atomic<std::int_fast64_t> x_int_fast64_t = 1;
    std::atomic<std::uint_fast64_t> x_uint_fast64_t = 1;
    std::atomic<std::intptr_t> x_intptr_t = 1;
    std::atomic<std::uintptr_t> x_uintptr_t = 1;
    std::atomic<std::size_t> x_size_t = 1;
    std::atomic<std::ptrdiff_t> x_ptrdiff_t = 1;
    std::atomic<std::intmax_t> x_intmax_t = 1;
    std::atomic<std::uintmax_t> x_uintmax_t = 1;

    x = 0, y = 0;

    std::thread a(f1);
    std::thread b(f2);
    
    a.join(); b.join();
    std::cout << "data: " << data1 << " " << data2 << "\n";
    if (!(data1 == 1 && data2 == 1)) // may be violated
        std::cout << "ERROR!\n";*/
    return 0;
}
