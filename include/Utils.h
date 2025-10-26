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

    extern void cpuid(uint32_t leaf, uint32_t *eax, uint32_t *ebx, uint32_t *ecx, uint32_t *edx);
    extern uint64_t port_in_byte(uint16_t port);
    extern void port_out_byte(uint16_t port, uint8_t value);
    extern uint64_t port_in_word(uint16_t port);
    extern void port_out_word(uint16_t port, uint16_t value);
    extern uint64_t port_in_dword(uint16_t port);
    extern void port_out_dword(uint16_t port, uint32_t value);
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