#ifndef MEMORY_MAP_H
#define MEMORY_MAP_H
#include "Types.h"
#include "Console.h"
#include "Heap.h"

extern "C"
{
    extern uint8_t stack_bottom[];
    extern uint8_t stack_top[];

    extern uint8_t __kernel_start[];
    extern uint8_t __kernel_end[];

    extern uint8_t __multiboot_header_start[];
    extern uint8_t __multiboot_header_end[];

    extern uint8_t __text_start[];
    extern uint8_t __text_end[];

    extern uint8_t __data_start[];
    extern uint8_t __data_end[];

    extern uint8_t __rodata_start[];
    extern uint8_t __rodata_end[];

    extern uint8_t __bss_start[];
    extern uint8_t __bss_end[];
}

namespace Kernel
{
    // maps the RAM, the allocator uses it to obtain availible memory regions
    class MemoryMap
    {
    private:
        struct MultibootHeader
        {
            uint32_t totalSize;
            uint32_t reserved;
        } __attribute__((packed));

        // Tag types
        enum class TagType : uint32_t
        {
            End = 0,
            Cmdline = 1,
            BootLoaderName = 2,
            Module = 3,
            BasicMeminfo = 4,
            Bootdev = 5,
            Mmap = 6,
            Vbe = 7,
            Framebuffer = 8,
            EfiMemmap = 9,
            EfiBootServices = 10,
            EfiAcpi = 11,
            EfiMemmap2 = 12,
            Smbios = 13,
            OemStrings = 14,
            AcpiOld = 15,
            AcpiNew = 16,
            Nvram = 17,
            EfiMemmap3 = 18,
            EfiMemmap4 = 19,
            LoadbaseAddr = 20,
            Num = 21
        };

        struct MultibootTag
        {
            TagType type;
            uint32_t size;
        } __attribute__((packed));

        struct MultibootTagMmap
        {
            MultibootTag tag;
            uint32_t entrySize;
            uint32_t entryVersion;
        } __attribute__((packed));

        enum class MultibootMemoryType : uint32_t
        {
            Available = 1,
            Reserved = 2,
            AcpiReclaimable = 3,
            Nvs = 4,
            BadRam = 5,
            Num = 6
        };

        struct MultibootMmapEntry
        {
            uint64_t addr;
            uint64_t len;
            MultibootMemoryType type;
            uint32_t zero;
        } __attribute__((packed));

    public:
        struct AvailibleMemoryRegion
        {
            uint64_t startAddr;
            uint64_t length;
        };

        struct KernelMemoryRegion
        {
            uint64_t kernelStartAddr;
            uint64_t kernelEndAddr;

            uint64_t multibootHeaderStartAddr;
            uint64_t multibootHeaderEndAddr;

            uint64_t textStartAddr;
            uint64_t textEndAddr;

            uint64_t dataStartAddr;
            uint64_t dataEndAddr;

            uint64_t rodataStartAddr;
            uint64_t rodataEndAddr;

            uint64_t bssStartAddr;
            uint64_t bssdataEndAddr;

            uint64_t stackTopAddr;
            uint64_t stackBottomAddr;
        };

    private:
        static const char *s_multibootTagNames[static_cast<uint32_t>(TagType::Num)];
        static const char *s_multibootMemoryTypeNames[static_cast<uint32_t>(MultibootMemoryType::Num)];

        static inline const KernelMemoryRegion s_kernelMemoryRegion = {
            .kernelStartAddr = reinterpret_cast<uint64_t>(__kernel_start),
            .kernelEndAddr = reinterpret_cast<uint64_t>(__kernel_end),

            .multibootHeaderStartAddr = reinterpret_cast<uint64_t>(__multiboot_header_start),
            .multibootHeaderEndAddr = reinterpret_cast<uint64_t>(__multiboot_header_end),

            .textStartAddr = reinterpret_cast<uint64_t>(__text_start),
            .textEndAddr = reinterpret_cast<uint64_t>(__text_end),

            .dataStartAddr = reinterpret_cast<uint64_t>(__data_start),
            .dataEndAddr = reinterpret_cast<uint64_t>(__data_end),

            .rodataStartAddr = reinterpret_cast<uint64_t>(__rodata_start),
            .rodataEndAddr = reinterpret_cast<uint64_t>(__rodata_end),

            .bssStartAddr = reinterpret_cast<uint64_t>(__bss_start),
            .bssdataEndAddr = reinterpret_cast<uint64_t>(__bss_end),

            .stackTopAddr = reinterpret_cast<uint64_t>(stack_top),
            .stackBottomAddr = reinterpret_cast<uint64_t>(stack_bottom)};

        static inline MultibootHeader *s_multibootHeader = nullptr;
        static inline MultibootTagMmap *s_multibootMmapTag = nullptr; // the memory map tag

        // this is an array stored in the first availible memory region
        // these regions will be used by the os for dynamic allocation

        static inline AvailibleMemoryRegion *s_availibleRegions; // first one is kernel reserved
        static inline uint64_t s_availibleRegionCount;

    public:
        static HeapLinkedList initialise(uint64_t multibootInfoAddr);

    private:
        static HeapLinkedList parseMemoryMapTag();
    };
}

#endif
