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
        static constexpr size_t digits = 8;
        static constexpr size_t bits = 8;
        static constexpr bool is_signed = true;
        static constexpr bool is_integer = true;
    };

    template <typename T>
    struct is_integral
    {
        static const bool value = false;
    };

    template <typename T>
    static const bool is_integral_v = is_integral<T>::value;

    template <typename T>
    concept IntegralType = is_integral_v<T>;

    template <>
    struct is_integral<size_t>
    {
        static const bool value = true;
    };
    template <>
    struct is_integral<uint8_t>
    {
        static const bool value = true;
    };
    template <>
    struct is_integral<uint16_t>
    {
        static const bool value = true;
    };
    template <>
    struct is_integral<uint32_t>
    {
        static const bool value = true;
    };
    template <>
    struct is_integral<uint64_t>
    {
        static const bool value = true;
    };
    template <>
    struct is_integral<int8_t>
    {
        static const bool value = true;
    };
    template <>
    struct is_integral<int16_t>
    {
        static const bool value = true;
    };
    template <>
    struct is_integral<int32_t>
    {
        static const bool value = true;
    };
    template <>
    struct is_integral<int64_t>
    {
        static const bool value = true;
    };

    template <typename T1, typename T2>
    struct is_same
    {
        static const bool value = false;
    };

    template <typename T>
    struct is_same<T, T>
    {
        static const bool value = true;
    };

    template <typename T1, typename T2>
    static inline const auto is_same_v = is_same<T1, T2>::value;

    template <typename T>
    struct remove_reference
    {
        using type = T;
    };

    template <typename T>
    struct remove_reference<T &>
    {
        using type = T;
    };

    template <typename T>
    struct remove_reference<T &&>
    {
        using type = T;
    };

    template <typename T>
    struct remove_const
    {
        using type = T;
    };

    template <typename T>
    struct remove_const<const T>
    {
        using type = T;
    };

    template <typename T>
    struct remove_volatile
    {
        using type = T;
    };

    template <typename T>
    struct remove_volatile<volatile T>
    {
        using type = T;
    };

    template <typename T>
    struct remove_cv
    {
        using type = typename remove_volatile<typename remove_const<T>::type>::type;
    };

    template <typename T>
    struct remove_all_extents
    {
        using type = typename remove_volatile<typename remove_const<typename remove_reference<T>::type>::type>::type;
    };

    template <typename T>
    struct is_enum
    {
        static const bool value = __is_enum(T);
    };

    template <typename T>
    struct is_ptr
    {
        static const bool value = false;
    };

    template <typename T>
    struct is_ptr<T *>
    {
        static const bool value = true;
    };

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
    static const bool is_ptr_v = is_ptr<T>::value;

    template <typename T>
    concept PtrType = is_ptr_v<T>;

}

#endif // TYPES_H