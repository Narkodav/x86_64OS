global long_mode_start
extern stack_top
extern stack_bottom
extern kernel_main
extern gdt64

extern __bss_start
extern __bss_end

extern switch_data_segment_to_kernel
extern switch_data_segment_to_user

section .text
bits 64

%include "include/boot/setup_tss.asm"

long_mode_start:
    mov r8, rdi  ; Save multiboot2 info pointer

    call switch_data_segment_to_kernel
    call setup_tss

    ; zero bss
    mov rdi, __bss_start
    mov rcx, __bss_end

    cmp rcx, rdi
    jle .skip_bss

    sub rcx, rdi
    xor rax, rax
    rep stosb

.skip_bss:

    ; make stack 64 bit
    mov rsp, stack_top

    ; clear segment registers
    mov ax, 0
    mov ss, ax
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    mov rdi, rbx  ; First argument: multiboot info pointer

    call kernel_main
    
.loop:
    cli
    hlt
    jmp .loop

