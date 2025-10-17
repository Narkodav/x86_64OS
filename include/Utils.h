#include "Types.h"
#ifndef UTILS_H
#define UTILS_H

extern "C"
{
    void *memset(void *ptr, int value, size_t size);
    void *memcpy(void *dest, const void *src, size_t size);
    void *memmove(void *dest, const void *src, size_t size);
    int memcmp(const void *ptr1, const void *ptr2, size_t size);
    size_t strlen(const char *str);
    char *strcpy(char *dest, const char *src);
    char *strmove(char *dest, const char *src);
    int strcmp(const char *str1, const char *str2);
}

namespace Kernel
{
    void outByte(uint16_t port, uint8_t value);
    uint8_t inByte(uint16_t port);
}

namespace Utils
{
    template <std::EnumType E, std::IntegralType T>
    class FlagMap
    {
    private:
        T m_flags;

    public:
        FlagMap() : m_flags(0) {};
        ~FlagMap() = default;
        FlagMap(T flags) : m_flags(flags) {};

        FlagMap(const FlagMap &other) = default;
        FlagMap &operator=(const FlagMap &other) = default;
        FlagMap(FlagMap &&other) = default;
        FlagMap &operator=(FlagMap &&other) = default;

        void set(E flag)
        {
            m_flags |= static_cast<T>(flag);
        }
        void clear(E flag)
        {
            m_flags &= ~static_cast<T>(flag);
        }
        bool get(E flag) const
        {
            return (m_flags & static_cast<T>(flag)) != 0;
        }
        void set(T flags)
        {
            m_flags = flags;
        }
        T get() const
        {
            return m_flags;
        }
    };
}

#endif // UTILS_H