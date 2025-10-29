#ifndef KEYBOARD_H
#define KEYBOARD_H

#include "../utils/Types.h"
#include "../utils/StateTracker.h"
#include "../utils/RollingWindow.h"
#include "InterruptManager.h"

namespace Kernel
{
    class Keyboard
    {
    public:
        enum class ScancodeSet1 : uint16_t
        {
            // Regular keys (scancode in lower 8 bits)
            Escape = 0x0001,
            _1 = 0x0002,
            _2 = 0x0003,
            _3 = 0x0004,
            _4 = 0x0005,
            _5 = 0x0006,
            _6 = 0x0007,
            _7 = 0x0008,
            _8 = 0x0009,
            _9 = 0x000A,
            _0 = 0x000B,
            Minus = 0x000C,
            Equals = 0x000D,
            Backspace = 0x000E,
            Tab = 0x000F,
            Q = 0x0010,
            W = 0x0011,
            E = 0x0012,
            R = 0x0013,
            T = 0x0014,
            Y = 0x0015,
            U = 0x0016,
            I = 0x0017,
            O = 0x0018,
            P = 0x0019,
            LBracket = 0x001A,
            RBracket = 0x001B,
            Enter = 0x001C,
            LCtrl = 0x001D,
            A = 0x001E,
            S = 0x001F,
            D = 0x0020,
            F = 0x0021,
            G = 0x0022,
            H = 0x0023,
            J = 0x0024,
            K = 0x0025,
            L = 0x0026,
            Semicolon = 0x0027,
            Apostrophe = 0x0028,
            Grave = 0x0029,
            LShift = 0x002A,
            Backslash = 0x002B,
            Z = 0x002C,
            X = 0x002D,
            C = 0x002E,
            V = 0x002F,
            B = 0x0030,
            N = 0x0031,
            M = 0x0032,
            Comma = 0x0033,
            Dot = 0x0034,
            Slash = 0x0035,
            RShift = 0x0036,
            KpAsterisk = 0x0037,
            LAlt = 0x0038,
            Space = 0x0039,
            CapsLock = 0x003A,
            F1 = 0x003B,
            F2 = 0x003C,
            F3 = 0x003D,
            F4 = 0x003E,
            F5 = 0x003F,
            F6 = 0x0040,
            F7 = 0x0041,
            F8 = 0x0042,
            F9 = 0x0043,
            F10 = 0x0044,
            NumLock = 0x0045,
            ScrollLock = 0x0046,
            Kp7 = 0x0047,
            Kp8 = 0x0048,
            Kp9 = 0x0049,
            KpMinus = 0x004A,
            Kp4 = 0x004B,
            Kp5 = 0x004C,
            Kp6 = 0x004D,
            KpPlus = 0x004E,
            Kp1 = 0x004F,
            Kp2 = 0x0050,
            Kp3 = 0x0051,
            Kp0 = 0x0052,
            KpDot = 0x0053,
            F11 = 0x0057,
            F12 = 0x0058,

            // Extended keys (0xE0 in upper 8 bits, scancode in lower 8 bits)
            KpEnter = 0xE01C,
            RCtrl = 0xE01D,
            KpSlash = 0xE035,
            PrintScreen = 0xE037,
            RAlt = 0xE038,
            Pause = 0xE045,
            Home = 0xE047,
            ArrowUp = 0xE048,
            PageUp = 0xE049,
            ArrowLeft = 0xE04B,
            ArrowRight = 0xE04D,
            End = 0xE04F,
            ArrowDown = 0xE050,
            PageDown = 0xE051,
            Insert = 0xE052,
            Delete = 0xE053,
            LWin = 0xE05B,
            RWin = 0xE05C,
            Menu = 0xE05D
        };

