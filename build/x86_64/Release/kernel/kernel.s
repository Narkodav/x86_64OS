	.file	"kernel.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/kernel.cpp"
	.globl	__cxa_pure_virtual
	.type	__cxa_pure_virtual, @function
__cxa_pure_virtual:
.LFB32:
	.file 1 "src/kernel/kernel.cpp"
	.loc 1 7 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
.L2:
	.loc 1 8 5
	jmp	.L2
	.cfi_endproc
.LFE32:
	.size	__cxa_pure_virtual, .-__cxa_pure_virtual
	.globl	counter
	.section	.bss
	.type	counter, @object
	.size	counter, 1
counter:
	.zero	1
	.section	.rodata
.LC0:
	.string	"function\n"
	.text
	.globl	_Z8functionRmS_
	.type	_Z8functionRmS_, @function
_Z8functionRmS_:
.LFB33:
	.loc 1 21 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 22 31
	movl	$15, %esi
	movq	$.LC0, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 1 23 9
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 23 19
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 23 5
	cmpq	%rax, %rdx
	jnb	.L5
	.loc 1 24 20
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 24 18
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 24 17
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z8functionRmS_
.L5:
	.loc 1 25 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	_Z8functionRmS_, .-_Z8functionRmS_
	.globl	_Z20handleTimerInterruptRN6Kernel14InterruptFrameE
	.type	_Z20handleTimerInterruptRN6Kernel14InterruptFrameE, @function
_Z20handleTimerInterruptRN6Kernel14InterruptFrameE:
.LFB34:
	.loc 1 28 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 31 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	_Z20handleTimerInterruptRN6Kernel14InterruptFrameE, .-_Z20handleTimerInterruptRN6Kernel14InterruptFrameE
	.section	.rodata
.LC1:
	.string	"Key pressed: "
	.text
	.globl	_Z23handleKeyboardInterruptRN6Kernel14InterruptFrameE
	.type	_Z23handleKeyboardInterruptRN6Kernel14InterruptFrameE, @function
_Z23handleKeyboardInterruptRN6Kernel14InterruptFrameE:
.LFB35:
	.loc 1 34 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 36 30
	movl	$96, %edi
	call	_ZN6Kernel6inByteEt
	movb	%al, -1(%rbp)
	.loc 1 37 23
	movl	$15, %esi
	movq	$.LC1, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 1 38 23
	movzbl	-1(%rbp), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumBinIhEEvT_NS0_10AttributesE
	.loc 1 39 21
	movl	$15, %esi
	movl	$10, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 1 40 1
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	_Z23handleKeyboardInterruptRN6Kernel14InterruptFrameE, .-_Z23handleKeyboardInterruptRN6Kernel14InterruptFrameE
	.section	.rodata
.LC2:
	.string	"Stack bottom: %x\n"
.LC3:
	.string	"Stack top: %x\n"
.LC4:
	.string	"Stack size: %x\n"
	.align 8
.LC5:
	.string	"64-bit Kernel Booted Successfully!\n"
	.text
	.globl	kernel_main
	.type	kernel_main, @function
kernel_main:
.LFB36:
	.loc 1 43 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 67 19
	movl	$0, %esi
	movl	$0, %edi
	call	_ZN6Kernel7Console5clearEhNS0_10AttributesE
	.loc 1 69 19
	movq	$stack_bottom, %rsi
	movq	$.LC2, %rdi
	call	_ZN6Kernel7Console5printIJPhEEEvPKcDpT_
	.loc 1 70 19
	movq	$stack_top, %rsi
	movq	$.LC3, %rdi
	call	_ZN6Kernel7Console5printIJPhEEEvPKcDpT_
	.loc 1 71 19
	movq	$stack_top, %rax
	subq	$stack_bottom, %rax
	movq	%rax, %rsi
	movq	$.LC4, %rdi
	call	_ZN6Kernel7Console5printIJlEEEvPKcDpT_
	.loc 1 73 33
	call	_ZN6Kernel16InterruptManager10initializeEv
	.loc 1 74 48
	movq	$_Z23handleKeyboardInterruptRN6Kernel14InterruptFrameE, %rsi
	movl	$33, %edi
	call	_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE
	.loc 1 77 48
	movq	$_Z20handleTimerInterruptRN6Kernel14InterruptFrameE, %rsi
	movl	$32, %edi
	call	_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE
	.loc 1 81 26
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel9MemoryMap10initialiseEy
	.loc 1 83 23
	movl	$15, %esi
	movq	$.LC5, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
.L9:
	.loc 1 96 5
	jmp	.L9
	.cfi_endproc
.LFE36:
	.size	kernel_main, .-kernel_main
	.section	.rodata
.LC6:
	.string	"0b"
	.section	.text._ZN6Kernel7Console9putNumBinIhEEvT_NS0_10AttributesE,"axG",@progbits,_ZN6Kernel7Console9putNumBinIhEEvT_NS0_10AttributesE,comdat
	.weak	_ZN6Kernel7Console9putNumBinIhEEvT_NS0_10AttributesE
	.type	_ZN6Kernel7Console9putNumBinIhEEvT_NS0_10AttributesE, @function
_ZN6Kernel7Console9putNumBinIhEEvT_NS0_10AttributesE:
.LFB40:
	.file 2 "src/kernel/../../include/Console.h"
	.loc 2 83 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -36(%rbp)
	movb	%al, -40(%rbp)
	.loc 2 85 22
	movzbl	-40(%rbp), %eax
	movl	%eax, %esi
	movq	$.LC6, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 86 24
	movq	$8, -24(%rbp)
	.loc 2 87 38
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rdx
	.loc 2 87 51
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rax
	.loc 2 87 40
	imulq	%rax, %rdx
	.loc 2 87 71
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 2 87 20
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 88 20
	movq	$0, -8(%rbp)
	.loc 2 89 20
	movq	$0, -16(%rbp)
	.loc 2 90 13
	jmp	.L11
.L14:
	.loc 2 92 26
	movzbl	-36(%rbp), %eax
	.loc 2 92 17
	testb	%al, %al
	js	.L17
	.loc 2 94 21
	salb	-36(%rbp)
	.loc 2 90 13
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L11:
	.loc 2 90 22 discriminator 1
	cmpq	$7, -8(%rbp)
	jbe	.L14
	jmp	.L15
.L17:
	.loc 2 93 21
	nop
	.loc 2 96 13
	jmp	.L15
.L16:
	.loc 2 98 56
	movzbl	-36(%rbp), %eax
	shrb	$7, %al
	.loc 2 98 49
	addl	$48, %eax
	.loc 2 98 26
	movzbl	%al, %ecx
	.loc 2 98 29
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 98 26
	subq	-16(%rbp), %rax
	movzbl	-40(%rbp), %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 2 99 21
	salb	-36(%rbp)
	.loc 2 96 13 discriminator 2
	addq	$1, -8(%rbp)
.L15:
	.loc 2 96 22 discriminator 1
	cmpq	$7, -8(%rbp)
	jbe	.L16
	.loc 2 101 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 101 43
	addq	$8, %rax
	.loc 2 101 62
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rsi
	.loc 2 101 51
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	.loc 2 101 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 2 102 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 102 43
	addq	$8, %rax
	.loc 2 102 62
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rdi
	.loc 2 102 51
	movl	$0, %edx
	divq	%rdi
	.loc 2 102 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 2 103 33
	call	_ZN6Kernel7Console20updateHardwareCursorEv
	.loc 2 104 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	_ZN6Kernel7Console9putNumBinIhEEvT_NS0_10AttributesE, .-_ZN6Kernel7Console9putNumBinIhEEvT_NS0_10AttributesE
	.section	.text._ZN6Kernel7Console5printIJPhEEEvPKcDpT_,"axG",@progbits,_ZN6Kernel7Console5printIJPhEEEvPKcDpT_,comdat
	.weak	_ZN6Kernel7Console5printIJPhEEEvPKcDpT_
	.type	_ZN6Kernel7Console5printIJPhEEEvPKcDpT_, @function
_ZN6Kernel7Console5printIJPhEEEvPKcDpT_:
.LFB41:
	.loc 2 265 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 273 26
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_
	.loc 2 275 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	_ZN6Kernel7Console5printIJPhEEEvPKcDpT_, .-_ZN6Kernel7Console5printIJPhEEEvPKcDpT_
	.section	.text._ZN6Kernel7Console5printIJlEEEvPKcDpT_,"axG",@progbits,_ZN6Kernel7Console5printIJlEEEvPKcDpT_,comdat
	.weak	_ZN6Kernel7Console5printIJlEEEvPKcDpT_
	.type	_ZN6Kernel7Console5printIJlEEEvPKcDpT_, @function
_ZN6Kernel7Console5printIJlEEEvPKcDpT_:
.LFB42:
	.loc 2 265 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 273 26
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_
	.loc 2 275 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	_ZN6Kernel7Console5printIJlEEEvPKcDpT_, .-_ZN6Kernel7Console5printIJlEEEvPKcDpT_
	.section	.text._ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_:
.LFB43:
	.loc 2 173 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 175 13
	jmp	.L21
