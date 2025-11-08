// interrupts.cpp
#include "../../include/drivers/InterruptManager.h"

namespace Kernel
{
    const char *InterruptManager::s_exceptionMessages[s_exceptionCount] = {
        "Division By Zero",
        "Debug",
        "Non Maskable Interrupt",
        "Breakpoint",
        "Into Detected Overflow",
        "Out of Bounds",
        "Invalid Opcode",
        "No Coprocessor",

        "Double Fault",
        "Coprocessor Segment Overrun",
        "Bad TSS",
        "Segment Not Present",
        "Stack Fault",
        "General Protection Fault",
        "Page Fault",
        "Unknown Interrupt",

        "Coprocessor Fault",
        "Alignment Check",
        "Machine Check",
        "Reserved",
        "Reserved",
        "Reserved",
        "Reserved",
        "Reserved",

        "Reserved",
        "Reserved",
        "Reserved",
        "Reserved",
        "Reserved",
        "Reserved",
        "Reserved",
        "Reserved"};

    IDTEntry InterruptManager::s_idtEntries[s_tableSize];
    IDTPtr InterruptManager::s_idtPtr;
    volatile InterruptHandler InterruptManager::s_interruptHandlers[s_tableSize];

    void InterruptManager::setIdtGate(uint8_t index, IsrPtr_t interruptServiceRoutine,
                                      uint8_t interruptStackTable, uint8_t flags)
    {
        auto &entry = s_idtEntries[index];
        entry.isrLow = reinterpret_cast<uint64_t>(interruptServiceRoutine) & 0xFFFF;
        entry.kernelCs = reinterpret_cast<uint16_t>(&gdt64_code_segment);
        entry.ist = interruptStackTable;
        entry.attributes = flags;
        entry.isrMid = (reinterpret_cast<uint64_t>(interruptServiceRoutine) >> 16) & 0xFFFF;
        entry.isrHigh = (reinterpret_cast<uint64_t>(interruptServiceRoutine) >> 32) & 0xFFFFFFFF;
        entry.reserved = 0;
        registerInterruptCallback(index, handleException);
    }

    void InterruptManager::setupIdt()
    {
        remapPic();

        setIdtGate(0, isr0, 0, s_entryFlags);
        setIdtGate(1, isr1, 0, s_entryFlags);
        setIdtGate(2, isr2, 0, s_entryFlags);
        setIdtGate(3, isr3, 0, s_entryFlags);
        setIdtGate(4, isr4, 0, s_entryFlags);
        setIdtGate(5, isr5, 0, s_entryFlags);
        setIdtGate(6, isr6, 0, s_entryFlags);
        setIdtGate(7, isr7, 0, s_entryFlags);
        setIdtGate(8, isr8, 0, s_entryFlags);
        setIdtGate(9, isr9, 0, s_entryFlags);

        setIdtGate(10, isr10, 0, s_entryFlags);
        setIdtGate(11, isr11, 0, s_entryFlags);
        setIdtGate(12, isr12, 0, s_entryFlags);
        setIdtGate(13, isr13, 0, s_entryFlags);
        setIdtGate(14, isr14, 0, s_entryFlags);
        setIdtGate(15, isr15, 0, s_entryFlags);
        setIdtGate(16, isr16, 0, s_entryFlags);
        setIdtGate(17, isr17, 0, s_entryFlags);
        setIdtGate(18, isr18, 0, s_entryFlags);
        setIdtGate(19, isr19, 0, s_entryFlags);

        setIdtGate(20, isr20, 0, s_entryFlags);
        setIdtGate(21, isr21, 0, s_entryFlags);
        setIdtGate(22, isr22, 0, s_entryFlags);
        setIdtGate(23, isr23, 0, s_entryFlags);
        setIdtGate(24, isr24, 0, s_entryFlags);
        setIdtGate(25, isr25, 0, s_entryFlags);
        setIdtGate(26, isr26, 0, s_entryFlags);
        setIdtGate(27, isr27, 0, s_entryFlags);
        setIdtGate(28, isr28, 0, s_entryFlags);
        setIdtGate(29, isr29, 0, s_entryFlags);

        setIdtGate(30, isr30, 0, s_entryFlags);
        setIdtGate(31, isr31, 0, s_entryFlags);

        setIdtGate(32, irq0, 0, s_entryFlags);
        setIdtGate(33, irq1, 0, s_entryFlags);
        setIdtGate(34, irq2, 0, s_entryFlags);
        setIdtGate(35, irq3, 0, s_entryFlags);
        setIdtGate(36, irq4, 0, s_entryFlags);
        setIdtGate(37, irq5, 0, s_entryFlags);
        setIdtGate(38, irq6, 0, s_entryFlags);
        setIdtGate(39, irq7, 0, s_entryFlags);
        setIdtGate(40, irq8, 0, s_entryFlags);
        setIdtGate(41, irq9, 0, s_entryFlags);
        setIdtGate(42, irq10, 0, s_entryFlags);
        setIdtGate(43, irq11, 0, s_entryFlags);
        setIdtGate(44, irq12, 0, s_entryFlags);
        setIdtGate(45, irq13, 0, s_entryFlags);
        setIdtGate(46, irq14, 0, s_entryFlags);
        setIdtGate(47, irq15, 0, s_entryFlags);

        loadIdt();
    }

