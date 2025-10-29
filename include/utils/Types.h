#ifndef TYPES_H
#define TYPES_H

// Custom type definitions for kernel (no standard library)
typedef unsigned long size_t;
typedef long ptrdiff_t;

typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;

typedef signed char int8_t;
typedef signed short int16_t;
typedef signed int int32_t;
typedef signed long long int64_t;

typedef void *uintptr_t;

#define NULL ((void *)0)

namespace std
{
    template <typename T, T v>
    struct integral_constant
    {
        static constexpr T value = v;
        using value_type = T;
        using type = integral_constant;
        constexpr operator value_type() const noexcept { return value; }
    };

    template <bool v>
    using bool_constant = integral_constant<bool, v>;

    using true_type = integral_constant<bool, true>;
    using false_type = integral_constant<bool, false>;

    template <typename T>
    struct type_identity
    {
        using type = T;
    };

    template <typename T>
    class numeric_limits
    {
    public:
        static constexpr bool is_specialized = false;
        static constexpr T min() noexcept { return T(); }
        static constexpr T max() noexcept { return T(); }
        static constexpr T lowest() noexcept { return T(); }
        static constexpr size_t digits = 0;
        static constexpr size_t bits = 0;
        static constexpr bool is_signed = false;
        static constexpr bool is_integer = false;
    };

    template <typename T>
    class numeric_limits<const T> : public numeric_limits<T>
    {
    };

    template <typename T>
    class numeric_limits<volatile T> : public numeric_limits<T>
    {
    };

    template <typename T>
    class numeric_limits<T &> : public numeric_limits<T>
    {
    };

    template <typename T>
    class numeric_limits<T &&> : public numeric_limits<T>
    {
    };

    template <>
    class numeric_limits<uint8_t>
    {
    public:
        static constexpr bool is_specialized = true;
        static constexpr uint8_t min() noexcept { return 0; }
        static constexpr uint8_t max() noexcept { return 255; }
        static constexpr uint8_t lowest() noexcept { return min(); }
        static constexpr size_t digits = 8;
        static constexpr size_t bits = 8;
        static constexpr bool is_signed = false;
        static constexpr bool is_integer = true;
    };

    template <>
    class numeric_limits<int8_t>
    {
    public:
        static constexpr bool is_specialized = true;
        static constexpr int8_t min() noexcept { return -128; }
        static constexpr int8_t max() noexcept { return 127; }
        static constexpr int8_t lowest() noexcept { return min(); }
        static constexpr size_t digits = 7;
        static constexpr size_t bits = 8;
        static constexpr bool is_signed = true;
        static constexpr bool is_integer = true;
    };

    template <>
    class numeric_limits<uint16_t>
    {
    public:
        static constexpr bool is_specialized = true;
        static constexpr uint16_t min() noexcept { return 0; }
        static constexpr uint16_t max() noexcept { return 0xFFFF; }
        static constexpr uint16_t lowest() noexcept { return min(); }
        static constexpr size_t digits = 16;
        static constexpr size_t bits = 16;
        static constexpr bool is_signed = false;
        static constexpr bool is_integer = true;
    };

    template <>
    class numeric_limits<int16_t>
    {
    public:
        static constexpr bool is_specialized = true;
        static constexpr int16_t min() noexcept { return -0x8000; }
        static constexpr int16_t max() noexcept { return 0x7FFF; }
        static constexpr int16_t lowest() noexcept { return min(); }
        static constexpr size_t digits = 15;
        static constexpr size_t bits = 16;
        static constexpr bool is_signed = true;
        static constexpr bool is_integer = true;
    };

    template <>
    class numeric_limits<uint32_t>
    {
    public:
        static constexpr bool is_specialized = true;
        static constexpr uint32_t min() noexcept { return 0; }
        static constexpr uint32_t max() noexcept { return 0xFFFFFFFF; }
        static constexpr uint32_t lowest() noexcept { return min(); }
        static constexpr size_t digits = 32;
        static constexpr size_t bits = 32;
        static constexpr bool is_signed = false;
        static constexpr bool is_integer = true;
    };

    template <>
    class numeric_limits<int32_t>
    {
    public:
        static constexpr bool is_specialized = true;
        static constexpr int32_t min() noexcept { return -0x80000000; }
        static constexpr int32_t max() noexcept { return 0x7FFFFFFF; }
        static constexpr int32_t lowest() noexcept { return min(); }
        static constexpr size_t digits = 31;
        static constexpr size_t bits = 32;
        static constexpr bool is_signed = true;
        static constexpr bool is_integer = true;
    };

    template <>
    class numeric_limits<uint64_t>
    {
    public:
        static constexpr bool is_specialized = true;
        static constexpr uint64_t min() noexcept { return 0; }
        static constexpr uint64_t max() noexcept { return 0xFFFFFFFFFFFFFFFF; }
        static constexpr uint64_t lowest() noexcept { return min(); }
        static constexpr size_t digits = 64;
        static constexpr size_t bits = 64;
        static constexpr bool is_signed = false;
        static constexpr bool is_integer = true;
    };

