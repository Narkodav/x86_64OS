#include "../../include/Keyboard.h"
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

    void Keyboard::initialise()
    {
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