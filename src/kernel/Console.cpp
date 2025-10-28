#include "../../include/Console.h"

namespace Kernel
{
    void Console::updateCursor()
    {
        if (!s_cursorEnabled || !cursorInScreenBounds(s_cursorPos))
        {
            port_out_byte(0x3D4, 0x0A); // Cursor start register
            port_out_byte(0x3D5, 0x20); // Disable cursor
            return;
        }

        port_out_byte(0x3D5, 0x00); // Start at line 0
        port_out_byte(0x3D5, 0x0F); // End at line 15

        size_t pos = (s_cursorPos.y - s_displayLine) * s_extent.width + s_cursorPos.x;

        port_out_byte(0x3D4, 0x0F);
        port_out_byte(0x3D5, pos & 0xFF);
        port_out_byte(0x3D4, 0x0E);
        port_out_byte(0x3D5, pos >> 8);
    }

    void Console::enableCursor()
    {
        s_cursorEnabled = true;
        updateCursor();
    }

    void Console::disableCursor()
    {
        s_cursorEnabled = false;
        updateCursor();
    }

    void Console::writeChar(size_t line, size_t pos, uint8_t character, Attributes attr //= Attributes::WhiteOnBlack
    )
    {
        s_charBuffer[line][pos].character = character;
        s_charBuffer[line][pos].attr = attr;
    }

    void Console::setCursor(CursorPos pos)
    {
        s_cursorPos.x = pos.x;
        s_cursorPos.y = pos.y;
        updateCursor();
    }

    void Console::putChar(uint8_t c, Attributes attr)
    {
        if (c == '\n')
        {
            s_cursorPos.x = 0;
            ++s_cursorPos.y;
            s_charBuffer.pushBack();
        }
        else
        {
            writeChar(s_cursorPos.y, s_cursorPos.x, c, attr);
            if (s_cursorPos.x == s_extent.width)
            {
                s_cursorPos.x = 0;
                if (s_cursorPos.y < s_charBuffer.capacity() - 1)
                {
                    ++s_cursorPos.y;
                }
                s_charBuffer.pushBack();
            }
            else
                ++s_cursorPos.x;
        }
    }

    void Console::clear(
        uint8_t clearValue //= '\0'
        ,
        Attributes attr //= Attributes::BlackOnBlack
    )
    {
        for (size_t i = 0; i < s_extent.height; ++i)
        {
            for (size_t j = 0; j < s_extent.width; ++j)
            {
                s_vgaScreen[i][j].character = clearValue;
                s_vgaScreen[i][j].attr = attr;
            }
        }
        s_displayLine = 0;
        s_charBuffer.clear();
        s_charBuffer.pushBack();
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
        for (size_t j = 0; j < s_extent.width; ++j)
        {
            s_charBuffer[line][j].character = clearValue;
            s_charBuffer[line][j].attr = attr;
        }
        if (line >= s_displayLine && line < s_displayLine + s_extent.height)
            for (size_t j = 0; j < s_extent.width; ++j)
            {
                s_vgaScreen[line - s_displayLine][j].character = clearValue;
                s_vgaScreen[line - s_displayLine][j].attr = attr;
            }
    }

    // void Console::clearSpan(CursorPos pos, size_t length, uint8_t clearValue //= '\0'
    //                         ,
    //                         Attributes attr //= Attributes::BlackOnBlack
    // )
    // {
    //     size_t startIndex = pos.y * s_extent.width + pos.x;
    //     size_t endIndex = startIndex + length;
    //     clearSpan(startIndex, endIndex, clearValue, attr);
    // }

    // void Console::clearSpan(size_t startIndex, size_t endIndex, uint8_t clearValue //= '\0'
    //                         ,
    //                         Attributes attr //= Attributes::BlackOnBlack
    // )
    // {
    //     for (size_t i = startIndex; i < endIndex; ++i)
    //         writeChar(i, clearValue, attr);
    // }

    // void Console::scrollDown(size_t lines)
    // {
    //     for (size_t i = 0; i < s_extent.height - lines; ++i)
    //     {
    //         size_t src = (i + lines) * s_extent.width;
    //         size_t dst = i * s_extent.width;
    //         for (size_t j = 0; j < s_extent.width; ++j)
    //         {
    //             s_vgaAddress[(dst + j)].character = s_vgaAddress[(src + j)].character;
    //             s_vgaAddress[(dst + j)].attr = s_vgaAddress[(src + j)].attr;
    //         }
    //     }
    //     for (size_t i = 0; i < lines; ++i)
    //     {
    //         size_t dst = (s_extent.height - i - 1) * s_extent.width;
    //         for (size_t j = 0; j < s_extent.width; ++j)
    //         {
    //             s_vgaAddress[(dst + j)].character = '\0';
    //             s_vgaAddress[(dst + j)].attr = Attributes::BlackOnBlack;
    //         }
    //     }
    //     setCursor({s_cursorPos.x, s_cursorPos.y - lines});
    // }

    void Console::flushToVga()
    {
        size_t index = s_displayLine * s_extent.width;
        size_t endLine = s_charBuffer.size() - s_displayLine < s_extent.height ? s_charBuffer.size() : s_displayLine + s_extent.height;
        for (size_t i = s_displayLine; i < endLine; ++i)
        {
            for (size_t j = 0; j < s_extent.width; ++j)
            {
                s_vgaScreen[i - s_displayLine][j].character = s_charBuffer[i][j].character;
                s_vgaScreen[i - s_displayLine][j].attr = s_charBuffer[i][j].attr;
            }
        }

        size_t start = endLine - s_displayLine;
        for (size_t i = start; i < s_extent.height; ++i)
        {
            for (size_t j = 0; j < s_extent.width; ++j)
            {
                s_vgaScreen[i][j].character = '\0';
                s_vgaScreen[i][j].attr = Attributes::BlackOnBlack;
            }
        }
    }

    void Console::setDisplayLine(size_t line)
    {
        s_displayLine = line;
        flushToVga();
        updateCursor();
    }

    bool Console::cursorInScreenBounds(volatile CursorPos &pos)
    {
        return pos.y >= s_displayLine && pos.y < s_displayLine + s_extent.height;
    }

    void Console::clampDisplayToCursor()
    {
        s_displayLine = s_cursorPos.y < s_extent.height ? 0 : s_cursorPos.y - s_extent.height;
    }

    void Console::scrollDown(size_t lines)
    {
        s_displayLine += lines;
        if (s_displayLine > s_charBuffer.size() - s_extent.height)
            s_displayLine = s_charBuffer.size() - s_extent.height;
        updateCursor();
        flushToVga();
    }

    void Console::scrollUp(size_t lines)
    {
        if (s_displayLine < lines)
            s_displayLine = 0;
        else
            s_displayLine -= lines;
        updateCursor();
        flushToVga();
    }
}