    template <>
    class numeric_limits<int64_t>
    {
    public:
        static constexpr bool is_specialized = true;
        static constexpr int64_t min() noexcept { return -0x8000000000000000; }
        static constexpr int64_t max() noexcept { return 0x7FFFFFFFFFFFFFFF; }
        static constexpr int64_t lowest() noexcept { return min(); }
        static constexpr size_t digits = 63;
        static constexpr size_t bits = 64;
        static constexpr bool is_signed = true;
        static constexpr bool is_integer = true;
    };

    template <typename T>
    struct is_integral : public false_type
    {
    };

    template <typename T>
    static const bool is_integral_v = is_integral<T>::value;

    template <typename T>
    concept integral = is_integral_v<T>;

    template <>
    struct is_integral<size_t> : public true_type
    {
    };

    template <>
    struct is_integral<uint8_t> : public true_type
    {
    };

    template <>
    struct is_integral<uint16_t> : public true_type
    {
    };

    template <>
    struct is_integral<uint32_t> : public true_type
    {
    };

    template <>
    struct is_integral<uint64_t> : public true_type
    {
    };

    template <>
    struct is_integral<int8_t> : public true_type
    {
    };

    template <>
    struct is_integral<int16_t> : public true_type
    {
    };

    template <>
    struct is_integral<int32_t> : public true_type
    {
    };

    template <>
    struct is_integral<int64_t> : public true_type
    {
    };

    template <typename T1, typename T2>
    struct is_same : public false_type
    {
    };

    template <typename T>
    struct is_same<T, T> : public true_type
    {
    };

    template <typename T1, typename T2>
    static inline const auto is_same_v = is_same<T1, T2>::value;

    template <typename T>
    struct remove_reference : public type_identity<T>
    {
    };

    template <typename T>
    struct remove_reference<T &> : public type_identity<T>
    {
    };

    template <typename T>
    struct remove_reference<T &&> : public type_identity<T>
    {
    };

    template <typename T>
    struct remove_const : public type_identity<T>
    {
    };

    template <typename T>
    struct remove_const<const T> : public type_identity<T>
    {
    };

    template <typename T>
    struct remove_volatile : public type_identity<T>
    {
    };

    template <typename T>
    struct remove_volatile<volatile T> : public type_identity<T>
    {
    };

    template <typename T>
    struct remove_cv : public type_identity<typename remove_volatile<typename remove_const<T>::type>::type>
    {
    };

    template <typename T>
    struct remove_all_extents : public type_identity<T>
    {
    };

    template <typename T>
    struct remove_all_extents<T[]> : public type_identity<remove_all_extents<T>>
    {
    };

    template <typename T>
    struct is_enum
    {
        static const bool value = __is_enum(T);
    };

    template <typename T>
    struct is_pointer : public false_type
    {
    };

    template <typename T>
    struct is_pointer<T *> : public true_type
    {
    };

    template <typename T>
    struct is_array : public false_type
    {
    };

    template <typename T, size_t N>
    struct is_array<T[N]> : public true_type
    {
    };

    template <typename T>
    struct is_array<T[]> : public true_type
    {
    };

    template <typename T>
    inline constexpr bool is_array_v = is_array<T>::value;

    template <typename T>
    using remove_reference_t = typename remove_reference<T>::type;

    template <typename T>
    using remove_const_t = typename remove_const<T>::type;

    template <typename T>
    using remove_volatile_t = typename remove_volatile<T>::type;

    template <typename T>
    using remove_cv_t = typename remove_cv<T>::type;

    template <typename T>
    using remove_all_extents_t = typename remove_all_extents<T>::type;

    template <typename T>
    static const bool is_enum_v = is_enum<T>::value;

    template <typename T>
    concept EnumType = is_enum_v<T>;

    template <typename T>
    static const bool is_pointer_v = is_pointer<T>::value;

    template <typename T>
    concept pointer = is_pointer_v<T>;

    template <typename T>
    static const bool is_void_v = is_same_v<remove_cv_t<T>, void>;

    template <typename T>
    struct is_void : bool_constant<is_void_v<T>>
    {
    };

    template <typename T>
    T &&declval() noexcept;

    // stolen from https://en.cppreference.com/w/cpp/types/is_convertible.html
    // no idea how it works
    namespace detail
    {
        template <typename T>
        auto test_returnable(int) -> decltype(void(static_cast<T (*)()>(nullptr)), std::true_type{});
        template <typename>
        auto test_returnable(...) -> std::false_type;

        template <typename From, typename To>
        auto test_implicitly_convertible(int) -> decltype(void(declval<void (&)(To)>()(declval<From>())), std::true_type{});
        template <typename, typename>
        auto test_implicitly_convertible(...) -> std::false_type;
    } // namespace detail

    template <typename From, typename To>
    struct is_convertible : std::integral_constant<bool,
                                                   (decltype(detail::test_returnable<To>(0))::value &&
                                                    decltype(detail::test_implicitly_convertible<From, To>(0))::value) ||
                                                       (std::is_void<From>::value && std::is_void<To>::value)>
    {
    };

    template <typename From, typename To>
    static const bool is_convertible_v = is_convertible<From, To>::value;

    template <typename From, typename To>
    concept convertible_to = is_convertible_v<From, To>;

    template <typename T>
    struct is_signed : std::integral_constant<bool, numeric_limits<T>::is_signed>
    {
    };

    template <typename T>
    static const bool is_signed_v = is_signed<T>::value;
}

#endif // TYPES_H