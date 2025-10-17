	.file	"InterruptManager.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/InterruptManager.cpp"
	.globl	_ZN6Kernel16InterruptManager19s_exceptionMessagesE
	.section	.rodata
.LC0:
	.string	"Division By Zero"
.LC1:
	.string	"Debug"
.LC2:
	.string	"Non Maskable Interrupt"
.LC3:
	.string	"Breakpoint"
.LC4:
	.string	"Into Detected Overflow"
.LC5:
	.string	"Out of Bounds"
.LC6:
	.string	"Invalid Opcode"
.LC7:
	.string	"No Coprocessor"
.LC8:
	.string	"Double Fault"
.LC9:
	.string	"Coprocessor Segment Overrun"
.LC10:
	.string	"Bad TSS"
.LC11:
	.string	"Segment Not Present"
.LC12:
	.string	"Stack Fault"
.LC13:
	.string	"General Protection Fault"
.LC14:
	.string	"Page Fault"
.LC15:
	.string	"Unknown Interrupt"
.LC16:
	.string	"Coprocessor Fault"
.LC17:
	.string	"Alignment Check"
.LC18:
	.string	"Machine Check"
.LC19:
	.string	"Reserved"
	.data
	.align 32
	.type	_ZN6Kernel16InterruptManager19s_exceptionMessagesE, @object
	.size	_ZN6Kernel16InterruptManager19s_exceptionMessagesE, 256
_ZN6Kernel16InterruptManager19s_exceptionMessagesE:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.quad	.LC19
	.globl	_ZN6Kernel16InterruptManager12s_idtEntriesE
	.section	.bss
	.align 16
	.type	_ZN6Kernel16InterruptManager12s_idtEntriesE, @object
	.size	_ZN6Kernel16InterruptManager12s_idtEntriesE, 4096
_ZN6Kernel16InterruptManager12s_idtEntriesE:
	.zero	4096
	.globl	_ZN6Kernel16InterruptManager8s_idtPtrE
	.align 8
	.type	_ZN6Kernel16InterruptManager8s_idtPtrE, @object
	.size	_ZN6Kernel16InterruptManager8s_idtPtrE, 10
_ZN6Kernel16InterruptManager8s_idtPtrE:
	.zero	10
	.globl	_ZN6Kernel16InterruptManager19s_interruptHandlersE
	.align 32
	.type	_ZN6Kernel16InterruptManager19s_interruptHandlersE, @object
	.size	_ZN6Kernel16InterruptManager19s_interruptHandlersE, 2048
_ZN6Kernel16InterruptManager19s_interruptHandlersE:
	.zero	2048
	.text
	.align 2
	.globl	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.type	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh, @function
_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh:
.LFB24:
	.file 1 "src/kernel/InterruptManager.cpp"
	.loc 1 49 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rsi, -32(%rbp)
	movl	%ecx, %eax
	movl	%edi, %ecx
	movb	%cl, -20(%rbp)
	movb	%dl, -24(%rbp)
	movb	%al, -36(%rbp)
	.loc 1 50 36
	movzbl	-20(%rbp), %eax
	.loc 1 50 15
	cltq
	salq	$4, %rax
	addq	$_ZN6Kernel16InterruptManager12s_idtEntriesE, %rax
	movq	%rax, -8(%rbp)
	.loc 1 51 22
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 52 24
	movq	$gdt64_code_segment, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, 2(%rax)
	.loc 1 53 19
	movq	-8(%rbp), %rax
	movzbl	-24(%rbp), %edx
	movb	%dl, 4(%rax)
	.loc 1 54 26
	movq	-8(%rbp), %rax
	movzbl	-36(%rbp), %edx
	movb	%dl, 5(%rax)
	.loc 1 55 77
	movq	-32(%rbp), %rax
	shrq	$16, %rax
	.loc 1 55 22
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, 6(%rax)
	.loc 1 56 78
	movq	-32(%rbp), %rax
	shrq	$32, %rax
	.loc 1 56 23
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 1 57 24
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 1 58 34
	movzbl	-20(%rbp), %eax
	movq	$_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE, %rsi
	movl	%eax, %edi
	call	_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE
	.loc 1 59 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh, .-_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.align 2
	.globl	_ZN6Kernel16InterruptManager8setupIdtEv
	.type	_ZN6Kernel16InterruptManager8setupIdtEv, @function
_ZN6Kernel16InterruptManager8setupIdtEv:
.LFB25:
	.loc 1 62 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 63 17
	call	_ZN6Kernel16InterruptManager8remapPicEv
	.loc 1 65 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr0, %rsi
	movl	$0, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 66 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr1, %rsi
	movl	$1, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 67 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr2, %rsi
	movl	$2, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 68 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr3, %rsi
	movl	$3, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 69 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr4, %rsi
	movl	$4, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 70 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr5, %rsi
	movl	$5, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 71 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr6, %rsi
	movl	$6, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 72 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr7, %rsi
	movl	$7, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 73 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr8, %rsi
	movl	$8, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 74 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr9, %rsi
	movl	$9, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 76 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr10, %rsi
	movl	$10, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 77 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr11, %rsi
	movl	$11, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 78 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr12, %rsi
	movl	$12, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 79 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr13, %rsi
	movl	$13, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 80 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr14, %rsi
	movl	$14, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 81 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr15, %rsi
	movl	$15, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 82 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr16, %rsi
	movl	$16, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 83 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr17, %rsi
	movl	$17, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 84 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr18, %rsi
	movl	$18, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 85 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr19, %rsi
	movl	$19, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 87 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr20, %rsi
	movl	$20, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 88 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr21, %rsi
	movl	$21, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 89 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr22, %rsi
	movl	$22, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 90 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr23, %rsi
	movl	$23, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 91 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr24, %rsi
	movl	$24, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 92 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr25, %rsi
	movl	$25, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 93 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr26, %rsi
	movl	$26, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 94 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr27, %rsi
	movl	$27, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 95 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr28, %rsi
	movl	$28, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 96 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr29, %rsi
	movl	$29, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 98 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr30, %rsi
	movl	$30, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 99 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr31, %rsi
	movl	$31, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 101 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq0, %rsi
	movl	$32, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 102 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq1, %rsi
	movl	$33, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 103 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq2, %rsi
	movl	$34, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 104 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq3, %rsi
	movl	$35, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 105 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq4, %rsi
	movl	$36, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 106 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq5, %rsi
	movl	$37, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 107 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq6, %rsi
	movl	$38, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 108 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq7, %rsi
	movl	$39, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 109 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq8, %rsi
	movl	$40, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 110 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq9, %rsi
	movl	$41, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 111 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq10, %rsi
	movl	$42, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 112 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq11, %rsi
	movl	$43, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 113 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq12, %rsi
	movl	$44, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 114 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq13, %rsi
	movl	$45, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 115 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq14, %rsi
	movl	$46, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 116 19
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq15, %rsi
	movl	$47, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.loc 1 118 16
	call	_ZN6Kernel16InterruptManager7loadIdtEv
	.loc 1 119 9
/APP
# 119 "src/kernel/InterruptManager.cpp" 1
	sti
# 0 "" 2
	.loc 1 120 5
/NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN6Kernel16InterruptManager8setupIdtEv, .-_ZN6Kernel16InterruptManager8setupIdtEv
	.align 2
	.globl	_ZN6Kernel16InterruptManager7loadIdtEv
	.type	_ZN6Kernel16InterruptManager7loadIdtEv, @function
_ZN6Kernel16InterruptManager7loadIdtEv:
.LFB26:
	.loc 1 123 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 124 24
	movw	$4095, _ZN6Kernel16InterruptManager8s_idtPtrE(%rip)
	.loc 1 125 23
	movq	$_ZN6Kernel16InterruptManager12s_idtEntriesE, %rax
	movq	%rax, _ZN6Kernel16InterruptManager8s_idtPtrE+2(%rip)
	.loc 1 126 9
/APP
# 126 "src/kernel/InterruptManager.cpp" 1
	lidt _ZN6Kernel16InterruptManager8s_idtPtrE(%rip)
# 0 "" 2
	.loc 1 127 5
/NO_APP
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	_ZN6Kernel16InterruptManager7loadIdtEv, .-_ZN6Kernel16InterruptManager7loadIdtEv
	.align 2
	.globl	_ZN6Kernel16InterruptManager8remapPicEv
	.type	_ZN6Kernel16InterruptManager8remapPicEv, @function
_ZN6Kernel16InterruptManager8remapPicEv:
.LFB27:
	.loc 1 130 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 132 31
	movl	$33, %edi
	call	_ZN6Kernel6inByteEt
	movb	%al, -1(%rbp)
	.loc 1 133 31
	movl	$161, %edi
	call	_ZN6Kernel6inByteEt
	movb	%al, -2(%rbp)
	.loc 1 136 16
	movl	$17, %esi
	movl	$32, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 137 16
	movl	$17, %esi
	movl	$160, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 140 16
	movl	$32, %esi
	movl	$33, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 141 16
	movl	$40, %esi
	movl	$161, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 144 16
	movl	$4, %esi
	movl	$33, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 145 16
	movl	$2, %esi
	movl	$161, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 148 16
	movl	$1, %esi
	movl	$33, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 149 16
	movl	$1, %esi
	movl	$161, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 152 16
	movl	$0, %esi
	movl	$33, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 153 16
	movl	$0, %esi
	movl	$161, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 154 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	_ZN6Kernel16InterruptManager8remapPicEv, .-_ZN6Kernel16InterruptManager8remapPicEv
	.section	.rodata
	.align 8
.LC20:
	.string	"Interrupt Manager : Initialising\n"
	.text
	.align 2
	.globl	_ZN6Kernel16InterruptManager10initializeEv
	.type	_ZN6Kernel16InterruptManager10initializeEv, @function
_ZN6Kernel16InterruptManager10initializeEv:
.LFB28:
	.loc 1 157 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 158 23
	movq	$.LC20, %rdi
	call	_ZN6Kernel7Console5printIJEEEvPKcDpT_
	.loc 1 159 17
	call	_ZN6Kernel16InterruptManager8setupIdtEv
	.loc 1 160 5
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN6Kernel16InterruptManager10initializeEv, .-_ZN6Kernel16InterruptManager10initializeEv
	.section	.text._ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE,"axG",@progbits,_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE,comdat
	.align 2
	.weak	_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE
	.type	_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE, @function
_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE:
.LFB29:
	.loc 1 163 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 164 35
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	.loc 1 164 51
	movq	_ZN6Kernel16InterruptManager19s_interruptHandlersE(,%rax,8), %rdx
	.loc 1 164 52
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.LVL0:
	.loc 1 176 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE, .-_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE
	.section	.rodata
.LC21:
	.string	"Interrupt: "
	.text
	.align 2
	.globl	_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE
	.type	_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE, @function
_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE:
.LFB30:
	.loc 1 179 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 180 35
	movl	$4, %esi
	movq	$.LC21, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 1 181 62
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	.loc 1 181 35
	movq	_ZN6Kernel16InterruptManager19s_exceptionMessagesE(,%rax,8), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE
	.loc 1 182 33
	movl	$4, %esi
	movl	$10, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 1 183 9
/APP
# 183 "src/kernel/InterruptManager.cpp" 1
	cli 
 hlt
# 0 "" 2
	.loc 1 184 5
/NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE, .-_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE
	.align 2
	.globl	_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE
	.type	_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE, @function
