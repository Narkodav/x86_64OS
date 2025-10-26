; interrupts.asm
section .text
bits 64

; This function is defined in C. We will call it from our keyboard ISR.
extern isr_handler
extern master_irq_handler
extern slave_irq_handler

; Macro for ISRs without error code
%macro ISR_NOERRCODE 1
global isr%1
isr%1:
    cli
    push qword 0     ; Dummy error code
    push qword %1    ; Interrupt number
    jmp isr_common
%endmacro

; Macro for ISRs with error code  
%macro ISR_ERRCODE 1
global isr%1
isr%1:
    cli
    push qword %1    ; Interrupt number (error code already pushed by CPU)
    jmp isr_common
%endmacro

%macro IRQ_MASTER 1
global irq%1
irq%1:
    cli
    push qword %1
    push qword %1 + 32
    jmp master_irq_common
%endmacro

%macro IRQ_SLAVE 1
global irq%1
irq%1:
    cli
    push qword %1
    push qword %1 + 32
    jmp slave_irq_common
%endmacro

; ISR_NOERRCODE 33       ; This will be IRQ1, the keyboard interrupt!

; Define stubs for the first 32 CPU exceptions (0-31)
; 0: Divide By Zero Exception
ISR_NOERRCODE 0
; 1: Debug Exception
ISR_NOERRCODE 1
; 2: Non Maskable Interrupt Exception
ISR_NOERRCODE 2
; 3: Int 3 Exception
ISR_NOERRCODE 3
; 4: INTO Exception
ISR_NOERRCODE 4
; 5: Out of Bounds Exception
ISR_NOERRCODE 5
; 6: Invalid Opcode Exception
ISR_NOERRCODE 6
; 7: Coprocessor Not Available Exception
ISR_NOERRCODE 7
; 8: Double Fault Exception (With Error Code!)
ISR_ERRCODE 8
; 9: Coprocessor Segment Overrun Exception
ISR_NOERRCODE 9
; 10: Bad TSS Exception (With Error Code!)
ISR_ERRCODE 10
; 11: Segment Not Present Exception (With Error Code!)
ISR_ERRCODE 11
; 12: Stack Fault Exception (With Error Code!)
ISR_ERRCODE 12
; 13: General Protection Fault Exception (With Error Code!)
ISR_ERRCODE 13
; 14: Page Fault Exception (With Error Code!)
ISR_ERRCODE 14
; 15: Reserved Exception
ISR_NOERRCODE 15
; 16: Floating Point Exception
ISR_NOERRCODE 16
; 17: Alignment Check Exception
ISR_ERRCODE 17
; 18: Machine Check Exception
ISR_NOERRCODE 18
; 19: Reserved
ISR_NOERRCODE 19
; 20: Reserved
ISR_NOERRCODE 20
; 21: Reserved
ISR_ERRCODE 21
; 22: Reserved
ISR_NOERRCODE 22
; 23: Reserved
ISR_NOERRCODE 23
; 24: Reserved
ISR_NOERRCODE 24
; 25: Reserved
ISR_NOERRCODE 25
; 26: Reserved
ISR_NOERRCODE 26
; 27: Reserved
ISR_NOERRCODE 27
; 28: Reserved
ISR_NOERRCODE 28
; 29: Reserved
ISR_NOERRCODE 29
; 30: Reserved
ISR_NOERRCODE 30
; 31: Reserved
ISR_NOERRCODE 31

; 32: IRQ0 - System Timer
IRQ_MASTER 0
; 33: IRQ1 - Keyboard Controller
IRQ_MASTER 1
; 34: IRQ2 - Cascade to IRQ9
IRQ_MASTER 2
; 35: IRQ3 - COM2 (if present)
IRQ_MASTER 3
; 36: IRQ4 - COM1 (if present)
IRQ_MASTER 4
; 37: IRQ5 - LPT2 (if present) / Sound Card
IRQ_MASTER 5
; 38: IRQ6 - Floppy Disk Controller
IRQ_MASTER 6
; 39: IRQ7 - LPT1 / Spurious Interrupt
IRQ_MASTER 7
; 40: IRQ8 - Real Time Clock
IRQ_SLAVE 8
; 41: IRQ9 - ACPI / Legacy SCSI / NIC
IRQ_SLAVE 9
; 42: IRQ10 - Available / SCSI / NIC
IRQ_SLAVE 10
; 43: IRQ11 - Available / SCSI / NIC
IRQ_SLAVE 11
; 44: IRQ12 - PS/2 Mouse
IRQ_SLAVE 12
; 45: IRQ13 - FPU / Coprocessor / Inter-processor
IRQ_SLAVE 13
; 46: IRQ14 - Primary ATA Hard Disk
IRQ_SLAVE 14
; 47: IRQ15 - Secondary ATA Hard Disk
IRQ_SLAVE 15

%macro COMMON_HANDLER 1
    ; Save all registers
    push rax
    push rbx
    push rcx
    push rdx
    push rsi
    push rdi
    push rbp
    push r8
    push r9
    push r10
    push r11
    push r12
    push r13
    push r14
    push r15
    
    mov rdi, rsp
    call %1
    
    ; Restore all registers
    pop r15
    pop r14
    pop r13
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop rbp
    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop rbx
    pop rax
    
    add rsp, 16
    iretq
%endmacro

; common stubs
isr_common:
    COMMON_HANDLER isr_handler

master_irq_common:
    COMMON_HANDLER master_irq_handler

slave_irq_common:
    COMMON_HANDLER slave_irq_handler