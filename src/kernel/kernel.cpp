#include "../../include/Types.h"
#include "../../include/InterruptManager.h"
#include "../../include/Console.h"
#include "../../include/MemoryMap.h"

extern "C" void __cxa_pure_virtual()
{
    while (1)
        ;
}

// void* operator new(size_t size) { return nullptr; }
// void* operator new[](size_t size) { return nullptr; }
// void operator delete(void* ptr) { }
// void operator delete(void* ptr, size_t) { }
// void operator delete[](void* ptr) { }

uint8_t counter = 0;

void function(size_t &counter, size_t &limit)
{
    Kernel::Console::putString("function\n");
    if (counter < limit)
        function(++counter, limit);
}

void handleTimerInterrupt(Kernel::InterruptFrame &frame)
{
    using namespace Kernel;
    // Console::putString("Timer Interrupt\n");
}

void handleKeyboardInterrupt(Kernel::InterruptFrame &frame)
{
    using namespace Kernel;
    uint8_t scancode = inByte(0x60);
    Console::putString("Key pressed: ");
    Console::putNumBin(scancode);
    Console::putChar('\n');
}

extern "C" void kernel_main(uint64_t multibootInfoAddr)
{
    using namespace Kernel;

    // Test basic functionality
    // Console::clear();
    // Console::putString("64-bit Kernel Booted Successfully!\n");
    // Console::putString("VGA Console is working!\n",
    //                    Console::Attributes::GreenOnBlack);

    // // Test colors
    // Console::putString("Error message\n",
    //                    Console::Attributes::WhiteOnRed);

    // for (size_t i = 0; i < Console::getWindowCapacity(); ++i)
    //     Console::writeChar(i, '\0', Console::Attributes::BlackOnBlack);
    // Console::setCursor({0, 0});

    // Console::clear();

    // Console::putString("64-bit Kernel Booted Successfully!\n");
    // Console::setCursor({0, 0});
    // Console::putString("Error message\n",
    //                    Console::Attributes::WhiteOnRed);

    Console::clear();

    Console::print("Stack bottom: %x\n", stack_bottom);
    Console::print("Stack top: %x\n", stack_top);
    Console::print("Stack size: %x\n", stack_top - stack_bottom);

    InterruptManager::initialize();
    InterruptManager::registerInterruptCallback(
        InterruptManager::InterruptVector::irqKeyboard,
        handleKeyboardInterrupt);
    InterruptManager::registerInterruptCallback(
        InterruptManager::InterruptVector::irqSystemTimer,
        handleTimerInterrupt);

    auto kernelHeap = MemoryMap::initialise(multibootInfoAddr);

    Console::print("64-bit Kernel Booted Successfully!\n");

    size_t **dynamicDatas = kernelHeap.allocate<size_t *>(12);
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
    while (1)
    {
        // uint8_t status = inByte(0x64);
        // if (status & 0x01)
        // {
        //     uint8_t scancode = inByte(0x60);
        //     Console::putString("Status: ");
        //     Console::putNumBin(status);
        //     Console::putChar('\n');
        //     Console::putString("Scancode: ");
        //     Console::putNumBin(scancode);
        //     Console::putChar('\n');
        // }
    }
}