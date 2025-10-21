ENTRY(start)

SECTIONS
{
    . = 1M;

    __kernel_start = .;
    
    .boot : ALIGN(4096)
	{
		KEEP(*(.multiboot_header))
	}

    .text : ALIGN(4096) {
        __text_start = .;
        *(.text)
        *(.text.*)
        __text_end = .;
    }

    .data : ALIGN(4096) {
        __data_start = .;
        *(.data)
        *(.data.*)
        __data_end = .;
    }

    .rodata : ALIGN(4096) {
        __rodata_start = .;
        *(.rodata)
        *(.rodata.*)
        __rodata_end = .;
    }

    .bss : ALIGN(4096) {
        __bss_start = .;
        *(.bss)
        *(.bss.*)
        *(COMMON)
        __bss_end = .;
    }

    __kernel_end = .;
}