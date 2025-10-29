#include "../utils/Types.h"
#include "../utils/Utils.h"
#include "Heap.h"

extern "C"
{
    void start();
    void halt();

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

    extern void *tss_entry;

    extern void load_page_tables(uint64_t *pml4_physical);
}

namespace Kernel
{
    static inline HeapLinkedList s_kernelHeap;

}