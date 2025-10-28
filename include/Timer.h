#ifndef TIMER_H
#define TIMER_H

#include "Types.h"
#include "InterruptManager.h"
#include "StateTracker.h"
#include "RollingWindow.h"

namespace Kernel
{
    class Timer
    {
    private:
        static inline volatile uint64_t s_systicks;
        static inline const float s_frequency = 1000.f; // Hz

    public:
        static void initialise();

        uint64_t getSystemTime()
        {
            return s_systicks;
        }

    private:
        static void interruptHandler(InterruptFrame &frame);
    };

}

#endif // TIMER_H