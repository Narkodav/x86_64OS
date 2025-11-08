section .text.utility
bits 64

global cpuid
global port_in_byte
global port_out_byte
global port_in_word
global port_out_word
global port_in_dword
global port_out_dword
global load_page_tables
global halt
global switch_data_segment_to_kernel
global switch_data_segment_to_user
global interrupt

KERNEL_CODE_SELECTOR equ 0x08
KERNEL_DATA_SELECTOR equ 0x10
USER_CODE_SELECTOR   equ 0x1B
USER_DATA_SELECTOR   equ 0x23

cpuid:
    ; Parameters: rdi=leaf, rsi=*eax, rdx=*ebx, rcx=*ecx, r8=*edx
    push rbx        ; Save rbx (callee-saved)
    
    mov eax, edi    ; Load leaf into eax
    cpuid           ; Execute cpuid instruction
    
    mov [rsi], eax  ; Store eax result
    mov [rdx], ebx  ; Store ebx result  
    mov [rcx], ecx  ; Store ecx result
    mov [r8], edx   ; Store edx result
    
    pop rbx         ; Restore rbx
    ret

port_in_byte:
    mov dx, di      ; port number
    in al, dx       ; read byte
    movzx rax, al   ; Zero-extend to 64-bit
    ret

port_out_byte:
    mov dx, di      ; port number  
    mov al, sil     ; value to write
    out dx, al
    ret

port_in_word:
    mov dx, di
    in ax, dx
    movzx rax, ax   ; Zero-extend to 64-bit
    ret

port_out_word:
    mov dx, di
    mov ax, si
    out dx, ax
    ret

port_in_dword:
    mov dx, di
    in eax, dx
    ret             ; eax automatically zero-extends to rax

port_out_dword:
    mov dx, di
    mov eax, esi
    out dx, eax
    ret

; extern "C" void load_page_tables(uint64_t* pml4_physical);
load_page_tables:
    ; rdi contains physical address of PML4 table
    mov cr3, rdi        ; Load new page tables
    ret                 ; TLB is automatically flushed on CR3 reload

; hangs the CPU
halt:
.loop:
    cli
    hlt
    jmp .loop

switch_data_segment_to_kernel:
    mov ax, KERNEL_DATA_SELECTOR   ; Kernel data selector
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, ax
    ret

switch_data_segment_to_user:
    mov ax, USER_DATA_SELECTOR   ; User data selector
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, ax
    ret

%macro INTERRUPT_TRIGGER 1
global trigger_interrupt%1
trigger_interrupt%1:
    int %1
    ret
%endmacro

INTERRUPT_TRIGGER 1
INTERRUPT_TRIGGER 2
INTERRUPT_TRIGGER 3
INTERRUPT_TRIGGER 4
INTERRUPT_TRIGGER 5
INTERRUPT_TRIGGER 6
INTERRUPT_TRIGGER 7
INTERRUPT_TRIGGER 8
INTERRUPT_TRIGGER 9
INTERRUPT_TRIGGER 10
INTERRUPT_TRIGGER 11
INTERRUPT_TRIGGER 12
INTERRUPT_TRIGGER 13
INTERRUPT_TRIGGER 14
INTERRUPT_TRIGGER 15
INTERRUPT_TRIGGER 16
INTERRUPT_TRIGGER 17
INTERRUPT_TRIGGER 18
INTERRUPT_TRIGGER 19
INTERRUPT_TRIGGER 20
INTERRUPT_TRIGGER 21
INTERRUPT_TRIGGER 22
INTERRUPT_TRIGGER 23
INTERRUPT_TRIGGER 24
INTERRUPT_TRIGGER 25
INTERRUPT_TRIGGER 26
INTERRUPT_TRIGGER 27
INTERRUPT_TRIGGER 28
INTERRUPT_TRIGGER 29
INTERRUPT_TRIGGER 30
INTERRUPT_TRIGGER 31
INTERRUPT_TRIGGER 32
INTERRUPT_TRIGGER 33
INTERRUPT_TRIGGER 34
INTERRUPT_TRIGGER 35
INTERRUPT_TRIGGER 36
INTERRUPT_TRIGGER 37
INTERRUPT_TRIGGER 38
INTERRUPT_TRIGGER 39
INTERRUPT_TRIGGER 40
INTERRUPT_TRIGGER 41
INTERRUPT_TRIGGER 42
INTERRUPT_TRIGGER 43
INTERRUPT_TRIGGER 44
INTERRUPT_TRIGGER 45
INTERRUPT_TRIGGER 46
INTERRUPT_TRIGGER 47