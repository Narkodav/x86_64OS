ENTRY(start)

SECTIONS
{
    . = 1M;

    __kernel_start = .;
    
    .boot :
	{
		KEEP(*(.multiboot_header))
	}

    .text : {
        __text_start = .;
        *(.text)
        *(.text.*)
        __text_end = .;
    }

    .data : {
        __data_start = .;
        *(.data)
        *(.data.*)
        __data_end = .;
    }

    .rodata : {
        __rodata_start = .;
        *(.rodata)
        *(.rodata.*)
        __rodata_end = .;
    }

    .bss : {
        __bss_start = .;
        *(.bss)
        *(.bss.*)
        *(COMMON)
        __bss_end = .;
    }

    __kernel_end = .;
}