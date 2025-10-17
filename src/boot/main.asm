global start
global stack_bottom
global stack_top
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

setup_page_tables:
    ; Setup L4 -> L3
    mov eax, page_table_l3
    or eax, 0b11 ; present, writable
    mov [page_table_l4], eax

    ; Setup L3 -> L2 (map first 4 entries = 4GB)
    mov eax, page_table_l2
    or eax, 0b11
    mov [page_table_l3], eax
    mov [page_table_l3 + 8], eax
    mov [page_table_l3 + 16], eax
    mov [page_table_l3 + 24], eax

    ; Setup L2 -> L1 (512 entries per L2)
    mov eax, page_table_l1
    or eax, 0b11
    mov ecx, 0
.l2_loop:
    mov [page_table_l2 + ecx * 8], eax
    add eax, 4096  ; Next L1 table
    inc ecx
    cmp ecx, 512
    jne .l2_loop

    ; Setup L1 entries (4KB pages)
    mov ecx, 0
.l1_loop:
    mov eax, 0x1000  ; 4KB
    mul ecx
    or eax, 0b11     ; present, writable (no huge page bit)
    mov [page_table_l1 + ecx * 8], eax
    inc ecx
    cmp ecx, 262144  ; 512*512 = 262144 pages = 1GB
    jne .l1_loop

    ret

enable_paging:

    mov eax, cr4
    or eax, 1 << 5
    mov cr4, eax

    mov ecx, 0xC0000080
    rdmsr
    or eax, 1 << 8
    wrmsr

    mov eax, page_table_l4
    mov cr3, eax

    mov eax, cr0
    or eax, 1 << 31
    mov cr0, eax

    ret

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

section .data
align 1024 * 4
page_table_l4:
    resb 1024 * 4
page_table_l3:
    resb 1024 * 4
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
