#include "../../include/utils/Types.h"
#include "../../include/drivers/InterruptManager.h"
#include "../../include/drivers/Console.h"
#include "../../include/kernel/MemoryMap.h"
#include "../../include/drivers/Keyboard.h"
#include "../../include/drivers/Timer.h"
#include "../../include/kernel/KernelData.h"
#include "../../include/kernel/UserProcessManager.h"
#include "../../include/user_code/SomeCode.h"
#include "../../include/kernel/SystemCallManager.h"

extern "C" void __cxa_pure_virtual()
{
    while (1)
        ;
}

extern "C" void kernel_main(uint64_t multibootInfoAddr)
{
    using namespace Kernel;

    Console::clear();

    // Console::print("Kernel start address: %p\n", reinterpret_cast<void *>(__kernel_start));
    // Console::print("Start address: %p\n", reinterpret_cast<void *>(start));

    // Console::print("Stack bottom: %p\n", stack_bottom);
    // Console::print("Stack top: %p\n", stack_top);
    // Console::print("Stack size: %x\n", reinterpret_cast<uint64_t>(reinterpret_cast<void *>(stack_top - stack_bottom)));

    InterruptManager::initialize();
    Keyboard::initialise();
    Timer::initialise();
    SystemCallManager::initialise();

    MemoryMap::initialise(multibootInfoAddr, s_kernelHeap);
    Console::print("Availible heap size: %d\n", s_kernelHeap.availibleSize());

    Console::print("64-bit Kernel Booted Successfully!\n");

    Console::print("Executing user process\n");
    InterruptManager::enableInterrupts();

    int result = 3;
    result = UserProcessManager::executeUserProcess(user_main);

    Console::print("User process result: %d\n", result);
    // InterruptManager::disableInterrupts();
    // InterruptManager::enableInterrupts();

    // InterruptManager::triggerInterrupt(InterruptManager::InterruptVector::debug);

    Keyboard::Event event;

    while (1)
    {
        while (Keyboard::popEvent(event))
        {
            if (event.getKey() == Keyboard::Key::ArrowUp && event.getFlags().get(Keyboard::Event::Flag::Pressed))
            {
                // Console::print("Scroll up\n");
                Console::scrollUp(1);
            }
            else if (event.getKey() == Keyboard::Key::ArrowDown && event.getFlags().get(Keyboard::Event::Flag::Pressed))
            {
                // Console::print("Scroll down\n");
                Console::scrollDown(1);
            }
        }
    }
}