_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE:
.LFB31:
	.loc 1 187 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movb	%al, -4(%rbp)
	.loc 1 188 29
	movzbl	-4(%rbp), %eax
	.loc 1 188 36
	cltq
	movq	-16(%rbp), %rdx
	movq	%rdx, _ZN6Kernel16InterruptManager19s_interruptHandlersE(,%rax,8)
	.loc 1 189 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE, .-_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE
	.align 2
	.globl	_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE
	.type	_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE, @function
_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE:
.LFB32:
	.loc 1 192 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movb	%al, -4(%rbp)
	.loc 1 193 29
	movzbl	-4(%rbp), %eax
	.loc 1 193 62
	cltq
	movq	-16(%rbp), %rdx
	movq	%rdx, _ZN6Kernel16InterruptManager19s_interruptHandlersE(,%rax,8)
	.loc 1 194 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE, .-_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE
	.globl	isr_handler
	.type	isr_handler, @function
isr_handler:
.LFB33:
	.loc 1 199 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 200 46
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE
	.loc 1 201 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	isr_handler, .-isr_handler
	.globl	irq_handler
	.type	irq_handler, @function
irq_handler:
.LFB34:
	.loc 1 204 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 205 46
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE
	.loc 1 206 16
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	.loc 1 206 5
	cmpq	$39, %rax
	jbe	.L12
	.loc 1 208 24
	movl	$32, %esi
	movl	$160, %edi
	call	_ZN6Kernel7outByteEth
.L12:
	.loc 1 210 20
	movl	$32, %esi
	movl	$32, %edi
	call	_ZN6Kernel7outByteEth
	.loc 1 211 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	irq_handler, .-irq_handler
	.section	.text._ZN6Kernel7Console5printIJEEEvPKcDpT_,"axG",@progbits,_ZN6Kernel7Console5printIJEEEvPKcDpT_,comdat
	.weak	_ZN6Kernel7Console5printIJEEEvPKcDpT_
	.type	_ZN6Kernel7Console5printIJEEEvPKcDpT_, @function
