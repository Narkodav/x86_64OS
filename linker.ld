ENTRY(start)

SECTIONS
{
    . = 0x100000; /* 1MB, common kernel load address */
    
    .text : {
        KEEP(*(.text))
    }
    
    .data : {
        KEEP(*(.data))
    }
    
    .bss : {
        KEEP(*(.bss))
    }

    .rodata : {
        KEEP(*(.rodata))
    }
}