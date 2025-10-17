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

    void MemoryMap::initialise(uint64_t multibootInfoAddr)
    {
        Console::print("Memory Map : Initialising\n");

        Console::print("Kernel memory region:\n");
        Console::print("  Start: %x\n", s_kernelMemoryRegion.kernelStartAddr);
        Console::print("  End:   %x\n", s_kernelMemoryRegion.kernelEndAddr);
        Console::print("  Size:  %d B\n", s_kernelMemoryRegion.kernelEndAddr - s_kernelMemoryRegion.kernelStartAddr);

        Console::print("Multiboot info address: %x\n", multibootInfoAddr);
        s_multibootHeader = reinterpret_cast<MultibootHeader *>(multibootInfoAddr);
        MultibootTag *tag = reinterpret_cast<MultibootTag *>(multibootInfoAddr + sizeof(MultibootHeader));

        s_heaps = reinterpret_cast<HeapLinkedList *>(s_kernelMemoryRegion.kernelEndAddr);

        while (tag->type != TagType::End)
        {
            Console::print("Memory Map : Tag %d (%s)\n",
                           static_cast<uint32_t>(tag->type),
                           s_multibootTagNames[static_cast<uint32_t>(tag->type)]);

            if (tag->type == TagType::Mmap)
            {
                s_multibootMmapTag = reinterpret_cast<MultibootTagMmap *>(tag);
                parseMemoryMapTag();
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

    void MemoryMap::parseMemoryMapTag()
    {
        s_heapCount = 0;
        // Calculate number of entries
        uint32_t dataSize = s_multibootMmapTag->tag.size - sizeof(MultibootTagMmap);
        uint32_t entrySize = s_multibootMmapTag->entrySize;
        uint32_t entryCount = dataSize / entrySize;

        Console::print("Memory Map : %d entries, entry size: %d\n", entryCount, entrySize);

        MultibootMmapEntry *entry = reinterpret_cast<MultibootMmapEntry *>(s_multibootMmapTag + 1);
        uint32_t i = 0;
        for (; i < entryCount; ++i)
        {
            if (entry->type == MultibootMemoryType::Available)
            {
                ++s_heapCount;
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

        entry = reinterpret_cast<MultibootMmapEntry *>(s_multibootMmapTag + 1);
        Console::print("Memory Map : %d heaps\n", s_heapCount);
        i = 0;
        for (; i < entryCount; ++i)
        {
            if (entry->type == MultibootMemoryType::Available)
            {
                Console::print("Initilialising heap 0\n");
                s_heaps = reinterpret_cast<HeapLinkedList *>((s_kernelMemoryRegion.kernelEndAddr + 7) & ~7);

                uint64_t startAddr = (reinterpret_cast<uint64_t>(s_heaps) + s_heapCount * sizeof(HeapLinkedList) + 7) & ~7;
                uint64_t endAddr = entry->addr + entry->len;

                Console::print("Heap 0 start addr %x\n", startAddr);
                Console::print("Heap 0 end addr %x\n", endAddr);

                //*reinterpret_cast<uint64_t *>(s_heaps) = 0x1234567890ABCDEF;
                // asm volatile("cli \n hlt");
                s_heaps[0].initialize(reinterpret_cast<void *>(startAddr),
                                      reinterpret_cast<void *>(endAddr));

                break;
            }
            // Move to next entry
            entry = reinterpret_cast<MultibootMmapEntry *>(reinterpret_cast<uint8_t *>(entry) + entrySize);
        }

        entry = reinterpret_cast<MultibootMmapEntry *>(reinterpret_cast<uint8_t *>(entry) + entrySize);
        ++i;
        size_t j = 1;

        for (; i < entryCount; ++i)
        {
            if (entry->type == MultibootMemoryType::Available)
            {
                Console::print("Initilialising heap %d\n", j);
                uint64_t startAddr = (entry->addr + 7) & ~7;
                uint64_t endAddr = entry->addr + entry->len;
                Console::print("Heap %d start addr %x\n", j, startAddr);
                Console::print("Heap %d end addr %x\n", j, endAddr);
                s_heaps[j].initialize(reinterpret_cast<void *>(startAddr),
                                      reinterpret_cast<void *>(endAddr));
                ++j;
            }
            // Move to next entry
            entry = reinterpret_cast<MultibootMmapEntry *>(reinterpret_cast<uint8_t *>(entry) + entrySize);
        }
    }

    HeapLinkedList &MemoryMap::getHeap(size_t index) { return s_heaps[index]; }
    size_t MemoryMap::getHeapCount() { return s_heapCount; };
}