        enum class Key : uint8_t
        {
            // Regular keys (scancode in lower 8 bits)
            Escape = 0,
            _1,
            _2,
            _3,
            _4,
            _5,
            _6,
            _7,
            _8,
            _9,
            _0,
            Minus,
            Equals,
            Backspace,
            Tab,
            Q,
            W,
            E,
            R,
            T,
            Y,
            U,
            I,
            O,
            P,
            LBracket,
            RBracket,
            Enter,
            LCtrl,
            A,
            S,
            D,
            F,
            G,
            H,
            J,
            K,
            L,
            Semicolon,
            Apostrophe,
            Grave,
            LShift,
            Backslash,
            Z,
            X,
            C,
            V,
            B,
            N,
            M,
            Comma,
            Dot,
            Slash,
            RShift,
            KpAsterisk,
            LAlt,
            Space,
            CapsLock,
            F1,
            F2,
            F3,
            F4,
            F5,
            F6,
            F7,
            F8,
            F9,
            F10,
            NumLock,
            ScrollLock,
            Kp7,
            Kp8,
            Kp9,
            KpMinus,
            Kp4,
            Kp5,
            Kp6,
            KpPlus,
            Kp1,
            Kp2,
            Kp3,
            Kp0,
            KpDot,
            F11,
            F12,

            // extended
            KpEnter,
            RCtrl,
            KpSlash,
            PrintScreen,
            RAlt,
            Pause,
            Home,
            ArrowUp,
            PageUp,
            ArrowLeft,
            ArrowRight,
            End,
            ArrowDown,
            PageDown,
            Insert,
            Delete,
            LWin,
            RWin,
            Menu,
            Num
        };

        class Event
        {
        public:
            enum class Flag : uint16_t
            {
                Pressed = 1 << 0,
                Extended = 1 << 1,
                Repeated = 1 << 2,

                RShift = 1 << 3,
                RAlt = 1 << 4,
                RCtrl = 1 << 5,
                RWin = 1 << 6,

                LShift = 1 << 7,
                LAlt = 1 << 8,
                LCtrl = 1 << 9,
                LWin = 1 << 10,

                CapsLock = 1 << 11,
                NumLock = 1 << 12,
                ScrollLock = 1 << 13
            };

            using Flags = Utils::FlagMap<Flag, uint16_t>;

        private:
            uint8_t m_scancode;
            Key m_key;
            Flags m_flags;

        public:
            Event() = default;
            Event(uint8_t scancode, Key key, Flags flags) : m_scancode(scancode), m_key(key), m_flags(flags) {};
            Event(const Event &other) = default;
            Event &operator=(const Event &other) = default;

            Event(Event &&other) = default;
            Event &operator=(Event &&other) = default;

            const uint8_t &getScancode() const { return m_scancode; };
            const Key &getKey() const { return m_key; };
            const Flags &getFlags() const { return m_flags; };

            uint8_t &getScancode() { return m_scancode; };
            Key &getKey() { return m_key; };
            Flags &getFlags() { return m_flags; };

            Event &setScancode(uint8_t scancode)
            {
                m_scancode = scancode;
                return *this;
            };
            Event &setKey(Key key)
            {
                m_key = key;
                return *this;
            };
            Event &setFlags(Flags flags)
            {
                m_flags = flags;
                return *this;
            };

            uint8_t getChar() const;

        private:
            uint8_t getCharDefault() const;
            uint8_t getCharShift() const;
        };

    private:
        static StateTracker<volatile uint64_t, static_cast<size_t>(Key::Num)> s_keyStates;
        static RollingWindow<Event, 256> s_keyBuffer;
        static volatile bool s_nextExtended;

    public:
        static void initialise();

        static bool isPressed(Key key)
        {
            return s_keyStates.get(static_cast<size_t>(key));
        }

        static bool isReleased(Key key)
        {
            return !s_keyStates.get(static_cast<size_t>(key));
        }

        static bool peekEvent(Event &event)
        {
            if (s_keyBuffer.empty())
                return false;
            event = s_keyBuffer.front();
            return true;
        }

        static bool popEvent(Event &event)
        {
            if (s_keyBuffer.empty())
                return false;
            event = s_keyBuffer.front();
            s_keyBuffer.popFront();
            return true;
        }

        static const RollingWindow<Event, 256> &getEventBuffer()
        {
            return s_keyBuffer;
        }

        static Key scancodeToKey(uint8_t scancode);
        static Key extededScancodeToKey(uint8_t scancode);

    private:
        static void interruptHandler(InterruptFrame &frame);
    };

}

#endif // KEYBOARD_H