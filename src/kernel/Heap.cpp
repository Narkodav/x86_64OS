#include "../../include/kernel/Heap.h"
namespace Kernel
{
    void HeapLinkedList::initialize(void *startAddr, void *endAddr) volatile
    {
        m_startAddr = startAddr;
        m_endAddr = endAddr;
        m_usedSize = sizeof(Block);
        m_head = reinterpret_cast<Block *>(startAddr);
        m_head->markFree();
        m_head->next = nullptr;
        m_head->prev = nullptr;

        m_allocatedSize = 0;
        m_availibleSize = reinterpret_cast<uint8_t *>(endAddr) - reinterpret_cast<uint8_t *>(startAddr) - sizeof(Block);
    }

    void *HeapLinkedList::allocate(size_t size)
    {
        size_t allignedSize = align(size);
        if (m_availibleSize < allignedSize)
            return nullptr;
        Block *current = m_head;

        while (current != nullptr)
        {
            size_t currentSize = current->size();
            if (!current->isUsed() && currentSize >= allignedSize)
            {
                current->markUsed();
                if (currentSize > allignedSize + sizeof(Block))
                {
                    Block *newBlock = reinterpret_cast<Block *>(reinterpret_cast<uint8_t *>(current) + sizeof(Block) + allignedSize);
                    newBlock->prev = current;
                    newBlock->next = current->next;
                    current->next = newBlock;
                    if (newBlock->next != nullptr)
                        newBlock->next->prev = newBlock;
                    newBlock->markFree();
                    m_usedSize += sizeof(Block);
                }
                size_t currentSize = current->size();
                m_usedSize += currentSize;
                m_allocatedSize += currentSize;
                m_availibleSize -= currentSize;
                return current->data();
            }
            current = current->next;
        }
        return nullptr;
    }

    void *HeapLinkedList::reallocate(void *ptr, size_t size)
    {
        if (ptr == nullptr)
            return allocate(size);
        size_t allignedSize = align(size);
        Block *block = reinterpret_cast<Block *>(ptr - sizeof(Block));
        size_t blockSize = block->size();
        if (allignedSize <= blockSize)
        {
            if (allignedSize + sizeof(Block) < blockSize)
            {
                Block *nextNext = block->next;
                block->next = reinterpret_cast<Block *>(reinterpret_cast<uint8_t *>(block) + allignedSize);
                block->next->prev = block;
                block->next->next = nextNext;
                if (nextNext != nullptr)
                    nextNext->prev = block->next;
                block->next->markFree();
                m_usedSize += sizeof(Block) - block->next->size();
                m_allocatedSize += sizeof(Block) - block->next->size();
                m_availibleSize += block->next->size();
            }
            return ptr;
        }
        if (block->next != nullptr && !block->next->isUsed() && block->next->size() + blockSize >= allignedSize)
        {
            size_t restSize = allignedSize - blockSize;
            Block *nextNext = block->next->next;

            if (block->next->size() == restSize)
            {
                block->next = nextNext;
                if (nextNext != nullptr)
                    nextNext->prev = block;
                return ptr;
            }

            Block *newBlock = reinterpret_cast<Block *>(reinterpret_cast<uint8_t *>(block->next) + restSize);
            newBlock->prev = block;
            newBlock->next = nextNext;
            block->next = newBlock;
            if (nextNext != nullptr)
                nextNext->prev = newBlock;

            newBlock->markFree();
            m_usedSize += restSize;
            m_allocatedSize += restSize;
            m_availibleSize -= restSize;
            return ptr;
        }
        void *newPtr = allocate(allignedSize);
        if (newPtr == nullptr)
            return nullptr;
        memcpy(newPtr, ptr, blockSize);
        free(ptr);
        return newPtr;
    }

    void HeapLinkedList::free(void *ptr)
    {
        Block *block = reinterpret_cast<Block *>(ptr - sizeof(Block));
        block->markFree();
        size_t blockSize = block->size();
        m_usedSize -= blockSize;
        m_allocatedSize -= blockSize;
        asm volatile("" ::: "memory");
        m_availibleSize += blockSize;
        asm volatile("" ::: "memory");
        while (block->prev != nullptr && !block->prev->isUsed())
        {
            block->prev->next = block->next;
            block = block->prev;
            m_usedSize -= sizeof(Block);
        }
        while (block->next != nullptr && !block->next->isUsed())
        {
            block->next = block->next->next;
            m_usedSize -= sizeof(Block);
        }
    }
}