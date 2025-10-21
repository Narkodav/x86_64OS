// Console.h
#ifndef CONSOLE_H
#define CONSOLE_H

#include "Types.h"

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
        static volatile VgaChar *s_vgaAddress;
        static const Extent s_extent;
        static const size_t s_windowCapacity;
        static volatile CursorPos s_cursorPos;

        static void updateHardwareCursor();

    public:
        static void writeChar(size_t index, uint8_t character, Attributes attr = Attributes::WhiteOnBlack);

        template <typename T>
        static void writeString(T *str, size_t startIndex = 0, Attributes attr = Attributes::WhiteOnBlack)
            requires std::is_same_v<std::remove_all_extents_t<T>, char> || std::is_same_v<std::remove_all_extents_t<T>, uint8_t>
        {
            for (size_t i = 0; str[i] != '\0'; ++i)
                writeChar(startIndex + i, str[i], attr);
        }

        // updates the cursor
        static void putChar(uint8_t c, Attributes attr = Attributes::WhiteOnBlack);

        template <typename T>
        static void putString(T *str, Attributes attr = Attributes::WhiteOnBlack)
            requires std::is_same_v<std::remove_all_extents_t<T>, char> || std::is_same_v<std::remove_all_extents_t<T>, uint8_t>
        {
            for (size_t i = 0; str[i] != '\0'; ++i)
            {
                size_t pos = s_cursorPos.y * s_extent.width + s_cursorPos.x;
                writeChar(pos, str[i], attr);
                ++s_cursorPos.x;
                if (s_cursorPos.x >= s_extent.width || str[i] == '\n')
                {
                    s_cursorPos.x = 0;
                    ++s_cursorPos.y;
                    if (s_cursorPos.y >= s_extent.height)
                        scrollDown(1);
                }
            }
            updateHardwareCursor();
        }

        template <std::IntegralType T>
        static void putNumBin(T val, Attributes attr = Attributes::WhiteOnBlack)
        {
            putString("0b", attr);
            const auto bits = sizeof(T) * 8;
            size_t pos = s_cursorPos.y * s_extent.width + s_cursorPos.x;
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
                writeChar(i + pos - offset, '0' + (val >> (bits - 1)), attr);
                val <<= 1;
            }
            s_cursorPos.x = (pos - offset + bits) % s_extent.width;
            s_cursorPos.y = (pos - offset + bits) / s_extent.width;
            updateHardwareCursor();
        }

        template <std::IntegralType T>
        static void putNumDec(T val, Attributes attr = Attributes::WhiteOnBlack)
        {
            if (val == 0)
            {
                putChar('0', attr);
                return;
            }
            size_t pos = s_cursorPos.y * s_extent.width + s_cursorPos.x;
            if (val < 0)
            {
                writeChar(pos, '-', attr);
                ++pos;
                val = -val;
            }
            size_t count = 0;

            while (val != 0)
            {
                writeChar(count + pos, '0' + val % 10, attr);
                val /= 10;
                ++count;
            }

            VgaChar buffer;

            for (size_t i = 0; i < count / 2; ++i)
            {
                buffer.character = s_vgaAddress[count + pos - i - 1].character;
                buffer.attr = s_vgaAddress[count + pos - i - 1].attr;
                s_vgaAddress[count + pos - i - 1].character = s_vgaAddress[pos + i].character;
                s_vgaAddress[count + pos - i - 1].attr = s_vgaAddress[pos + i].attr;
                s_vgaAddress[pos + i].character = buffer.character;
                s_vgaAddress[pos + i].attr = buffer.attr;
            }

            s_cursorPos.x = (pos + count) % s_extent.width;
            s_cursorPos.y = (pos + count) / s_extent.width;
            updateHardwareCursor();
        }

        template <std::IntegralType T>
        static void putNumHex(T val, Attributes attr = Attributes::WhiteOnBlack)
        {
            putString("0x", attr);
            const auto bits = sizeof(T) * 8;
            size_t pos = s_cursorPos.y * s_extent.width + s_cursorPos.x;
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
                writeChar(i - offset + pos, "0123456789ABCDEF"[(val >> (bits - 4)) & 0xF], attr);
                val <<= 4;
            }
            s_cursorPos.x = (pos - offset + bits / 4) % s_extent.width;
            s_cursorPos.y = (pos - offset + bits / 4) / s_extent.width;
            updateHardwareCursor();
        }

    private:
        template <typename T, typename... Ts>
        static void printImpl(const char *str, Attributes attr, T &&val, Ts &&...vals)
        {
            while (*str)
            {
                if (*str == '%' && *(str + 1))
                {
                    if (*(++str) == '%')
                    {
                        putChar('%', attr);
                        ++str;
                        continue;
                    }
                    switch (*(str))
                    {
                    case 'd':
                        if constexpr (std::is_integral_v<std::remove_all_extents_t<T>>)
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
                        if constexpr (std::is_integral_v<std::remove_all_extents_t<T>>)
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
                        if constexpr (std::is_integral_v<std::remove_all_extents_t<T>>)
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
                        if constexpr (std::is_same_v<std::remove_all_extents_t<T>, char>)
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
                        if constexpr (std::is_ptr_v<std::remove_all_extents_t<T>>)
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
                        if constexpr (std::is_same_v<std::remove_all_extents_t<T>, char *> ||
                                      std::is_same_v<std::remove_all_extents_t<T>, uint8_t *>)
                        {
                            putString(val, attr);
                        }
                        else
                        {
                            putChar('%', attr);
                            putChar(*str, attr);
                        }
                        break;
                    default:
                        putChar('%', attr);
                        putChar(*str, attr);
                        ++str;
                        continue;
                    }
                    ++str;
                    if constexpr (sizeof...(vals) > 0)
                        printImpl(str, attr, vals...);
                    else
                        putString(str, attr);
                    return;
                }
                else
                {
                    putChar(*str, attr);
                }
                ++str;
            }
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
    };
} // namespace Kernel

#endif // CONSOLE_H