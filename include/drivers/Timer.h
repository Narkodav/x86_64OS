#ifndef TIMER_H
#define TIMER_H

#include "../utils/Types.h"
#include "../utils/StateTracker.h"
#include "../utils/RollingWindow.h"
#include "InterruptManager.h"

namespace Kernel
{
    class Timer
    {
    private:
        static inline const float s_frequency = 1000.f; // Hz
        static inline volatile uint64_t s_systicks;

    public:
        static void initialise();

        static uint64_t getSystemTicks()
        {
            return s_systicks;
        }

    private:
        static void interruptHandler(InterruptFrame &frame);
    };

}

#endif // TIMER_H