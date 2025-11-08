section .text
extern tss_entry
extern stack_top
extern syscall_handlers
extern temp_kernel_rsp

global setup_syscall
setup_syscall:
    ; Set EFER.SCE (System Call Extensions) bit
    mov ecx, 0xC0000080  ; EFER MSR
    rdmsr
    or eax, 1            ; Set SCE bit
    wrmsr

    ; Set STAR MSR (Segment selectors for syscall/sysret)
    mov ecx, 0xC0000081  ; STAR MSR
    mov edx, 0x00180008  ; SYSRET CS=0x18, SS=0x20; SYSCALL CS=0x8, SS=0x10
    wrmsr

    ; Set LSTAR MSR (System call handler address)
    mov ecx, 0xC0000082  ; LSTAR MSR
    mov rax, syscall_handler
    mov rdx, rax
    shr rdx, 32
    wrmsr

    ; Set FMASK MSR (RFLAGS mask)
    mov ecx, 0xC0000084  ; FMASK MSR  
    mov eax, 0x00000300  ; Clear IF (interrupt flag), DF (direction flag)
    xor edx, edx
    wrmsr

    ret

; System call handler - called when user executes 'syscall'
global syscall_handler
syscall_handler:
    ; Switch to kernel stack
    ; Save user stack pointer first
    mov [temp_user_rsp], rsp
    
    ; Use kernel stack
    mov rsp, [temp_kernel_rsp]
    
    ; Save ALL registers that might be clobbered or contain important data
    push rcx    ; Save user RIP (clobbered by syscall)
    push r11    ; Save user RFLAGS (clobbered by syscall)
    push rbx
    push rbp
    push r12
    push r13  
    push r14
    push r15
    
    ; Call C++ handler
    ; Set up arguments: rdi=arg1, rsi=arg2, rdx=arg3, rcx=arg4, r8=arg5, r9=arg6
    ; RAX = syscall number, RDI = arg1, RSI = arg2, RDX = arg3, R10 = arg4, R8 = arg5, R9 = arg6
    
    ; Move arguments to correct registers (r10 -> rcx)
    mov rcx, r10        ; arg4: r10 -> rcx
    ; rdi, rsi, rdx, r8, r9 are already correct
    
    ; Get function pointer and call it
    mov rbx, [syscall_handlers + rax * 8]
    call rbx
    
    ; Restore and return
    pop r15
    pop r14
    pop r13
    pop r12
    pop rbp
    pop rbx
    pop r11     ; Restore user RFLAGS for sysret
    pop rcx     ; Restore user RIP for sysret

    ; Restore user stack
    mov rsp, [temp_user_rsp]
    o64 sysret

; Temporary storage for user RSP
temp_user_rsp: dq 0

; Special exit function
; void syscall_exit(uint64_t exit_code)
global syscall_exit
syscall_exit:
    ; rdi contains exit code
    mov rax, rdi        ; Put exit code in return register
    
    ; Restore kernel segments
    mov dx, 0x10
    mov ds, dx
    mov es, dx
    mov fs, dx
    mov gs, dx
    
    ; Unwind the call stack:
    ; Current: syscall_exit -> syscall_handler -> call_user_mode
    ; We want to return directly to call_user_mode
    
    ; Skip syscall_exit frame (we're in it)
    add rsp, 8

    pop r15
    pop r14
    pop r13
    pop r12
    pop rbp
    pop rbx
    pop r11             ; user RFLAGS (not needed for exit)
    pop rcx             ; user RIP (not needed for exit)

    ; RESTORE INTERRUPT STATE from saved RFLAGS
    push r11
    popfq           ; This restores the original RFLAGS including IF=1

    ; return state saved in call_user_mode
    pop r15
    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp

    mov al, 0x20
    out 0x20, al
    
    ; Now we should be back at call_user_mode's stack frame
    ; Return to call_user_mode with exit code in rax
    ret


global dispatch_syscall
dispatch_syscall:
    ; Save callee-saved registers (System V ABI)
    push rbp
    push rbx
    push r12
    push r13
    push r14
    push r15

    ; Load arguments into correct registers for syscall instruction
    ; System V ABI passing: 
    ; rdi = num, rsi = arg1, rdx = arg2, rcx = arg3, r8 = arg4, r9 = arg5
    ; [rbp+16] = arg6 (7th argument on stack)
    
    mov rax, rdi    ; syscall number -> rax
    mov rdi, rsi    ; arg1 -> rdi
    mov rsi, rdx    ; arg2 -> rsi  
    mov rdx, rcx    ; arg3 -> rdx
    mov r10, r8     ; arg4 -> r10 (NOT rcx!)
    mov r8, r9      ; arg5 -> r8
    mov r9, [rbp + 16] ; arg6 -> r9 (7th argument at rbp+16)

    ; Execute system call
    syscall

    ; Return value is already in rax
    ; Restore callee-saved registers
    pop r15
    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp

    ret

