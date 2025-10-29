section .bss
align 16
tss_entry:
    resb 104        ; TSS is 104 bytes in 64-bit mode

struc TSS
    .reserved1:  resd 1      ; Reserved
    .rsp0:       resq 1      ; Ring 0 stack pointer
    .rsp1:       resq 1      ; Ring 1 stack pointer  
    .rsp2:       resq 1      ; Ring 2 stack pointer
    .reserved2:  resd 2      ; Reserved
    .ist1:       resq 1      ; Interrupt Stack Table 1
    .ist2:       resq 1      ; IST 2
    .ist3:       resq 1      ; IST 3
    .ist4:       resq 1      ; IST 4
    .ist5:       resq 1      ; IST 5
    .ist6:       resq 1      ; IST 6
    .ist7:       resq 1      ; IST 7
    .reserved3:  resd 2      ; Reserved
    .reserved4:  resw 1      ; Reserved
    .iomap_base: resw 1      ; I/O Map Base Address
endstruc

section .text
setup_tss:
    ; Zero out the TSS
    mov rdi, tss_entry
    mov rcx, 104 / 8    ; 104 bytes in quadwords
    xor rax, rax
    rep stosq

    ; Set Ring 0 stack pointer (most important field!)
    mov rax, stack_top
    mov [tss_entry + 4], rax    ; rsp0 at offset 4

    ; Disable I/O permission bitmap
    mov word [tss_entry + 102], 104  ; iomap_base = TSS size (no bitmap)

    mov rax, tss_entry          ; Address of actual TSS
    mov [gdt64 + 0x28 + 2], ax  ; Set base low (bytes 2-3)
    shr rax, 16
    mov [gdt64 + 0x28 + 4], al  ; Set base mid (byte 4)
    shr rax, 8  
    mov [gdt64 + 0x28 + 7], al  ; Set base high (byte 7)
    shr rax, 8
    mov [gdt64 + 0x28 + 8], eax ; Set base upper (bytes 8-11)

    ; Load Task Register with TSS selector
    mov ax, 0x28                  ; TSS selector in GDT
    ltr ax
    
    ret