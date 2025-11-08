#ifndef MOUSE_H
#define MOUSE_H

#include "../utils/Types.h"
#include "../utils/StateTracker.h"
#include "../utils/RollingWindow.h"
#include "InterruptManager.h"

namespace Kernel
{
    class Mouse
    {
    private:
        static inline uint8_t s_cycle = 0;
        static inline uint8_t s_mouseBytes[3];

    public:
        static void initialise();

    private:
        static void interruptHandler(InterruptFrame &frame);
    };

}

#endif // MOUSE_H