global temp_kernel_rsp

section .text

temp_kernel_rsp: dq 0

; int call_user_mode(int (*entry)(void), uintptr_t userStack, uint64_t stackSize)
global call_user_mode
call_user_mode:
    ; Save kernel context
    push rbp
    push rbx
    push r12
    push r13
    push r14
    push r15

    mov r12, temp_kernel_rsp
    mov [r12], rsp

    ; rdi = entry point, rsi = userStack (bottom), rdx = stackSize
    
    ; Calculate user stack top (stacks grow down)
    mov r12, rsi       ; userStack base
    add r12, rdx       ; userStack + stackSize = top
    
    ; Align stack to 16 bytes and leave space for return address
    and r12, ~0xF      ; 16-byte align
    sub r12, 8         ; Space for return address
    
    ; Set up user stack with return address to our trampoline
    mov rax, user_return_trampoline
    mov [r12], rax
    
    ; Save entry point
    mov r13, rdi
    
    ; Set user data segments (Ring 3)
    mov ax, 0x23        ; 0x20 | 3 (Ring 3)
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    ; Prepare iretq stack frame
    push 0x23           ; SS (0x20 | 3)
    push r12            ; RSP  
    push 0x202          ; RFLAGS
    push 0x1B           ; CS (0x18 | 3)
    push r13            ; RIP    
    
    ; Enter user mode
    iretq

global user_return_trampoline  
user_return_trampoline:

    ; This code runs in user mode (Ring 3)
    ; User's return value is already in rax
    ; Use syscall with special "exit" number

    mov rdi, rax        ; Pass return value as argument
    mov rax, 60         ; Syscall number 60 = exit    
    syscall             ; This will call syscall_handler
    
    ; Should never reach here
    ud2    