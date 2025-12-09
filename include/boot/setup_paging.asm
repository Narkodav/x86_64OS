section .boot_text
bits 32

setup_page_tables:

    ; Kernel mapping (0xFFFF800000000000+)

    ; Setup PML4 entries pointing to ranges in PDPT
    mov eax, page_table_l2_physical
    or eax, 0b111       ; present, writable, user
    mov ecx, 0

.pml4_loop:
    mov [page_table_l1_physical + ecx * 8], eax ; temporarily identity map first 128 TiB
    mov [page_table_l1_physical + ecx * 8 + 256 * 8], eax
    add eax, 1024 * 4   ; Next 512-entry range in PDPT
    
    inc ecx
    cmp ecx, 256        ; Fill all PML4 entries
    jne .pml4_loop

    ; Setup PDPT entries - use 1GB pages
    mov ecx, 0

.pdpt_loop:
    ; Calculate physical address: ecx * 0x40000000
    mov eax, ecx
    mov edx, 0          ; Clear high part
    mov ebx, 0x40000000
    mul ebx             ; Result in EDX:EAX
    
    ; Handle overflow - if EDX != 0, we have high bits
    or eax, 0b10000111  ; present, writable, user, huge page
    mov [page_table_l2_physical + ecx * 8], eax      ; Store low 32 bits

    and edx, 0x000FFFFF  ; Keep only bits 51:32 (physical address)
    mov [page_table_l2_physical + ecx * 8 + 4], edx  ; Store high 32 bits
    
    inc ecx
    cmp ecx, 256 * 512
    jne .pdpt_loop

    ret

enable_paging:
    ; Load PML4 address into CR3
    mov eax, page_table_l1_physical
    mov cr3, eax
    
    ; Enable PAE (Physical Address Extension)
    mov eax, cr4
    or eax, 1 << 5
    mov cr4, eax

    ; Enable long mode in EFER MSR
    mov ecx, 0xC0000080
    rdmsr
    or eax, 1 << 8
    wrmsr

    ; Enable Paging
    mov eax, cr0
    or eax, 1 << 31
    mov cr0, eax

    ret


