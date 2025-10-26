#ifndef MEMORY_MAP_H
#define MEMORY_MAP_H
#include "Types.h"
#include "Console.h"
#include "Heap.h"
#include "Utils.h"

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

    extern void load_page_tables(uint64_t *pml4_physical);
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

        enum class PageFlags : uint64_t
        {
            Present = 0x1,
            Writable = 0x2,
            User = 0x4,
            WriteThrough = 0x8,
            CacheDisable = 0x10,
            Accessed = 0x20,
            Dirty = 0x40,
            Huge = 0x80,
            Global = 0x100,
            NoExecute = 0x8000000000000000ULL,

            Kernel = (Present | Writable),
            UserRw = (Present | Writable | User),
            UserRo = (Present | User),
        };

    private:
        static const char *s_multibootTagNames[static_cast<uint32_t>(TagType::Num)];
        static const char *s_multibootMemoryTypeNames[static_cast<uint32_t>(MultibootMemoryType::Num)];
        static inline const uint64_t s_1B = 1;             // 1 B
        static inline const uint64_t s_1KB = s_1B * 1024;  // 1 KB
        static inline const uint64_t s_1MB = s_1KB * 1024; // 1 KB
        static inline const uint64_t s_1GB = s_1MB * 1024; // 1 KB
        static inline const uint64_t s_1TB = s_1GB * 1024; // 1 KB

        static const KernelMemoryRegion s_kernelMemoryRegion;

        static MultibootHeader *s_multibootHeader;
        static MultibootTagMmap *s_multibootMmapTag; // the memory map tag
        static uint64_t s_kernelEndDynamic;          // the memory map tag

        // this is an array stored in the first availible memory region
        // these regions will be used by the os for dynamic allocation

        static MultibootMmapEntry **s_availibleRegionEntries; // first one is kernel reserved
        static uint64_t s_availibleRegionCount;

    public:
        static void initialise(uint64_t multibootInfoAddr, HeapLinkedList &heap);

        // x86-64 Virtual Address Breakdown (48-bit addressing):
        // [63:48] - Sign extension (unused, must match bit 47)
        // [47:39] - PML4 index  (9 bits, 512 entries) - Level 1
        // [38:30] - PDPT index  (9 bits, 512 entries) - Level 2
        // [29:21] - PD index    (9 bits, 512 entries) - Level 3
        // [20:12] - PT index    (9 bits, 512 entries) - Level 4
        // [11:0]  - Page offset (12 bits, 4KB pages)

        // For 2MB pages (skip PT level):
        // [47:39] - PML4 index  (9 bits)
        // [38:30] - PDPT index  (9 bits)
        // [29:21] - PD index    (9 bits)
        // [20:0]  - Page offset (21 bits, 2MB pages)

        // For 1GB pages (skip PD and PT levels):
        // [47:39] - PML4 index  (9 bits)
        // [38:30] - PDPT index  (9 bits)
        // [29:0]  - Page offset (30 bits, 1GB pages)

        static void map128TbIdentity(uint64_t *PML4, uint64_t *PDPT, uint32_t flags = 0);

    private:
        static void parseMemoryMapTag(HeapLinkedList &heap);

        static bool supportsGb1Pages();
    };
}

#endif
