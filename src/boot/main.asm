global start
global page_table_l2
global page_table_l1
global stack_bottom
global stack_top
global gdt64
global gdt64_code_segment
gdt64_code_segment: equ gdt64.code_segment
extern long_mode_start

section .text
bits 32

start:
    mov esp, stack_top

    call check_multiboot
    push ebx        ; Save multiboot info

    call check_cpuid
    call check_long_mode
    call check_1gb_pages

    call setup_page_tables
    call enable_paging

    lgdt [gdt64.pointer] ; enable gdt

    pop ebx ; Restore before jumping to long mode
    jmp gdt64.code_segment:long_mode_start

check_multiboot:
    cmp eax, 0x36d76289
    jne .no_multiboot
    ret
.no_multiboot:
    mov al, "M"
    jmp error

check_cpuid:
    pushfd
    pop eax
    mov ecx, eax
    xor eax, 1 << 21
    push eax
	popfd
	pushfd
    pop eax
    push ecx
    popfd
    cmp eax, ecx
    je .no_cpuid
    ret
.no_cpuid:
    mov al, "C"
    jmp error

check_long_mode:

    mov eax, 0x80000000
    cpuid
    cmp eax, 0x80000001
    jb .no_long_mode

    mov eax, 0x80000001
    cpuid
    test edx, 1 << 29
    jz .no_long_mode

    ret

.no_long_mode:
    mov al, "L"
    jmp error

check_1gb_pages:
    ; Check if 1GB pages are supported
    mov eax, 0x80000001
    cpuid
    test edx, 1 << 26       ; Check PDPE1GB bit (bit 26)
    jz .no_1gb_pages
    ret

.no_1gb_pages:
    mov al, "G"             ; Error code for no 1GB page support
    jmp error

error:
	; print "ERR: X" where X is the error code
	mov dword [0xb8000], 0x4f524f45
	mov dword [0xb8004], 0x4f3a4f52
	mov dword [0xb8008], 0x4f204f20
	mov byte  [0xb800A], al
.loop:
    cli
    hlt
    jmp .loop

%include "include/setup_paging.asm"
%include "include/data.asm"
