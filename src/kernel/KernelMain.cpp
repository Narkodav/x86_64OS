#include "../../include/drivers/InterruptManager.h"
#include "../../include/drivers/Console.h"
#include "../../include/kernel/MemoryMap.h"
#include "../../include/drivers/Keyboard.h"
#include "../../include/drivers/Timer.h"
#include "../../include/kernel/KernelData.h"
#include "../../include/kernel/UserProcessManager.h"
#include "../../include/user_code/SomeCode.h"
#include "../../include/kernel/SystemCallManager.h"

#include "../../include/utils/Types.h"
#include "../../include/utils/Array.h"

extern "C" void __cxa_pure_virtual()
{
    while (1)
        ;
}

extern "C" void kernel_main(uint64_t multibootInfoAddr)
{
    using namespace Kernel;
    Console::clear();

    InterruptManager::initialize();

    MemoryMap::initialise(multibootInfoAddr, s_kernelHeap);
    Console::print("Availible heap size: %d\n", s_kernelHeap.availibleSize());
    Console::print("Memory map configured\n", Console::Attributes::CyanOnBlack);

    Keyboard::initialise();
    Timer::initialise();
    InterruptManager::enableInterrupts();

    SystemCallManager::initialise();

    Console::print("64-bit Kernel Booted Successfully!\n", Console::Attributes::LightGreenOnBlack);

    Console::print("Executing user process\n");

    int result = 3;
    result = UserProcessManager::executeUserProcess(user_main);
    Console::print("User process result: %d\n", result);

    Keyboard::Event event;
    uint64_t ticks = 0;

    while (1)
    {
        while (Keyboard::popEvent(event))
        {
            if (event.getKey() == Keyboard::Key::ArrowUp && event.getFlags().get(Keyboard::Event::Flag::Pressed))
            {
                Console::scrollUp(1);
            }
            else if (event.getKey() == Keyboard::Key::ArrowDown && event.getFlags().get(Keyboard::Event::Flag::Pressed))
            {
                Console::scrollDown(1);
            }
        }
    }
    halt();
}