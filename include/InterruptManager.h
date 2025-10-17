#ifndef INTERRUPT_MANAGER_H
#define INTERRUPT_MANAGER_H
#include "Types.h"
#include "Console.h"
#include "Utils.h"

namespace Kernel
{

    struct InterruptFrame
    {
        // Registers we push (in reverse order of pushing)
        uint64_t r15, r14, r13, r12, r11, r10, r9, r8;
        uint64_t rbp, rdi, rsi, rdx, rcx, rbx, rax;

        // Values we push before calling handler
        uint64_t interrupt_number;
        uint64_t error_code; // Real or dummy

        // CPU pushes these automatically (in this order)
        uint64_t rip;
        uint64_t cs;
        uint64_t rflags;
        uint64_t rsp;
        uint64_t ss;
    } __attribute__((packed));

    struct IDTEntry
    {
        uint16_t isrLow;    // The lower 16 bits of the ISR's address
        uint16_t kernelCs;  // The GDT segment selector that the CPU will load into CS before calling the ISR
        uint8_t ist;        // The IST in the TSS that the CPU will load into RSP; set to zero for now
        uint8_t attributes; // Type and attributes; see the IDT page
        uint16_t isrMid;    // The higher 16 bits of the lower 32 bits of the ISR's address
        uint32_t isrHigh;   // The higher 32 bits of the ISR's address
        uint32_t reserved;  // Set to zero
    } __attribute__((packed));

    struct IDTPtr
    {
        uint16_t limit;
        uint64_t base;
    } __attribute__((packed));

    using InterruptHandler = void (*)(InterruptFrame &);
}

extern "C"
{
    // These are defined in interrupts.asm
    __attribute__((used, noinline)) extern void
    isr_handler(Kernel::InterruptFrame *frame);

    __attribute__((used, noinline)) extern void
    irq_handler(Kernel::InterruptFrame *frame);

    // hardware exceptions
    __attribute__((used, noinline)) extern void isr0();
    __attribute__((used, noinline)) extern void isr1();
    __attribute__((used, noinline)) extern void isr2();
    __attribute__((used, noinline)) extern void isr3();
    __attribute__((used, noinline)) extern void isr4();
    __attribute__((used, noinline)) extern void isr5();
    __attribute__((used, noinline)) extern void isr6();
    __attribute__((used, noinline)) extern void isr7();
    __attribute__((used, noinline)) extern void isr8();
    __attribute__((used, noinline)) extern void isr9();
    __attribute__((used, noinline)) extern void isr10();
    __attribute__((used, noinline)) extern void isr11();
    __attribute__((used, noinline)) extern void isr12();
    __attribute__((used, noinline)) extern void isr13();
    __attribute__((used, noinline)) extern void isr14();
    __attribute__((used, noinline)) extern void isr15();
    __attribute__((used, noinline)) extern void isr16();
    __attribute__((used, noinline)) extern void isr17();
    __attribute__((used, noinline)) extern void isr18();
    __attribute__((used, noinline)) extern void isr19();
    __attribute__((used, noinline)) extern void isr20();
    __attribute__((used, noinline)) extern void isr21();
    __attribute__((used, noinline)) extern void isr22();
    __attribute__((used, noinline)) extern void isr23();
    __attribute__((used, noinline)) extern void isr24();
    __attribute__((used, noinline)) extern void isr25();
    __attribute__((used, noinline)) extern void isr26();
    __attribute__((used, noinline)) extern void isr27();
    __attribute__((used, noinline)) extern void isr28();
    __attribute__((used, noinline)) extern void isr29();
    __attribute__((used, noinline)) extern void isr30();
    __attribute__((used, noinline)) extern void isr31();

    // interrupt requests
    __attribute__((used, noinline)) extern void irq0();
    __attribute__((used, noinline)) extern void irq1();
    __attribute__((used, noinline)) extern void irq2();
    __attribute__((used, noinline)) extern void irq3();
    __attribute__((used, noinline)) extern void irq4();
    __attribute__((used, noinline)) extern void irq5();
    __attribute__((used, noinline)) extern void irq6();
    __attribute__((used, noinline)) extern void irq7();
    __attribute__((used, noinline)) extern void irq8();
    __attribute__((used, noinline)) extern void irq9();
    __attribute__((used, noinline)) extern void irq10();
    __attribute__((used, noinline)) extern void irq11();
    __attribute__((used, noinline)) extern void irq12();
    __attribute__((used, noinline)) extern void irq13();
    __attribute__((used, noinline)) extern void irq14();
    __attribute__((used, noinline)) extern void irq15();

    extern const uint16_t gdt64_code_segment;
}

