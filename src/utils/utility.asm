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