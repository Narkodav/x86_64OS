ENTRY(start)

HIGHER_HALF_BASE = 0xFFFF800000000000;

SECTIONS
{
    _higher_half_base_ = HIGHER_HALF_BASE;

    . = 1M;

    .boot : ALIGN(4096)
    {
        __boot_start_ = .;
        KEEP(*(.multiboot_header))
        KEEP(*(.boot_text))
        KEEP(*(.boot_rodata))
        __boot_end_ = .;
    }

    . += HIGHER_HALF_BASE;
    __kernel_start_ = .;

    .text : AT(ADDR(.text) - HIGHER_HALF_BASE) ALIGN(4096)
    {
        __text_start_ = .;
        *(.text)
        *(.text.*)
        __text_end_ = .;
    }

    .data : AT(ADDR(.data) - HIGHER_HALF_BASE) ALIGN(4096)
    {
        __data_start_ = .;
        *(.data)
        *(.data.*)
        __data_end_ = .;
    }

    .rodata : AT(ADDR(.rodata) - HIGHER_HALF_BASE) ALIGN(4096)
    {
        __rodata_start_ = .;
        *(.rodata)
        *(.rodata.*)
        __rodata_end_ = .;
    }

    .bss : AT(ADDR(.bss) - HIGHER_HALF_BASE) ALIGN(4096)
    {
        __bss_start_ = .;
        
        *(.bss)
        *(.bss.*)
        *(COMMON)

        . = ALIGN(4096);
        stack_bottom = .;
        . += 16384;      /* 16 KiB stack */
        stack_top = .;        

        . = ALIGN(4096);
        page_table_l1 = .;
        . += 4096;       /* 4 KiB PML4 */
        . = ALIGN(4096);
        page_table_l2 = .;
        . += 4096 * 256; /* 256 4 KiB entries PDPT */

        __bss_end_ = .;
    }

    __kernel_end_ = .;

    __kernel_start_physical_ = __kernel_start_ - HIGHER_HALF_BASE;
    __kernel_end_physical_ = __kernel_end_ - HIGHER_HALF_BASE;

    PROVIDE(stack_top_physical = stack_top - HIGHER_HALF_BASE);
    PROVIDE(stack_bottom_physical = stack_bottom - HIGHER_HALF_BASE);
    PROVIDE(page_table_l1_physical = page_table_l1 - HIGHER_HALF_BASE);
    PROVIDE(page_table_l2_physical = page_table_l2 - HIGHER_HALF_BASE);
}
