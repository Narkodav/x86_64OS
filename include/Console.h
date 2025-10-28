// Console.h
#ifndef CONSOLE_H
#define CONSOLE_H

#include "Types.h"
#include "Utils.h"
#include "RollingWindow.h"
#include "Array.h"

namespace Kernel
{
    class Console
    {
    public:
        enum class Attributes : uint8_t
        {
            BlackOnBlack = 0x00,
            BlueOnBlack = 0x01,
            GreenOnBlack = 0x02,
            CyanOnBlack = 0x03,
            RedOnBlack = 0x04,
            MagentaOnBlack = 0x05,
            BrownOnBlack = 0x06,
            LightGrayOnBlack = 0x07,
            DarkGrayOnBlack = 0x08,
            LightBlueOnBlack = 0x09,
            LightGreenOnBlack = 0x0A,
            LightCyanOnBlack = 0x0B,
            LightRedOnBlack = 0x0C,
            LightMagentaOnBlack = 0x0D,
            YellowOnBlack = 0x0E,
            WhiteOnBlack = 0x0F,
            BlackOnBlue = 0x10,
            WhiteOnBlue = 0x1F,
            BlackOnGreen = 0x20,
            WhiteOnGreen = 0x2F,
            BlackOnCyan = 0x30,
            WhiteOnCyan = 0x3F,
            BlackOnRed = 0x40,
            WhiteOnRed = 0x4F,
            BlackOnMagenta = 0x50,
            WhiteOnMagenta = 0x5F,
            BlackOnBrown = 0x60,
            WhiteOnBrown = 0x6F,
            BlackOnLightGray = 0x70,
            WhiteOnLightGray = 0x7F
        };

        struct CursorPos
        {
            size_t x;
            size_t y;
        };

        struct Extent
        {
            size_t width;
            size_t height;
        };

        struct VgaChar
        {
            uint8_t character;
            Attributes attr;
        } __attribute__((packed));

    private:
        static constexpr Extent s_extent = {80, 25};
        using VgaScreen = VgaChar[s_extent.height][s_extent.width];
        static inline volatile VgaScreen &s_vgaScreen = *reinterpret_cast<VgaScreen *>(0xB8000);
        static constexpr size_t s_bufferLineCount = 2048;
        static inline RollingWindow<Utils::Array<VgaChar, s_extent.width>, s_bufferLineCount> s_charBuffer;
        static constexpr size_t s_windowCapacity = s_extent.width * s_extent.height;
        static inline volatile CursorPos s_cursorPos = {0, 0};
        static inline volatile size_t s_displayLine = 0;
        static inline volatile bool s_cursorEnabled = false;
        static inline volatile bool s_shouldFlush = false;

    public:
        static void writeChar(size_t line, size_t pos, uint8_t character, Attributes attr = Attributes::WhiteOnBlack);

        template <typename T>
        static void writeString(T *str, size_t line, size_t pos, Attributes attr = Attributes::WhiteOnBlack)
        {
            size_t len = strlen(str);
            size_t strCount = 0;
            for (; strCount < s_extent.width - pos; ++strCount)
                writeChar(line, pos + strCount, str[strCount], attr);

            size_t lastLine = line + len / s_extent.width;
            for (size_t i = line + 1; i < lastLine; ++i)
            {
                for (size_t j = 0; j < s_extent.width; ++j, ++strCount)
                {
                    writeChar(i, j, str[strCount], attr);
                }
            }
            for (size_t i = 0; i < len - strCount; ++i, ++strCount)
            {
                writeChar(lastLine, i, str[strCount], attr);
            }
        }

        // updates the cursor
        static void putChar(uint8_t c, Attributes attr = Attributes::WhiteOnBlack);

        template <typename T>
        static void putString(T *str, Attributes attr = Attributes::WhiteOnBlack)
        {
            for (size_t i = 0; str[i] != '\0'; ++i)
            {
                putChar(str[i], attr);
            }
        }

        template <std::integral T>
        static void putNumBin(T val, Attributes attr = Attributes::WhiteOnBlack)
        {
            putString("0b", attr);
            const auto bits = sizeof(T) * 8;
            size_t i = 0;
            size_t offset = 0;
            for (; i < bits; ++i, ++offset)
            {
                if ((val >> (bits - 1)))
                    break;
                val <<= 1;
            }
            for (; i < bits; ++i)
            {
                putChar('0' + (val >> (bits - 1)), attr);
                val <<= 1;
            }
        }

        template <std::integral T>
        static void putNumDec(T val, Attributes attr = Attributes::WhiteOnBlack)
        {
            char buff[20]; // 64-bit integer can have a maximum of 20 digits
            if (val == 0)
            {
                putChar('0', attr);
                return;
            }

            if constexpr (std::is_signed_v<T>)
            {
                if (val < 0)
                {
                    putChar('-', attr);
                    val = -val;
                }
            }
            size_t count = 0;

            while (val != 0)
            {
                buff[count] = '0' + val % 10;
                val /= 10;
                ++count;
            }

            for (size_t i = 0; i < count; ++i)
                putChar(buff[count - i - 1], attr);
        }

        template <std::integral T>
        static void putNumHex(T val, Attributes attr = Attributes::WhiteOnBlack)
        {
            putString("0x", attr);
            const auto bits = sizeof(T) * 8;
            size_t i = 0;
            size_t offset = 0;
            for (; i < bits / 4; ++i, ++offset)
            {
                if ((val >> (bits - 4)) & 0xF)
                    break;
                val <<= 4;
            }
            for (; i < bits / 4; ++i)
            {
                putChar("0123456789ABCDEF"[(val >> (bits - 4)) & 0xF], attr);
                val <<= 4;
            }
        }

