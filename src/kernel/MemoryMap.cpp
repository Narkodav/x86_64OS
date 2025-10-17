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

    HeapLinkedList MemoryMap::initialise(uint64_t multibootInfoAddr)
    {
        Console::print("Memory Map : Initialising\n");

        Console::print("Kernel memory region:\n");
        Console::print("  Start: %x\n", s_kernelMemoryRegion.kernelStartAddr);
        Console::print("  End:   %x\n", s_kernelMemoryRegion.kernelEndAddr);
        Console::print("  Size:  %d B\n", s_kernelMemoryRegion.kernelEndAddr - s_kernelMemoryRegion.kernelStartAddr);

        Console::print("Multiboot info address: %x\n", multibootInfoAddr);
        s_multibootHeader = reinterpret_cast<MultibootHeader *>(multibootInfoAddr);
        MultibootTag *tag = reinterpret_cast<MultibootTag *>(multibootInfoAddr + sizeof(MultibootHeader));
        HeapLinkedList heap;

        while (tag->type != TagType::End)
        {
            Console::print("Memory Map : Tag %d (%s)\n",
                           static_cast<uint32_t>(tag->type),
                           s_multibootTagNames[static_cast<uint32_t>(tag->type)]);

            if (tag->type == TagType::Mmap)
            {
                s_multibootMmapTag = reinterpret_cast<MultibootTagMmap *>(tag);
                heap = parseMemoryMapTag();
                break;
            }
            // Move to next tag (aligned to 8 bytes)
            tag = reinterpret_cast<MultibootTag *>(reinterpret_cast<uint8_t *>(tag) + ((tag->size + 7) & ~7));
        }
        if (s_multibootMmapTag == nullptr)
        {
            Console::print("Memory Map : No memory map tag found\n");
        }
        return heap;
    }

    HeapLinkedList MemoryMap::parseMemoryMapTag()
    {
        s_availibleRegionCount = 0;
        s_availibleRegions = reinterpret_cast<AvailibleMemoryRegion *>((s_kernelMemoryRegion.kernelEndAddr + 7) & ~7);
        // Calculate number of entries
        uint32_t dataSize = s_multibootMmapTag->tag.size - sizeof(MultibootTagMmap);
        uint32_t entrySize = s_multibootMmapTag->entrySize;
        uint32_t entryCount = dataSize / entrySize;

        Console::print("Memory Map : %d entries, entry size: %d\n", entryCount, entrySize);

        size_t regionAfterKernel = 0;

        MultibootMmapEntry *entry = reinterpret_cast<MultibootMmapEntry *>(s_multibootMmapTag + 1);
        uint32_t i = 0;
        for (; i < entryCount; ++i)
        {
            if (entry->type == MultibootMemoryType::Available)
            {
                s_availibleRegions[s_availibleRegionCount].startAddr = entry->addr;
                s_availibleRegions[s_availibleRegionCount].length = entry->len;
                if (entry->addr <= s_kernelMemoryRegion.kernelEndAddr)
                    regionAfterKernel = s_availibleRegionCount;
                ++s_availibleRegionCount;
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
        uint64_t startAddr = (reinterpret_cast<uint64_t>(s_availibleRegions) + s_availibleRegionCount * sizeof(AvailibleMemoryRegion) + 7) & ~7;
        uint64_t endAddr = s_availibleRegions[regionAfterKernel].length + s_availibleRegions[regionAfterKernel].startAddr;

        Console::print("Kernel heap start addr %x\n", startAddr);
        Console::print("Kernel heap end addr %x\n", endAddr);

        HeapLinkedList heap;
        heap.initialize(reinterpret_cast<void *>(startAddr),
                        reinterpret_cast<void *>(endAddr));
        return heap;
    }
}