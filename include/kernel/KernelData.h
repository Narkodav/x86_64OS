#ifndef KERNEL_DATA_H
#define KERNEL_DATA_H

#include "../utils/Types.h"
#include "../utils/Utils.h"
#include "Heap.h"

extern "C"
{
    void start();
    void halt();

    extern uint8_t stack_bottom[];
    extern uint8_t stack_top[];

    extern uint8_t __kernel_start_[];
    extern uint8_t __kernel_end_[];

    extern uint8_t __multiboot_header_start_[];
    extern uint8_t __multiboot_header_end_[];

    extern uint8_t __text_start_[];
    extern uint8_t __text_end_[];

    extern uint8_t __data_start_[];
    extern uint8_t __data_end_[];

    extern uint8_t __rodata_start_[];
    extern uint8_t __rodata_end_[];

    extern uint8_t __bss_start_[];
    extern uint8_t __bss_end_[];

    extern void *tss_entry;

    extern void load_page_tables(uint64_t *pml4_physical);
}

namespace Kernel
{
    extern HeapLinkedList s_kernelHeap;

}

#endif // KERNEL_DATA_H