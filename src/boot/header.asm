section .multiboot_header
global __multiboot_header_start
global __multiboot_header_end

__multiboot_header_start:
    ; magic number
    dd 0xe85250d6   ; multiboot 2
    ; architecture
    dd 0 ; protected mode i386
    ; header length
    dd __multiboot_header_end - __multiboot_header_start
    ; checksum
    dd 0x100000000 - (0xe85250d6 + 0 + (__multiboot_header_end - __multiboot_header_start))

align 8
info_tag_start:
    dw 1            ; Type: information request
    dw 0            ; Flags
    dd info_tag_end - info_tag_start
    dd 4            ; Request memory map
    dd 6            ; Request memory info
align 8
info_tag_end:

align 8
    ; end tag
    dw 0
    dw 0
    dd 8
__multiboot_header_end: