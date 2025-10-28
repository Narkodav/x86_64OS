#include "../../include/Types.h"
#include "../../include/InterruptManager.h"
#include "../../include/Console.h"
#include "../../include/MemoryMap.h"
#include "../../include/Keyboard.h"
#include "../../include/Timer.h"

extern "C" void __cxa_pure_virtual()
{
    while (1)
        ;
}

extern "C" void halt();
extern "C" void start();

// void* operator new(size_t size) { return nullptr; }
// void* operator new[](size_t size) { return nullptr; }
// void operator delete(void* ptr) { }
// void operator delete(void* ptr, size_t) { }
// void operator delete[](void* ptr) { }

uint8_t counter = 0;

void handleTimerInterrupt(Kernel::InterruptFrame &frame)
{
    using namespace Kernel;
    // Console::putString("Timer Interrupt\n");
}

extern "C" void kernel_main(uint64_t multibootInfoAddr)
{
    using namespace Kernel;

    Console::clear();

    Console::print("Kernel start address: %p\n", reinterpret_cast<void *>(__kernel_start));
    Console::print("Start address: %p\n", reinterpret_cast<void *>(start));

    Console::print("Stack bottom: %p\n", stack_bottom);
    Console::print("Stack top: %p\n", stack_top);
    Console::print("Stack size: %x\n", reinterpret_cast<uint64_t>(reinterpret_cast<void *>(stack_top - stack_bottom)));

    InterruptManager::initialize();
    Keyboard::initialise();
    Timer::initialise();

    InterruptManager::registerInterruptCallback(
        InterruptManager::InterruptVector::irqSystemTimer,
        handleTimerInterrupt);

    HeapLinkedList kernelHeap;
    MemoryMap::initialise(multibootInfoAddr, kernelHeap);

    Console::print("64-bit Kernel Booted Successfully!\n");

    size_t **dynamicDatas = kernelHeap.allocate<size_t *>(12);

    Console::print("Allocated memory: %p\n", dynamicDatas);

    if (dynamicDatas == nullptr)
    {
        Console::print("Failed to allocate memory\n");
        while (1)
            ;
    }
    for (size_t i = 0; i < 12; ++i)
    {
        dynamicDatas[i] = kernelHeap.allocate<size_t>(100);
        for (size_t j = 0; j < 100; ++j)
            dynamicDatas[i][j] = i;
    }
    kernelHeap.printBlocks();
    for (size_t i = 0; i < 12; ++i)
    {
        kernelHeap.free(dynamicDatas[i]);
    }
    kernelHeap.free(dynamicDatas);

    Console::print("\n");
    kernelHeap.printBlocks();

    Keyboard::Event event;

    while (1)
    {
        while (Keyboard::popEvent(event))
        {
            if (event.getKey() == Keyboard::Key::ArrowUp)
            {
                Console::scrollUp(1);
            }
            else if (event.getKey() == Keyboard::Key::ArrowDown)
            {
                Console::scrollDown(1);
            }
        }
    }
}