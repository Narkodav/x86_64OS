#include "../../include/kernel/Keyboard.h"
namespace Kernel
{
    StateTracker<volatile uint64_t, static_cast<size_t>(Keyboard::Key::Num)> Keyboard::s_keyStates;
    RollingWindow<Keyboard::Event, 256> Keyboard::s_keyBuffer;
    volatile bool Keyboard::s_nextExtended = false;

    void Keyboard::interruptHandler(InterruptFrame &frame)
    {
        uint8_t result = port_in_byte(0x60);
        if (result == 0xE0)
        {
            s_nextExtended = true;
            return; // Wait for next byte
        }

        Event event;
        uint8_t scancode = result & 0x7F;
        event.setScancode(scancode);

        if (s_nextExtended)
        {
            s_nextExtended = false;
            event.setKey(extededScancodeToKey(scancode));
            event.getFlags().set(Event::Flag::Extended);
        }
        else
        {
            event.setKey(scancodeToKey(scancode));
        }

        if (s_keyStates.get(static_cast<uint8_t>(Key::LShift)))
            event.getFlags().set(Event::Flag::LShift);
        if (s_keyStates.get(static_cast<uint8_t>(Key::RShift)))
            event.getFlags().set(Event::Flag::RShift);
        if (s_keyStates.get(static_cast<uint8_t>(Key::LAlt)))
            event.getFlags().set(Event::Flag::LAlt);
        if (s_keyStates.get(static_cast<uint8_t>(Key::RAlt)))
            event.getFlags().set(Event::Flag::RAlt);
        if (s_keyStates.get(static_cast<uint8_t>(Key::LCtrl)))
            event.getFlags().set(Event::Flag::LCtrl);
        if (s_keyStates.get(static_cast<uint8_t>(Key::RCtrl)))
            event.getFlags().set(Event::Flag::RCtrl);
        if (s_keyStates.get(static_cast<uint8_t>(Key::LWin)))
            event.getFlags().set(Event::Flag::LWin);
        if (s_keyStates.get(static_cast<uint8_t>(Key::RWin)))
            event.getFlags().set(Event::Flag::RWin);
        if (s_keyStates.get(static_cast<uint8_t>(Key::CapsLock)))
            event.getFlags().set(Event::Flag::CapsLock);
        if (s_keyStates.get(static_cast<uint8_t>(Key::NumLock)))
            event.getFlags().set(Event::Flag::NumLock);
        if (s_keyStates.get(static_cast<uint8_t>(Key::ScrollLock)))
            event.getFlags().set(Event::Flag::ScrollLock);

        if (scancode == result)
        {
            event.getFlags().set(Event::Flag::Pressed);
            if (s_keyStates.get(static_cast<uint8_t>(event.getKey())))
                event.getFlags().set(Event::Flag::Repeated);
            else
                s_keyStates.set(static_cast<uint8_t>(event.getKey()));
        }
        else
            s_keyStates.clear(static_cast<uint8_t>(event.getKey()));
        s_keyBuffer.pushBack(event);
    }

    Keyboard::Key Keyboard::scancodeToKey(uint8_t scancode)
    {
        return static_cast<Key>(scancode);
    }

    Keyboard::Key Keyboard::extededScancodeToKey(uint8_t scancode)
    {
        switch (scancode)
        {
        case 0x1C:
            return Key::KpEnter;
        case 0x1D:
            return Key::RCtrl;
        case 0x35:
            return Key::KpSlash;
        case 0x37:
            return Key::PrintScreen;
        case 0x38:
            return Key::RAlt;
        case 0x45:
            return Key::Pause;
        case 0x47:
            return Key::Home;
        case 0x48:
            return Key::ArrowUp;
        case 0x49:
            return Key::PageUp;
        case 0x4B:
            return Key::ArrowLeft;
        case 0x4D:
            return Key::ArrowRight;
        case 0x4F:
            return Key::End;
        case 0x50:
            return Key::ArrowDown;
        case 0x51:
            return Key::PageDown;
        case 0x52:
            return Key::Insert;
        case 0x53:
            return Key::Delete;
        case 0x5B:
            return Key::LWin;
        case 0x5C:
            return Key::RWin;
        case 0x5D:
            return Key::Menu;
        default:
            return Key::Num;
        };
        return Key::Num;
    }

