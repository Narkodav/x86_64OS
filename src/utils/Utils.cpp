#include "../../include/utils/Utils.h"

extern "C"
{
    void *memset(void *ptr, int value, size_t size)
    {
        unsigned char *p = (unsigned char *)ptr;
        while (size--)
            *p++ = (unsigned char)value;
        return ptr;
    }

    void *memcpy(void *dest, const void *src, size_t size)
    {
        unsigned char *d = (unsigned char *)dest;
        const unsigned char *s = (const unsigned char *)src;
        while (size--)
            *d++ = *s++;
        return dest;
    }

    void *memmove(void *dest, const void *src, size_t size)
    {
        unsigned char *d = (unsigned char *)dest;
        const unsigned char *s = (const unsigned char *)src;
        if (d < s)
        {
            while (size--)
                *d++ = *s++;
        }
        else
        {
            d += size;
            s += size;
            while (size--)
                *--d = *--s;
        }
        return dest;
    }

    int memcmp(const void *ptr1, const void *ptr2, size_t size)
    {
        unsigned char *p1 = (unsigned char *)ptr1;
        unsigned char *p2 = (unsigned char *)ptr2;

        while (size--)
        {
            if (*p1 != *p2)
                return *p1 - *p2;
            ++p1;
            ++p2;
        }
        return 0;
    }

    size_t strlen(const char *str)
    {
        const char *s = str;
        while (*s != '\0')
            ++s;
        return s - str;
    }

    char *strcpy(char *dest, const char *src)
    {
        char *d = dest;
        while (*src != '\0')
            *d++ = *src++;
        *d = '\0';
        return dest;
    }

    int strcmp(const char *str1, const char *str2)
    {
        while (*str1 != '\0')
        {
            if (*str1 != *str2)
                return *str1 - *str2;
            ++str1;
            ++str2;
        }
        return *str1 - *str2;
    }
}