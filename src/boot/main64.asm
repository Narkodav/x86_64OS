global long_mode_start
extern stack_top
extern stack_bottom
extern kernel_main
extern gdt64
extern page_table_l1_physical

extern __bss_start_
extern __bss_end_

extern switch_data_segment_to_kernel
extern switch_data_segment_to_user

section .text
bits 64

%include "include/boot/setup_tss.asm"

section .text

long_mode_start:
    mov rsp, stack_top ; make stack 64 bit
    push rbx

;     ; zero bss
;     mov rdi, __bss_start_
;     mov rcx, __bss_end_

;     cmp rcx, rdi
;     jle .skip_bss

;     sub rcx, rdi
;     xor rax, rax
;     rep stosb

; .skip_bss:    

    call setup_tss

    ; clear segment registers
    mov ax, 0
    mov ss, ax
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    pop rbx
    mov rax, 0xFFFF800000000000
    add rbx, rax
    mov rdi, rbx
    call kernel_main
    
.loop:
    cli
    hlt
    jmp .loop