    void InterruptManager::loadIdt()
    {
        s_idtPtr.limit = sizeof(s_idtEntries) - 1;
        s_idtPtr.base = reinterpret_cast<uint64_t>(&s_idtEntries);
        asm volatile("lidt %0" : : "m"(s_idtPtr));
    }

    void InterruptManager::remapPic()
    {
        // Save masks
        uint8_t mask1 = port_in_byte(0x21);
        uint8_t mask2 = port_in_byte(0xA1);

        // Start initialization
        port_out_byte(0x20, 0x11); // Master PIC: ICW1
        port_out_byte(0xA0, 0x11); // Slave PIC: ICW1

        // Set vector offsets
        port_out_byte(0x21, 0x20); // Master PIC: IRQ 0-7 → interrupts 32-39
        port_out_byte(0xA1, 0x28); // Slave PIC: IRQ 8-15 → interrupts 40-47

        // Configure cascade
        port_out_byte(0x21, 0x04); // Master PIC: slave at IRQ2
        port_out_byte(0xA1, 0x02); // Slave PIC: cascade identity

        // Set mode
        port_out_byte(0x21, 0x01); // Master PIC: 8086 mode
        port_out_byte(0xA1, 0x01); // Slave PIC: 8086 mode

        // Restore masks
        port_out_byte(0x21, 0x0);
        port_out_byte(0xA1, 0x0);
    }

    void InterruptManager::initialize()
    {
        Console::print("Interrupt Manager : Initialising\n", Console::Attributes::CyanOnBlack);
        setupIdt();
    }

    inline void InterruptManager::handleInterrupt(InterruptFrame &frame)
    {
        s_interruptHandlers[frame.interrupt_number](frame);
    }

    void InterruptManager::handleException(InterruptFrame &frame)
    {
        Console::print("Interrupt: %s\n", Console::Attributes::RedOnBlack,
                       s_exceptionMessages[frame.interrupt_number]);
        Console::print("  RIP: %x\n", frame.rip);
        Console::print("  CS:  %x\n", frame.cs);
        Console::print("  RFLAGS: %x\n", frame.rflags);
        Console::print("  RSP: %x\n", frame.rsp);
        Console::print("  SS:  %x\n", frame.ss);
        Console::print("  Error Code: %x\n", frame.error_code);
    }

    void InterruptManager::registerInterruptCallback(uint8_t index, InterruptHandler handler)
    {
        s_interruptHandlers[index] = handler;
    }

    void InterruptManager::registerInterruptCallback(InterruptVector intVector, InterruptHandler handler)
    {
        s_interruptHandlers[static_cast<uint8_t>(intVector)] = handler;
    }