    uint8_t Keyboard::Event::getChar() const
    {
        uint8_t character;
        if (m_flags.get(Flag::LShift) || m_flags.get(Flag::RShift))
        {
            character = getCharShift();
            if (m_flags.get(Flag::CapsLock) && character >= 'A' && character <= 'Z')
                character -= 'A' - 'a';
        }
        else
        {
            character = getCharDefault();
            if (m_flags.get(Flag::CapsLock) && character >= 'a' && character <= 'z')
                character += 'A' - 'a';
        }
        return character;
    }

    uint8_t Keyboard::Event::getCharDefault() const
    {
        switch (m_key)
        {
        case Key::_0:
            return '0';
        case Key::_1:
            return '1';
        case Key::_2:
            return '2';
        case Key::_3:
            return '3';
        case Key::_4:
            return '4';
        case Key::_5:
            return '5';
        case Key::_6:
            return '6';
        case Key::_7:
            return '7';
        case Key::_8:
            return '8';
        case Key::_9:
            return '9';
        case Key::A:
            return 'a';
        case Key::B:
            return 'b';
        case Key::C:
            return 'c';
        case Key::D:
            return 'd';
        case Key::E:
            return 'e';
        case Key::F:
            return 'f';
        case Key::G:
            return 'g';
        case Key::H:
            return 'h';
        case Key::I:
            return 'i';
        case Key::J:
            return 'j';
        case Key::K:
            return 'k';
        case Key::L:
            return 'l';
        case Key::M:
            return 'm';
        case Key::N:
            return 'n';
        case Key::O:
            return 'o';
        case Key::P:
            return 'p';
        case Key::Q:
            return 'q';
        case Key::R:
            return 'r';
        case Key::S:
            return 's';
        case Key::T:
            return 't';
        case Key::U:
            return 'u';
        case Key::V:
            return 'v';
        case Key::W:
            return 'w';
        case Key::X:
            return 'x';
        case Key::Y:
            return 'y';
        case Key::Z:
            return 'z';
        case Key::Space:
            return ' ';
        case Key::Enter:
            return '\n';
        case Key::Backspace:
            return '\b';
        case Key::Tab:
            return '\t';
        default:
            return 0;
        }
    }

    uint8_t Keyboard::Event::getCharShift() const
    {
        switch (m_key)
        {
        case Key::_0:
            return ')';
        case Key::_1:
            return '!';
        case Key::_2:
            return '@';
        case Key::_3:
            return '#';
        case Key::_4:
            return '$';
        case Key::_5:
            return '%';
        case Key::_6:
            return '^';
        case Key::_7:
            return '&';
        case Key::_8:
            return '*';
        case Key::_9:
            return '(';
        case Key::A:
            return 'A';
        case Key::B:
            return 'B';
        case Key::C:
            return 'C';
        case Key::D:
            return 'D';
        case Key::E:
            return 'E';
        case Key::F:
            return 'F';
        case Key::G:
            return 'G';
        case Key::H:
            return 'H';
        case Key::I:
            return 'I';
        case Key::J:
            return 'J';
        case Key::K:
            return 'K';
        case Key::L:
            return 'L';
        case Key::M:
            return 'M';
        case Key::N:
            return 'N';
        case Key::O:
            return 'O';
        case Key::P:
            return 'P';
        case Key::Q:
            return 'Q';
        case Key::R:
            return 'R';
        case Key::S:
            return 'S';
        case Key::T:
            return 'T';
        case Key::U:
            return 'U';
        case Key::V:
            return 'V';
        case Key::W:
            return 'W';
        case Key::X:
            return 'X';
        case Key::Y:
            return 'Y';
        case Key::Z:
            return 'Z';
        case Key::Space:
            return ' ';
        case Key::Enter:
            return '\n';
        case Key::Backspace:
            return '\b';
        case Key::Tab:
            return '\t';
        default:
            return 0;
        }
    }

    void Keyboard::initialise()
    {
        Console::print("Keyboard : Initialising\n", Console::Attributes::CyanOnBlack);
        InterruptManager::registerInterruptCallback(
            InterruptManager::InterruptVector::irqKeyboard, interruptHandler);

        // Enable keyboard
        port_out_byte(0x64, 0xAE);

        // Optional: Enable interrupts for keyboard
        port_out_byte(0x64, 0x20); // Read configuration
        uint8_t config = port_in_byte(0x60);
        config |= 0x01;            // Enable keyboard interrupt
        port_out_byte(0x64, 0x60); // Write configuration
        port_out_byte(0x60, config);
    }
}