.L33:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L22
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L22
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L23
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L21
.L23:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L24
	movl	%eax, %eax
	movq	.L26(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_,comdat
	.align 8
	.align 4
.L26:
	.quad	.L30
	.quad	.L29
	.quad	.L28
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L27
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L24
	.quad	.L25
	.section	.text._ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_,comdat
.L28:
	.loc 2 194 36
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 195 36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 197 25
	jmp	.L31
.L30:
	.loc 2 205 36
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 206 36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 208 25
	jmp	.L31
.L25:
	.loc 2 216 36
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 217 36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 219 25
	jmp	.L31
.L29:
	.loc 2 227 36
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 228 36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 230 25
	jmp	.L31
.L27:
	.loc 2 238 36
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 239 36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 241 25
	jmp	.L31
.L24:
	.loc 2 243 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 244 32
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 245 25
	addq	$1, -8(%rbp)
	.loc 2 246 25
	jmp	.L21
.L31:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 252 34
	movq	-8(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 253 21
	jmp	.L20
.L22:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L21:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L33
.L20:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	_ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_, .-_ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_
	.section	.text._ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_:
.LFB44:
	.loc 2 173 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 175 13
	jmp	.L35
.L47:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L36
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L36
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L37
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L35
.L37:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L38
	movl	%eax, %eax
	movq	.L40(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_,comdat
	.align 8
	.align 4
.L40:
	.quad	.L44
	.quad	.L43
	.quad	.L42
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L41
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L39
	.section	.text._ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_,comdat
.L42:
	.loc 2 194 36
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 195 36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 197 25
	jmp	.L45
.L44:
	.loc 2 205 36
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 206 36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 208 25
	jmp	.L45
.L39:
	.loc 2 216 36
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 217 36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 219 25
	jmp	.L45
.L43:
	.loc 2 227 36
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 228 36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 230 25
	jmp	.L45
.L41:
	.loc 2 238 36
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 239 36
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 241 25
	jmp	.L45
.L38:
	.loc 2 243 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 244 32
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 245 25
	addq	$1, -8(%rbp)
	.loc 2 246 25
	jmp	.L35
.L45:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 252 34
	movq	-8(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 253 21
	jmp	.L34
.L36:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L35:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L47
.L34:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	_ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_, .-_ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_
	.section	.rodata
	.type	_ZSt9is_enum_vIN6Kernel14HeapLinkedList10BlockFlagsEE, @object
	.size	_ZSt9is_enum_vIN6Kernel14HeapLinkedList10BlockFlagsEE, 1
_ZSt9is_enum_vIN6Kernel14HeapLinkedList10BlockFlagsEE:
	.byte	1
	.type	_ZSt13is_integral_vIyE, @object
	.size	_ZSt13is_integral_vIyE, 1
_ZSt13is_integral_vIyE:
	.byte	1
	.type	_ZSt13is_integral_vIhE, @object
	.size	_ZSt13is_integral_vIhE, 1
_ZSt13is_integral_vIhE:
	.byte	1
	.type	_ZSt13is_integral_vIPhE, @object
	.size	_ZSt13is_integral_vIPhE, 1
_ZSt13is_integral_vIPhE:
	.zero	1
	.type	_ZSt9is_same_vIPhcE, @object
	.size	_ZSt9is_same_vIPhcE, 1
_ZSt9is_same_vIPhcE:
	.zero	1
	.type	_ZSt9is_same_vIPhPKcE, @object
	.size	_ZSt9is_same_vIPhPKcE, 1
_ZSt9is_same_vIPhPKcE:
	.zero	1
	.type	_ZSt13is_integral_vIlE, @object
	.size	_ZSt13is_integral_vIlE, 1
_ZSt13is_integral_vIlE:
	.zero	1
	.type	_ZSt9is_same_vIlcE, @object
	.size	_ZSt9is_same_vIlcE, 1
_ZSt9is_same_vIlcE:
	.zero	1
	.type	_ZSt9is_same_vIlPKcE, @object
	.size	_ZSt9is_same_vIlPKcE, 1
_ZSt9is_same_vIlPKcE:
	.zero	1
	.text
.Letext0:
	.file 3 "src/kernel/../../include/Types.h"
	.file 4 "src/kernel/../../include/InterruptManager.h"
	.file 5 "src/kernel/../../include/Heap.h"
	.file 6 "src/kernel/../../include/MemoryMap.h"
	.file 7 "src/kernel/../../include/Utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xfa4
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x33
	.long	.LASF694
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL0
	.quad	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0xe
	.long	.LASF442
	.byte	0x3
	.byte	0x5
	.byte	0x17
	.long	0x3f
	.uleb128 0x9
	.long	0x2e
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF440
	.uleb128 0x9
	.long	0x3f
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF441
	.uleb128 0xe
	.long	.LASF443
	.byte	0x3
	.byte	0x8
	.byte	0x17
	.long	0x63
	.uleb128 0x9
	.long	0x52
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF444
	.uleb128 0xe
	.long	.LASF445
	.byte	0x3
	.byte	0x9
	.byte	0x18
	.long	0x76
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF446
	.uleb128 0xe
	.long	.LASF447
	.byte	0x3
	.byte	0xa
	.byte	0x16
	.long	0x89
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF448
	.uleb128 0xe
	.long	.LASF449
	.byte	0x3
	.byte	0xb
	.byte	0x1c
	.long	0x9c
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF450
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF451
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF452
	.uleb128 0x34
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF453
	.uleb128 0x35
	.string	"std"
	.byte	0x3
	.byte	0x14
	.byte	0xb
	.long	0x127
	.uleb128 0x11
	.long	.LASF454
	.byte	0xd5
	.long	0x12e
	.byte	0x1
	.uleb128 0x11
	.long	.LASF455
	.byte	0x47
	.long	0x12e
	.byte	0x1
	.uleb128 0x11
	.long	.LASF455
	.byte	0x47
	.long	0x12e
	.byte	0x1
	.uleb128 0x11
	.long	.LASF455
	.byte	0x47
	.long	0x12e
	.byte	0
	.uleb128 0x16
	.long	.LASF456
	.long	0x12e
	.uleb128 0x16
	.long	.LASF456
	.long	0x12e
	.uleb128 0x11
	.long	.LASF455
	.byte	0x47
	.long	0x12e
	.byte	0
	.uleb128 0x16
	.long	.LASF456
	.long	0x12e
	.uleb128 0x16
	.long	.LASF456
	.long	0x12e
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.long	.LASF457
	.uleb128 0x9
	.long	0x127
	.uleb128 0x23
	.long	.LASF458
	.byte	0x2
	.byte	0x7
	.long	0xa8f
	.uleb128 0x17
	.long	.LASF538
	.byte	0x1
	.byte	0x2
	.byte	0x9
	.long	0x4ed
	.uleb128 0x1c
	.long	.LASF540
	.byte	0x1
	.long	0x52
	.byte	0x2
	.byte	0xc
	.long	0x20f
	.uleb128 0x1
	.long	.LASF459
	.byte	0
	.uleb128 0x1
	.long	.LASF460
	.byte	0x1
	.uleb128 0x1
	.long	.LASF461
	.byte	0x2
	.uleb128 0x1
	.long	.LASF462
	.byte	0x3
	.uleb128 0x1
	.long	.LASF463
	.byte	0x4
	.uleb128 0x1
	.long	.LASF464
	.byte	0x5
	.uleb128 0x1
	.long	.LASF465
	.byte	0x6
	.uleb128 0x1
	.long	.LASF466
	.byte	0x7
	.uleb128 0x1
	.long	.LASF467
	.byte	0x8
	.uleb128 0x1
	.long	.LASF468
	.byte	0x9
	.uleb128 0x1
	.long	.LASF469
	.byte	0xa
	.uleb128 0x1
	.long	.LASF470
	.byte	0xb
	.uleb128 0x1
	.long	.LASF471
	.byte	0xc
	.uleb128 0x1
	.long	.LASF472
	.byte	0xd
	.uleb128 0x1
	.long	.LASF473
	.byte	0xe
	.uleb128 0x1
	.long	.LASF474
	.byte	0xf
	.uleb128 0x1
	.long	.LASF475
	.byte	0x10
	.uleb128 0x1
	.long	.LASF476
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF477
	.byte	0x20
	.uleb128 0x1
	.long	.LASF478
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF479
	.byte	0x30
	.uleb128 0x1
	.long	.LASF480
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF481
	.byte	0x40
	.uleb128 0x1
	.long	.LASF482
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF483
	.byte	0x50
	.uleb128 0x1
	.long	.LASF484
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF485
	.byte	0x60
	.uleb128 0x1
	.long	.LASF486
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF487
	.byte	0x70
	.uleb128 0x1
	.long	.LASF488
	.byte	0x7f
	.byte	0
	.uleb128 0x1d
	.long	.LASF489
	.byte	0x10
	.byte	0x2
	.byte	0x2e
	.long	0x232
	.uleb128 0x3
	.string	"x"
	.byte	0x2
	.byte	0x30
	.byte	0x14
	.long	0x2e
	.byte	0
	.uleb128 0x3
	.string	"y"
	.byte	0x2
	.byte	0x31
	.byte	0x14
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.long	0x20f
	.uleb128 0x9
	.long	0x232
	.uleb128 0x1d
	.long	.LASF490
	.byte	0x10
	.byte	0x2
	.byte	0x34
	.long	0x263
	.uleb128 0x6
	.long	.LASF491
	.byte	0x2
	.byte	0x36
	.byte	0x14
	.long	0x2e
	.byte	0
	.uleb128 0x6
	.long	.LASF492
	.byte	0x2
	.byte	0x37
	.byte	0x14
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x23c
	.uleb128 0x25
	.long	.LASF493
	.byte	0x42
	.byte	0x1d
	.long	.LASF495
	.long	0x263
	.uleb128 0x25
	.long	.LASF494
	.byte	0x44
	.byte	0x23
	.long	.LASF496
	.long	0x232
	.uleb128 0x12
	.long	.LASF604
	.byte	0x2
	.byte	0x46
	.long	.LASF606
	.uleb128 0xa
	.long	.LASF497
	.byte	0x2
	.byte	0x49
	.long	.LASF499
	.long	0x2b0
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x52
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xa
	.long	.LASF498
	.byte	0x2
	.byte	0x4a
	.long	.LASF500
	.long	0x2cf
	.uleb128 0x2
	.long	0xa8f
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xa
	.long	.LASF498
	.byte	0x2
	.byte	0x4b
	.long	.LASF501
	.long	0x2ee
	.uleb128 0x2
	.long	0xaa5
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xa
	.long	.LASF502
	.byte	0x2
	.byte	0x4e
	.long	.LASF503
	.long	0x308
	.uleb128 0x2
	.long	0x52
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xa
	.long	.LASF504
	.byte	0x2
	.byte	0x4f
	.long	.LASF505
	.long	0x322
	.uleb128 0x2
	.long	0xa8f
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xa
	.long	.LASF504
	.byte	0x2
	.byte	0x50
	.long	.LASF506
	.long	0x33c
	.uleb128 0x2
	.long	0xaa5
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xb
	.long	.LASF507
	.value	0x116
	.long	.LASF509
	.long	0x356
	.uleb128 0x2
	.long	0x52
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xb
	.long	.LASF508
	.value	0x117
	.long	.LASF510
	.long	0x370
	.uleb128 0x2
	.long	0x52
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xb
	.long	.LASF508
	.value	0x119
	.long	.LASF511
	.long	0x38f
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x52
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xb
	.long	.LASF512
	.value	0x11c
	.long	.LASF513
	.long	0x3b3
	.uleb128 0x2
	.long	0x20f
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x52
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xb
	.long	.LASF512
	.value	0x11f
	.long	.LASF514
	.long	0x3d7
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x52
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.uleb128 0xb
	.long	.LASF515
	.value	0x122
	.long	.LASF516
	.long	0x3ec
	.uleb128 0x2
	.long	0x20f
	.byte	0
	.uleb128 0x1e
	.long	.LASF517
	.value	0x123
	.byte	0x2a
	.long	.LASF519
	.long	0xaaa
	.uleb128 0x1e
	.long	.LASF518
	.value	0x124
	.byte	0x1e
	.long	.LASF520
	.long	0xaaf
	.uleb128 0x1e
	.long	.LASF521
	.value	0x125
	.byte	0x1e
	.long	.LASF522
	.long	0xab4
	.uleb128 0xb
	.long	.LASF523
	.value	0x127
	.long	.LASF524
	.long	0x431
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x18
	.long	.LASF525
	.byte	0x2
	.byte	0xad
	.byte	0x15
	.long	.LASF527
	.long	0x457
	.uleb128 0xd
	.string	"T"
	.long	0xce6
	.uleb128 0x19
	.string	"Ts"
	.uleb128 0x2
	.long	0xa8f
	.uleb128 0x2
	.long	0xce6
	.byte	0
	.uleb128 0x18
	.long	.LASF526
	.byte	0x2
	.byte	0xad
	.byte	0x15
	.long	.LASF528
	.long	0x47d
	.uleb128 0xd
	.string	"T"
	.long	0xce1
	.uleb128 0x19
	.string	"Ts"
	.uleb128 0x2
	.long	0xa8f
	.uleb128 0x2
	.long	0xce1
	.byte	0
	.uleb128 0xb
	.long	.LASF529
	.value	0x109
	.long	.LASF530
	.long	0x4a5
	.uleb128 0x1a
	.string	"Ts"
	.long	0x49a
	.uleb128 0x1b
	.long	0x4b
	.byte	0
	.uleb128 0x2
	.long	0xa8f
	.uleb128 0x2
	.long	0x4b
	.byte	0
	.uleb128 0xb
	.long	.LASF531
	.value	0x109
	.long	.LASF532
	.long	0x4cd
	.uleb128 0x1a
	.string	"Ts"
	.long	0x4c2
	.uleb128 0x1b
	.long	0xcdc
	.byte	0
	.uleb128 0x2
	.long	0xa8f
	.uleb128 0x2
	.long	0xcdc
	.byte	0
	.uleb128 0x36
	.long	.LASF533
	.byte	0x2
	.byte	0x53
	.byte	0x15
	.long	.LASF534
	.byte	0x1
	.uleb128 0xd
	.string	"T"
	.long	0x63
	.uleb128 0x2
	.long	0x63
	.uleb128 0x2
	.long	0x14a
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF695
	.byte	0xb0
	.byte	0x4
	.byte	0xa
	.byte	0xc
	.long	0x615
	.uleb128 0x3
	.string	"r15"
	.byte	0x4
	.byte	0xd
	.byte	0x12
	.long	0x90
	.byte	0
	.uleb128 0x3
	.string	"r14"
	.byte	0x4
	.byte	0xd
	.byte	0x17
	.long	0x90
	.byte	0x8
	.uleb128 0x3
	.string	"r13"
	.byte	0x4
	.byte	0xd
	.byte	0x1c
	.long	0x90
	.byte	0x10
	.uleb128 0x3
	.string	"r12"
	.byte	0x4
	.byte	0xd
	.byte	0x21
	.long	0x90
	.byte	0x18
	.uleb128 0x3
	.string	"r11"
	.byte	0x4
	.byte	0xd
	.byte	0x26
	.long	0x90
	.byte	0x20
	.uleb128 0x3
	.string	"r10"
	.byte	0x4
	.byte	0xd
	.byte	0x2b
	.long	0x90
	.byte	0x28
	.uleb128 0x3
	.string	"r9"
	.byte	0x4
	.byte	0xd
	.byte	0x30
	.long	0x90
	.byte	0x30
	.uleb128 0x3
	.string	"r8"
	.byte	0x4
	.byte	0xd
	.byte	0x34
	.long	0x90
	.byte	0x38
	.uleb128 0x3
	.string	"rbp"
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.long	0x90
	.byte	0x40
	.uleb128 0x3
	.string	"rdi"
	.byte	0x4
	.byte	0xe
	.byte	0x17
	.long	0x90
	.byte	0x48
	.uleb128 0x3
	.string	"rsi"
	.byte	0x4
	.byte	0xe
	.byte	0x1c
	.long	0x90
	.byte	0x50
	.uleb128 0x3
	.string	"rdx"
	.byte	0x4
	.byte	0xe
	.byte	0x21
	.long	0x90
	.byte	0x58
	.uleb128 0x3
	.string	"rcx"
	.byte	0x4
	.byte	0xe
	.byte	0x26
	.long	0x90
	.byte	0x60
	.uleb128 0x3
	.string	"rbx"
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x90
	.byte	0x68
	.uleb128 0x3
	.string	"rax"
	.byte	0x4
	.byte	0xe
	.byte	0x30
	.long	0x90
	.byte	0x70
	.uleb128 0x6
	.long	.LASF535
	.byte	0x4
	.byte	0x11
	.byte	0x12
	.long	0x90
	.byte	0x78
	.uleb128 0x6
	.long	.LASF536
	.byte	0x4
	.byte	0x12
	.byte	0x12
	.long	0x90
	.byte	0x80
	.uleb128 0x3
	.string	"rip"
	.byte	0x4
	.byte	0x15
	.byte	0x12
	.long	0x90
	.byte	0x88
	.uleb128 0x3
	.string	"cs"
	.byte	0x4
	.byte	0x16
	.byte	0x12
	.long	0x90
	.byte	0x90
	.uleb128 0x6
	.long	.LASF537
	.byte	0x4
	.byte	0x17
	.byte	0x12
	.long	0x90
	.byte	0x98
	.uleb128 0x3
	.string	"rsp"
	.byte	0x4
	.byte	0x18
	.byte	0x12
	.long	0x90
	.byte	0xa0
	.uleb128 0x3
	.string	"ss"
	.byte	0x4
	.byte	0x19
	.byte	0x12
	.long	0x90
	.byte	0xa8
	.byte	0
	.uleb128 0x17
	.long	.LASF539
	.byte	0x1
	.byte	0x4
	.byte	0x72
	.long	0x851
	.uleb128 0x1c
	.long	.LASF541
	.byte	0x1
	.long	0x52
	.byte	0x4
	.byte	0x75
	.long	0x752
	.uleb128 0x1
	.long	.LASF542
	.byte	0
	.uleb128 0x1
	.long	.LASF543
	.byte	0x1
	.uleb128 0x1
	.long	.LASF544
	.byte	0x2
	.uleb128 0x1
	.long	.LASF545
	.byte	0x3
	.uleb128 0x1
	.long	.LASF546
	.byte	0x4
	.uleb128 0x1
	.long	.LASF547
	.byte	0x5
	.uleb128 0x1
	.long	.LASF548
	.byte	0x6
	.uleb128 0x1
	.long	.LASF549
	.byte	0x7
	.uleb128 0x1
	.long	.LASF550
	.byte	0x8
	.uleb128 0x1
	.long	.LASF551
	.byte	0x9
	.uleb128 0x1
	.long	.LASF552
	.byte	0xa
	.uleb128 0x1
	.long	.LASF553
	.byte	0xb
	.uleb128 0x1
	.long	.LASF554
	.byte	0xc
	.uleb128 0x1
	.long	.LASF555
	.byte	0xd
	.uleb128 0x1
	.long	.LASF556
	.byte	0xe
	.uleb128 0x1
	.long	.LASF557
	.byte	0xf
	.uleb128 0x1
	.long	.LASF558
	.byte	0x10
	.uleb128 0x1
	.long	.LASF559
	.byte	0x11
	.uleb128 0x1
	.long	.LASF560
	.byte	0x12
	.uleb128 0x1
	.long	.LASF561
	.byte	0x13
	.uleb128 0x1
	.long	.LASF562
	.byte	0x14
	.uleb128 0x1
	.long	.LASF563
	.byte	0x15
	.uleb128 0x1
	.long	.LASF564
	.byte	0x16
	.uleb128 0x1
	.long	.LASF565
	.byte	0x17
	.uleb128 0x1
	.long	.LASF566
	.byte	0x18
	.uleb128 0x1
	.long	.LASF567
	.byte	0x19
	.uleb128 0x1
	.long	.LASF568
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF569
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF570
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF571
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF572
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF573
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF574
	.byte	0x20
	.uleb128 0x1
	.long	.LASF575
	.byte	0x21
	.uleb128 0x1
	.long	.LASF576
	.byte	0x22
	.uleb128 0x1
	.long	.LASF577
	.byte	0x23
	.uleb128 0x1
	.long	.LASF578
	.byte	0x24
	.uleb128 0x1
	.long	.LASF579
	.byte	0x25
	.uleb128 0x1
	.long	.LASF580
	.byte	0x26
	.uleb128 0x1
	.long	.LASF581
	.byte	0x27
	.uleb128 0x1
	.long	.LASF582
	.byte	0x28
	.uleb128 0x1
	.long	.LASF583
	.byte	0x29
	.uleb128 0x1
	.long	.LASF584
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF585
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF586
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF587
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF588
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF589
	.byte	0x2f
	.byte	0
	.uleb128 0x1f
	.long	.LASF590
	.byte	0xb2
	.byte	0x25
	.long	.LASF592
	.long	0x5e
	.byte	0x8e
	.uleb128 0x38
	.long	.LASF591
	.byte	0x4
	.byte	0xb3
	.byte	0x24
	.long	.LASF593
	.long	0x3a
	.value	0x100
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF594
	.byte	0xb4
	.byte	0x24
	.long	.LASF595
	.long	0x3a
	.byte	0x20
	.uleb128 0x1f
	.long	.LASF596
	.byte	0xb5
	.byte	0x24
	.long	.LASF597
	.long	0x3a
	.byte	0x10
	.uleb128 0x39
	.long	.LASF639
	.byte	0x4
	.byte	0xbf
	.byte	0x15
	.long	.LASF696
	.byte	0x1
	.uleb128 0xa
	.long	.LASF598
	.byte	0x4
	.byte	0xc0
	.long	.LASF599
	.long	0x7bc
	.uleb128 0x2
	.long	0x52
	.uleb128 0x2
	.long	0x851
	.byte	0
	.uleb128 0xa
	.long	.LASF598
	.byte	0x4
	.byte	0xc1
	.long	.LASF600
	.long	0x7d6
	.uleb128 0x2
	.long	0x621
	.uleb128 0x2
	.long	0x851
	.byte	0
	.uleb128 0x18
	.long	.LASF601
	.byte	0x4
	.byte	0xc4
	.byte	0x15
	.long	.LASF602
	.long	0x7fb
	.uleb128 0x2
	.long	0x52
	.uleb128 0x2
	.long	0x7fb
	.uleb128 0x2
	.long	0x52
	.uleb128 0x2
	.long	0x52
	.byte	0
	.uleb128 0xe
	.long	.LASF603
	.byte	0x4
	.byte	0xb0
	.byte	0xf
	.long	0xace
	.uleb128 0x12
	.long	.LASF605
	.byte	0x4
	.byte	0xc6
	.long	.LASF607
	.uleb128 0x12
	.long	.LASF608
	.byte	0x4
	.byte	0xc7
	.long	.LASF609
	.uleb128 0x12
	.long	.LASF610
	.byte	0x4
	.byte	0xc8
	.long	.LASF611
	.uleb128 0x18
	.long	.LASF612
	.byte	0x4
	.byte	0xc9
	.byte	0x1c
	.long	.LASF613
	.long	0x83e
	.uleb128 0x2
	.long	0xac9
	.byte	0
	.uleb128 0x3a
	.long	.LASF697
	.byte	0x4
	.byte	0xca
	.byte	0x15
	.long	.LASF698
	.uleb128 0x2
	.long	0xac9
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF614
	.byte	0x4
	.byte	0x2d
	.byte	0xb
	.long	0xab9
	.uleb128 0x3b
	.long	.LASF699
	.byte	0x30
	.byte	0x8
	.byte	0x5
	.byte	0xb
	.byte	0xb
	.long	0xa1f
	.uleb128 0x1c
	.long	.LASF615
	.byte	0x8
	.long	0x90
	.byte	0x5
	.byte	0xe
	.long	0x882
	.uleb128 0x1
	.long	.LASF616
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.long	.LASF617
	.byte	0x20
	.byte	0x5
	.byte	0x13
	.long	0x954
	.uleb128 0x6
	.long	.LASF618
	.byte	0x5
	.byte	0x15
	.byte	0x14
	.long	0xc91
	.byte	0
	.uleb128 0x6
	.long	.LASF619
	.byte	0x5
	.byte	0x16
	.byte	0x14
	.long	0xc91
	.byte	0x8
	.uleb128 0x6
	.long	.LASF620
	.byte	0x5
	.byte	0x17
	.byte	0x32
	.long	0xadf
	.byte	0x10
	.uleb128 0x6
	.long	.LASF621
	.byte	0x5
	.byte	0x18
	.byte	0x16
	.long	0x7d
	.byte	0x18
	.uleb128 0x6
	.long	.LASF622
	.byte	0x5
	.byte	0x19
	.byte	0x16
	.long	0x7d
	.byte	0x1c
	.uleb128 0x26
	.long	.LASF627
	.byte	0x1b
	.byte	0x12
	.long	.LASF629
	.long	0x127
	.long	0x8e6
	.long	0x8ec
	.uleb128 0x4
	.long	0xc96
	.byte	0
	.uleb128 0x27
	.long	.LASF623
	.byte	0x1c
	.long	.LASF624
	.long	0x8fe
	.long	0x904
	.uleb128 0x4
	.long	0xc91
	.byte	0
	.uleb128 0x27
	.long	.LASF625
	.byte	0x20
	.long	.LASF626
	.long	0x916
	.long	0x91c
	.uleb128 0x4
	.long	0xc91
	.byte	0
	.uleb128 0x26
	.long	.LASF628
	.byte	0x25
	.byte	0x14
	.long	.LASF630
	.long	0x2e
	.long	0x933
	.long	0x939
	.uleb128 0x4
	.long	0xc91
	.byte	0
	.uleb128 0x3c
	.long	.LASF631
	.byte	0x5
	.byte	0x2a
	.byte	0x13
	.long	.LASF632
	.long	0xc9b
	.long	0x94d
	.uleb128 0x4
	.long	0xc91
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x882
	.uleb128 0xf
	.long	.LASF633
	.byte	0x31
	.byte	0x10
	.long	0xc91
	.byte	0
	.uleb128 0xf
	.long	.LASF634
	.byte	0x32
	.byte	0xf
	.long	0xc9b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF635
	.byte	0x33
	.byte	0xf
	.long	0xc9b
	.byte	0x10
	.uleb128 0xf
	.long	.LASF636
	.byte	0x34
	.byte	0x10
	.long	0x2e
	.byte	0x18
	.uleb128 0xf
	.long	.LASF637
	.byte	0x35
	.byte	0x10
	.long	0x2e
	.byte	0x20
	.uleb128 0xf
	.long	.LASF638
	.byte	0x36
	.byte	0x10
	.long	0x2e
	.byte	0x28
	.uleb128 0x13
	.long	.LASF639
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.long	.LASF640
	.long	0x9b5
	.long	0x9c5
	.uleb128 0x4
	.long	0xc9d
	.uleb128 0x2
	.long	0xc9b
	.uleb128 0x2
	.long	0xc9b
	.byte	0
	.uleb128 0x3d
	.long	.LASF661
	.byte	0x5
	.byte	0x48
	.byte	0xf
	.long	.LASF663
	.long	0xc9b
	.byte	0x1
	.long	0x9de
	.long	0x9e9
	.uleb128 0x4
	.long	0xc9d
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x13
	.long	.LASF641
	.byte	0x5
	.byte	0x49
	.byte	0xe
	.long	.LASF642
	.long	0x9fd
	.long	0xa08
	.uleb128 0x4
	.long	0xc9d
	.uleb128 0x2
	.long	0xc9b
	.byte	0
	.uleb128 0x28
	.long	.LASF643
	.byte	0x5
	.byte	0x4c
	.byte	0x17
	.long	.LASF644
	.long	0x2e
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF645
	.byte	0x1
	.byte	0x6
	.byte	0x43
	.long	0xa78
	.uleb128 0xa
	.long	.LASF646
	.byte	0x6
	.byte	0xc8
	.long	.LASF647
	.long	0xa40
	.uleb128 0x2
	.long	0x90
	.byte	0
	.uleb128 0x3e
	.long	.LASF648
	.byte	0x6
	.byte	0xca
	.byte	0x20
	.long	.LASF649
	.long	0xcc1
	.byte	0x1
	.long	0xa5b
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x3f
	.long	.LASF650
	.byte	0x6
	.byte	0xcb
	.byte	0x17
	.long	.LASF700
	.long	0x2e
	.byte	0x1
	.uleb128 0x12
	.long	.LASF651
	.byte	0x6
	.byte	0xce
	.long	.LASF652
	.byte	0
	.uleb128 0x28
	.long	.LASF653
	.byte	0x7
	.byte	0x14
	.byte	0xd
	.long	.LASF654
	.long	0x52
	.uleb128 0x2
	.long	0x6a
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0xa9b
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF655
	.uleb128 0x9
	.long	0xa94
	.uleb128 0x24
	.long	0xa9b
	.uleb128 0x7
	.long	0xaa0
	.uleb128 0x8
	.long	0x237
	.uleb128 0x8
	.long	0x263
	.uleb128 0x8
	.long	0x3a
	.uleb128 0x7
	.long	0xabe
	.uleb128 0x40
	.long	0xac9
	.uleb128 0x2
	.long	0xac9
	.byte	0
	.uleb128 0x8
	.long	0x4ed
	.uleb128 0x7
	.long	0xad3
	.uleb128 0x41
	.uleb128 0x23
	.long	.LASF656
	.byte	0x7
	.byte	0x17
	.long	0xc77
	.uleb128 0x17
	.long	.LASF657
	.byte	0x8
	.byte	0x7
	.byte	0x1a
	.long	0xc71
	.uleb128 0x6
	.long	.LASF658
	.byte	0x7
	.byte	0x1d
	.byte	0xb
	.long	0x9c
	.byte	0
	.uleb128 0x13
	.long	.LASF659
	.byte	0x7
	.byte	0x20
	.byte	0x9
	.long	.LASF660
	.long	0xb0c
	.long	0xb12
	.uleb128 0x4
	.long	0xc77
	.byte	0
	.uleb128 0x20
	.long	.LASF662
	.byte	0x21
	.long	.LASF664
	.long	0xb24
	.long	0xb2f
	.uleb128 0x4
	.long	0xc77
	.uleb128 0x4
	.long	0xb1
	.byte	0
	.uleb128 0x13
	.long	.LASF659
	.byte	0x7
	.byte	0x22
	.byte	0x9
	.long	.LASF665
	.long	0xb43
	.long	0xb4e
	.uleb128 0x4
	.long	0xc77
	.uleb128 0x2
	.long	0x9c
	.byte	0
	.uleb128 0x20
	.long	.LASF659
	.byte	0x24
	.long	.LASF666
	.long	0xb60
	.long	0xb6b
	.uleb128 0x4
	.long	0xc77
	.uleb128 0x2
	.long	0xc7c
	.byte	0
	.uleb128 0x29
	.long	.LASF668
	.byte	0x25
	.long	.LASF669
	.long	0xc81
	.long	0xb81
	.long	0xb8c
	.uleb128 0x4
	.long	0xc77
	.uleb128 0x2
	.long	0xc7c
	.byte	0
	.uleb128 0x20
	.long	.LASF659
	.byte	0x26
	.long	.LASF667
	.long	0xb9e
	.long	0xba9
	.uleb128 0x4
	.long	0xc77
	.uleb128 0x2
	.long	0xc86
	.byte	0
	.uleb128 0x29
	.long	.LASF668
	.byte	0x27
	.long	.LASF670
	.long	0xc81
	.long	0xbbf
	.long	0xbca
	.uleb128 0x4
	.long	0xc77
	.uleb128 0x2
	.long	0xc86
	.byte	0
	.uleb128 0x2a
	.string	"set"
	.byte	0x29
	.long	.LASF672
	.long	0xbdc
	.long	0xbe7
	.uleb128 0x4
	.long	0xc77
	.uleb128 0x2
	.long	0x86b
	.byte	0
	.uleb128 0x13
	.long	.LASF507
	.byte	0x7
	.byte	0x2d
	.byte	0xe
	.long	.LASF671
	.long	0xbfb
	.long	0xc06
	.uleb128 0x4
	.long	0xc77
	.uleb128 0x2
	.long	0x86b
	.byte	0
	.uleb128 0x2b
	.string	"get"
	.byte	0x31
	.byte	0xe
	.long	.LASF674
	.long	0x127
	.long	0xc1d
	.long	0xc28
	.uleb128 0x4
	.long	0xc8c
	.uleb128 0x2
	.long	0x86b
	.byte	0
	.uleb128 0x2a
	.string	"set"
	.byte	0x35
	.long	.LASF673
	.long	0xc3a
	.long	0xc45
	.uleb128 0x4
	.long	0xc77
	.uleb128 0x2
	.long	0x9c
	.byte	0
	.uleb128 0x2b
	.string	"get"
	.byte	0x39
	.byte	0xb
	.long	.LASF675
	.long	0x9c
	.long	0xc5c
	.long	0xc62
	.uleb128 0x4
	.long	0xc8c
	.byte	0
	.uleb128 0xd
	.string	"E"
	.long	0x86b
	.uleb128 0xd
	.string	"T"
	.long	0x9c
	.byte	0
	.uleb128 0x9
	.long	0xadf
	.byte	0
	.uleb128 0x7
	.long	0xadf
	.uleb128 0x8
	.long	0xc71
	.uleb128 0x8
	.long	0xadf
	.uleb128 0x42
	.byte	0x8
	.long	0xadf
	.uleb128 0x7
	.long	0xc71
	.uleb128 0x7
	.long	0x882
	.uleb128 0x7
	.long	0x954
	.uleb128 0x43
	.byte	0x8
	.uleb128 0x7
	.long	0x85d
	.uleb128 0x44
	.long	0x52
	.long	0xcad
	.uleb128 0x45
	.byte	0
	.uleb128 0x2c
	.long	.LASF676
	.byte	0x2a
	.long	0xca2
	.uleb128 0x2c
	.long	.LASF677
	.byte	0x2b
	.long	0xca2
	.uleb128 0x8
	.long	0x85d
	.uleb128 0x46
	.long	.LASF678
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.long	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	counter
	.uleb128 0x7
	.long	0x63
	.uleb128 0x8
	.long	0xcdc
	.uleb128 0x8
	.long	0x4b
	.uleb128 0xc
	.long	0xcb
	.uleb128 0xc
	.long	0xd6
	.uleb128 0xc
	.long	0xe1
	.uleb128 0xc
	.long	0xec
	.uleb128 0xc
	.long	0xf7
	.uleb128 0xc
	.long	0x100
	.uleb128 0xc
	.long	0x109
	.uleb128 0xc
	.long	0x114
	.uleb128 0xc
	.long	0x11d
	.uleb128 0x14
	.long	0x431
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0xd5d
	.uleb128 0xd
	.string	"T"
	.long	0xce6
	.uleb128 0x19
	.string	"Ts"
	.uleb128 0x15
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xa8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0xce6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.byte	0xad
	.byte	0
	.uleb128 0x14
	.long	0x457
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0xda2
	.uleb128 0xd
	.string	"T"
	.long	0xce1
	.uleb128 0x19
	.string	"Ts"
	.uleb128 0x15
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xa8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0xce1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.byte	0xad
	.byte	0
	.uleb128 0x14
	.long	0x47d
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0xde2
	.uleb128 0x1a
	.string	"Ts"
	.long	0xdcb
	.uleb128 0x1b
	.long	0x4b
	.byte	0
	.uleb128 0x2e
	.string	"str"
	.long	0xa8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.uleb128 0x30
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x4a5
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0xe22
	.uleb128 0x1a
	.string	"Ts"
	.long	0xe0b
	.uleb128 0x1b
	.long	0xcdc
	.byte	0
	.uleb128 0x2e
	.string	"str"
	.long	0xa8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.uleb128 0x30
	.long	0xcdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x4cd
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xe98
	.uleb128 0xd
	.string	"T"
	.long	0x63
	.uleb128 0x15
	.string	"val"
	.byte	0x53
	.byte	0x21
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.long	.LASF679
	.byte	0x2
	.byte	0x53
	.byte	0x31
	.long	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF680
	.byte	0x2
	.byte	0x56
	.byte	0x18
	.long	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"pos"
	.byte	0x57
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"i"
	.byte	0x58
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF681
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x47
	.long	.LASF682
	.byte	0x1
	.byte	0x2a
	.byte	0x11
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0xecc
	.uleb128 0x10
	.long	.LASF683
	.byte	0x1
	.byte	0x2a
	.byte	0x26
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.byte	0x2c
	.long	0x133
	.byte	0
	.uleb128 0x32
	.long	.LASF684
	.byte	0x21
	.long	.LASF685
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0xf11
	.uleb128 0x10
	.long	.LASF686
	.byte	0x1
	.byte	0x21
	.byte	0x36
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.byte	0x23
	.long	0x133
	.uleb128 0x21
	.long	.LASF687
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.long	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x48
	.long	.LASF688
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.long	.LASF689
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xf49
	.uleb128 0x10
	.long	.LASF686
	.byte	0x1
	.byte	0x1b
	.byte	0x33
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.byte	0x1d
	.long	0x133
	.byte	0
	.uleb128 0x32
	.long	.LASF690
	.byte	0x14
	.long	.LASF691
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xf88
	.uleb128 0x10
	.long	.LASF678
	.byte	0x1
	.byte	0x14
	.byte	0x17
	.long	0xf88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF692
	.byte	0x1
	.byte	0x14
	.byte	0x28
	.long	0xf88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	0x2e
	.uleb128 0x49
	.long	.LASF693
	.byte	0x1
	.byte	0x6
	.byte	0x11
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 23
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 135
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 30
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4107
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4107
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2f
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0xb
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x24
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4108
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 62
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 265
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 39
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4108
	.byte	0x1
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 265
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 46
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.sleb128 6
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x36
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x88
	.uleb128 0xb
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
	.uleb128 0x3c
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
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.long	0x7c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.quad	.LFB44
	.quad	.LFE44-.LFB44
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
	.quad	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.quad	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.quad	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.quad	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.quad	.LFB44
	.uleb128 .LFE44-.LFB44
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
	.uleb128 0x1
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF435
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x3
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
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x3
	.long	.LASF437
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.long	.LASF438
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x3
	.long	.LASF439
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x4
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
	.long	.LASF433
	.byte	0x5
	.uleb128 0x12
	.long	.LASF434
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
.LASF495:
	.string	"_ZN6Kernel7Console8s_extentE"
.LASF243:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF103:
	.string	"__cpp_namespace_attributes 201411L"
.LASF359:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF456:
	.string	"is_same_v"
.LASF543:
	.string	"debug"
.LASF202:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF40:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF412:
	.string	"__amd64__ 1"
.LASF505:
	.string	"_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE"
.LASF411:
	.string	"__amd64 1"
.LASF546:
	.string	"overflow"
.LASF285:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF496:
	.string	"_ZN6Kernel7Console11s_cursorPosE"
.LASF192:
	.string	"__UINT8_C(c) c"
.LASF465:
	.string	"BrownOnBlack"
.LASF657:
	.string	"FlagMap<Kernel::HeapLinkedList::BlockFlags, long long unsigned int>"
.LASF439:
	.string	"HEAP_H "
.LASF479:
	.string	"BlackOnCyan"
.LASF691:
	.string	"_Z8functionRmS_"
.LASF478:
	.string	"WhiteOnGreen"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF334:
	.string	"__FLT32X_DIG__ 15"
.LASF339:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF572:
	.string	"securityException"
.LASF238:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF205:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF73:
	.string	"__INTPTR_TYPE__ long int"
.LASF654:
	.string	"_ZN6Kernel6inByteEt"
.LASF663:
	.string	"_ZN6Kernel14HeapLinkedList8allocateEm"
.LASF151:
	.string	"__WINT_MIN__ 0U"
.LASF120:
	.string	"__cpp_designated_initializers 201707L"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF247:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF150:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF325:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF263:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF624:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markUsedEv"
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF191:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF47:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF448:
	.string	"unsigned int"
.LASF123:
	.string	"__cpp_conditional_explicit 201806L"
.LASF155:
	.string	"__SHRT_WIDTH__ 16"
.LASF300:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF158:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF146:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF523:
	.string	"scrollDown"
.LASF46:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF689:
	.string	"_Z20handleTimerInterruptRN6Kernel14InterruptFrameE"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF463:
	.string	"RedOnBlack"
.LASF489:
	.string	"CursorPos"
.LASF199:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF513:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF274:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF656:
	.string	"Utils"
.LASF211:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF100:
	.string	"__cpp_digit_separators 201309L"
.LASF96:
	.string	"__cpp_return_type_deduction 201304L"
.LASF464:
	.string	"MagentaOnBlack"
.LASF373:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF270:
	.string	"__FLT16_DIG__ 3"
.LASF552:
	.string	"invalidTss"
.LASF664:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyED4Ev"
.LASF284:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF337:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF376:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF90:
	.string	"__cpp_initializer_lists 200806L"
.LASF253:
	.string	"__LDBL_DIG__ 18"
.LASF353:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF21:
	.string	"__SIZEOF_LONG__ 8"
.LASF692:
	.string	"limit"
.LASF57:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF375:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF63:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF262:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF288:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF248:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF618:
	.string	"prev"
.LASF60:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF149:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF634:
	.string	"m_startAddr"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF61:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF64:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF696:
	.string	"_ZN6Kernel16InterruptManager10initializeEv"
.LASF336:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF700:
	.string	"_ZN6Kernel9MemoryMap12getHeapCountEv"
.LASF302:
	.string	"__FLT64_DIG__ 15"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF576:
	.string	"irqCascade"
.LASF130:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF268:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF79:
	.string	"__cpp_hex_float 201603L"
.LASF511:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF346:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF556:
	.string	"pageFault"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF157:
	.string	"__LONG_WIDTH__ 64"
.LASF526:
	.string	"printImpl<unsigned char*&>"
.LASF476:
	.string	"WhiteOnBlue"
.LASF542:
	.string	"divideByZero"
.LASF236:
	.string	"__DBL_MANT_DIG__ 53"
.LASF180:
	.string	"__INT8_C(c) c"
.LASF324:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF547:
	.string	"boundRangeExceeded"
.LASF126:
	.string	"__cpp_deduction_guides 201907L"
.LASF333:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF558:
	.string	"x87FloatingPointException"
.LASF240:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF698:
	.string	"_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE"
.LASF472:
	.string	"LightMagentaOnBlack"
.LASF447:
	.string	"uint32_t"
.LASF261:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF413:
	.string	"__x86_64 1"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF62:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF304:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF365:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF297:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF625:
	.string	"markFree"
.LASF605:
	.string	"setupIdt"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF160:
	.string	"__WINT_WIDTH__ 32"
.LASF571:
	.string	"vmmCommunicationException"
.LASF95:
	.string	"__cpp_alias_templates 200704L"
.LASF235:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF221:
	.string	"__FLT_DIG__ 6"
.LASF201:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF390:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF677:
	.string	"stack_top"
.LASF662:
	.string	"~FlagMap"
.LASF469:
	.string	"LightGreenOnBlack"
.LASF351:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF156:
	.string	"__INT_WIDTH__ 32"
.LASF81:
	.string	"__cpp_raw_strings 200710L"
.LASF213:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF88:
	.string	"__cpp_rvalue_references 200610L"
.LASF319:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF671:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_"
.LASF299:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF193:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF531:
	.string	"print<unsigned char*>"
.LASF525:
	.string	"printImpl<long int&>"
.LASF7:
	.string	"__GNUC__ 13"
.LASF461:
	.string	"GreenOnBlack"
.LASF450:
	.string	"long long unsigned int"
.LASF563:
	.string	"controlProtectionException"
.LASF366:
	.string	"__BFLT16_DIG__ 2"
.LASF74:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF669:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSERKS4_"
.LASF518:
	.string	"getExtent"
.LASF603:
	.string	"IsrPtr_t"
.LASF623:
	.string	"markUsed"
.LASF321:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF83:
	.string	"__cpp_user_defined_literals 200809L"
.LASF219:
	.string	"__FLT_RADIX__ 2"
.LASF344:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF107:
	.string	"__cpp_range_based_for 201603L"
.LASF538:
	.string	"Console"
.LASF349:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF679:
	.string	"attr"
.LASF250:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF364:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF264:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF562:
	.string	"virtualizationException"
.LASF485:
	.string	"BlackOnBrown"
.LASF70:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF161:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF635:
	.string	"m_endAddr"
.LASF256:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF368:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF223:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF577:
	.string	"irqCom2"
.LASF460:
	.string	"BlueOnBlack"
.LASF431:
	.string	"__SEG_GS 1"
.LASF481:
	.string	"BlackOnRed"
.LASF78:
	.string	"__cpp_binary_literals 201304L"
.LASF598:
	.string	"registerInterruptCallback"
.LASF507:
	.string	"clear"
.LASF611:
	.string	"_ZN6Kernel16InterruptManager8remapPicEv"
.LASF135:
	.string	"__cpp_impl_coroutine 201902L"
.LASF675:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getEv"
.LASF501:
	.string	"_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF82:
	.string	"__cpp_unicode_literals 200710L"
.LASF554:
	.string	"stackSegmentFault"
.LASF642:
	.string	"_ZN6Kernel14HeapLinkedList4freeEPv"
.LASF687:
	.string	"scancode"
.LASF600:
	.string	"_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE"
.LASF234:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF597:
	.string	"_ZN6Kernel16InterruptManager16s_interruptCountE"
.LASF210:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF51:
	.string	"__INT32_TYPE__ int"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF678:
	.string	"counter"
.LASF361:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF667:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4EOS4_"
.LASF442:
	.string	"size_t"
.LASF639:
	.string	"initialize"
.LASF198:
	.string	"__UINT64_C(c) c ## UL"
.LASF491:
	.string	"width"
.LASF280:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF681:
	.string	"offset"
.LASF2:
	.string	"__STDC__ 1"
.LASF602:
	.string	"_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh"
.LASF75:
	.string	"__GXX_WEAK__ 1"
.LASF629:
	.string	"_ZNK6Kernel14HeapLinkedList5Block6isUsedEv"
.LASF217:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF352:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF244:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF259:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF207:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF140:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF423:
	.string	"__MMX__ 1"
.LASF322:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF555:
	.string	"generalProtectionFault"
.LASF289:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF627:
	.string	"isUsed"
.LASF433:
	.string	"TYPES_H "
.LASF347:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF372:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF641:
	.string	"free"
.LASF414:
	.string	"__x86_64__ 1"
.LASF66:
	.string	"__INT_FAST16_TYPE__ int"
.LASF271:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF196:
	.string	"__UINT32_C(c) c ## U"
.LASF318:
	.string	"__FLT128_DIG__ 33"
.LASF54:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF287:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF159:
	.string	"__WCHAR_WIDTH__ 32"
.LASF298:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF377:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF540:
	.string	"Attributes"
.LASF527:
	.string	"_ZN6Kernel7Console9printImplIRlJEEEvPKcOT_DpOT0_"
.LASF685:
	.string	"_Z23handleKeyboardInterruptRN6Kernel14InterruptFrameE"
.LASF499:
	.string	"_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE"
.LASF621:
	.string	"heapId"
.LASF225:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF121:
	.string	"__cpp_constexpr 202002L"
.LASF477:
	.string	"BlackOnGreen"
.LASF125:
	.string	"__cpp_constinit 201907L"
.LASF109:
	.string	"__cpp_capture_star_this 201603L"
.LASF273:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF137:
	.string	"__cpp_aligned_new 201606L"
.LASF498:
	.string	"writeString"
.LASF384:
	.string	"__NO_INLINE__ 1"
.LASF3:
	.string	"__cplusplus 202002L"
.LASF105:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF163:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF533:
	.string	"putNumBin<unsigned char>"
.LASF382:
	.string	"__USER_LABEL_PREFIX__ "
.LASF307:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF230:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF350:
	.string	"__FLT64X_DIG__ 18"
.LASF651:
	.string	"parseMemoryMapTag"
.LASF39:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF260:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF67:
	.string	"__INT_FAST32_TYPE__ int"
.LASF520:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF500:
	.string	"_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE"
.LASF227:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF435:
	.string	"INTERRUPT_MANAGER_H "
.LASF239:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF655:
	.string	"char"
.LASF255:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF56:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF286:
	.string	"__FLT32_DIG__ 6"
.LASF142:
	.string	"__GXX_ABI_VERSION 1018"
.LASF272:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF506:
	.string	"_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE"
.LASF99:
	.string	"__cpp_variable_templates 201304L"
.LASF612:
	.string	"handleInterrupt"
.LASF87:
	.string	"__cpp_rvalue_reference 200610L"
.LASF345:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF488:
	.string	"WhiteOnLightGray"
.LASF557:
	.string	"reserved15"
.LASF94:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF69:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF591:
	.string	"s_tableSize"
.LASF574:
	.string	"irqSystemTimer"
.LASF326:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF378:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF249:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF204:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF586:
	.string	"irqPs2Mouse"
.LASF631:
	.string	"data"
.LASF181:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF363:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF175:
	.string	"__UINT8_MAX__ 0xff"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF594:
	.string	"s_exceptionCount"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF443:
	.string	"uint8_t"
.LASF278:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF604:
	.string	"updateHardwareCursor"
.LASF167:
	.string	"__INTMAX_WIDTH__ 64"
.LASF421:
	.string	"__k8__ 1"
.LASF251:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF548:
	.string	"invalidOpcode"
.LASF152:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF58:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF544:
	.string	"nonMaskableInterrupt"
.LASF138:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF237:
	.string	"__DBL_DIG__ 15"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF179:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF608:
	.string	"loadIdt"
.LASF19:
	.string	"__LP64__ 1"
.LASF680:
	.string	"bits"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF269:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF593:
	.string	"_ZN6Kernel16InterruptManager11s_tableSizeE"
.LASF85:
	.string	"__cpp_decltype 200707L"
.LASF517:
	.string	"getCursor"
.LASF291:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF18:
	.string	"_LP64 1"
.LASF564:
	.string	"reserved22"
.LASF565:
	.string	"reserved23"
.LASF566:
	.string	"reserved24"
.LASF567:
	.string	"reserved25"
.LASF453:
	.string	"long long int"
.LASF694:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF92:
	.string	"__cpp_nsdmi 200809L"
.LASF666:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4ERKS4_"
.LASF550:
	.string	"doubleFault"
.LASF653:
	.string	"inByte"
.LASF177:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF668:
	.string	"operator="
.LASF438:
	.string	"MEMORY_MAP_H "
.LASF254:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF308:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF686:
	.string	"frame"
.LASF430:
	.string	"__SEG_FS 1"
.LASF615:
	.string	"BlockFlags"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF197:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF674:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_"
.LASF113:
	.string	"__cpp_template_auto 201606L"
.LASF607:
	.string	"_ZN6Kernel16InterruptManager8setupIdtEv"
.LASF165:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF171:
	.string	"__INT8_MAX__ 0x7f"
.LASF457:
	.string	"bool"
.LASF362:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF183:
	.string	"__INT16_C(c) c"
.LASF182:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF497:
	.string	"writeChar"
.LASF129:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF644:
	.string	"_ZN6Kernel14HeapLinkedList5alignEm"
.LASF233:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF660:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ev"
.LASF370:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF282:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF340:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF468:
	.string	"LightBlueOnBlack"
.LASF585:
	.string	"irqAvailable11"
.LASF425:
	.string	"__SSE2__ 1"
.LASF147:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF226:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF638:
	.string	"m_allocatedSize"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF588:
	.string	"irqPrimaryAta"
.LASF215:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF573:
	.string	"reserved31"
.LASF659:
	.string	"FlagMap"
.LASF647:
	.string	"_ZN6Kernel9MemoryMap10initialiseEy"
.LASF172:
	.string	"__INT16_MAX__ 0x7fff"
.LASF628:
	.string	"size"
.LASF97:
	.string	"__cpp_decltype_auto 201304L"
.LASF133:
	.string	"__cpp_using_enum 201907L"
.LASF55:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF25:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF77:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF275:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF601:
	.string	"setIdtGate"
.LASF52:
	.string	"__INT64_TYPE__ long int"
.LASF252:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF578:
	.string	"irqCom1"
.LASF695:
	.string	"InterruptFrame"
.LASF640:
	.string	"_ZN6Kernel14HeapLinkedList10initializeEPvS1_"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF110:
	.string	"__cpp_inline_variables 201606L"
.LASF426:
	.string	"__FXSR__ 1"
.LASF492:
	.string	"height"
.LASF570:
	.string	"hypervisorInjectionException"
.LASF537:
	.string	"rflags"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF592:
	.string	"_ZN6Kernel16InterruptManager12s_entryFlagsE"
.LASF467:
	.string	"DarkGrayOnBlack"
.LASF37:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF116:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF310:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF589:
	.string	"irqSecondaryAta"
.LASF474:
	.string	"WhiteOnBlack"
.LASF320:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF34:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF553:
	.string	"segmentNotPresent"
.LASF265:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF432:
	.string	"__ELF__ 1"
.LASF475:
	.string	"BlackOnBlue"
.LASF480:
	.string	"WhiteOnCyan"
.LASF169:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF127:
	.string	"__cpp_nontype_template_args 201911L"
.LASF437:
	.string	"UTILS_H "
.LASF173:
	.string	"__INT32_MAX__ 0x7fffffff"
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
.LASF581:
	.string	"irqLpt1"
.LASF579:
	.string	"irqLpt2"
.LASF356:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF106:
	.string	"__cpp_fold_expressions 201603L"
.LASF534:
	.string	"_ZN6Kernel7Console9putNumBinIhEEvT_NS0_10AttributesE"
.LASF445:
	.string	"uint16_t"
.LASF44:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF281:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF89:
	.string	"__cpp_variadic_templates 200704L"
.LASF610:
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
.LASF466:
	.string	"LightGrayOnBlack"
.LASF144:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF503:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF117:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF569:
	.string	"reserved27"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF632:
	.string	"_ZN6Kernel14HeapLinkedList5Block4dataEv"
.LASF665:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ey"
.LASF427:
	.string	"__SSE_MATH__ 1"
.LASF471:
	.string	"LightRedOnBlack"
.LASF216:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF626:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markFreeEv"
.LASF306:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF229:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF131:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF358:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF620:
	.string	"metadata"
.LASF316:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF436:
	.string	"CONSOLE_H "
.LASF381:
	.string	"__REGISTER_PREFIX__ "
.LASF295:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF290:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF551:
	.string	"coprocessorSegmentOverrun"
.LASF452:
	.string	"short int"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF595:
	.string	"_ZN6Kernel16InterruptManager16s_exceptionCountE"
.LASF331:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF379:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF141:
	.string	"__cpp_char8_t 202207L"
.LASF614:
	.string	"InterruptHandler"
.LASF502:
	.string	"putChar"
.LASF441:
	.string	"long int"
.LASF330:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF111:
	.string	"__cpp_aggregate_bases 201603L"
.LASF166:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF494:
	.string	"s_cursorPos"
.LASF374:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF354:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF519:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF673:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setEy"
.LASF357:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF335:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF483:
	.string	"BlackOnMagenta"
.LASF212:
	.string	"__INTPTR_WIDTH__ 64"
.LASF342:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF619:
	.string	"next"
.LASF186:
	.string	"__INT32_C(c) c"
.LASF176:
	.string	"__UINT16_MAX__ 0xffff"
.LASF267:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF49:
	.string	"__INT8_TYPE__ signed char"
.LASF41:
	.string	"__WCHAR_TYPE__ int"
.LASF45:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF606:
	.string	"_ZN6Kernel7Console20updateHardwareCursorEv"
.LASF154:
	.string	"__SCHAR_WIDTH__ 8"
.LASF648:
	.string	"getHeap"
.LASF509:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF490:
	.string	"Extent"
.LASF449:
	.string	"uint64_t"
.LASF524:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF209:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF108:
	.string	"__cpp_if_constexpr 201606L"
.LASF516:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF649:
	.string	"_ZN6Kernel9MemoryMap7getHeapEm"
.LASF462:
	.string	"CyanOnBlack"
.LASF670:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSEOS4_"
.LASF279:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF53:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF587:
	.string	"irqFpu"
.LASF428:
	.string	"__SSE2_MATH__ 1"
.LASF652:
	.string	"_ZN6Kernel9MemoryMap17parseMemoryMapTagEv"
.LASF528:
	.string	"_ZN6Kernel7Console9printImplIRPhJEEEvPKcOT_DpOT0_"
.LASF309:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF514:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF164:
	.string	"__INTMAX_C(c) c ## L"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF512:
	.string	"clearSpan"
.LASF454:
	.string	"is_enum_v"
.LASF190:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF195:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF599:
	.string	"_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF311:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF203:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF622:
	.string	"magic"
.LASF38:
	.string	"__GNUG__ 13"
.LASF148:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF220:
	.string	"__FLT_MANT_DIG__ 24"
.LASF545:
	.string	"breakpoint"
.LASF231:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF473:
	.string	"YellowOnBlack"
.LASF484:
	.string	"WhiteOnMagenta"
.LASF245:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF455:
	.string	"is_integral_v"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF50:
	.string	"__INT16_TYPE__ short int"
.LASF693:
	.string	"__cxa_pure_virtual"
.LASF508:
	.string	"clearLine"
.LASF369:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF699:
	.string	"HeapLinkedList"
.LASF440:
	.string	"long unsigned int"
.LASF539:
	.string	"InterruptManager"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF76:
	.string	"__DEPRECATED 1"
.LASF646:
	.string	"initialise"
.LASF493:
	.string	"s_extent"
.LASF28:
	.string	"__CHAR_BIT__ 8"
.LASF568:
	.string	"reserved26"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF296:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF162:
	.string	"__SIZE_WIDTH__ 64"
.LASF561:
	.string	"simdFloatingPointException"
.LASF283:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF530:
	.string	"_ZN6Kernel7Console5printIJlEEEvPKcDpT_"
.LASF529:
	.string	"print<long int>"
.LASF178:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF114:
	.string	"__cpp_structured_bindings 201606L"
.LASF420:
	.string	"__k8 1"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF124:
	.string	"__cpp_consteval 201811L"
.LASF224:
	.string	"__FLT_MAX_EXP__ 128"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF317:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF444:
	.string	"unsigned char"
.LASF590:
	.string	"s_entryFlags"
.LASF658:
	.string	"m_flags"
.LASF532:
	.string	"_ZN6Kernel7Console5printIJPhEEEvPKcDpT_"
.LASF682:
	.string	"kernel_main"
.LASF690:
	.string	"function"
.LASF122:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF294:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF636:
	.string	"m_usedSize"
.LASF218:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF522:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF184:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF434:
	.string	"NULL ((void *)0)"
.LASF187:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF313:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF504:
	.string	"putString"
.LASF71:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF145:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF575:
	.string	"irqKeyboard"
.LASF303:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF676:
	.string	"stack_bottom"
.LASF510:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF84:
	.string	"__cpp_lambdas 200907L"
.LASF661:
	.string	"allocate"
.LASF153:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF549:
	.string	"deviceNotAvailable"
.LASF521:
	.string	"getWindowCapacity"
.LASF246:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF355:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF59:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF139:
	.string	"__cpp_template_template_args 201611L"
.LASF371:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF86:
	.string	"__cpp_attributes 200809L"
.LASF348:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF536:
	.string	"error_code"
.LASF482:
	.string	"WhiteOnRed"
.LASF559:
	.string	"alignmentCheck"
.LASF128:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF645:
	.string	"MemoryMap"
.LASF458:
	.string	"Kernel"
.LASF189:
	.string	"__INT64_C(c) c ## L"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF617:
	.string	"Block"
.LASF637:
	.string	"m_availibleSize"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF98:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF684:
	.string	"handleKeyboardInterrupt"
.LASF266:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF91:
	.string	"__cpp_delegating_constructors 200604L"
.LASF596:
	.string	"s_interruptCount"
.LASF314:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF68:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF487:
	.string	"BlackOnLightGray"
.LASF143:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF683:
	.string	"multibootInfoAddr"
.LASF451:
	.string	"signed char"
.LASF112:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF697:
	.string	"handleException"
.LASF241:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF583:
	.string	"irqAcpi"
.LASF258:
	.string	"__DECIMAL_DIG__ 21"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF446:
	.string	"short unsigned int"
.LASF633:
	.string	"m_head"
.LASF383:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF584:
	.string	"irqAvailable10"
.LASF101:
	.string	"__cpp_unicode_characters 201411L"
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF672:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_"
.LASF328:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF582:
	.string	"irqRealTimeClock"
.LASF515:
	.string	"setCursor"
.LASF200:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF486:
	.string	"WhiteOnBrown"
.LASF222:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF312:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF560:
	.string	"machineCheck"
.LASF535:
	.string	"interrupt_number"
.LASF208:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF417:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF459:
	.string	"BlackOnBlack"
.LASF613:
	.string	"_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE"
.LASF276:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF242:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF616:
	.string	"Used"
.LASF338:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF43:
	.string	"__INTMAX_TYPE__ long int"
.LASF580:
	.string	"irqFloppyDisk"
.LASF36:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF341:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF228:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF688:
	.string	"handleTimerInterrupt"
.LASF650:
	.string	"getHeapCount"
.LASF630:
	.string	"_ZN6Kernel14HeapLinkedList5Block4sizeEv"
.LASF541:
	.string	"InterruptVector"
.LASF609:
	.string	"_ZN6Kernel16InterruptManager7loadIdtEv"
.LASF323:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF367:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF102:
	.string	"__cpp_static_assert 201411L"
.LASF185:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF643:
	.string	"align"
.LASF72:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF257:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF93:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF118:
	.string	"__cpp_init_captures 201803L"
.LASF293:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF292:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF406:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF48:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF360:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF132:
	.string	"__cpp_aggregate_paren_init 201902L"
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
.LASF65:
	.string	"__INT_FAST8_TYPE__ int"
.LASF470:
	.string	"LightCyanOnBlack"
.LASF119:
	.string	"__cpp_generic_lambdas 201707L"
.LASF301:
	.string	"__FLT64_MANT_DIG__ 53"
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
	.string	"src/kernel/kernel.cpp"
.LASF1:
	.string	"/mnt/a/myOsX64"
	.ident	"GCC: (GNU) 13.2.0"
