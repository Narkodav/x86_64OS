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
    dq 0                                    ; Index 0: Null descriptor
.code_segment: equ $ - gdt64               ; Index 1: Selector = 1 << 3 = 0x08
    dq (1 << 43) | (1 << 44) | (1 << 47) | (1 << 53) ; Kernel code (Ring 0)
    ; Bits: P=1(47), DPL=0(45-46), S=1(44), Type=1010(43,41,40) = Executable/Readable
.data_segment: equ $ - gdt64               ; Index 2: Selector = 2 << 3 = 0x10  
    dq (1<<44) | (1<<47) | (1<<41)          ; Kernel data (Ring 0)
    ; Bits: P=1(47), DPL=0(45-46), S=1(44), Type=0010(41) = Writable
.user_code_segment: equ $ - gdt64          ; Index 3: Selector = 3 << 3 | 3 = 0x1B
    dq (1<<43) | (1<<44) | (1<<47) | (1<<53) | (3<<45) ; User code (Ring 3)
    ; Bits: P=1(47), DPL=3(45-46), S=1(44), Type=1010(43,41,40) = Executable/Readable
.user_data_segment: equ $ - gdt64          ; Index 4: Selector = 4 << 3 | 3 = 0x23
    dq (1<<44) | (1<<47) | (1<<41) | (3<<45) ; User data (Ring 3)
    ; Bits: P=1(47), DPL=3(45-46), S=1(44), Type=0010(41) = Writable
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