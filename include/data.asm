section .data

align 1024 * 4
; 1GB huge pages, maps 128 Tb
page_table_l2:
    resb 1024 * 4
page_table_l1:
    resb 1024 * 4 * 512  ; 512 L1 tables

stack_bottom:
    resb 1024 * 16
stack_top:
    
section .rodata

gdt64:
    dq 0
.code_segment: equ $ - gdt64
    dq (1 << 43) | (1 << 44) | (1 << 47) | (1 << 53)

.pointer:
    dw $ - gdt64 - 1
    dq gdt64