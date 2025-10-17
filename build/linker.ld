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
        __text_end = .;
    }

    .data : {
        __data_start = .;
        *(.data)
        __data_end = .;
    }

    .rodata : {
        __rodata_start = .;
        *(.rodata)
        __rodata_end = .;
    }

    .bss : {
        __bss_start = .;
        *(.bss)
        __bss_end = .;
    }

    __kernel_end = .;
}