_ZN6Kernel7Console5printIJEEEvPKcDpT_:
.LFB35:
	.file 2 "src/kernel/../../include/Console.h"
	.loc 2 265 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 269 26
	movq	-8(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 275 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	_ZN6Kernel7Console5printIJEEEvPKcDpT_, .-_ZN6Kernel7Console5printIJEEEvPKcDpT_
	.text
.Letext0:
	.file 3 "src/kernel/../../include/Types.h"
	.file 4 "src/kernel/../../include/InterruptManager.h"
	.file 5 "src/kernel/../../include/Utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc5e
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x21
	.long	.LASF678
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL0
	.quad	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x9
	.long	.LASF440
	.byte	0x3
	.byte	0x5
	.byte	0x17
	.long	0x3f
	.uleb128 0xb
	.long	0x2e
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF438
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF439
	.uleb128 0x9
	.long	.LASF441
	.byte	0x3
	.byte	0x8
	.byte	0x17
	.long	0x5e
	.uleb128 0xb
	.long	0x4d
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF442
	.uleb128 0x9
	.long	.LASF443
	.byte	0x3
	.byte	0x9
	.byte	0x18
	.long	0x76
	.uleb128 0xb
	.long	0x65
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF444
	.uleb128 0x9
	.long	.LASF445
	.byte	0x3
	.byte	0xa
	.byte	0x16
	.long	0x89
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF446
	.uleb128 0x9
	.long	.LASF447
	.byte	0x3
	.byte	0xb
	.byte	0x1c
	.long	0x9c
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF448
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF449
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF450
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF451
	.uleb128 0x23
	.string	"std"
	.byte	0x3
	.byte	0x14
	.byte	0xb
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.long	.LASF452
	.uleb128 0x24
	.long	.LASF679
	.byte	0x2
	.byte	0x7
	.byte	0xb
	.long	0x830
	.uleb128 0x1a
	.long	.LASF529
	.byte	0x2
	.byte	0x9
	.long	0x3c2
	.uleb128 0x1b
	.long	.LASF531
	.long	0x4d
	.byte	0x2
	.byte	0xc
	.long	0x1a9
	.uleb128 0x1
	.long	.LASF453
	.byte	0
	.uleb128 0x1
	.long	.LASF454
	.byte	0x1
	.uleb128 0x1
	.long	.LASF455
	.byte	0x2
	.uleb128 0x1
	.long	.LASF456
	.byte	0x3
	.uleb128 0x1
	.long	.LASF457
	.byte	0x4
	.uleb128 0x1
	.long	.LASF458
	.byte	0x5
	.uleb128 0x1
	.long	.LASF459
	.byte	0x6
	.uleb128 0x1
	.long	.LASF460
	.byte	0x7
	.uleb128 0x1
	.long	.LASF461
	.byte	0x8
	.uleb128 0x1
	.long	.LASF462
	.byte	0x9
	.uleb128 0x1
	.long	.LASF463
	.byte	0xa
	.uleb128 0x1
	.long	.LASF464
	.byte	0xb
	.uleb128 0x1
	.long	.LASF465
	.byte	0xc
	.uleb128 0x1
	.long	.LASF466
	.byte	0xd
	.uleb128 0x1
	.long	.LASF467
	.byte	0xe
	.uleb128 0x1
	.long	.LASF468
	.byte	0xf
	.uleb128 0x1
	.long	.LASF469
	.byte	0x10
	.uleb128 0x1
	.long	.LASF470
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF471
	.byte	0x20
	.uleb128 0x1
	.long	.LASF472
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF473
	.byte	0x30
	.uleb128 0x1
	.long	.LASF474
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF475
	.byte	0x40
	.uleb128 0x1
	.long	.LASF476
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF477
	.byte	0x50
	.uleb128 0x1
	.long	.LASF478
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF479
	.byte	0x60
	.uleb128 0x1
	.long	.LASF480
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF481
	.byte	0x70
	.uleb128 0x1
	.long	.LASF482
	.byte	0x7f
	.byte	0
	.uleb128 0x1c
	.long	.LASF483
	.byte	0x2e
	.long	0x1ca
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.byte	0x30
	.byte	0x14
	.long	0x2e
	.byte	0
	.uleb128 0x4
	.string	"y"
	.byte	0x2
	.byte	0x31
	.byte	0x14
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x1a9
	.uleb128 0xb
	.long	0x1ca
	.uleb128 0x1c
	.long	.LASF484
	.byte	0x34
	.long	0x1f9
	.uleb128 0x5
	.long	.LASF485
	.byte	0x2
	.byte	0x36
	.byte	0x14
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF486
	.byte	0x2
	.byte	0x37
	.byte	0x14
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x1d4
	.uleb128 0xf
	.long	.LASF601
	.byte	0x2
	.byte	0x46
	.long	.LASF603
	.uleb128 0x8
	.long	.LASF487
	.byte	0x2
	.byte	0x49
	.long	.LASF489
	.long	0x228
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0x8
	.long	.LASF488
	.byte	0x2
	.byte	0x4a
	.long	.LASF490
	.long	0x247
	.uleb128 0x3
	.long	0x830
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0x8
	.long	.LASF488
	.byte	0x2
	.byte	0x4b
	.long	.LASF491
	.long	0x266
	.uleb128 0x3
	.long	0x846
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0x8
	.long	.LASF492
	.byte	0x2
	.byte	0x4e
	.long	.LASF493
	.long	0x280
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0x8
	.long	.LASF494
	.byte	0x2
	.byte	0x4f
	.long	.LASF495
	.long	0x29a
	.uleb128 0x3
	.long	0x830
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0x8
	.long	.LASF494
	.byte	0x2
	.byte	0x50
	.long	.LASF496
	.long	0x2b4
	.uleb128 0x3
	.long	0x846
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0xa
	.long	.LASF497
	.value	0x116
	.long	.LASF499
	.long	0x2ce
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0xa
	.long	.LASF498
	.value	0x117
	.long	.LASF500
	.long	0x2e8
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0xa
	.long	.LASF498
	.value	0x119
	.long	.LASF501
	.long	0x307
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0xa
	.long	.LASF502
	.value	0x11c
	.long	.LASF503
	.long	0x32b
	.uleb128 0x3
	.long	0x1a9
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0xa
	.long	.LASF502
	.value	0x11f
	.long	.LASF504
	.long	0x34f
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0xa
	.long	.LASF505
	.value	0x122
	.long	.LASF506
	.long	0x364
	.uleb128 0x3
	.long	0x1a9
	.byte	0
	.uleb128 0x12
	.long	.LASF507
	.value	0x123
	.byte	0x2a
	.long	.LASF509
	.long	0x84b
	.uleb128 0x12
	.long	.LASF508
	.value	0x124
	.byte	0x1e
	.long	.LASF510
	.long	0x850
	.uleb128 0x12
	.long	.LASF511
	.value	0x125
	.byte	0x1e
	.long	.LASF512
	.long	0x855
	.uleb128 0xa
	.long	.LASF513
	.value	0x127
	.long	.LASF514
	.long	0x3a9
	.uleb128 0x3
	.long	0x2e
	.byte	0
	.uleb128 0x25
	.long	.LASF598
	.byte	0x2
	.value	0x109
	.byte	0x15
	.long	.LASF680
	.byte	0x1
	.uleb128 0x1d
	.string	"Ts"
	.uleb128 0x3
	.long	0x830
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF518
	.byte	0xb0
	.byte	0xa
	.long	0x4e8
	.uleb128 0x4
	.string	"r15"
	.byte	0x4
	.byte	0xd
	.byte	0x12
	.long	0x90
	.byte	0
	.uleb128 0x4
	.string	"r14"
	.byte	0x4
	.byte	0xd
	.byte	0x17
	.long	0x90
	.byte	0x8
	.uleb128 0x4
	.string	"r13"
	.byte	0x4
	.byte	0xd
	.byte	0x1c
	.long	0x90
	.byte	0x10
	.uleb128 0x4
	.string	"r12"
	.byte	0x4
	.byte	0xd
	.byte	0x21
	.long	0x90
	.byte	0x18
	.uleb128 0x4
	.string	"r11"
	.byte	0x4
	.byte	0xd
	.byte	0x26
	.long	0x90
	.byte	0x20
	.uleb128 0x4
	.string	"r10"
	.byte	0x4
	.byte	0xd
	.byte	0x2b
	.long	0x90
	.byte	0x28
	.uleb128 0x4
	.string	"r9"
	.byte	0x4
	.byte	0xd
	.byte	0x30
	.long	0x90
	.byte	0x30
	.uleb128 0x4
	.string	"r8"
	.byte	0x4
	.byte	0xd
	.byte	0x34
	.long	0x90
	.byte	0x38
	.uleb128 0x4
	.string	"rbp"
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.long	0x90
	.byte	0x40
	.uleb128 0x4
	.string	"rdi"
	.byte	0x4
	.byte	0xe
	.byte	0x17
	.long	0x90
	.byte	0x48
	.uleb128 0x4
	.string	"rsi"
	.byte	0x4
	.byte	0xe
	.byte	0x1c
	.long	0x90
	.byte	0x50
	.uleb128 0x4
	.string	"rdx"
	.byte	0x4
	.byte	0xe
	.byte	0x21
	.long	0x90
	.byte	0x58
	.uleb128 0x4
	.string	"rcx"
	.byte	0x4
	.byte	0xe
	.byte	0x26
	.long	0x90
	.byte	0x60
	.uleb128 0x4
	.string	"rbx"
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x90
	.byte	0x68
	.uleb128 0x4
	.string	"rax"
	.byte	0x4
	.byte	0xe
	.byte	0x30
	.long	0x90
	.byte	0x70
	.uleb128 0x5
	.long	.LASF515
	.byte	0x4
	.byte	0x11
	.byte	0x12
	.long	0x90
	.byte	0x78
	.uleb128 0x5
	.long	.LASF516
	.byte	0x4
	.byte	0x12
	.byte	0x12
	.long	0x90
	.byte	0x80
	.uleb128 0x4
	.string	"rip"
	.byte	0x4
	.byte	0x15
	.byte	0x12
	.long	0x90
	.byte	0x88
	.uleb128 0x4
	.string	"cs"
	.byte	0x4
	.byte	0x16
	.byte	0x12
	.long	0x90
	.byte	0x90
	.uleb128 0x5
	.long	.LASF517
	.byte	0x4
	.byte	0x17
	.byte	0x12
	.long	0x90
	.byte	0x98
	.uleb128 0x4
	.string	"rsp"
	.byte	0x4
	.byte	0x18
	.byte	0x12
	.long	0x90
	.byte	0xa0
	.uleb128 0x4
	.string	"ss"
	.byte	0x4
	.byte	0x19
	.byte	0x12
	.long	0x90
	.byte	0xa8
	.byte	0
	.uleb128 0x13
	.long	.LASF519
	.byte	0x10
	.byte	0x1c
	.long	0x54f
	.uleb128 0x5
	.long	.LASF520
	.byte	0x4
	.byte	0x1e
	.byte	0x12
	.long	0x65
	.byte	0
	.uleb128 0x5
	.long	.LASF521
	.byte	0x4
	.byte	0x1f
	.byte	0x12
	.long	0x65
	.byte	0x2
	.uleb128 0x4
	.string	"ist"
	.byte	0x4
	.byte	0x20
	.byte	0x11
	.long	0x4d
	.byte	0x4
	.uleb128 0x5
	.long	.LASF522
	.byte	0x4
	.byte	0x21
	.byte	0x11
	.long	0x4d
	.byte	0x5
	.uleb128 0x5
	.long	.LASF523
	.byte	0x4
	.byte	0x22
	.byte	0x12
	.long	0x65
	.byte	0x6
	.uleb128 0x5
	.long	.LASF524
	.byte	0x4
	.byte	0x23
	.byte	0x12
	.long	0x7d
	.byte	0x8
	.uleb128 0x5
	.long	.LASF525
	.byte	0x4
	.byte	0x24
	.byte	0x12
	.long	0x7d
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.long	.LASF526
	.byte	0xa
	.byte	0x27
	.long	0x575
	.uleb128 0x5
	.long	.LASF527
	.byte	0x4
	.byte	0x29
	.byte	0x12
	.long	0x65
	.byte	0
	.uleb128 0x5
	.long	.LASF528
	.byte	0x4
	.byte	0x2a
	.byte	0x12
	.long	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.long	.LASF530
	.byte	0x4
	.byte	0x72
	.long	0x7ed
	.uleb128 0x1b
	.long	.LASF532
	.long	0x4d
	.byte	0x4
	.byte	0x75
	.long	0x6b0
	.uleb128 0x1
	.long	.LASF533
	.byte	0
	.uleb128 0x1
	.long	.LASF534
	.byte	0x1
	.uleb128 0x1
	.long	.LASF535
	.byte	0x2
	.uleb128 0x1
	.long	.LASF536
	.byte	0x3
	.uleb128 0x1
	.long	.LASF537
	.byte	0x4
	.uleb128 0x1
	.long	.LASF538
	.byte	0x5
	.uleb128 0x1
	.long	.LASF539
	.byte	0x6
	.uleb128 0x1
	.long	.LASF540
	.byte	0x7
	.uleb128 0x1
	.long	.LASF541
	.byte	0x8
	.uleb128 0x1
	.long	.LASF542
	.byte	0x9
	.uleb128 0x1
	.long	.LASF543
	.byte	0xa
	.uleb128 0x1
	.long	.LASF544
	.byte	0xb
	.uleb128 0x1
	.long	.LASF545
	.byte	0xc
	.uleb128 0x1
	.long	.LASF546
	.byte	0xd
	.uleb128 0x1
	.long	.LASF547
	.byte	0xe
	.uleb128 0x1
	.long	.LASF548
	.byte	0xf
	.uleb128 0x1
	.long	.LASF549
	.byte	0x10
	.uleb128 0x1
	.long	.LASF550
	.byte	0x11
	.uleb128 0x1
	.long	.LASF551
	.byte	0x12
	.uleb128 0x1
	.long	.LASF552
	.byte	0x13
	.uleb128 0x1
	.long	.LASF553
	.byte	0x14
	.uleb128 0x1
	.long	.LASF554
	.byte	0x15
	.uleb128 0x1
	.long	.LASF555
	.byte	0x16
	.uleb128 0x1
	.long	.LASF556
	.byte	0x17
	.uleb128 0x1
	.long	.LASF557
	.byte	0x18
	.uleb128 0x1
	.long	.LASF558
	.byte	0x19
	.uleb128 0x1
	.long	.LASF559
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF560
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF561
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF562
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF563
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF564
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF565
	.byte	0x20
	.uleb128 0x1
	.long	.LASF566
	.byte	0x21
	.uleb128 0x1
	.long	.LASF567
	.byte	0x22
	.uleb128 0x1
	.long	.LASF568
	.byte	0x23
	.uleb128 0x1
	.long	.LASF569
	.byte	0x24
	.uleb128 0x1
	.long	.LASF570
	.byte	0x25
	.uleb128 0x1
	.long	.LASF571
	.byte	0x26
	.uleb128 0x1
	.long	.LASF572
	.byte	0x27
	.uleb128 0x1
	.long	.LASF573
	.byte	0x28
	.uleb128 0x1
	.long	.LASF574
	.byte	0x29
	.uleb128 0x1
	.long	.LASF575
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF576
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF577
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF578
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF579
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF580
	.byte	0x2f
	.byte	0
	.uleb128 0x14
	.long	.LASF581
	.byte	0xb2
	.byte	0x25
	.long	.LASF583
	.long	0x59
	.byte	0x8e
	.uleb128 0x26
	.long	.LASF582
	.byte	0x4
	.byte	0xb3
	.byte	0x24
	.long	.LASF584
	.long	0x3a
	.value	0x100
	.byte	0x3
	.uleb128 0x14
	.long	.LASF585
	.byte	0xb4
	.byte	0x24
	.long	.LASF586
	.long	0x3a
	.byte	0x20
	.uleb128 0x14
	.long	.LASF587
	.byte	0xb5
	.byte	0x24
	.long	.LASF588
	.long	0x3a
	.byte	0x10
	.uleb128 0x15
	.long	.LASF589
	.byte	0xb7
	.byte	0x25
	.long	.LASF591
	.long	0x866
	.uleb128 0x27
	.long	.LASF681
	.byte	0x4
	.byte	0xb9
	.byte	0x38
	.long	.LASF682
	.long	0x876
	.byte	0x10
	.uleb128 0x15
	.long	.LASF590
	.byte	0xba
	.byte	0x17
	.long	.LASF592
	.long	0x54f
	.uleb128 0x15
	.long	.LASF593
	.byte	0xbc
	.byte	0x2a
	.long	.LASF594
	.long	0x896
	.uleb128 0x28
	.long	.LASF683
	.byte	0x4
	.byte	0xbf
	.byte	0x15
	.long	.LASF684
	.byte	0x1
	.uleb128 0x8
	.long	.LASF595
	.byte	0x4
	.byte	0xc0
	.long	.LASF596
	.long	0x758
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0x7ed
	.byte	0
	.uleb128 0x8
	.long	.LASF595
	.byte	0x4
	.byte	0xc1
	.long	.LASF597
	.long	0x772
	.uleb128 0x3
	.long	0x580
	.uleb128 0x3
	.long	0x7ed
	.byte	0
	.uleb128 0x16
	.long	.LASF599
	.byte	0x4
	.byte	0xc4
	.byte	0x15
	.long	.LASF610
	.long	0x797
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0x797
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0x4d
	.byte	0
	.uleb128 0x9
	.long	.LASF600
	.byte	0x4
	.byte	0xb0
	.byte	0xf
	.long	0x8b0
	.uleb128 0xf
	.long	.LASF602
	.byte	0x4
	.byte	0xc6
	.long	.LASF604
	.uleb128 0xf
	.long	.LASF605
	.byte	0x4
	.byte	0xc7
	.long	.LASF606
	.uleb128 0xf
	.long	.LASF607
	.byte	0x4
	.byte	0xc8
	.long	.LASF608
	.uleb128 0x16
	.long	.LASF609
	.byte	0x4
	.byte	0xc9
	.byte	0x1c
	.long	.LASF611
	.long	0x7da
	.uleb128 0x3
	.long	0x8ab
	.byte	0
	.uleb128 0x29
	.long	.LASF685
	.byte	0x4
	.byte	0xca
	.byte	0x15
	.long	.LASF686
	.uleb128 0x3
	.long	0x8ab
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF612
	.byte	0x4
	.byte	0x2d
	.byte	0xb
	.long	0x89b
	.uleb128 0xe
	.long	0x7ed
	.uleb128 0x16
	.long	.LASF613
	.byte	0x5
	.byte	0x13
	.byte	0xa
	.long	.LASF614
	.long	0x819
	.uleb128 0x3
	.long	0x65
	.uleb128 0x3
	.long	0x4d
	.byte	0
	.uleb128 0x2a
	.long	.LASF615
	.byte	0x5
	.byte	0x14
	.byte	0xd
	.long	.LASF616
	.long	0x4d
	.uleb128 0x3
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x83c
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF617
	.uleb128 0xb
	.long	0x835
	.uleb128 0xe
	.long	0x83c
	.uleb128 0xc
	.long	0x841
	.uleb128 0xd
	.long	0x1cf
	.uleb128 0xd
	.long	0x1f9
	.uleb128 0xd
	.long	0x3a
	.uleb128 0x2b
	.long	.LASF687
	.byte	0x4
	.byte	0x6d
	.byte	0x1b
	.long	0x71
	.uleb128 0x17
	.long	0x846
	.long	0x876
	.uleb128 0x18
	.long	0x3f
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.long	0x4e8
	.long	0x886
	.uleb128 0x18
	.long	0x3f
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.long	0x7f9
	.long	0x896
	.uleb128 0x18
	.long	0x3f
	.byte	0xff
	.byte	0
	.uleb128 0xe
	.long	0x886
	.uleb128 0xc
	.long	0x8a0
	.uleb128 0x2c
	.long	0x8ab
	.uleb128 0x3
	.long	0x8ab
	.byte	0
	.uleb128 0xd
	.long	0x3c2
	.uleb128 0xc
	.long	0x8b5
	.uleb128 0x2d
	.uleb128 0x10
	.long	0x6f3
	.byte	0x6
	.byte	0x1a
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel16InterruptManager19s_exceptionMessagesE
	.uleb128 0x10
	.long	0x702
	.byte	0x2b
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel16InterruptManager12s_idtEntriesE
	.uleb128 0x10
	.long	0x713
	.byte	0x2c
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel16InterruptManager8s_idtPtrE
	.uleb128 0x10
	.long	0x722
	.byte	0x2d
	.byte	0x1f
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel16InterruptManager19s_interruptHandlersE
	.uleb128 0x2
	.long	.LASF618
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF619
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF620
	.byte	0x69
	.uleb128 0x2
	.long	.LASF621
	.byte	0x68
	.uleb128 0x2
	.long	.LASF622
	.byte	0x67
	.uleb128 0x2
	.long	.LASF623
	.byte	0x66
	.uleb128 0x2
	.long	.LASF624
	.byte	0x65
	.uleb128 0x2
	.long	.LASF625
	.byte	0x64
	.uleb128 0x2
	.long	.LASF626
	.byte	0x63
	.uleb128 0x2
	.long	.LASF627
	.byte	0x62
	.uleb128 0x2
	.long	.LASF628
	.byte	0x61
	.uleb128 0x2
	.long	.LASF629
	.byte	0x60
	.uleb128 0x2
	.long	.LASF630
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF631
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF632
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF633
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF634
	.byte	0x59
	.uleb128 0x2
	.long	.LASF635
	.byte	0x58
	.uleb128 0x2
	.long	.LASF636
	.byte	0x57
	.uleb128 0x2
	.long	.LASF637
	.byte	0x56
	.uleb128 0x2
	.long	.LASF638
	.byte	0x55
	.uleb128 0x2
	.long	.LASF639
	.byte	0x54
	.uleb128 0x2
	.long	.LASF640
	.byte	0x53
	.uleb128 0x2
	.long	.LASF641
	.byte	0x52
	.uleb128 0x2
	.long	.LASF642
	.byte	0x51
	.uleb128 0x2
	.long	.LASF643
	.byte	0x50
	.uleb128 0x2
	.long	.LASF644
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF645
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF646
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF647
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF648
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF649
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF650
	.byte	0x49
	.uleb128 0x2
	.long	.LASF651
	.byte	0x48
	.uleb128 0x2
	.long	.LASF652
	.byte	0x47
	.uleb128 0x2
	.long	.LASF653
	.byte	0x46
	.uleb128 0x2
	.long	.LASF654
	.byte	0x45
	.uleb128 0x2
	.long	.LASF655
	.byte	0x44
	.uleb128 0x2
	.long	.LASF656
	.byte	0x43
	.uleb128 0x2
	.long	.LASF657
	.byte	0x42
	.uleb128 0x2
	.long	.LASF658
	.byte	0x41
	.uleb128 0x2
	.long	.LASF659
	.byte	0x40
	.uleb128 0x2
	.long	.LASF660
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF661
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF662
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF663
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF664
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF665
	.byte	0x3a
	.uleb128 0x2e
	.long	0x3a9
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4f
	.uleb128 0x1d
	.string	"Ts"
	.uleb128 0x2f
	.string	"str"
	.byte	0x2
	.value	0x109
	.byte	0x27
	.long	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.byte	0x2
	.value	0x109
	.byte	0x2e
	.byte	0
	.uleb128 0x1e
	.long	.LASF667
	.byte	0xcb
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7a
	.uleb128 0x6
	.long	.LASF666
	.byte	0xcb
	.byte	0x35
	.long	0xa7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	0x3c2
	.uleb128 0x1e
	.long	.LASF668
	.byte	0xc6
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xaaa
	.uleb128 0x6
	.long	.LASF666
	.byte	0xc6
	.byte	0x35
	.long	0xa7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	0x758
	.byte	0xbf
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0xae3
	.uleb128 0x6
	.long	.LASF669
	.byte	0xbf
	.byte	0x46
	.long	0x580
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.long	.LASF670
	.byte	0xbf
	.byte	0x62
	.long	0x7ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.long	0x73e
	.byte	0xba
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1c
	.uleb128 0x6
	.long	.LASF671
	.byte	0xba
	.byte	0x3e
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.long	.LASF670
	.byte	0xba
	.byte	0x56
	.long	0x7ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.long	0x7da
	.byte	0xb2
	.byte	0xa
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xb48
	.uleb128 0x6
	.long	.LASF666
	.byte	0xb2
	.byte	0x3c
	.long	0x8ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	0x7c4
	.byte	0xa2
	.byte	0x11
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xb74
	.uleb128 0x6
	.long	.LASF666
	.byte	0xa2
	.byte	0x43
	.long	0x8ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	0x731
	.byte	0x9c
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	0x7b9
	.byte	0x81
	.byte	0xa
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc6
	.uleb128 0x19
	.long	.LASF672
	.byte	0x84
	.byte	0x11
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x19
	.long	.LASF673
	.byte	0x85
	.byte	0x11
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x31
	.long	0x7ae
	.byte	0x1
	.byte	0x7a
	.byte	0xa
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	0x7a3
	.byte	0x3d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	0x772
	.byte	0x2f
	.byte	0xa
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xc5c
	.uleb128 0x6
	.long	.LASF671
	.byte	0x2f
	.byte	0x2f
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.long	.LASF674
	.byte	0x2f
	.byte	0x3f
	.long	0x797
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF675
	.byte	0x30
	.byte	0x2f
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF676
	.byte	0x30
	.byte	0x4c
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF677
	.byte	0x32
	.byte	0xf
	.long	0xc5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	0x4e8
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 49
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6d
	.uleb128 0x19
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4107
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4108
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.quad	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0
.Ldebug_ranges3:
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x5
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF433
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x3
	.long	.LASF436
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x3
	.long	.LASF437
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.0.dc24f940c953196d9cc208550158fb48,comdat
.Ldebug_macro2:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0
	.long	.LASF2
	.byte	0x5
	.uleb128 0
	.long	.LASF3
	.byte	0x5
	.uleb128 0
	.long	.LASF4
	.byte	0x5
	.uleb128 0
	.long	.LASF5
	.byte	0x5
	.uleb128 0
	.long	.LASF6
	.byte	0x5
	.uleb128 0
	.long	.LASF7
	.byte	0x5
	.uleb128 0
	.long	.LASF8
	.byte	0x5
	.uleb128 0
	.long	.LASF9
	.byte	0x5
	.uleb128 0
	.long	.LASF10
	.byte	0x5
	.uleb128 0
	.long	.LASF11
	.byte	0x5
	.uleb128 0
	.long	.LASF12
	.byte	0x5
	.uleb128 0
	.long	.LASF13
	.byte	0x5
	.uleb128 0
	.long	.LASF14
	.byte	0x5
	.uleb128 0
	.long	.LASF15
	.byte	0x5
	.uleb128 0
	.long	.LASF16
	.byte	0x5
	.uleb128 0
	.long	.LASF17
	.byte	0x5
	.uleb128 0
	.long	.LASF18
	.byte	0x5
	.uleb128 0
	.long	.LASF19
	.byte	0x5
	.uleb128 0
	.long	.LASF20
	.byte	0x5
	.uleb128 0
	.long	.LASF21
	.byte	0x5
	.uleb128 0
	.long	.LASF22
	.byte	0x5
	.uleb128 0
	.long	.LASF23
	.byte	0x5
	.uleb128 0
	.long	.LASF24
	.byte	0x5
	.uleb128 0
	.long	.LASF25
	.byte	0x5
	.uleb128 0
	.long	.LASF26
	.byte	0x5
	.uleb128 0
	.long	.LASF27
	.byte	0x5
	.uleb128 0
	.long	.LASF28
	.byte	0x5
	.uleb128 0
	.long	.LASF29
	.byte	0x5
	.uleb128 0
	.long	.LASF30
	.byte	0x5
	.uleb128 0
	.long	.LASF31
	.byte	0x5
	.uleb128 0
	.long	.LASF32
	.byte	0x5
	.uleb128 0
	.long	.LASF33
	.byte	0x5
	.uleb128 0
	.long	.LASF34
	.byte	0x5
	.uleb128 0
	.long	.LASF35
	.byte	0x5
	.uleb128 0
	.long	.LASF36
	.byte	0x5
	.uleb128 0
	.long	.LASF37
	.byte	0x5
	.uleb128 0
	.long	.LASF38
	.byte	0x5
	.uleb128 0
	.long	.LASF39
	.byte	0x5
	.uleb128 0
	.long	.LASF40
	.byte	0x5
	.uleb128 0
	.long	.LASF41
	.byte	0x5
	.uleb128 0
	.long	.LASF42
	.byte	0x5
	.uleb128 0
	.long	.LASF43
	.byte	0x5
	.uleb128 0
	.long	.LASF44
	.byte	0x5
	.uleb128 0
	.long	.LASF45
	.byte	0x5
	.uleb128 0
	.long	.LASF46
	.byte	0x5
	.uleb128 0
	.long	.LASF47
	.byte	0x5
	.uleb128 0
	.long	.LASF48
	.byte	0x5
	.uleb128 0
	.long	.LASF49
	.byte	0x5
	.uleb128 0
	.long	.LASF50
	.byte	0x5
	.uleb128 0
	.long	.LASF51
	.byte	0x5
	.uleb128 0
	.long	.LASF52
	.byte	0x5
	.uleb128 0
	.long	.LASF53
	.byte	0x5
	.uleb128 0
	.long	.LASF54
	.byte	0x5
	.uleb128 0
	.long	.LASF55
	.byte	0x5
	.uleb128 0
	.long	.LASF56
	.byte	0x5
	.uleb128 0
	.long	.LASF57
	.byte	0x5
	.uleb128 0
	.long	.LASF58
	.byte	0x5
	.uleb128 0
	.long	.LASF59
	.byte	0x5
	.uleb128 0
	.long	.LASF60
	.byte	0x5
	.uleb128 0
	.long	.LASF61
	.byte	0x5
	.uleb128 0
	.long	.LASF62
	.byte	0x5
	.uleb128 0
	.long	.LASF63
	.byte	0x5
	.uleb128 0
	.long	.LASF64
	.byte	0x5
	.uleb128 0
	.long	.LASF65
	.byte	0x5
	.uleb128 0
	.long	.LASF66
	.byte	0x5
	.uleb128 0
	.long	.LASF67
	.byte	0x5
	.uleb128 0
	.long	.LASF68
	.byte	0x5
	.uleb128 0
	.long	.LASF69
	.byte	0x5
	.uleb128 0
	.long	.LASF70
	.byte	0x5
	.uleb128 0
	.long	.LASF71
	.byte	0x5
	.uleb128 0
	.long	.LASF72
	.byte	0x5
	.uleb128 0
	.long	.LASF73
	.byte	0x5
	.uleb128 0
	.long	.LASF74
	.byte	0x5
	.uleb128 0
	.long	.LASF75
	.byte	0x5
	.uleb128 0
	.long	.LASF76
	.byte	0x5
	.uleb128 0
	.long	.LASF77
	.byte	0x5
	.uleb128 0
	.long	.LASF78
	.byte	0x5
	.uleb128 0
	.long	.LASF79
	.byte	0x5
	.uleb128 0
	.long	.LASF80
	.byte	0x5
	.uleb128 0
	.long	.LASF81
	.byte	0x5
	.uleb128 0
	.long	.LASF82
	.byte	0x5
	.uleb128 0
	.long	.LASF83
	.byte	0x5
	.uleb128 0
	.long	.LASF84
	.byte	0x5
	.uleb128 0
	.long	.LASF85
	.byte	0x5
	.uleb128 0
	.long	.LASF86
	.byte	0x5
	.uleb128 0
	.long	.LASF87
	.byte	0x5
	.uleb128 0
	.long	.LASF88
	.byte	0x5
	.uleb128 0
	.long	.LASF89
	.byte	0x5
	.uleb128 0
	.long	.LASF90
	.byte	0x5
	.uleb128 0
	.long	.LASF91
	.byte	0x5
	.uleb128 0
	.long	.LASF92
	.byte	0x5
	.uleb128 0
	.long	.LASF93
	.byte	0x5
	.uleb128 0
	.long	.LASF94
	.byte	0x5
	.uleb128 0
	.long	.LASF95
	.byte	0x5
	.uleb128 0
	.long	.LASF96
	.byte	0x5
	.uleb128 0
	.long	.LASF97
	.byte	0x5
	.uleb128 0
	.long	.LASF98
	.byte	0x5
	.uleb128 0
	.long	.LASF99
	.byte	0x5
	.uleb128 0
	.long	.LASF100
	.byte	0x5
	.uleb128 0
	.long	.LASF101
	.byte	0x5
	.uleb128 0
	.long	.LASF102
	.byte	0x5
	.uleb128 0
	.long	.LASF103
	.byte	0x5
	.uleb128 0
	.long	.LASF104
	.byte	0x5
	.uleb128 0
	.long	.LASF105
	.byte	0x5
	.uleb128 0
	.long	.LASF106
	.byte	0x5
	.uleb128 0
	.long	.LASF107
	.byte	0x5
	.uleb128 0
	.long	.LASF108
	.byte	0x5
	.uleb128 0
	.long	.LASF109
	.byte	0x5
	.uleb128 0
	.long	.LASF110
	.byte	0x5
	.uleb128 0
	.long	.LASF111
	.byte	0x5
	.uleb128 0
	.long	.LASF112
	.byte	0x5
	.uleb128 0
	.long	.LASF113
	.byte	0x5
	.uleb128 0
	.long	.LASF114
	.byte	0x5
	.uleb128 0
	.long	.LASF115
	.byte	0x5
	.uleb128 0
	.long	.LASF116
	.byte	0x5
	.uleb128 0
	.long	.LASF117
	.byte	0x5
	.uleb128 0
	.long	.LASF118
	.byte	0x5
	.uleb128 0
	.long	.LASF119
	.byte	0x5
	.uleb128 0
	.long	.LASF120
	.byte	0x5
	.uleb128 0
	.long	.LASF121
	.byte	0x5
	.uleb128 0
	.long	.LASF122
	.byte	0x5
	.uleb128 0
	.long	.LASF123
	.byte	0x5
	.uleb128 0
	.long	.LASF124
	.byte	0x5
	.uleb128 0
	.long	.LASF125
	.byte	0x5
	.uleb128 0
	.long	.LASF126
	.byte	0x5
	.uleb128 0
	.long	.LASF127
	.byte	0x5
	.uleb128 0
	.long	.LASF128
	.byte	0x5
	.uleb128 0
	.long	.LASF129
	.byte	0x5
	.uleb128 0
	.long	.LASF130
	.byte	0x5
	.uleb128 0
	.long	.LASF131
	.byte	0x5
	.uleb128 0
	.long	.LASF132
	.byte	0x5
	.uleb128 0
	.long	.LASF133
	.byte	0x5
	.uleb128 0
	.long	.LASF134
	.byte	0x5
	.uleb128 0
	.long	.LASF135
	.byte	0x5
	.uleb128 0
	.long	.LASF136
	.byte	0x5
	.uleb128 0
	.long	.LASF137
	.byte	0x5
	.uleb128 0
	.long	.LASF138
	.byte	0x5
	.uleb128 0
	.long	.LASF139
	.byte	0x5
	.uleb128 0
	.long	.LASF140
	.byte	0x5
	.uleb128 0
	.long	.LASF141
	.byte	0x5
	.uleb128 0
	.long	.LASF142
	.byte	0x5
	.uleb128 0
	.long	.LASF143
	.byte	0x5
	.uleb128 0
	.long	.LASF144
	.byte	0x5
	.uleb128 0
	.long	.LASF145
	.byte	0x5
	.uleb128 0
	.long	.LASF146
	.byte	0x5
	.uleb128 0
	.long	.LASF147
	.byte	0x5
	.uleb128 0
	.long	.LASF148
	.byte	0x5
	.uleb128 0
	.long	.LASF149
	.byte	0x5
	.uleb128 0
	.long	.LASF150
	.byte	0x5
	.uleb128 0
	.long	.LASF151
	.byte	0x5
	.uleb128 0
	.long	.LASF152
	.byte	0x5
	.uleb128 0
	.long	.LASF153
	.byte	0x5
	.uleb128 0
	.long	.LASF154
	.byte	0x5
	.uleb128 0
	.long	.LASF155
	.byte	0x5
	.uleb128 0
	.long	.LASF156
	.byte	0x5
	.uleb128 0
	.long	.LASF157
	.byte	0x5
	.uleb128 0
	.long	.LASF158
	.byte	0x5
	.uleb128 0
	.long	.LASF159
	.byte	0x5
	.uleb128 0
	.long	.LASF160
	.byte	0x5
	.uleb128 0
	.long	.LASF161
	.byte	0x5
	.uleb128 0
	.long	.LASF162
	.byte	0x5
	.uleb128 0
	.long	.LASF163
	.byte	0x5
	.uleb128 0
	.long	.LASF164
	.byte	0x5
	.uleb128 0
	.long	.LASF165
	.byte	0x5
	.uleb128 0
	.long	.LASF166
	.byte	0x5
	.uleb128 0
	.long	.LASF167
	.byte	0x5
	.uleb128 0
	.long	.LASF168
	.byte	0x5
	.uleb128 0
	.long	.LASF169
	.byte	0x5
	.uleb128 0
	.long	.LASF170
	.byte	0x5
	.uleb128 0
	.long	.LASF171
	.byte	0x5
	.uleb128 0
	.long	.LASF172
	.byte	0x5
	.uleb128 0
	.long	.LASF173
	.byte	0x5
	.uleb128 0
	.long	.LASF174
	.byte	0x5
	.uleb128 0
	.long	.LASF175
	.byte	0x5
	.uleb128 0
	.long	.LASF176
	.byte	0x5
	.uleb128 0
	.long	.LASF177
	.byte	0x5
	.uleb128 0
	.long	.LASF178
	.byte	0x5
	.uleb128 0
	.long	.LASF179
	.byte	0x5
	.uleb128 0
	.long	.LASF180
	.byte	0x5
	.uleb128 0
	.long	.LASF181
	.byte	0x5
	.uleb128 0
	.long	.LASF182
	.byte	0x5
	.uleb128 0
	.long	.LASF183
	.byte	0x5
	.uleb128 0
	.long	.LASF184
	.byte	0x5
	.uleb128 0
	.long	.LASF185
	.byte	0x5
	.uleb128 0
	.long	.LASF186
	.byte	0x5
	.uleb128 0
	.long	.LASF187
	.byte	0x5
	.uleb128 0
	.long	.LASF188
	.byte	0x5
	.uleb128 0
	.long	.LASF189
	.byte	0x5
	.uleb128 0
	.long	.LASF190
	.byte	0x5
	.uleb128 0
	.long	.LASF191
	.byte	0x5
	.uleb128 0
	.long	.LASF192
	.byte	0x5
	.uleb128 0
	.long	.LASF193
	.byte	0x5
	.uleb128 0
	.long	.LASF194
	.byte	0x5
	.uleb128 0
	.long	.LASF195
	.byte	0x5
	.uleb128 0
	.long	.LASF196
	.byte	0x5
	.uleb128 0
	.long	.LASF197
	.byte	0x5
	.uleb128 0
	.long	.LASF198
	.byte	0x5
	.uleb128 0
	.long	.LASF199
	.byte	0x5
	.uleb128 0
	.long	.LASF200
	.byte	0x5
	.uleb128 0
	.long	.LASF201
	.byte	0x5
	.uleb128 0
	.long	.LASF202
	.byte	0x5
	.uleb128 0
	.long	.LASF203
	.byte	0x5
	.uleb128 0
	.long	.LASF204
	.byte	0x5
	.uleb128 0
	.long	.LASF205
	.byte	0x5
	.uleb128 0
	.long	.LASF206
	.byte	0x5
	.uleb128 0
	.long	.LASF207
	.byte	0x5
	.uleb128 0
	.long	.LASF208
	.byte	0x5
	.uleb128 0
	.long	.LASF209
	.byte	0x5
	.uleb128 0
	.long	.LASF210
	.byte	0x5
	.uleb128 0
	.long	.LASF211
	.byte	0x5
	.uleb128 0
	.long	.LASF212
	.byte	0x5
	.uleb128 0
	.long	.LASF213
	.byte	0x5
	.uleb128 0
	.long	.LASF214
	.byte	0x5
	.uleb128 0
	.long	.LASF215
	.byte	0x5
	.uleb128 0
	.long	.LASF216
	.byte	0x5
	.uleb128 0
	.long	.LASF217
	.byte	0x5
	.uleb128 0
	.long	.LASF218
	.byte	0x5
	.uleb128 0
	.long	.LASF219
	.byte	0x5
	.uleb128 0
	.long	.LASF220
	.byte	0x5
	.uleb128 0
	.long	.LASF221
	.byte	0x5
	.uleb128 0
	.long	.LASF222
	.byte	0x5
	.uleb128 0
	.long	.LASF223
	.byte	0x5
	.uleb128 0
	.long	.LASF224
	.byte	0x5
	.uleb128 0
	.long	.LASF225
	.byte	0x5
	.uleb128 0
	.long	.LASF226
	.byte	0x5
	.uleb128 0
	.long	.LASF227
	.byte	0x5
	.uleb128 0
	.long	.LASF228
	.byte	0x5
	.uleb128 0
	.long	.LASF229
	.byte	0x5
	.uleb128 0
	.long	.LASF230
	.byte	0x5
	.uleb128 0
	.long	.LASF231
	.byte	0x5
	.uleb128 0
	.long	.LASF232
	.byte	0x5
	.uleb128 0
	.long	.LASF233
	.byte	0x5
	.uleb128 0
	.long	.LASF234
	.byte	0x5
	.uleb128 0
	.long	.LASF235
	.byte	0x5
	.uleb128 0
	.long	.LASF236
	.byte	0x5
	.uleb128 0
	.long	.LASF237
	.byte	0x5
	.uleb128 0
	.long	.LASF238
	.byte	0x5
	.uleb128 0
	.long	.LASF239
	.byte	0x5
	.uleb128 0
	.long	.LASF240
	.byte	0x5
	.uleb128 0
	.long	.LASF241
	.byte	0x5
	.uleb128 0
	.long	.LASF242
	.byte	0x5
	.uleb128 0
	.long	.LASF243
	.byte	0x5
	.uleb128 0
	.long	.LASF244
	.byte	0x5
	.uleb128 0
	.long	.LASF245
	.byte	0x5
	.uleb128 0
	.long	.LASF246
	.byte	0x5
	.uleb128 0
	.long	.LASF247
	.byte	0x5
	.uleb128 0
	.long	.LASF248
	.byte	0x5
	.uleb128 0
	.long	.LASF249
	.byte	0x5
	.uleb128 0
	.long	.LASF250
	.byte	0x5
	.uleb128 0
	.long	.LASF251
	.byte	0x5
	.uleb128 0
	.long	.LASF252
	.byte	0x5
	.uleb128 0
	.long	.LASF253
	.byte	0x5
	.uleb128 0
	.long	.LASF254
	.byte	0x5
	.uleb128 0
	.long	.LASF255
	.byte	0x5
	.uleb128 0
	.long	.LASF256
	.byte	0x5
	.uleb128 0
	.long	.LASF257
	.byte	0x5
	.uleb128 0
	.long	.LASF258
	.byte	0x5
	.uleb128 0
	.long	.LASF259
	.byte	0x5
	.uleb128 0
	.long	.LASF260
	.byte	0x5
	.uleb128 0
	.long	.LASF261
	.byte	0x5
	.uleb128 0
	.long	.LASF262
	.byte	0x5
	.uleb128 0
	.long	.LASF263
	.byte	0x5
	.uleb128 0
	.long	.LASF264
	.byte	0x5
	.uleb128 0
	.long	.LASF265
	.byte	0x5
	.uleb128 0
	.long	.LASF266
	.byte	0x5
	.uleb128 0
	.long	.LASF267
	.byte	0x5
	.uleb128 0
	.long	.LASF268
	.byte	0x5
	.uleb128 0
	.long	.LASF269
	.byte	0x5
	.uleb128 0
	.long	.LASF270
	.byte	0x5
	.uleb128 0
	.long	.LASF271
	.byte	0x5
	.uleb128 0
	.long	.LASF272
	.byte	0x5
	.uleb128 0
	.long	.LASF273
	.byte	0x5
	.uleb128 0
	.long	.LASF274
	.byte	0x5
	.uleb128 0
	.long	.LASF275
	.byte	0x5
	.uleb128 0
	.long	.LASF276
	.byte	0x5
	.uleb128 0
	.long	.LASF277
	.byte	0x5
	.uleb128 0
	.long	.LASF278
	.byte	0x5
	.uleb128 0
	.long	.LASF279
	.byte	0x5
	.uleb128 0
	.long	.LASF280
	.byte	0x5
	.uleb128 0
	.long	.LASF281
	.byte	0x5
	.uleb128 0
	.long	.LASF282
	.byte	0x5
	.uleb128 0
	.long	.LASF283
	.byte	0x5
	.uleb128 0
	.long	.LASF284
	.byte	0x5
	.uleb128 0
	.long	.LASF285
	.byte	0x5
	.uleb128 0
	.long	.LASF286
	.byte	0x5
	.uleb128 0
	.long	.LASF287
	.byte	0x5
	.uleb128 0
	.long	.LASF288
	.byte	0x5
	.uleb128 0
	.long	.LASF289
	.byte	0x5
	.uleb128 0
	.long	.LASF290
	.byte	0x5
	.uleb128 0
	.long	.LASF291
	.byte	0x5
	.uleb128 0
	.long	.LASF292
	.byte	0x5
	.uleb128 0
	.long	.LASF293
	.byte	0x5
	.uleb128 0
	.long	.LASF294
	.byte	0x5
	.uleb128 0
	.long	.LASF295
	.byte	0x5
	.uleb128 0
	.long	.LASF296
	.byte	0x5
	.uleb128 0
	.long	.LASF297
	.byte	0x5
	.uleb128 0
	.long	.LASF298
	.byte	0x5
	.uleb128 0
	.long	.LASF299
	.byte	0x5
	.uleb128 0
	.long	.LASF300
	.byte	0x5
	.uleb128 0
	.long	.LASF301
	.byte	0x5
	.uleb128 0
	.long	.LASF302
	.byte	0x5
	.uleb128 0
	.long	.LASF303
	.byte	0x5
	.uleb128 0
	.long	.LASF304
	.byte	0x5
	.uleb128 0
	.long	.LASF305
	.byte	0x5
	.uleb128 0
	.long	.LASF306
	.byte	0x5
	.uleb128 0
	.long	.LASF307
	.byte	0x5
	.uleb128 0
	.long	.LASF308
	.byte	0x5
	.uleb128 0
	.long	.LASF309
	.byte	0x5
	.uleb128 0
	.long	.LASF310
	.byte	0x5
	.uleb128 0
	.long	.LASF311
	.byte	0x5
	.uleb128 0
	.long	.LASF312
	.byte	0x5
	.uleb128 0
	.long	.LASF313
	.byte	0x5
	.uleb128 0
	.long	.LASF314
	.byte	0x5
	.uleb128 0
	.long	.LASF315
	.byte	0x5
	.uleb128 0
	.long	.LASF316
	.byte	0x5
	.uleb128 0
	.long	.LASF317
	.byte	0x5
	.uleb128 0
	.long	.LASF318
	.byte	0x5
	.uleb128 0
	.long	.LASF319
	.byte	0x5
	.uleb128 0
	.long	.LASF320
	.byte	0x5
	.uleb128 0
	.long	.LASF321
	.byte	0x5
	.uleb128 0
	.long	.LASF322
	.byte	0x5
	.uleb128 0
	.long	.LASF323
	.byte	0x5
	.uleb128 0
	.long	.LASF324
	.byte	0x5
	.uleb128 0
	.long	.LASF325
	.byte	0x5
	.uleb128 0
	.long	.LASF326
	.byte	0x5
	.uleb128 0
	.long	.LASF327
	.byte	0x5
	.uleb128 0
	.long	.LASF328
	.byte	0x5
	.uleb128 0
	.long	.LASF329
	.byte	0x5
	.uleb128 0
	.long	.LASF330
	.byte	0x5
	.uleb128 0
	.long	.LASF331
	.byte	0x5
	.uleb128 0
	.long	.LASF332
	.byte	0x5
	.uleb128 0
	.long	.LASF333
	.byte	0x5
	.uleb128 0
	.long	.LASF334
	.byte	0x5
	.uleb128 0
	.long	.LASF335
	.byte	0x5
	.uleb128 0
	.long	.LASF336
	.byte	0x5
	.uleb128 0
	.long	.LASF337
	.byte	0x5
	.uleb128 0
	.long	.LASF338
	.byte	0x5
	.uleb128 0
	.long	.LASF339
	.byte	0x5
	.uleb128 0
	.long	.LASF340
	.byte	0x5
	.uleb128 0
	.long	.LASF341
	.byte	0x5
	.uleb128 0
	.long	.LASF342
	.byte	0x5
	.uleb128 0
	.long	.LASF343
	.byte	0x5
	.uleb128 0
	.long	.LASF344
	.byte	0x5
	.uleb128 0
	.long	.LASF345
	.byte	0x5
	.uleb128 0
	.long	.LASF346
	.byte	0x5
	.uleb128 0
	.long	.LASF347
	.byte	0x5
	.uleb128 0
	.long	.LASF348
	.byte	0x5
	.uleb128 0
	.long	.LASF349
	.byte	0x5
	.uleb128 0
	.long	.LASF350
	.byte	0x5
	.uleb128 0
	.long	.LASF351
	.byte	0x5
	.uleb128 0
	.long	.LASF352
	.byte	0x5
	.uleb128 0
	.long	.LASF353
	.byte	0x5
	.uleb128 0
	.long	.LASF354
	.byte	0x5
	.uleb128 0
	.long	.LASF355
	.byte	0x5
	.uleb128 0
	.long	.LASF356
	.byte	0x5
	.uleb128 0
	.long	.LASF357
	.byte	0x5
	.uleb128 0
	.long	.LASF358
	.byte	0x5
	.uleb128 0
	.long	.LASF359
	.byte	0x5
	.uleb128 0
	.long	.LASF360
	.byte	0x5
	.uleb128 0
	.long	.LASF361
	.byte	0x5
	.uleb128 0
	.long	.LASF362
	.byte	0x5
	.uleb128 0
	.long	.LASF363
	.byte	0x5
	.uleb128 0
	.long	.LASF364
	.byte	0x5
	.uleb128 0
	.long	.LASF365
	.byte	0x5
	.uleb128 0
	.long	.LASF366
	.byte	0x5
	.uleb128 0
	.long	.LASF367
	.byte	0x5
	.uleb128 0
	.long	.LASF368
	.byte	0x5
	.uleb128 0
	.long	.LASF369
	.byte	0x5
	.uleb128 0
	.long	.LASF370
	.byte	0x5
	.uleb128 0
	.long	.LASF371
	.byte	0x5
	.uleb128 0
	.long	.LASF372
	.byte	0x5
	.uleb128 0
	.long	.LASF373
	.byte	0x5
	.uleb128 0
	.long	.LASF374
	.byte	0x5
	.uleb128 0
	.long	.LASF375
	.byte	0x5
	.uleb128 0
	.long	.LASF376
	.byte	0x5
	.uleb128 0
	.long	.LASF377
	.byte	0x5
	.uleb128 0
	.long	.LASF378
	.byte	0x5
	.uleb128 0
	.long	.LASF379
	.byte	0x5
	.uleb128 0
	.long	.LASF380
	.byte	0x5
	.uleb128 0
	.long	.LASF381
	.byte	0x5
	.uleb128 0
	.long	.LASF382
	.byte	0x5
	.uleb128 0
	.long	.LASF383
	.byte	0x5
	.uleb128 0
	.long	.LASF384
	.byte	0x5
	.uleb128 0
	.long	.LASF385
	.byte	0x5
	.uleb128 0
	.long	.LASF386
	.byte	0x5
	.uleb128 0
	.long	.LASF387
	.byte	0x5
	.uleb128 0
	.long	.LASF388
	.byte	0x5
	.uleb128 0
	.long	.LASF389
	.byte	0x5
	.uleb128 0
	.long	.LASF390
	.byte	0x5
	.uleb128 0
	.long	.LASF391
	.byte	0x5
	.uleb128 0
	.long	.LASF392
	.byte	0x5
	.uleb128 0
	.long	.LASF393
	.byte	0x5
	.uleb128 0
	.long	.LASF394
	.byte	0x5
	.uleb128 0
	.long	.LASF395
	.byte	0x5
	.uleb128 0
	.long	.LASF396
	.byte	0x5
	.uleb128 0
	.long	.LASF397
	.byte	0x5
	.uleb128 0
	.long	.LASF398
	.byte	0x5
	.uleb128 0
	.long	.LASF399
	.byte	0x5
	.uleb128 0
	.long	.LASF400
	.byte	0x5
	.uleb128 0
	.long	.LASF401
	.byte	0x5
	.uleb128 0
	.long	.LASF402
	.byte	0x5
	.uleb128 0
	.long	.LASF403
	.byte	0x5
	.uleb128 0
	.long	.LASF404
	.byte	0x5
	.uleb128 0
	.long	.LASF405
	.byte	0x5
	.uleb128 0
	.long	.LASF406
	.byte	0x5
	.uleb128 0
	.long	.LASF407
	.byte	0x5
	.uleb128 0
	.long	.LASF408
	.byte	0x5
	.uleb128 0
	.long	.LASF409
	.byte	0x5
	.uleb128 0
	.long	.LASF410
	.byte	0x5
	.uleb128 0
	.long	.LASF411
	.byte	0x5
	.uleb128 0
	.long	.LASF412
	.byte	0x5
	.uleb128 0
	.long	.LASF413
	.byte	0x5
	.uleb128 0
	.long	.LASF414
	.byte	0x5
	.uleb128 0
	.long	.LASF415
	.byte	0x5
	.uleb128 0
	.long	.LASF416
	.byte	0x5
	.uleb128 0
	.long	.LASF417
	.byte	0x5
	.uleb128 0
	.long	.LASF418
	.byte	0x5
	.uleb128 0
	.long	.LASF419
	.byte	0x5
	.uleb128 0
	.long	.LASF420
	.byte	0x5
	.uleb128 0
	.long	.LASF421
	.byte	0x5
	.uleb128 0
	.long	.LASF422
	.byte	0x5
	.uleb128 0
	.long	.LASF423
	.byte	0x5
	.uleb128 0
	.long	.LASF424
	.byte	0x5
	.uleb128 0
	.long	.LASF425
	.byte	0x5
	.uleb128 0
	.long	.LASF426
	.byte	0x5
	.uleb128 0
	.long	.LASF427
	.byte	0x5
	.uleb128 0
	.long	.LASF428
	.byte	0x5
	.uleb128 0
	.long	.LASF429
	.byte	0x5
	.uleb128 0
	.long	.LASF430
	.byte	0x5
	.uleb128 0
	.long	.LASF431
	.byte	0x5
	.uleb128 0
	.long	.LASF432
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.Types.h.2.be02644512a01fb1420133877253fb4c,comdat
.Ldebug_macro3:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF434
	.byte	0x5
	.uleb128 0x12
	.long	.LASF435
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF277:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF327:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF168:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF315:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF272:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF243:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF103:
	.string	"__cpp_namespace_attributes 201411L"
.LASF359:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF534:
	.string	"debug"
.LASF202:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF648:
	.string	"isr17"
.LASF647:
	.string	"isr18"
.LASF495:
	.string	"_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE"
.LASF411:
	.string	"__amd64 1"
.LASF537:
	.string	"overflow"
.LASF267:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF285:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF126:
	.string	"__cpp_deduction_guides 201907L"
.LASF459:
	.string	"BrownOnBlack"
.LASF253:
	.string	"__LDBL_DIG__ 18"
.LASF473:
	.string	"BlackOnCyan"
.LASF472:
	.string	"WhiteOnGreen"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF334:
	.string	"__FLT32X_DIG__ 15"
.LASF339:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF563:
	.string	"securityException"
.LASF224:
	.string	"__FLT_MAX_EXP__ 128"
.LASF205:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF616:
	.string	"_ZN6Kernel6inByteEt"
.LASF676:
	.string	"flags"
.LASF340:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF120:
	.string	"__cpp_designated_initializers 201707L"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF347:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF213:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF95:
	.string	"__cpp_alias_templates 200704L"
.LASF263:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF151:
	.string	"__WINT_MIN__ 0U"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF454:
	.string	"BlueOnBlack"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF156:
	.string	"__INT_WIDTH__ 32"
.LASF79:
	.string	"__cpp_hex_float 201603L"
.LASF123:
	.string	"__cpp_conditional_explicit 201806L"
.LASF592:
	.string	"_ZN6Kernel16InterruptManager8s_idtPtrE"
.LASF155:
	.string	"__SHRT_WIDTH__ 16"
.LASF300:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF158:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF146:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF46:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF457:
	.string	"RedOnBlack"
.LASF333:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF483:
	.string	"CursorPos"
.LASF199:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF317:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF503:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF274:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF198:
	.string	"__UINT64_C(c) c ## UL"
.LASF467:
	.string	"YellowOnBlack"
.LASF581:
	.string	"s_entryFlags"
.LASF211:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF100:
	.string	"__cpp_digit_separators 201309L"
.LASF145:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF458:
	.string	"MagentaOnBlack"
.LASF373:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF270:
	.string	"__FLT16_DIG__ 3"
.LASF543:
	.string	"invalidTss"
.LASF50:
	.string	"__INT16_TYPE__ short int"
.LASF284:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF337:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF376:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF670:
	.string	"handler"
.LASF353:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF450:
	.string	"short int"
.LASF527:
	.string	"limit"
.LASF57:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF301:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF594:
	.string	"_ZN6Kernel16InterruptManager19s_interruptHandlersE"
.LASF63:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF571:
	.string	"irqFloppyDisk"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF262:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF644:
	.string	"isr21"
.LASF288:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF248:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF96:
	.string	"__cpp_return_type_deduction 201304L"
.LASF149:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF641:
	.string	"isr24"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF669:
	.string	"intVector"
.LASF61:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF64:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF684:
	.string	"_ZN6Kernel16InterruptManager10initializeEv"
.LASF336:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF36:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF184:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF567:
	.string	"irqCascade"
.LASF130:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF268:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF266:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF501:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF346:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF547:
	.string	"pageFault"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF470:
	.string	"WhiteOnBlue"
.LASF533:
	.string	"divideByZero"
.LASF236:
	.string	"__DBL_MANT_DIG__ 53"
.LASF655:
	.string	"isr10"
.LASF654:
	.string	"isr11"
.LASF653:
	.string	"isr12"
.LASF652:
	.string	"isr13"
.LASF651:
	.string	"isr14"
.LASF650:
	.string	"isr15"
.LASF649:
	.string	"isr16"
.LASF549:
	.string	"x87FloatingPointException"
.LASF646:
	.string	"isr19"
.LASF686:
	.string	"_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE"
.LASF466:
	.string	"LightMagentaOnBlack"
.LASF445:
	.string	"uint32_t"
.LASF112:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF316:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF222:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF297:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF602:
	.string	"setupIdt"
.LASF623:
	.string	"irq10"
.LASF622:
	.string	"irq11"
.LASF621:
	.string	"irq12"
.LASF620:
	.string	"irq13"
.LASF619:
	.string	"irq14"
.LASF618:
	.string	"irq15"
.LASF417:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF221:
	.string	"__FLT_DIG__ 6"
.LASF201:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF390:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF293:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF463:
	.string	"LightGreenOnBlack"
.LASF351:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF528:
	.string	"base"
.LASF671:
	.string	"index"
.LASF99:
	.string	"__cpp_variable_templates 201304L"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF304:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF319:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF299:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF193:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF210:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF261:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF7:
	.string	"__GNUC__ 13"
.LASF455:
	.string	"GreenOnBlack"
.LASF264:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF448:
	.string	"long long unsigned int"
.LASF554:
	.string	"controlProtectionException"
.LASF523:
	.string	"isrMid"
.LASF645:
	.string	"isr20"
.LASF667:
	.string	"irq_handler"
.LASF643:
	.string	"isr22"
.LASF642:
	.string	"isr23"
.LASF508:
	.string	"getExtent"
.LASF520:
	.string	"isrLow"
.LASF639:
	.string	"isr26"
.LASF638:
	.string	"isr27"
.LASF637:
	.string	"isr28"
.LASF636:
	.string	"isr29"
.LASF219:
	.string	"__FLT_RADIX__ 2"
.LASF344:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF107:
	.string	"__cpp_range_based_for 201603L"
.LASF529:
	.string	"Console"
.LASF349:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF250:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF364:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF600:
	.string	"IsrPtr_t"
.LASF65:
	.string	"__INT_FAST8_TYPE__ int"
.LASF479:
	.string	"BlackOnBrown"
.LASF70:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF60:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF595:
	.string	"registerInterruptCallback"
.LASF131:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF590:
	.string	"s_idtPtr"
.LASF568:
	.string	"irqCom2"
.LASF73:
	.string	"__INTPTR_TYPE__ long int"
.LASF665:
	.string	"isr0"
.LASF475:
	.string	"BlackOnRed"
.LASF663:
	.string	"isr2"
.LASF662:
	.string	"isr3"
.LASF661:
	.string	"isr4"
.LASF660:
	.string	"isr5"
.LASF659:
	.string	"isr6"
.LASF658:
	.string	"isr7"
.LASF657:
	.string	"isr8"
.LASF608:
	.string	"_ZN6Kernel16InterruptManager8remapPicEv"
.LASF190:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF306:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF82:
	.string	"__cpp_unicode_literals 200710L"
.LASF545:
	.string	"stackSegmentFault"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF597:
	.string	"_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE"
.LASF234:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF588:
	.string	"_ZN6Kernel16InterruptManager16s_interruptCountE"
.LASF132:
	.string	"__cpp_aggregate_paren_init 201902L"
.LASF51:
	.string	"__INT32_TYPE__ int"
.LASF325:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF635:
	.string	"isr30"
.LASF634:
	.string	"isr31"
.LASF361:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF302:
	.string	"__FLT64_DIG__ 15"
.LASF440:
	.string	"size_t"
.LASF683:
	.string	"initialize"
.LASF18:
	.string	"_LP64 1"
.LASF485:
	.string	"width"
.LASF280:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF2:
	.string	"__STDC__ 1"
.LASF610:
	.string	"_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh"
.LASF75:
	.string	"__GXX_WEAK__ 1"
.LASF352:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF244:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF589:
	.string	"s_exceptionMessages"
.LASF207:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF423:
	.string	"__MMX__ 1"
.LASF322:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF546:
	.string	"generalProtectionFault"
.LASF289:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF664:
	.string	"isr1"
.LASF434:
	.string	"TYPES_H "
.LASF432:
	.string	"__ELF__ 1"
.LASF372:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF412:
	.string	"__amd64__ 1"
.LASF414:
	.string	"__x86_64__ 1"
.LASF66:
	.string	"__INT_FAST16_TYPE__ int"
.LASF687:
	.string	"gdt64_code_segment"
.LASF271:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF196:
	.string	"__UINT32_C(c) c ## U"
.LASF604:
	.string	"_ZN6Kernel16InterruptManager8setupIdtEv"
.LASF54:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF318:
	.string	"__FLT128_DIG__ 33"
.LASF656:
	.string	"isr9"
.LASF159:
	.string	"__WCHAR_WIDTH__ 32"
.LASF298:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF377:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF531:
	.string	"Attributes"
.LASF138:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF135:
	.string	"__cpp_impl_coroutine 201902L"
.LASF147:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF489:
	.string	"_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE"
.LASF62:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF225:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF121:
	.string	"__cpp_constexpr 202002L"
.LASF471:
	.string	"BlackOnGreen"
.LASF125:
	.string	"__cpp_constinit 201907L"
.LASF204:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF273:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF137:
	.string	"__cpp_aligned_new 201606L"
.LASF488:
	.string	"writeString"
.LASF384:
	.string	"__NO_INLINE__ 1"
.LASF3:
	.string	"__cplusplus 202002L"
.LASF105:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF163:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF382:
	.string	"__USER_LABEL_PREFIX__ "
.LASF307:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF230:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF350:
	.string	"__FLT64X_DIG__ 18"
.LASF287:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF39:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF260:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF510:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF491:
	.string	"_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE"
.LASF591:
	.string	"_ZN6Kernel16InterruptManager19s_exceptionMessagesE"
.LASF433:
	.string	"INTERRUPT_MANAGER_H "
.LASF239:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF617:
	.string	"char"
.LASF223:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF56:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF518:
	.string	"InterruptFrame"
.LASF673:
	.string	"mask2"
.LASF496:
	.string	"_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE"
.LASF441:
	.string	"uint8_t"
.LASF609:
	.string	"handleInterrupt"
.LASF87:
	.string	"__cpp_rvalue_reference 200610L"
.LASF345:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF482:
	.string	"WhiteOnLightGray"
.LASF548:
	.string	"reserved15"
.LASF94:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF69:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF311:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF582:
	.string	"s_tableSize"
.LASF565:
	.string	"irqSystemTimer"
.LASF326:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF378:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF203:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF480:
	.string	"WhiteOnBrown"
.LASF181:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF175:
	.string	"__UINT8_MAX__ 0xff"
.LASF585:
	.string	"s_exceptionCount"
.LASF68:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF278:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF601:
	.string	"updateHardwareCursor"
.LASF167:
	.string	"__INTMAX_WIDTH__ 64"
.LASF421:
	.string	"__k8__ 1"
.LASF251:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF539:
	.string	"invalidOpcode"
.LASF152:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF603:
	.string	"_ZN6Kernel7Console20updateHardwareCursorEv"
.LASF58:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF535:
	.string	"nonMaskableInterrupt"
.LASF124:
	.string	"__cpp_consteval 201811L"
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF238:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF180:
	.string	"__INT8_C(c) c"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF179:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF605:
	.string	"loadIdt"
.LASF19:
	.string	"__LP64__ 1"
.LASF442:
	.string	"unsigned char"
.LASF680:
	.string	"_ZN6Kernel7Console5printIJEEEvPKcDpT_"
.LASF321:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF269:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF584:
	.string	"_ZN6Kernel16InterruptManager11s_tableSizeE"
.LASF85:
	.string	"__cpp_decltype 200707L"
.LASF507:
	.string	"getCursor"
.LASF291:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF76:
	.string	"__DEPRECATED 1"
.LASF555:
	.string	"reserved22"
.LASF556:
	.string	"reserved23"
.LASF557:
	.string	"reserved24"
.LASF558:
	.string	"reserved25"
.LASF451:
	.string	"long long int"
.LASF678:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF92:
	.string	"__cpp_nsdmi 200809L"
.LASF348:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF541:
	.string	"doubleFault"
.LASF615:
	.string	"inByte"
.LASF177:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF366:
	.string	"__BFLT16_DIG__ 2"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF254:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF308:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF114:
	.string	"__cpp_structured_bindings 201606L"
.LASF431:
	.string	"__SEG_GS 1"
.LASF240:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF197:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF113:
	.string	"__cpp_template_auto 201606L"
.LASF613:
	.string	"outByte"
.LASF165:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF171:
	.string	"__INT8_MAX__ 0x7f"
.LASF74:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF362:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF183:
	.string	"__INT16_C(c) c"
.LASF182:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF129:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF363:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF233:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF370:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF420:
	.string	"__k8 1"
.LASF282:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF436:
	.string	"CONSOLE_H "
.LASF575:
	.string	"irqAvailable10"
.LASF576:
	.string	"irqAvailable11"
.LASF425:
	.string	"__SSE2__ 1"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF191:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF21:
	.string	"__SIZEOF_LONG__ 8"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF579:
	.string	"irqPrimaryAta"
.LASF215:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF88:
	.string	"__cpp_rvalue_references 200610L"
.LASF481:
	.string	"BlackOnLightGray"
.LASF172:
	.string	"__INT16_MAX__ 0x7fff"
.LASF681:
	.string	"s_idtEntries"
.LASF97:
	.string	"__cpp_decltype_auto 201304L"
.LASF133:
	.string	"__cpp_using_enum 201907L"
.LASF55:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF286:
	.string	"__FLT32_DIG__ 6"
.LASF25:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF192:
	.string	"__UINT8_C(c) c"
.LASF77:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF275:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF599:
	.string	"setIdtGate"
.LASF52:
	.string	"__INT64_TYPE__ long int"
.LASF252:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF569:
	.string	"irqCom1"
.LASF89:
	.string	"__cpp_variadic_templates 200704L"
.LASF228:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF110:
	.string	"__cpp_inline_variables 201606L"
.LASF426:
	.string	"__FXSR__ 1"
.LASF486:
	.string	"height"
.LASF561:
	.string	"hypervisorInjectionException"
.LASF517:
	.string	"rflags"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF583:
	.string	"_ZN6Kernel16InterruptManager12s_entryFlagsE"
.LASF461:
	.string	"DarkGrayOnBlack"
.LASF37:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF256:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF116:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF310:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF580:
	.string	"irqSecondaryAta"
.LASF468:
	.string	"WhiteOnBlack"
.LASF320:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF34:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF544:
	.string	"segmentNotPresent"
.LASF672:
	.string	"mask1"
.LASF469:
	.string	"BlackOnBlue"
.LASF474:
	.string	"WhiteOnCyan"
.LASF169:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF127:
	.string	"__cpp_nontype_template_args 201911L"
.LASF437:
	.string	"UTILS_H "
.LASF173:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF532:
	.string	"InterruptVector"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF194:
	.string	"__UINT16_C(c) c"
.LASF343:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF174:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF305:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF572:
	.string	"irqLpt1"
.LASF570:
	.string	"irqLpt2"
.LASF356:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF106:
	.string	"__cpp_fold_expressions 201603L"
.LASF427:
	.string	"__SSE_MATH__ 1"
.LASF443:
	.string	"uint16_t"
.LASF44:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF281:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF462:
	.string	"LightBlueOnBlack"
.LASF562:
	.string	"vmmCommunicationException"
.LASF607:
	.string	"remapPic"
.LASF134:
	.string	"__cpp_concepts 202002L"
.LASF188:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF104:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF170:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF80:
	.string	"__cpp_runtime_arrays 198712L"
.LASF380:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF460:
	.string	"LightGrayOnBlack"
.LASF144:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF493:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF117:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF560:
	.string	"reserved27"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF140:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF497:
	.string	"clear"
.LASF216:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF235:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF160:
	.string	"__WINT_WIDTH__ 32"
.LASF358:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF381:
	.string	"__REGISTER_PREFIX__ "
.LASF295:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF413:
	.string	"__x86_64 1"
.LASF542:
	.string	"coprocessorSegmentOverrun"
.LASF674:
	.string	"interruptServiceRoutine"
.LASF586:
	.string	"_ZN6Kernel16InterruptManager16s_exceptionCountE"
.LASF331:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF142:
	.string	"__GXX_ABI_VERSION 1018"
.LASF141:
	.string	"__cpp_char8_t 202207L"
.LASF612:
	.string	"InterruptHandler"
.LASF492:
	.string	"putChar"
.LASF439:
	.string	"long int"
.LASF111:
	.string	"__cpp_aggregate_bases 201603L"
.LASF166:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF47:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF374:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF354:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF509:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF357:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF335:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF477:
	.string	"BlackOnMagenta"
.LASF212:
	.string	"__INTPTR_WIDTH__ 64"
.LASF342:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF369:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF186:
	.string	"__INT32_C(c) c"
.LASF176:
	.string	"__UINT16_MAX__ 0xffff"
.LASF593:
	.string	"s_interruptHandlers"
.LASF49:
	.string	"__INT8_TYPE__ signed char"
.LASF41:
	.string	"__WCHAR_TYPE__ int"
.LASF45:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF596:
	.string	"_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE"
.LASF154:
	.string	"__SCHAR_WIDTH__ 8"
.LASF682:
	.string	"_ZN6Kernel16InterruptManager12s_idtEntriesE"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF314:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF499:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF484:
	.string	"Extent"
.LASF447:
	.string	"uint64_t"
.LASF514:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF553:
	.string	"virtualizationException"
.LASF367:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF209:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF108:
	.string	"__cpp_if_constexpr 201606L"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF506:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF128:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF456:
	.string	"CyanOnBlack"
.LASF245:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF279:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF53:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF578:
	.string	"irqFpu"
.LASF428:
	.string	"__SSE2_MATH__ 1"
.LASF487:
	.string	"writeChar"
.LASF606:
	.string	"_ZN6Kernel16InterruptManager7loadIdtEv"
.LASF309:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF504:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF164:
	.string	"__INTMAX_C(c) c ## L"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF502:
	.string	"clearSpan"
.LASF368:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF446:
	.string	"unsigned int"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF519:
	.string	"IDTEntry"
.LASF668:
	.string	"isr_handler"
.LASF90:
	.string	"__cpp_initializer_lists 200806L"
.LASF38:
	.string	"__GNUG__ 13"
.LASF148:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF564:
	.string	"reserved31"
.LASF220:
	.string	"__FLT_MANT_DIG__ 24"
.LASF536:
	.string	"breakpoint"
.LASF231:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF511:
	.string	"getWindowCapacity"
.LASF478:
	.string	"WhiteOnMagenta"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF430:
	.string	"__SEG_FS 1"
.LASF498:
	.string	"clearLine"
.LASF379:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF438:
	.string	"long unsigned int"
.LASF530:
	.string	"InterruptManager"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF598:
	.string	"print<>"
.LASF28:
	.string	"__CHAR_BIT__ 8"
.LASF559:
	.string	"reserved26"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF296:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF162:
	.string	"__SIZE_WIDTH__ 64"
.LASF552:
	.string	"simdFloatingPointException"
.LASF283:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF290:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF157:
	.string	"__LONG_WIDTH__ 64"
.LASF178:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF677:
	.string	"entry"
.LASF633:
	.string	"irq0"
.LASF632:
	.string	"irq1"
.LASF631:
	.string	"irq2"
.LASF630:
	.string	"irq3"
.LASF629:
	.string	"irq4"
.LASF628:
	.string	"irq5"
.LASF627:
	.string	"irq6"
.LASF626:
	.string	"irq7"
.LASF625:
	.string	"irq8"
.LASF624:
	.string	"irq9"
.LASF577:
	.string	"irqPs2Mouse"
.LASF229:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF122:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF294:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF218:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF512:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF614:
	.string	"_ZN6Kernel7outByteEth"
.LASF93:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF675:
	.string	"interruptStackTable"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF187:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF313:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF494:
	.string	"putString"
.LASF71:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF522:
	.string	"attributes"
.LASF255:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF566:
	.string	"irqKeyboard"
.LASF303:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF59:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF500:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF465:
	.string	"LightRedOnBlack"
.LASF84:
	.string	"__cpp_lambdas 200907L"
.LASF153:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF540:
	.string	"deviceNotAvailable"
.LASF150:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF246:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF355:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF139:
	.string	"__cpp_template_template_args 201611L"
.LASF371:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF86:
	.string	"__cpp_attributes 200809L"
.LASF516:
	.string	"error_code"
.LASF476:
	.string	"WhiteOnRed"
.LASF550:
	.string	"alignmentCheck"
.LASF217:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF249:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF679:
	.string	"Kernel"
.LASF189:
	.string	"__INT64_C(c) c ## L"
.LASF513:
	.string	"scrollDown"
.LASF67:
	.string	"__INT_FAST32_TYPE__ int"
.LASF227:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF161:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF98:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF666:
	.string	"frame"
.LASF526:
	.string	"IDTPtr"
.LASF587:
	.string	"s_interruptCount"
.LASF259:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF78:
	.string	"__cpp_binary_literals 201304L"
.LASF83:
	.string	"__cpp_user_defined_literals 200809L"
.LASF143:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF365:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF449:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF685:
	.string	"handleException"
.LASF241:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF574:
	.string	"irqAcpi"
.LASF258:
	.string	"__DECIMAL_DIG__ 21"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF444:
	.string	"short unsigned int"
.LASF375:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF383:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF109:
	.string	"__cpp_capture_star_this 201603L"
.LASF101:
	.string	"__cpp_unicode_characters 201411L"
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF524:
	.string	"isrHigh"
.LASF328:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF573:
	.string	"irqRealTimeClock"
.LASF505:
	.string	"setCursor"
.LASF330:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF200:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF324:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF490:
	.string	"_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE"
.LASF525:
	.string	"reserved"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF551:
	.string	"machineCheck"
.LASF515:
	.string	"interrupt_number"
.LASF208:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF640:
	.string	"isr25"
.LASF453:
	.string	"BlackOnBlack"
.LASF611:
	.string	"_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE"
.LASF276:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF312:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF195:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF538:
	.string	"boundRangeExceeded"
.LASF338:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF43:
	.string	"__INTMAX_TYPE__ long int"
.LASF521:
	.string	"kernelCs"
.LASF341:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF242:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF81:
	.string	"__cpp_raw_strings 200710L"
.LASF247:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF40:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF452:
	.string	"bool"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF323:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF102:
	.string	"__cpp_static_assert 201411L"
.LASF185:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF72:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF257:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF118:
	.string	"__cpp_init_captures 201803L"
.LASF292:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF406:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF48:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF360:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF91:
	.string	"__cpp_delegating_constructors 200604L"
.LASF136:
	.string	"__cpp_sized_deallocation 201309L"
.LASF329:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF115:
	.string	"__cpp_variadic_using 201611L"
.LASF332:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF42:
	.string	"__WINT_TYPE__ unsigned int"
.LASF265:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF464:
	.string	"LightCyanOnBlack"
.LASF226:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF119:
	.string	"__cpp_generic_lambdas 201707L"
.LASF237:
	.string	"__DBL_DIG__ 15"
.LASF424:
	.string	"__SSE__ 1"
.LASF232:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF206:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF214:
	.string	"__GCC_IEC_559 2"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/kernel/InterruptManager.cpp"
.LASF1:
	.string	"/mnt/a/myOsX64"
	.ident	"GCC: (GNU) 13.2.0"
