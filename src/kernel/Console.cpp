#include "../../include/Console.h"

namespace Kernel
{
    volatile Console::VgaChar *Console::s_vgaAddress = reinterpret_cast<volatile Console::VgaChar *>(0xB8000);
    const Console::Extent Console::s_extent = {80, 25};
    const size_t Console::s_windowCapacity = s_extent.width * s_extent.height;
    volatile Console::CursorPos Console::s_cursorPos = {0, 0};

    void Console::updateHardwareCursor()
    {
        size_t pos = s_cursorPos.y * s_extent.width + s_cursorPos.x;

        // Send low byte
        asm volatile("outb %0, %1" : : "a"((unsigned char)0x0F), "Nd"((unsigned short)0x3D4));
        asm volatile("outb %0, %1" : : "a"((unsigned char)(pos & 0xFF)), "Nd"((unsigned short)0x3D5));

        // Send high byte
        asm volatile("outb %0, %1" : : "a"((unsigned char)0x0E), "Nd"((unsigned short)0x3D4));
        asm volatile("outb %0, %1" : : "a"((unsigned char)((pos >> 8) & 0xFF)), "Nd"((unsigned short)0x3D5));
    }

    void Console::writeChar(size_t index, uint8_t character, Attributes attr //= Attributes::WhiteOnBlack
    )
    {
        s_vgaAddress[index].character = character;
        s_vgaAddress[index].attr = attr;
    }

    void Console::writeString(const char *str, size_t startIndex //= 0
                              ,
                              Attributes attr //= Attributes::WhiteOnBlack
    )
    {
        for (size_t i = 0; str[i] != '\0'; ++i)
            writeChar(startIndex + i, str[i], attr);
    }

    void Console::writeString(volatile const char *str, size_t startIndex //= 0
                              ,
                              Attributes attr //= Attributes::WhiteOnBlack
    )
    {
        for (size_t i = 0; str[i] != '\0'; ++i)
            writeChar(startIndex + i, str[i], attr);
    }

    void Console::setCursor(CursorPos pos)
    {
        s_cursorPos.x = pos.x;
        s_cursorPos.y = pos.y;
        updateHardwareCursor();
    }

    void Console::putChar(uint8_t c, Attributes attr)
    {
        size_t pos = s_cursorPos.y * s_extent.width + s_cursorPos.x;
        writeChar(pos, c, attr);
        if (c == '\n')
        {
            s_cursorPos.x = 0;
            ++s_cursorPos.y;
        }
        else
        {
            ++s_cursorPos.x;
            if (s_cursorPos.x >= s_extent.width)
            {
                s_cursorPos.x = 0;
                ++s_cursorPos.y;
            }
        }

        if (s_cursorPos.y >= s_extent.height)
            scrollDown(1);

        updateHardwareCursor();
    }

    void Console::putString(const char *str, Attributes attr //= Attributes::WhiteOnBlack
    )
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

    void Console::putString(volatile const char *str, Attributes attr //= Attributes::WhiteOnBlack
    )
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

    void Console::clear(
        uint8_t clearValue //= '\0'
        ,
        Attributes attr //= Attributes::BlackOnBlack
    )
    {
        for (size_t i = 0; i < s_windowCapacity; ++i)
        {
            s_vgaAddress[i].character = clearValue;
            s_vgaAddress[i].attr = attr;
        }
        setCursor({0, 0});
    }

    void Console::clearLine(uint8_t clearValue //= '\0'
                            ,
                            Attributes attr //= Attributes::BlackOnBlack
    )
    {
        clearLine(s_cursorPos.y, clearValue, attr);
        setCursor({0, s_cursorPos.y});
    }

    void Console::clearLine(size_t line, uint8_t clearValue //= '\0'
                            ,
                            Attributes attr //= Attributes::BlackOnBlack
    )
    {
        size_t startIndex = line * s_extent.width;
        size_t endIndex = startIndex + s_extent.width;
        clearSpan(startIndex, endIndex, clearValue, attr);
    }

    void Console::clearSpan(CursorPos pos, size_t length, uint8_t clearValue //= '\0'
                            ,
                            Attributes attr //= Attributes::BlackOnBlack
    )
    {
        size_t startIndex = pos.y * s_extent.width + pos.x;
        size_t endIndex = startIndex + length;
        clearSpan(startIndex, endIndex, clearValue, attr);
    }

    void Console::clearSpan(size_t startIndex, size_t endIndex, uint8_t clearValue //= '\0'
                            ,
                            Attributes attr //= Attributes::BlackOnBlack
    )
    {
        for (size_t i = startIndex; i < endIndex; ++i)
            writeChar(i, clearValue, attr);
    }

    void Console::scrollDown(size_t lines)
    {
        for (size_t i = 0; i < s_extent.height - lines; ++i)
        {
            size_t src = (i + lines) * s_extent.width;
            size_t dst = i * s_extent.width;
            for (size_t j = 0; j < s_extent.width; ++j)
            {
                s_vgaAddress[(dst + j)].character = s_vgaAddress[(src + j)].character;
                s_vgaAddress[(dst + j)].attr = s_vgaAddress[(src + j)].attr;
            }
        }
        for (size_t i = 0; i < lines; ++i)
        {
            size_t dst = (s_extent.height - i - 1) * s_extent.width;
            for (size_t j = 0; j < s_extent.width; ++j)
            {
                s_vgaAddress[(dst + j)].character = '\0';
                s_vgaAddress[(dst + j)].attr = Attributes::BlackOnBlack;
            }
        }
        setCursor({s_cursorPos.x, s_cursorPos.y - lines});
    }
}