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
    dq (1 << 43) | (1 << 44) | (1 << 47) | (1 << 53) ; 0x08: Kernel code (Ring 1)
.data_segment: equ $ - gdt64  
    dq (1<<44) | (1<<47) | (1<<41)          ; 0x10: Kernel data (Ring 1)
.user_code_segment: equ $ - gdt64
    dq (1<<43) | (1<<44) | (1<<47) | (1<<53) | (3<<45) ; | (1<<46)  ; 0x20: User code (Ring 3)
.user_data_segment: equ $ - gdt64
    dq (1<<44) | (1<<47) | (1<<41) | (3<<45) ; | (1<<46)  ; 0x18: User data (Ring 3)
.tss_segment: equ $ - gdt64
    ; TSS Descriptor (special system segment)
    dw 104 - 1                              ; Limit (low)
    dw 0                                    ; Base (low)  
    db 0                                    ; Base (mid)
    db 0x89 | (0 << 5)                      ; P=1, DPL=0, Type=9 (64-bit TSS)
    db 0x00                                 ; Flags
    db 0                                    ; Base (high)
    dd 0                                    ; Base (upper)  
    dd 0                                    ; Reserved

.pointer:
    dw $ - gdt64 - 1
    dq gdt64