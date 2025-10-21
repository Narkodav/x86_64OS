#include "../../include/MemoryMap.h"

namespace Kernel
{
    const char *MemoryMap::s_multibootTagNames[static_cast<uint32_t>(TagType::Num)] = {
        "End",               // 0
        "Cmdline",           // 1
        "Bootloader name",   // 2
        "Module",            // 3
        "Basic memory info", // 4
        "Boot device",       // 5
        "Memory map",        // 6
        "VBE info",          // 7
        "Framebuffer info",  // 8
        "EFI memory map",    // 9
        "EFI boot services", // 10
        "EFI ACPI table",    // 11
        "EFI memory map v2", // 12
        "SMBIOS tables",     // 13
        "OEM strings",       // 14
        "ACPI old RSDP",     // 15
        "ACPI new RSDP",     // 16
        "NVRAM",             // 17
        "EFI memory map v3", // 18
        "EFI memory map v4", // 19
        "Load base address", // 20
    };

    const char *MemoryMap::s_multibootMemoryTypeNames[static_cast<uint32_t>(MultibootMemoryType::Num)] = {
        "Unknown",
        "Available",
        "Reserved",
        "ACPI Reclaim",
        "ACPI NVS",
        "Bad RAM"};

    const MemoryMap::KernelMemoryRegion MemoryMap::s_kernelMemoryRegion = {
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

    MemoryMap::MultibootHeader *MemoryMap::s_multibootHeader = nullptr;
    MemoryMap::MultibootTagMmap *MemoryMap::s_multibootMmapTag = nullptr; // the memory map tag
    uint64_t MemoryMap::s_kernelEndDynamic;

    // this is an array stored in the first availible memory region
    // these regions will be used by the os for dynamic allocation
    MemoryMap::MultibootMmapEntry **MemoryMap::s_availibleRegionEntries; // first one is kernel reserved
    uint64_t MemoryMap::s_availibleRegionCount;

    void MemoryMap::initialise(uint64_t multibootInfoAddr, HeapLinkedList &heap)
    {
        Console::print("Memory Map : Initialising\n");

        Console::print("Kernel memory region:\n");
        Console::print("  Start: %x\n", s_kernelMemoryRegion.kernelStartAddr);
        Console::print("  End:   %x\n", s_kernelMemoryRegion.kernelEndAddr);
        Console::print("  Size:  %d B\n", s_kernelMemoryRegion.kernelEndAddr - s_kernelMemoryRegion.kernelStartAddr);

        Console::print("Multiboot info address: %x\n", multibootInfoAddr);
        s_multibootHeader = reinterpret_cast<MultibootHeader *>(multibootInfoAddr);
        MultibootTag *tag = reinterpret_cast<MultibootTag *>(multibootInfoAddr + sizeof(MultibootHeader));

        if (s_kernelMemoryRegion.kernelEndAddr < reinterpret_cast<uint64_t>(s_multibootHeader + s_multibootHeader->totalSize))
        {
            s_kernelEndDynamic = reinterpret_cast<uint64_t>(s_multibootHeader + s_multibootHeader->totalSize);
        }
        else
            s_kernelEndDynamic = s_kernelMemoryRegion.kernelEndAddr;

        Console::print("Multiboot header end: %p\n", s_multibootHeader + s_multibootHeader->totalSize);

        while (tag->type != TagType::End)
        {
            Console::print("Memory Map : Tag %d (%s)\n",
                           static_cast<uint32_t>(tag->type),
                           s_multibootTagNames[static_cast<uint32_t>(tag->type)]);

            if (tag->type == TagType::Mmap)
            {
                s_multibootMmapTag = reinterpret_cast<MultibootTagMmap *>(tag);
                parseMemoryMapTag(heap);
                break;
            }
            // Move to next tag (aligned to 8 bytes)
            tag = reinterpret_cast<MultibootTag *>(reinterpret_cast<uint8_t *>(tag) + ((tag->size + 7) & ~7));
        }
        if (s_multibootMmapTag == nullptr)
        {
            Console::print("Memory Map : No memory map tag found\n");
        }
    }

    void MemoryMap::parseMemoryMapTag(HeapLinkedList &heap)
    {
        s_availibleRegionCount = 0;
        s_availibleRegionEntries = reinterpret_cast<MultibootMmapEntry **>((s_kernelEndDynamic + 7) & ~7);

        // Calculate number of entries
        uint32_t dataSize = s_multibootMmapTag->tag.size - sizeof(MultibootTagMmap);
        uint32_t entrySize = s_multibootMmapTag->entrySize;
        uint32_t entryCount = dataSize / entrySize;

        Console::print("Memory Map : %d entries, entry size: %d\n", entryCount, entrySize);

        size_t regionAfterKernel = 0;

        MultibootMmapEntry *entry = reinterpret_cast<MultibootMmapEntry *>(s_multibootMmapTag + 1);
        Console::print("Entry storage ptr: %p\n", &entry);

        uint32_t i = 0;
        for (; i < entryCount; ++i)
        {
            Console::print("Entry ptr: %p\n", entry);
            Console::print("s_availibleRegions ptr: %p\n", s_availibleRegionEntries);
            Console::print("s_availibleRegions ptr ptr: %p\n", &s_availibleRegionEntries);
            Console::print("s_availibleRegionCount ptr: %p\n", &s_availibleRegionCount);

            if (entry->type == MultibootMemoryType::Available)
            {
                s_availibleRegionEntries[s_availibleRegionCount] = entry;
                if (entry->addr <= s_kernelEndDynamic)
                    regionAfterKernel = s_availibleRegionCount;
            }
            if (entry->len < 1024)
                Console::print("Region %d: %x - %x (%d B) [%s]\n",
                               i, entry->addr, entry->addr + entry->len,
                               entry->len,
                               s_multibootMemoryTypeNames[static_cast<uint32_t>(entry->type)]);
            else if (entry->len < 1024 * 1024)
                Console::print("Region %d: %x - %x (%d KB) [%s]\n",
                               i, entry->addr, entry->addr + entry->len,
                               entry->len / 1024,
                               s_multibootMemoryTypeNames[static_cast<uint32_t>(entry->type)]);
            else if (entry->len < 1024 * 1024 * 1024)
                Console::print("Region %d: %x - %x (%d MB) [%s]\n",
                               i, entry->addr, entry->addr + entry->len,
                               entry->len / (1024 * 1024),
                               s_multibootMemoryTypeNames[static_cast<uint32_t>(entry->type)]);
            else
                Console::print("Region %d: %x - %x (%d GB) [%s]\n",
                               i, entry->addr, entry->addr + entry->len,
                               entry->len / (1024 * 1024 * 1024),
                               s_multibootMemoryTypeNames[static_cast<uint32_t>(entry->type)]);

            // Move to next entry
            entry = reinterpret_cast<MultibootMmapEntry *>(reinterpret_cast<uint8_t *>(entry) + entrySize);
        }

        Console::print("Initilialising kernel heap\n");
        uint64_t startAddr = (reinterpret_cast<uint64_t>(s_availibleRegionEntries) + s_availibleRegionCount * sizeof(s_availibleRegionEntries) + 7) & ~7;
        uint64_t endAddr = s_availibleRegionEntries[regionAfterKernel]->len + s_availibleRegionEntries[regionAfterKernel]->addr;

        Console::print("Kernel heap start addr %x\n", startAddr);
        Console::print("Kernel heap end addr %x\n", endAddr);
        heap.initialize(reinterpret_cast<void *>(startAddr),
                        reinterpret_cast<void *>(endAddr));
    }
}