    void InterruptManager::triggerInterrupt(InterruptVector intVector)
    {
        switch (static_cast<uint8_t>(intVector))
        {
        case 1:
            trigger_interrupt1();
            break;
        case 2:
            trigger_interrupt2();
            break;
        case 3:
            trigger_interrupt3();
            break;
        case 4:
            trigger_interrupt4();
            break;
        case 5:
            trigger_interrupt5();
            break;
        case 6:
            trigger_interrupt6();
            break;
        case 7:
            trigger_interrupt7();
            break;
        case 8:
            trigger_interrupt8();
            break;
        case 9:
            trigger_interrupt9();
            break;
        case 10:
            trigger_interrupt10();
            break;
        case 11:
            trigger_interrupt11();
            break;
        case 12:
            trigger_interrupt12();
            break;
        case 13:
            trigger_interrupt13();
            break;
        case 14:
            trigger_interrupt14();
            break;
        case 15:
            trigger_interrupt15();
            break;
        case 16:
            trigger_interrupt16();
            break;
        case 17:
            trigger_interrupt17();
            break;
        case 18:
            trigger_interrupt18();
            break;
        case 19:
            trigger_interrupt19();
            break;
        case 20:
            trigger_interrupt20();
            break;
        case 21:
            trigger_interrupt21();
            break;
        case 22:
            trigger_interrupt22();
            break;
        case 23:
            trigger_interrupt23();
            break;
        case 24:
            trigger_interrupt24();
            break;
        case 25:
            trigger_interrupt25();
            break;
        case 26:
            trigger_interrupt26();
            break;
        case 27:
            trigger_interrupt27();
            break;
        case 28:
            trigger_interrupt28();
            break;
        case 29:
            trigger_interrupt29();
            break;
        case 30:
            trigger_interrupt30();
            break;
        case 31:
            trigger_interrupt31();
            break;
        case 32:
            trigger_interrupt32();
            break;
        case 33:
            trigger_interrupt33();
            break;
        case 34:
            trigger_interrupt34();
            break;
        case 35:
            trigger_interrupt35();
            break;
        case 36:
            trigger_interrupt36();
            break;
        case 37:
            trigger_interrupt37();
            break;
        case 38:
            trigger_interrupt38();
            break;
        case 39:
            trigger_interrupt39();
            break;
        case 40:
            trigger_interrupt40();
            break;
        case 41:
            trigger_interrupt41();
            break;
        case 42:
            trigger_interrupt42();
            break;
        case 43:
            trigger_interrupt43();
            break;
        case 44:
            trigger_interrupt44();
            break;
        case 45:
            trigger_interrupt45();
            break;
        case 46:
            trigger_interrupt46();
            break;
        case 47:
            trigger_interrupt47();
            break;
        }
    }

    void InterruptManager::enableInterrupts()
    {
        asm volatile("sti");
    }

    void InterruptManager::disableInterrupts()
    {
        asm volatile("cli");
    }

} // namespace Kernel

extern "C" void isr_handler(Kernel::InterruptFrame *frame)
{
    Kernel::InterruptManager::handleInterrupt(*frame);
    halt();
}

// extern "C" void irq_handler(Kernel::InterruptFrame *frame)
// {
//     Kernel::InterruptManager::handleInterrupt(*frame);
//     if (frame->interrupt_number >= 40)
//     {
//         port_out_byte(0xA0, 0x20); // Send EOI to slave PIC
//     }
//     port_out_byte(0x20, 0x20); // Send EOI to master PIC
// }

extern "C" void master_irq_handler(Kernel::InterruptFrame *frame)
{
    Kernel::InterruptManager::handleInterrupt(*frame);
    port_out_byte(0x20, 0x20); // EOI to master
}

extern "C" void slave_irq_handler(Kernel::InterruptFrame *frame)
{
    Kernel::InterruptManager::handleInterrupt(*frame);
    port_out_byte(0xA0, 0x20); // EOI to slave
    port_out_byte(0x20, 0x20); // EOI to master
}