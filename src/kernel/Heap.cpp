#include "../../include/Heap.h"
namespace Kernel
{

    void HeapLinkedList::initialize(void *startAddr, void *endAddr)
    {
        asm volatile("nop");
        m_startAddr = startAddr;
        m_endAddr = endAddr;
        m_usedSize = sizeof(Block);
        m_head = reinterpret_cast<Block *>(startAddr);
        m_head->markFree();
        m_head->next = reinterpret_cast<Block *>(m_endAddr);
        m_head->prev = nullptr;
    }

    void *HeapLinkedList::allocate(size_t size)
    {
        size_t allignedSize = align(size);
        if (m_availibleSize < allignedSize)
            return nullptr;
        Block *current = m_head;
        while (current < m_endAddr)
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

    void HeapLinkedList::free(void *ptr)
    {
        Block *block = reinterpret_cast<Block *>(ptr - sizeof(Block));
        block->markFree();
        size_t blockSize = block->size();
        m_usedSize -= blockSize;
        m_allocatedSize -= blockSize;
        m_availibleSize += blockSize;
        while (block->prev != nullptr && !block->prev->isUsed())
        {
            block->prev->next = block->next;
            block = block->prev;
            m_usedSize -= sizeof(Block);
        }
        while (block->next != m_endAddr && !block->next->isUsed())
        {
            block->next = block->next->next;
            m_usedSize -= sizeof(Block);
        }
    }
}