    private:
        template <typename T>
        static inline const auto integralCheck = std::is_integral_v<std::remove_cv_t<std::remove_reference_t<T>>>;

        template <typename T>
        static inline const auto charCheck = std::is_convertible_v<T, uint8_t> && sizeof(T) == 1;

        template <typename T>
        static inline const auto pointerCheck = std::is_pointer_v<std::remove_cv_t<std::remove_reference_t<T>>>;

        template <typename T>
        static inline const auto strCheck = std::is_convertible_v<T, const int8_t *> || std::is_convertible_v<T, const uint8_t *> || std::is_convertible_v<T, const char *> || std::is_convertible_v<T, const unsigned char *>;

        template <typename... Ts>
        static void printImpl(const char *str, Attributes attr, Ts &&...vals)
        {
            ([&](auto &&val)
             {
                using T = decltype(val);
                while(*str != '\0')
                {
                    if (*str == '%' && *(str + 1))
                    {
                        switch (*(++str))
                        {
                        case 'd':
                            if constexpr (integralCheck<T>)
                            {
                                putNumDec(val, attr);
                            }
                            else
                            {
                                putChar('%', attr);
                                putChar(*str, attr);                                
                            }
                            break;
                        case 'b':
                            if constexpr (integralCheck<T>)
                            {
                                putNumBin(val, attr);
                            }
                            else
                            {
                                putChar('%', attr);
                                putChar(*str, attr);
                            }
                            break;
                        case 'x':
                            if constexpr (integralCheck<T>)
                            {
                                putNumHex(val, attr);
                            }
                            else
                            {
                                putChar('%', attr);
                                putChar(*str, attr);
                            }
                            break;
                        case 'c':
                            if constexpr (charCheck<T>)
                            {
                                putChar(val, attr);
                            }
                            else
                            {
                                putChar('%', attr);
                                putChar(*str, attr);
                            }
                            break;
                        case 'p':
                            if constexpr (pointerCheck<T>)
                            {
                                putNumHex(reinterpret_cast<uint64_t>(val), attr);
                            }
                            else
                            {
                                putChar('%', attr);
                                putChar(*str, attr);
                            }
                            break;
                        case 's': 
                            if constexpr (strCheck<T>)
                            {
                                putString(val, attr);
                            }
                            else
                            {
                                putChar('%', attr);
                                putChar(*str, attr);
                            }
                            break;
                        case 'v':
                            if constexpr (charCheck<T>) {
                                putChar(val, attr);
                            }
                            else if constexpr (integralCheck<T>) {
                                putNumDec(val, attr);
                            }
                            else if constexpr (strCheck<T>) {
                                putString(val, attr);
                            }
                            else if constexpr (pointerCheck<T>) {
                                putNumHex(reinterpret_cast<uint64_t>(val), attr);
                            }
                            else 
                            {
                                putChar('%', attr);
                                putChar(*str, attr);
                            }
                            break;
                        case '%':
                            putChar('%', attr);
                            break;
                        default:
                            putChar('%', attr);
                            putChar(*str, attr);
                            break;
                        }
                        ++str;
                        return;
                    }
                    else
                    {
                        putChar(*str, attr);
                        ++str;
                    }
                } }(vals), ...);
            putString(str, attr);
        }

    public:
        template <typename... Ts>
        static void print(const char *str, Ts... vals)
        {
            if constexpr (sizeof...(vals) == 0)
            {
                putString(str, Attributes::WhiteOnBlack);
            }
            else
            {
                printImpl(str, Attributes::WhiteOnBlack, vals...);
            }
            clampDisplayToCursor();
            updateCursor();
            flushToVga();
        }

        template <typename... Ts>
        static void print(const char *str, Attributes atr, Ts... vals)
        {
            if constexpr (sizeof...(vals) == 0)
            {
                putString(str, atr);
            }
            else
            {
                printImpl(str, atr, vals...);
            }
            clampDisplayToCursor();
            updateCursor();
            flushToVga();
        }

        // these change the cursor
        static void clear(uint8_t clearValue = '\0', Attributes attr = Attributes::BlackOnBlack);
        static void clearLine(uint8_t clearValue = '\0', Attributes attr = Attributes::BlackOnBlack);

        static void clearLine(size_t line, uint8_t clearValue = '\0', Attributes attr = Attributes::BlackOnBlack);

        // clears a length of chars starting at pos
        static void clearSpan(CursorPos pos, size_t length,
                              uint8_t clearValue = '\0', Attributes attr = Attributes::BlackOnBlack);
        // clears a length of chars from startIndex to endIndex
        static void clearSpan(size_t startIndex, size_t endIndex,
                              uint8_t clearValue = '\0', Attributes attr = Attributes::BlackOnBlack);

        static void setCursor(CursorPos pos);
        static volatile const CursorPos &getCursor() { return s_cursorPos; }
        static const Extent &getExtent() { return s_extent; }
        static const size_t &getWindowCapacity() { return s_windowCapacity; }

        static void scrollDown(size_t lines);
        static void scrollUp(size_t lines);

        static void enableCursor();
        static void disableCursor();

        static void setDisplayLine(size_t line);

        static void clampDisplayToCursor();

    private:
        static void flushToVga();
        static void updateCursor();
        static bool cursorInScreenBounds(volatile CursorPos &pos);
    };
} // namespace Kernel

#endif // CONSOLE_H