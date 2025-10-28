#include "../../include/Timer.h"

namespace Kernel
{
    void Timer::initialise()
    {
        s_systicks = 0;

        InterruptManager::registerInterruptCallback(
            InterruptManager::InterruptVector::irqSystemTimer, interruptHandler);

        port_out_byte(0x43, 0x36);
        uint16_t divisor = 1193182 / s_frequency;
        port_out_byte(0x40, divisor & 0xFF);        // Low byte first
        port_out_byte(0x40, (divisor >> 8) & 0xFF); // High byte second
    }

    void Timer::interruptHandler(InterruptFrame &frame)
    {
        ++s_systicks;
    }

}