// Heap.h
#ifndef HEAP_H
#define HEAP_H

#include "Types.h"
#include "Utils.h"
#include "Console.h"

namespace Kernel
{
    // uses a simple linked list
    class HeapLinkedList
    {
    public:
        enum class BlockFlags : uint64_t
        {
            Used = 1 << 0,
        };

        struct Block
        {
            Block *prev;
            Block *next;
            Utils::FlagMap<BlockFlags, uint64_t> metadata; // metadata bitfield
            uint32_t heapId;
            uint32_t magic;

            bool isUsed() const { return metadata.get(BlockFlags::Used); }
            void markUsed()
            {
                metadata.set(BlockFlags::Used);
            }
            void markFree()
            {
                metadata.clear(BlockFlags::Used);
            }

            size_t size()
            {
                return reinterpret_cast<uint8_t *>(next) - reinterpret_cast<uint8_t *>(this) - sizeof(Block);
            }

            void *data()
            {
                return reinterpret_cast<uint8_t *>(this) + sizeof(Block);
            };
        } __attribute__((packed));

    private:
        Block *m_head __attribute__((aligned(8)));
        void *m_startAddr __attribute__((aligned(8)));
        void *m_endAddr __attribute__((aligned(8)));
        volatile size_t m_usedSize __attribute__((aligned(8)));
        volatile size_t m_availibleSize __attribute__((aligned(8))); // user availible size
        volatile size_t m_allocatedSize __attribute__((aligned(8))); // user allocated memory size

    public:
        void initialize(void *startAddr, void *endAddr) volatile;

        template <typename T>
        T *allocate(size_t size)
            requires(!std::is_same_v<std::remove_all_extents_t<T>, void>)
        {
            return reinterpret_cast<T *>(allocate(size * sizeof(T)));
        }

        template <typename T>
        T *reallocate(T *ptr, size_t size)
        {
            return reinterpret_cast<T *>(reallocate(reinterpret_cast<void *>(ptr), size * sizeof(T)));
        }

        template <typename T>
        void free(T *ptr)
            requires(!std::is_same_v<std::remove_all_extents_t<T>, void>)
        {
            free(reinterpret_cast<void *>(ptr));
        }

        void *allocate(size_t size);
        void *reallocate(void *ptr, size_t size);
        void free(void *ptr);

        void printBlocks() const
        {
            Block *block = m_head;
            while (block)
            {
                Console::print("Block: %p\n", block);
                Console::print(" Size: %d\n", block->size());
                Console::print(" Used: ");
                if (block->isUsed())
                    Console::print("true\n");
                else
                    Console::print("false\n");
                block = block->next;
            }
        }

    private:
        static size_t align(size_t size) { return (size + 7) & ~7; }
    };
}

#endif // HEAP_H