// interrupts.cpp
#include "../../include/InterruptManager.h"

namespace Kernel
{
    volatile const char *InterruptManager::s_exceptionMessages[s_exceptionCount] = {
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
        asm volatile("sti");
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
        uint8_t mask1 = inByte(0x21);
        uint8_t mask2 = inByte(0xA1);

        // Start initialization
        outByte(0x20, 0x11); // Master PIC: ICW1
        outByte(0xA0, 0x11); // Slave PIC: ICW1

        // Set vector offsets
        outByte(0x21, 0x20); // Master PIC: IRQ 0-7 → interrupts 32-39
        outByte(0xA1, 0x28); // Slave PIC: IRQ 8-15 → interrupts 40-47

        // Configure cascade
        outByte(0x21, 0x04); // Master PIC: slave at IRQ2
        outByte(0xA1, 0x02); // Slave PIC: cascade identity

        // Set mode
        outByte(0x21, 0x01); // Master PIC: 8086 mode
        outByte(0xA1, 0x01); // Slave PIC: 8086 mode

        // Restore masks
        outByte(0x21, 0x0);
        outByte(0xA1, 0x0);
    }

    void InterruptManager::initialize()
    {
        Console::print("Interrupt Manager : Initialising\n");
        setupIdt();
    }

    inline void InterruptManager::handleInterrupt(InterruptFrame &frame)
    {
        s_interruptHandlers[frame.interrupt_number](frame);

        //__asm__ __volatile__("cli; hlt");
        /*         Kernel::Console::putString(s_exceptionMessages[regs.intNo]);
                Kernel::Console::putChar('\n');

                if (regs.intNo >= 40)
                    Kernel::portByteOut(0xA0, 0x20); // slave
                Kernel::portByteOut(0x20, 0x20);     // master

                if (s_interruptHandlers[regs.intNo] != nullptr)
                    s_interruptHandlers[regs.intNo](regs); */
    }

    void InterruptManager::handleException(InterruptFrame &frame)
    {
        Kernel::Console::putString("Interrupt: ", Kernel::Console::Attributes::RedOnBlack);
        Kernel::Console::putString(s_exceptionMessages[frame.interrupt_number], Kernel::Console::Attributes::RedOnBlack);
        Kernel::Console::putChar('\n', Kernel::Console::Attributes::RedOnBlack);
        asm volatile("cli \n hlt");
    }

    void InterruptManager::registerInterruptCallback(uint8_t index, InterruptHandler handler)
    {
        s_interruptHandlers[index] = handler;
    }

    void InterruptManager::registerInterruptCallback(InterruptVector intVector, InterruptHandler handler)
    {
        s_interruptHandlers[static_cast<uint8_t>(intVector)] = handler;
    }

} // namespace Kernel

extern "C" void isr_handler(Kernel::InterruptFrame *frame)
{
    Kernel::InterruptManager::handleInterrupt(*frame);
}

extern "C" void irq_handler(Kernel::InterruptFrame *frame)
{
    Kernel::InterruptManager::handleInterrupt(*frame);
    if (frame->interrupt_number >= 40)
    {
        Kernel::outByte(0xA0, 0x20); // Send EOI to slave PIC
    }
    Kernel::outByte(0x20, 0x20); // Send EOI to master PIC
}