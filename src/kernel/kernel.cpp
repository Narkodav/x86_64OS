#include "../../include/utils/Types.h"
#include "../../include/kernel/InterruptManager.h"
#include "../../include/kernel/Console.h"
#include "../../include/kernel/MemoryMap.h"
#include "../../include/kernel/Keyboard.h"
#include "../../include/kernel/Timer.h"
#include "../../include/kernel/KernelData.h"

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

    MemoryMap::initialise(multibootInfoAddr, s_kernelHeap);

    Console::print("64-bit Kernel Booted Successfully!\n");

    size_t **dynamicDatas = s_kernelHeap.allocate<size_t *>(12);

    Console::print("Allocated memory: %p\n", dynamicDatas);

    if (dynamicDatas == nullptr)
    {
        Console::print("Failed to allocate memory\n");
        while (1)
            ;
    }
    for (size_t i = 0; i < 12; ++i)
    {
        dynamicDatas[i] = s_kernelHeap.allocate<size_t>(100);
        for (size_t j = 0; j < 100; ++j)
            dynamicDatas[i][j] = i;
    }
    s_kernelHeap.printBlocks();
    for (size_t i = 0; i < 12; ++i)
    {
        s_kernelHeap.free(dynamicDatas[i]);
    }
    s_kernelHeap.free(dynamicDatas);

    Console::print("\n");
    s_kernelHeap.printBlocks();

    Keyboard::Event event;

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
}