namespace Kernel
{
    class InterruptManager
    {
    public:
        enum class InterruptVector : uint8_t
        {
            // Exceptions (0-31)
            divideByZero = 0,
            debug = 1,
            nonMaskableInterrupt = 2,
            breakpoint = 3,
            overflow = 4,
            boundRangeExceeded = 5,
            invalidOpcode = 6,
            deviceNotAvailable = 7,
            doubleFault = 8,
            coprocessorSegmentOverrun = 9,
            invalidTss = 10,
            segmentNotPresent = 11,
            stackSegmentFault = 12,
            generalProtectionFault = 13,
            pageFault = 14,
            reserved15 = 15,
            x87FloatingPointException = 16,
            alignmentCheck = 17,
            machineCheck = 18,
            simdFloatingPointException = 19,
            virtualizationException = 20,
            controlProtectionException = 21,
            reserved22 = 22,
            reserved23 = 23,
            reserved24 = 24,
            reserved25 = 25,
            reserved26 = 26,
            reserved27 = 27,
            hypervisorInjectionException = 28,
            vmmCommunicationException = 29,
            securityException = 30,
            reserved31 = 31,

            // Hardware IRQs (32-47)
            irqSystemTimer = 32,   // IRQ0
            irqKeyboard = 33,      // IRQ1
            irqCascade = 34,       // IRQ2
            irqCom2 = 35,          // IRQ3
            irqCom1 = 36,          // IRQ4
            irqLpt2 = 37,          // IRQ5
            irqFloppyDisk = 38,    // IRQ6
            irqLpt1 = 39,          // IRQ7
            irqRealTimeClock = 40, // IRQ8
            irqAcpi = 41,          // IRQ9
            irqAvailable10 = 42,   // IRQ10
            irqAvailable11 = 43,   // IRQ11
            irqPs2Mouse = 44,      // IRQ12
            irqFpu = 45,           // IRQ13
            irqPrimaryAta = 46,    // IRQ14
            irqSecondaryAta = 47   // IRQ15
        };

    private:
        friend void ::isr_handler(Kernel::InterruptFrame *frame);
        friend void ::irq_handler(Kernel::InterruptFrame *frame);

        using IsrPtr_t = void (*)();

        static inline const uint8_t s_entryFlags = 0x8E;
        static inline const size_t s_tableSize = 256;
        static inline const size_t s_exceptionCount = 32;
        static inline const size_t s_interruptCount = 16;

        volatile static const char *s_exceptionMessages[s_exceptionCount];

        __attribute__((aligned(0x10))) static IDTEntry s_idtEntries[s_tableSize];
        static IDTPtr s_idtPtr;

        volatile static InterruptHandler s_interruptHandlers[s_tableSize];

    public:
        static void initialize();
        static void registerInterruptCallback(uint8_t index, InterruptHandler handler);
        static void registerInterruptCallback(InterruptVector intVector, InterruptHandler handler);

    private:
        static void setIdtGate(uint8_t index, IsrPtr_t interruptServiceRoutine,
                               uint8_t interruptStackTable, uint8_t flags);
        static void setupIdt();
        static void loadIdt();
        static void remapPic();
        static inline void handleInterrupt(InterruptFrame &frame);
        static void handleException(InterruptFrame &frame);
    };

} // namespace Kernel

#endif // INTERRUPT_MANAGER_H