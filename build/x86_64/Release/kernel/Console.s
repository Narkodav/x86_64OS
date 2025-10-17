	.file	"Console.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/Console.cpp"
	.globl	_ZN6Kernel7Console12s_vgaAddressE
	.data
	.align 8
	.type	_ZN6Kernel7Console12s_vgaAddressE, @object
	.size	_ZN6Kernel7Console12s_vgaAddressE, 8
_ZN6Kernel7Console12s_vgaAddressE:
	.quad	753664
	.globl	_ZN6Kernel7Console8s_extentE
	.section	.rodata
	.align 16
	.type	_ZN6Kernel7Console8s_extentE, @object
	.size	_ZN6Kernel7Console8s_extentE, 16
_ZN6Kernel7Console8s_extentE:
	.quad	80
	.quad	25
	.globl	_ZN6Kernel7Console16s_windowCapacityE
	.align 8
	.type	_ZN6Kernel7Console16s_windowCapacityE, @object
	.size	_ZN6Kernel7Console16s_windowCapacityE, 8
_ZN6Kernel7Console16s_windowCapacityE:
	.quad	2000
	.globl	_ZN6Kernel7Console11s_cursorPosE
	.section	.bss
	.align 16
	.type	_ZN6Kernel7Console11s_cursorPosE, @object
	.size	_ZN6Kernel7Console11s_cursorPosE, 16
_ZN6Kernel7Console11s_cursorPosE:
	.zero	16
	.text
	.align 2
	.globl	_ZN6Kernel7Console20updateHardwareCursorEv
	.type	_ZN6Kernel7Console20updateHardwareCursorEv, @function
_ZN6Kernel7Console20updateHardwareCursorEv:
.LFB17:
	.file 1 "src/kernel/Console.cpp"
	.loc 1 11 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 12 34
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 12 47
	movl	$80, %edx
	.loc 1 12 36
	imulq	%rax, %rdx
	.loc 1 12 67
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 15 9
	movl	$15, %eax
	movl	$980, %edx
/APP
# 15 "src/kernel/Console.cpp" 1
	outb %al, %dx
# 0 "" 2
	.loc 1 16 9
/NO_APP
	movq	-8(%rbp), %rax
	movl	$981, %edx
/APP
# 16 "src/kernel/Console.cpp" 1
	outb %al, %dx
# 0 "" 2
	.loc 1 19 9
/NO_APP
	movl	$14, %eax
	movl	$980, %edx
/APP
# 19 "src/kernel/Console.cpp" 1
	outb %al, %dx
# 0 "" 2
	.loc 1 20 65
/NO_APP
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	.loc 1 20 9
	movl	$981, %edx
/APP
# 20 "src/kernel/Console.cpp" 1
	outb %al, %dx
# 0 "" 2
	.loc 1 21 5
/NO_APP
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_ZN6Kernel7Console20updateHardwareCursorEv, .-_ZN6Kernel7Console20updateHardwareCursorEv
	.align 2
	.globl	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE, @function
_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE:
.LFB18:
	.loc 1 25 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%ecx, %edx
	movb	%dl, -12(%rbp)
	movb	%al, -16(%rbp)
	.loc 1 26 27
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	.loc 1 26 39
	movzbl	-12(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 27 27
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	.loc 1 27 34
	movzbl	-16(%rbp), %eax
	movb	%al, 1(%rdx)
	.loc 1 28 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE, .-_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE
	.type	_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE, @function
_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE:
.LFB19:
	.loc 1 34 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
.LBB2:
	.loc 1 35 21
	movq	$0, -8(%rbp)
	.loc 1 35 9
	jmp	.L4
.L5:
	.loc 1 36 44
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 36 22
	movzbl	%al, %eax
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movzbl	-36(%rbp), %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 1 35 9 discriminator 3
	addq	$1, -8(%rbp)
.L4:
	.loc 1 35 33 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 35 35 discriminator 1
	testb	%al, %al
	jne	.L5
.LBE2:
	.loc 1 37 5
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE, .-_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE
	.type	_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE, @function
_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE:
.LFB20:
	.loc 1 43 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
.LBB3:
	.loc 1 44 21
	movq	$0, -8(%rbp)
	.loc 1 44 9
	jmp	.L7
.L8:
	.loc 1 45 44
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 45 22
	movzbl	%al, %eax
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movzbl	-36(%rbp), %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 1 44 9 discriminator 3
	addq	$1, -8(%rbp)
.L7:
	.loc 1 44 33 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 44 35 discriminator 1
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	.L8
.LBE3:
	.loc 1 46 5
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE, .-_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.type	_ZN6Kernel7Console9setCursorENS0_9CursorPosE, @function
_ZN6Kernel7Console9setCursorENS0_9CursorPosE:
.LFB21:
	.loc 1 49 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 1 50 29
	movq	-16(%rbp), %rax
	.loc 1 50 23
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 51 29
	movq	-8(%rbp), %rax
	.loc 1 51 23
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 1 52 29
	call	_ZN6Kernel7Console20updateHardwareCursorEv
	.loc 1 53 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	_ZN6Kernel7Console9setCursorENS0_9CursorPosE, .-_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.align 2
	.globl	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.type	_ZN6Kernel7Console7putCharEhNS0_10AttributesE, @function
_ZN6Kernel7Console7putCharEhNS0_10AttributesE:
.LFB22:
	.loc 1 56 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -20(%rbp)
	movb	%al, -24(%rbp)
	.loc 1 57 34
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 57 47
	movl	$80, %edx
	.loc 1 57 36
	imulq	%rax, %rdx
	.loc 1 57 67
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 58 18
	movzbl	-20(%rbp), %ecx
	movzbl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 1 59 9
	cmpb	$10, -20(%rbp)
	jne	.L11
	.loc 1 61 27
	movq	$0, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 62 27
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 62 13
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	jmp	.L12
.L11:
	.loc 1 66 27
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 66 13
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 67 29
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 67 43
	movl	$80, %edx
	.loc 1 67 31
	cmpq	%rdx, %rax
	setnb	%al
	.loc 1 67 13
	testb	%al, %al
	je	.L12
	.loc 1 69 31
	movq	$0, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 70 31
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 70 17
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
.L12:
	.loc 1 74 25
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 74 39
	movl	$25, %edx
	.loc 1 74 27
	cmpq	%rdx, %rax
	setnb	%al
	.loc 1 74 9
	testb	%al, %al
	je	.L13
	.loc 1 75 23
	movl	$1, %edi
	call	_ZN6Kernel7Console10scrollDownEm
.L13:
	.loc 1 77 29
	call	_ZN6Kernel7Console20updateHardwareCursorEv
	.loc 1 78 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	_ZN6Kernel7Console7putCharEhNS0_10AttributesE, .-_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.type	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE, @function
_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE:
.LFB23:
	.loc 1 82 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
.LBB4:
	.loc 1 83 21
	movq	$0, -8(%rbp)
	.loc 1 83 9
	jmp	.L15
.L20:
.LBB5:
	.loc 1 85 38
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 85 51
	movl	$80, %edx
	.loc 1 85 40
	imulq	%rax, %rdx
	.loc 1 85 71
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 86 33
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 86 22
	movzbl	%al, %ecx
	movzbl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 1 87 27
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 87 13
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 88 29
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 88 43
	movl	$80, %edx
	.loc 1 88 49
	cmpq	%rdx, %rax
	jnb	.L16
	.loc 1 88 57 discriminator 2
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 88 49 discriminator 2
	cmpb	$10, %al
	jne	.L17
.L16:
	.loc 1 88 49 is_stmt 0 discriminator 3
	movl	$1, %eax
	.loc 1 88 49
	jmp	.L18
.L17:
	.loc 1 88 49 discriminator 4
	movl	$0, %eax
.L18:
	.loc 1 88 13 is_stmt 1 discriminator 6
	testb	%al, %al
	je	.L19
	.loc 1 90 31
	movq	$0, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 91 31
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 91 17
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 1 92 33
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 92 47
	movl	$25, %edx
	.loc 1 92 35
	cmpq	%rdx, %rax
	setnb	%al
	.loc 1 92 17
	testb	%al, %al
	je	.L19
	.loc 1 93 31
	movl	$1, %edi
	call	_ZN6Kernel7Console10scrollDownEm
.L19:
.LBE5:
	.loc 1 83 9 discriminator 2
	addq	$1, -8(%rbp)
.L15:
	.loc 1 83 33 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 83 35 discriminator 1
	testb	%al, %al
	jne	.L20
.LBE4:
	.loc 1 96 29
	call	_ZN6Kernel7Console20updateHardwareCursorEv
	.loc 1 97 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE, .-_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE
	.type	_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE, @function
_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE:
.LFB24:
	.loc 1 101 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
.LBB6:
	.loc 1 102 21
	movq	$0, -8(%rbp)
	.loc 1 102 9
	jmp	.L22
.L27:
.LBB7:
	.loc 1 104 38
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 104 51
	movl	$80, %edx
	.loc 1 104 40
	imulq	%rax, %rdx
	.loc 1 104 71
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 105 33
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 105 22
	movzbl	%al, %ecx
	movzbl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 1 106 27
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 106 13
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 107 29
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 107 43
	movl	$80, %edx
	.loc 1 107 49
	cmpq	%rdx, %rax
	jnb	.L23
	.loc 1 107 57 discriminator 2
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 107 49 discriminator 2
	cmpb	$10, %al
	jne	.L24
.L23:
	.loc 1 107 49 is_stmt 0 discriminator 3
	movl	$1, %eax
	.loc 1 107 49
	jmp	.L25
.L24:
	.loc 1 107 49 discriminator 4
	movl	$0, %eax
.L25:
	.loc 1 107 13 is_stmt 1 discriminator 6
	testb	%al, %al
	je	.L26
	.loc 1 109 31
	movq	$0, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 110 31
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 110 17
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 1 111 33
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 111 47
	movl	$25, %edx
	.loc 1 111 35
	cmpq	%rdx, %rax
	setnb	%al
	.loc 1 111 17
	testb	%al, %al
	je	.L26
	.loc 1 112 31
	movl	$1, %edi
	call	_ZN6Kernel7Console10scrollDownEm
.L26:
.LBE7:
	.loc 1 102 9 discriminator 2
	addq	$1, -8(%rbp)
.L22:
	.loc 1 102 33 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 102 35 discriminator 1
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	.L27
.LBE6:
	.loc 1 115 29
	call	_ZN6Kernel7Console20updateHardwareCursorEv
	.loc 1 116 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE, .-_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console5clearEhNS0_10AttributesE
	.type	_ZN6Kernel7Console5clearEhNS0_10AttributesE, @function
_ZN6Kernel7Console5clearEhNS0_10AttributesE:
.LFB25:
	.loc 1 123 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%esi, %ecx
	movl	%edi, %esi
	movb	%sil, -36(%rbp)
	movb	%cl, -40(%rbp)
.LBB8:
	.loc 1 124 21
	movq	$0, -24(%rbp)
	.loc 1 124 9
	jmp	.L29
.L30:
	.loc 1 126 27
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rcx
	movq	-24(%rbp), %rsi
	addq	%rsi, %rsi
	addq	%rcx, %rsi
	.loc 1 126 39
	movzbl	-36(%rbp), %ecx
	movb	%cl, (%rsi)
	.loc 1 127 27
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rcx
	movq	-24(%rbp), %rsi
	addq	%rsi, %rsi
	addq	%rcx, %rsi
	.loc 1 127 34
	movzbl	-40(%rbp), %ecx
	movb	%cl, 1(%rsi)
	.loc 1 124 9 discriminator 3
	addq	$1, -24(%rbp)
.L29:
	.loc 1 124 30 discriminator 1
	cmpq	$1999, -24(%rbp)
	jbe	.L30
.LBE8:
	.loc 1 129 18
	movl	$0, %eax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.loc 1 130 5
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN6Kernel7Console5clearEhNS0_10AttributesE, .-_ZN6Kernel7Console5clearEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearLineEhNS0_10AttributesE:
.LFB26:
	.loc 1 136 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -36(%rbp)
	movb	%al, -40(%rbp)
	.loc 1 137 18
	movzbl	-36(%rbp), %ecx
	.loc 1 137 31
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 137 18
	movzbl	-40(%rbp), %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
	.loc 1 138 18
	movl	$0, %r12d
	.loc 1 138 35
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 138 18
	movq	%rax, %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%rax, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.loc 1 139 5
	nop
	addq	$24, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE, .-_ZN6Kernel7Console9clearLineEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE:
.LFB27:
	.loc 1 145 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%ecx, %edx
	movb	%dl, -28(%rbp)
	movb	%al, -32(%rbp)
	.loc 1 146 45
	movl	$80, %edx
	.loc 1 146 16
	movq	-24(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 147 49
	movl	$80, %edx
	.loc 1 147 16
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 148 18
	movzbl	-28(%rbp), %edx
	movzbl	-32(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE
	.loc 1 149 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE, .-_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE:
.LFB28:
	.loc 1 155 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, %eax
	movl	%r8d, %edx
	movb	%al, -44(%rbp)
	movl	%edx, %eax
	movb	%al, -48(%rbp)
	.loc 1 156 33
	movq	-24(%rbp), %rax
	.loc 1 156 46
	movl	$80, %edx
	.loc 1 156 35
	imulq	%rax, %rdx
	.loc 1 156 58
	movq	-32(%rbp), %rax
	.loc 1 156 16
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 157 16
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 158 18
	movzbl	-44(%rbp), %edx
	movzbl	-48(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE
	.loc 1 159 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE, .-_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE:
.LFB29:
	.loc 1 165 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%ecx, %eax
	movb	%dl, -36(%rbp)
	movb	%al, -40(%rbp)
.LBB9:
	.loc 1 166 21
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 166 9
	jmp	.L35
.L36:
	.loc 1 167 22
	movzbl	-36(%rbp), %ecx
	movzbl	-40(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 1 166 9 discriminator 3
	addq	$1, -8(%rbp)
.L35:
	.loc 1 166 39 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L36
.LBE9:
	.loc 1 168 5
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE, .-_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console10scrollDownEm
	.type	_ZN6Kernel7Console10scrollDownEm, @function
_ZN6Kernel7Console10scrollDownEm:
.LFB30:
	.loc 1 171 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
.LBB10:
	.loc 1 172 21
	movq	$0, -24(%rbp)
	.loc 1 172 9
	jmp	.L38
.L41:
.LBB11:
	.loc 1 174 29
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 174 49
	movl	$80, %esi
	.loc 1 174 20
	imulq	%rsi, %rcx
	movq	%rcx, -64(%rbp)
	.loc 1 175 39
	movl	$80, %esi
	.loc 1 175 20
	movq	-24(%rbp), %rcx
	imulq	%rsi, %rcx
	movq	%rcx, -72(%rbp)
.LBB12:
	.loc 1 176 25
	movq	$0, -32(%rbp)
	.loc 1 176 13
	jmp	.L39
.L40:
	.loc 1 178 75
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rcx
	.loc 1 178 71
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	addq	%rdi, %rsi
	.loc 1 178 75
	addq	%rsi, %rsi
	addq	%rsi, %rcx
	.loc 1 178 39
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rsi
	.loc 1 178 35
	movq	-72(%rbp), %r8
	movq	-32(%rbp), %rdi
	addq	%r8, %rdi
	.loc 1 178 39
	addq	%rdi, %rdi
	addq	%rdi, %rsi
	.loc 1 178 77
	movzbl	(%rcx), %ecx
	.loc 1 178 51
	movb	%cl, (%rsi)
	.loc 1 179 70
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rcx
	.loc 1 179 66
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	addq	%rdi, %rsi
	.loc 1 179 70
	addq	%rsi, %rsi
	addq	%rsi, %rcx
	.loc 1 179 39
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rsi
	.loc 1 179 35
	movq	-72(%rbp), %r8
	movq	-32(%rbp), %rdi
	addq	%r8, %rdi
	.loc 1 179 39
	addq	%rdi, %rdi
	addq	%rdi, %rsi
	.loc 1 179 72
	movzbl	1(%rcx), %ecx
	.loc 1 179 46
	movb	%cl, 1(%rsi)
	.loc 1 176 13 discriminator 3
	addq	$1, -32(%rbp)
.L39:
	.loc 1 176 45 discriminator 1
	movl	$80, %ecx
	.loc 1 176 34 discriminator 1
	cmpq	%rcx, -32(%rbp)
	jb	.L40
.LBE12:
.LBE11:
	.loc 1 172 9 discriminator 2
	addq	$1, -24(%rbp)
.L38:
	.loc 1 172 41 discriminator 1
	movl	$25, %ecx
	.loc 1 172 48 discriminator 1
	subq	-88(%rbp), %rcx
	.loc 1 172 30 discriminator 1
	cmpq	%rcx, -24(%rbp)
	jb	.L41
.LBE10:
.LBB13:
	.loc 1 182 21
	movq	$0, -40(%rbp)
	.loc 1 182 9
	jmp	.L42
.L45:
.LBB14:
	.loc 1 184 36
	movl	$25, %ecx
	.loc 1 184 43
	subq	-40(%rbp), %rcx
	.loc 1 184 47
	subq	$1, %rcx
	.loc 1 184 63
	movl	$80, %esi
	.loc 1 184 20
	imulq	%rsi, %rcx
	movq	%rcx, -56(%rbp)
.LBB15:
	.loc 1 185 25
	movq	$0, -48(%rbp)
	.loc 1 185 13
	jmp	.L43
.L44:
	.loc 1 187 39
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rcx
	.loc 1 187 35
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	addq	%rdi, %rsi
	.loc 1 187 39
	addq	%rsi, %rsi
	addq	%rsi, %rcx
	.loc 1 187 51
	movb	$0, (%rcx)
	.loc 1 188 39
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rcx
	.loc 1 188 35
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	addq	%rdi, %rsi
	.loc 1 188 39
	addq	%rsi, %rsi
	addq	%rsi, %rcx
	.loc 1 188 46
	movb	$0, 1(%rcx)
	.loc 1 185 13 discriminator 3
	addq	$1, -48(%rbp)
.L43:
	.loc 1 185 45 discriminator 1
	movl	$80, %ecx
	.loc 1 185 34 discriminator 1
	cmpq	%rcx, -48(%rbp)
	jb	.L44
.LBE15:
.LBE14:
	.loc 1 182 9 discriminator 2
	addq	$1, -40(%rbp)
.L42:
	.loc 1 182 30 discriminator 1
	movq	-40(%rbp), %rcx
	cmpq	-88(%rbp), %rcx
	jb	.L45
.LBE13:
	.loc 1 191 32
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rcx
	.loc 1 191 18
	movq	%rcx, %rax
	.loc 1 191 47
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rcx
	.loc 1 191 49
	subq	-88(%rbp), %rcx
	.loc 1 191 18
	movq	%rcx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rdx
	movq	%rbx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.loc 1 192 5
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	_ZN6Kernel7Console10scrollDownEm, .-_ZN6Kernel7Console10scrollDownEm
.Letext0:
	.file 2 "src/kernel/../../include/Types.h"
	.file 3 "src/kernel/../../include/Console.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9b0
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x17
	.long	.LASF527
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x15
	.long	.LASF438
	.byte	0x5
	.long	0x41
	.uleb128 0xb
	.long	0x32
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF436
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF437
	.uleb128 0x15
	.long	.LASF439
	.byte	0x8
	.long	0x59
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF440
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF441
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF442
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF443
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF444
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF445
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF446
	.uleb128 0x19
	.string	"std"
	.byte	0x2
	.byte	0x14
	.byte	0xb
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.long	.LASF447
	.uleb128 0x1a
	.long	.LASF528
	.byte	0x3
	.byte	0x7
	.byte	0xb
	.long	0x3da
	.uleb128 0x1b
	.long	.LASF529
	.byte	0x1
	.byte	0x3
	.byte	0x9
	.byte	0xb
	.uleb128 0x1c
	.long	.LASF530
	.byte	0x7
	.byte	0x1
	.long	0x4f
	.byte	0x3
	.byte	0xc
	.byte	0x14
	.byte	0x1
	.long	0x17d
	.uleb128 0x2
	.long	.LASF448
	.byte	0
	.uleb128 0x2
	.long	.LASF449
	.byte	0x1
	.uleb128 0x2
	.long	.LASF450
	.byte	0x2
	.uleb128 0x2
	.long	.LASF451
	.byte	0x3
	.uleb128 0x2
	.long	.LASF452
	.byte	0x4
	.uleb128 0x2
	.long	.LASF453
	.byte	0x5
	.uleb128 0x2
	.long	.LASF454
	.byte	0x6
	.uleb128 0x2
	.long	.LASF455
	.byte	0x7
	.uleb128 0x2
	.long	.LASF456
	.byte	0x8
	.uleb128 0x2
	.long	.LASF457
	.byte	0x9
	.uleb128 0x2
	.long	.LASF458
	.byte	0xa
	.uleb128 0x2
	.long	.LASF459
	.byte	0xb
	.uleb128 0x2
	.long	.LASF460
	.byte	0xc
	.uleb128 0x2
	.long	.LASF461
	.byte	0xd
	.uleb128 0x2
	.long	.LASF462
	.byte	0xe
	.uleb128 0x2
	.long	.LASF463
	.byte	0xf
	.uleb128 0x2
	.long	.LASF464
	.byte	0x10
	.uleb128 0x2
	.long	.LASF465
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF466
	.byte	0x20
	.uleb128 0x2
	.long	.LASF467
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF468
	.byte	0x30
	.uleb128 0x2
	.long	.LASF469
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF470
	.byte	0x40
	.uleb128 0x2
	.long	.LASF471
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF472
	.byte	0x50
	.uleb128 0x2
	.long	.LASF473
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF474
	.byte	0x60
	.uleb128 0x2
	.long	.LASF475
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF476
	.byte	0x70
	.uleb128 0x2
	.long	.LASF477
	.byte	0x7f
	.byte	0
	.uleb128 0x10
	.long	.LASF478
	.byte	0x10
	.byte	0x2e
	.long	0x19b
	.uleb128 0x16
	.string	"x"
	.byte	0x30
	.long	0x32
	.byte	0
	.uleb128 0x16
	.string	"y"
	.byte	0x31
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	0x17d
	.uleb128 0xb
	.long	0x19b
	.uleb128 0x10
	.long	.LASF479
	.byte	0x10
	.byte	0x34
	.long	0x1c9
	.uleb128 0xc
	.long	.LASF480
	.byte	0x36
	.byte	0x14
	.long	0x32
	.byte	0
	.uleb128 0xc
	.long	.LASF481
	.byte	0x37
	.byte	0x14
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x1a5
	.uleb128 0x10
	.long	.LASF482
	.byte	0x2
	.byte	0x3a
	.long	0x1f2
	.uleb128 0xc
	.long	.LASF483
	.byte	0x3c
	.byte	0x15
	.long	0x4f
	.byte	0
	.uleb128 0xc
	.long	.LASF484
	.byte	0x3d
	.byte	0x18
	.long	0xb5
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.long	0x1ce
	.uleb128 0xd
	.long	.LASF485
	.byte	0x41
	.byte	0x22
	.long	.LASF487
	.long	0x3da
	.uleb128 0xd
	.long	.LASF486
	.byte	0x42
	.byte	0x1d
	.long	.LASF488
	.long	0x1c9
	.uleb128 0xd
	.long	.LASF489
	.byte	0x43
	.byte	0x1d
	.long	.LASF490
	.long	0x3c
	.uleb128 0xd
	.long	.LASF491
	.byte	0x44
	.byte	0x23
	.long	.LASF492
	.long	0x19b
	.uleb128 0x1d
	.long	.LASF531
	.byte	0x3
	.byte	0x46
	.byte	0x15
	.long	.LASF532
	.uleb128 0x9
	.long	.LASF493
	.byte	0x49
	.long	.LASF495
	.long	0x25d
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0x9
	.long	.LASF494
	.byte	0x4a
	.long	.LASF496
	.long	0x27b
	.uleb128 0x1
	.long	0x3df
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0x9
	.long	.LASF494
	.byte	0x4b
	.long	.LASF497
	.long	0x299
	.uleb128 0x1
	.long	0x3f5
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0x9
	.long	.LASF498
	.byte	0x4e
	.long	.LASF499
	.long	0x2b2
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0x9
	.long	.LASF500
	.byte	0x4f
	.long	.LASF501
	.long	0x2cb
	.uleb128 0x1
	.long	0x3df
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0x9
	.long	.LASF500
	.byte	0x50
	.long	.LASF502
	.long	0x2e4
	.uleb128 0x1
	.long	0x3f5
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0xa
	.long	.LASF503
	.value	0x116
	.long	.LASF505
	.long	0x2fe
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0xa
	.long	.LASF504
	.value	0x117
	.long	.LASF506
	.long	0x318
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0xa
	.long	.LASF504
	.value	0x119
	.long	.LASF507
	.long	0x337
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0xa
	.long	.LASF508
	.value	0x11c
	.long	.LASF509
	.long	0x35b
	.uleb128 0x1
	.long	0x17d
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0xa
	.long	.LASF508
	.value	0x11f
	.long	.LASF510
	.long	0x37f
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xb5
	.byte	0
	.uleb128 0xa
	.long	.LASF511
	.value	0x122
	.long	.LASF512
	.long	0x394
	.uleb128 0x1
	.long	0x17d
	.byte	0
	.uleb128 0x12
	.long	.LASF513
	.value	0x123
	.byte	0x2a
	.long	.LASF515
	.long	0x3fa
	.uleb128 0x12
	.long	.LASF514
	.value	0x124
	.byte	0x1e
	.long	.LASF516
	.long	0x3ff
	.uleb128 0x12
	.long	.LASF517
	.value	0x125
	.byte	0x1e
	.long	.LASF518
	.long	0x404
	.uleb128 0x1e
	.long	.LASF533
	.byte	0x3
	.value	0x127
	.byte	0x15
	.long	.LASF534
	.byte	0x1
	.uleb128 0x1
	.long	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x1f2
	.uleb128 0x13
	.long	0x3eb
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF519
	.uleb128 0xb
	.long	0x3e4
	.uleb128 0x11
	.long	0x3eb
	.uleb128 0x13
	.long	0x3f0
	.uleb128 0x14
	.long	0x1a0
	.uleb128 0x14
	.long	0x1c9
	.uleb128 0x14
	.long	0x3c
	.uleb128 0xe
	.long	0x1f7
	.byte	0x5
	.byte	0x20
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_vgaAddressE
	.uleb128 0xe
	.long	0x206
	.byte	0x6
	.byte	0x1b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console8s_extentE
	.uleb128 0xe
	.long	0x215
	.byte	0x7
	.byte	0x12
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console16s_windowCapacityE
	.uleb128 0xe
	.long	0x224
	.byte	0x8
	.byte	0x21
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console11s_cursorPosE
	.uleb128 0x6
	.long	0x3c4
	.byte	0xaa
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x546
	.uleb128 0x3
	.long	.LASF520
	.byte	0xaa
	.byte	0x25
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x4e8
	.uleb128 0x4
	.string	"i"
	.byte	0xac
	.byte	0x15
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x4
	.string	"src"
	.byte	0xae
	.byte	0x14
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.string	"dst"
	.byte	0xaf
	.byte	0x14
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x4
	.string	"j"
	.byte	0xb0
	.byte	0x19
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x4
	.string	"i"
	.byte	0xb6
	.byte	0x15
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x4
	.string	"dst"
	.byte	0xb8
	.byte	0x14
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x4
	.string	"j"
	.byte	0xb9
	.byte	0x19
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x35b
	.byte	0xa1
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b9
	.uleb128 0x3
	.long	.LASF521
	.byte	0xa1
	.byte	0x24
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF522
	.byte	0xa1
	.byte	0x37
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF523
	.byte	0xa1
	.byte	0x49
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.long	.LASF484
	.byte	0xa3
	.byte	0x28
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x4
	.string	"i"
	.byte	0xa6
	.byte	0x15
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x337
	.byte	0x97
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x628
	.uleb128 0x8
	.string	"pos"
	.byte	0x97
	.byte	0x27
	.long	0x17d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF524
	.byte	0x97
	.byte	0x33
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF523
	.byte	0x97
	.byte	0x43
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.long	.LASF484
	.byte	0x99
	.byte	0x28
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.long	.LASF521
	.byte	0x9c
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF522
	.byte	0x9d
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	0x318
	.byte	0x8d
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x689
	.uleb128 0x3
	.long	.LASF525
	.byte	0x8d
	.byte	0x24
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF523
	.byte	0x8d
	.byte	0x32
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.long	.LASF484
	.byte	0x8f
	.byte	0x28
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF521
	.byte	0x92
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF522
	.byte	0x93
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	0x2fe
	.byte	0x84
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c2
	.uleb128 0x3
	.long	.LASF523
	.byte	0x84
	.byte	0x25
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.long	.LASF484
	.byte	0x86
	.byte	0x28
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.long	0x2e4
	.byte	0x76
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x719
	.uleb128 0x3
	.long	.LASF523
	.byte	0x77
	.byte	0x11
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.long	.LASF484
	.byte	0x79
	.byte	0x14
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x4
	.string	"i"
	.byte	0x7c
	.byte	0x15
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x2cb
	.byte	0x63
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x790
	.uleb128 0x8
	.string	"str"
	.byte	0x63
	.byte	0x32
	.long	0x3f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF484
	.byte	0x63
	.byte	0x42
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x4
	.string	"i"
	.byte	0x66
	.byte	0x15
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x4
	.string	"pos"
	.byte	0x68
	.byte	0x14
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x2b2
	.byte	0x50
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x807
	.uleb128 0x8
	.string	"str"
	.byte	0x50
	.byte	0x29
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF484
	.byte	0x50
	.byte	0x39
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x4
	.string	"i"
	.byte	0x53
	.byte	0x15
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x4
	.string	"pos"
	.byte	0x55
	.byte	0x14
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x299
	.byte	0x37
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x84c
	.uleb128 0x8
	.string	"c"
	.byte	0x37
	.byte	0x23
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF484
	.byte	0x37
	.byte	0x31
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"pos"
	.byte	0x39
	.byte	0x10
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	0x37f
	.byte	0x30
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x877
	.uleb128 0x8
	.string	"pos"
	.byte	0x30
	.byte	0x27
	.long	0x17d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	0x27b
	.byte	0x27
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x8dc
	.uleb128 0x8
	.string	"str"
	.byte	0x27
	.byte	0x34
	.long	0x3f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF521
	.byte	0x27
	.byte	0x40
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF484
	.byte	0x29
	.byte	0x2a
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x4
	.string	"i"
	.byte	0x2c
	.byte	0x15
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x25d
	.byte	0x1e
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x941
	.uleb128 0x8
	.string	"str"
	.byte	0x1e
	.byte	0x2b
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.long	.LASF521
	.byte	0x1e
	.byte	0x37
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF484
	.byte	0x20
	.byte	0x2a
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x4
	.string	"i"
	.byte	0x23
	.byte	0x15
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x23f
	.byte	0x1
	.byte	0x17
	.byte	0xa
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x98a
	.uleb128 0x3
	.long	.LASF526
	.byte	0x17
	.byte	0x24
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.long	.LASF483
	.byte	0x17
	.byte	0x33
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.long	.LASF484
	.byte	0x17
	.byte	0x49
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	0x233
	.byte	0x1
	.byte	0xa
	.byte	0xa
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.string	"pos"
	.byte	0xc
	.byte	0x10
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.sleb128 3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 23
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
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
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
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
	.byte	0x5
	.uleb128 0x3
	.long	.LASF433
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro3
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
.LASF243:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF315:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF488:
	.string	"_ZN6Kernel7Console8s_extentE"
.LASF272:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF216:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF305:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF103:
	.string	"__cpp_namespace_attributes 201411L"
.LASF359:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF165:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF202:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF71:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF501:
	.string	"_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE"
.LASF411:
	.string	"__amd64 1"
.LASF211:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF285:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF492:
	.string	"_ZN6Kernel7Console11s_cursorPosE"
.LASF192:
	.string	"__UINT8_C(c) c"
.LASF454:
	.string	"BrownOnBlack"
.LASF468:
	.string	"BlackOnCyan"
.LASF467:
	.string	"WhiteOnGreen"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF339:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF238:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF158:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF340:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF120:
	.string	"__cpp_designated_initializers 201707L"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF347:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF337:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF449:
	.string	"BlueOnBlack"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF178:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF79:
	.string	"__cpp_hex_float 201603L"
.LASF123:
	.string	"__cpp_conditional_explicit 201806L"
.LASF37:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF300:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF490:
	.string	"_ZN6Kernel7Console16s_windowCapacityE"
.LASF146:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF231:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF46:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF452:
	.string	"RedOnBlack"
.LASF478:
	.string	"CursorPos"
.LASF199:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF509:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF524:
	.string	"length"
.LASF198:
	.string	"__UINT64_C(c) c ## UL"
.LASF462:
	.string	"YellowOnBlack"
.LASF236:
	.string	"__DBL_MANT_DIG__ 53"
.LASF100:
	.string	"__cpp_digit_separators 201309L"
.LASF145:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF453:
	.string	"MagentaOnBlack"
.LASF373:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF270:
	.string	"__FLT16_DIG__ 3"
.LASF50:
	.string	"__INT16_TYPE__ short int"
.LASF284:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF376:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF253:
	.string	"__LDBL_DIG__ 18"
.LASF353:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF56:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF57:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF63:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF262:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF288:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF60:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF149:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF61:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF143:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF36:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF523:
	.string	"clearValue"
.LASF302:
	.string	"__FLT64_DIG__ 15"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF268:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF507:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF346:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF330:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF465:
	.string	"WhiteOnBlue"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF180:
	.string	"__INT8_C(c) c"
.LASF324:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF126:
	.string	"__cpp_deduction_guides 201907L"
.LASF59:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF184:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF461:
	.string	"LightMagentaOnBlack"
.LASF112:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF316:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF203:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF297:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF487:
	.string	"_ZN6Kernel7Console12s_vgaAddressE"
.LASF351:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF95:
	.string	"__cpp_alias_templates 200704L"
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
.LASF166:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF458:
	.string	"LightGreenOnBlack"
.LASF526:
	.string	"index"
.LASF213:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF443:
	.string	"long long unsigned int"
.LASF214:
	.string	"__GCC_IEC_559 2"
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
.LASF450:
	.string	"GreenOnBlack"
.LASF191:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF366:
	.string	"__BFLT16_DIG__ 2"
.LASF171:
	.string	"__INT8_MAX__ 0x7f"
.LASF514:
	.string	"getExtent"
.LASF485:
	.string	"s_vgaAddress"
.LASF321:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF349:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF520:
	.string	"lines"
.LASF344:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF107:
	.string	"__cpp_range_based_for 201603L"
.LASF529:
	.string	"Console"
.LASF495:
	.string	"_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE"
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF250:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF364:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF264:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF65:
	.string	"__INT_FAST8_TYPE__ int"
.LASF474:
	.string	"BlackOnBrown"
.LASF70:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF161:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF131:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF256:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF43:
	.string	"__INTMAX_TYPE__ long int"
.LASF521:
	.string	"startIndex"
.LASF73:
	.string	"__INTPTR_TYPE__ long int"
.LASF470:
	.string	"BlackOnRed"
.LASF78:
	.string	"__cpp_binary_literals 201304L"
.LASF423:
	.string	"__MMX__ 1"
.LASF134:
	.string	"__cpp_concepts 202002L"
.LASF190:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF489:
	.string	"s_windowCapacity"
.LASF306:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF82:
	.string	"__cpp_unicode_literals 200710L"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF51:
	.string	"__INT32_TYPE__ int"
.LASF338:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF361:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF413:
	.string	"__x86_64 1"
.LASF438:
	.string	"size_t"
.LASF480:
	.string	"width"
.LASF280:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF75:
	.string	"__GXX_WEAK__ 1"
.LASF482:
	.string	"VgaChar"
.LASF483:
	.string	"character"
.LASF244:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF168:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF207:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF322:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF304:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF365:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF434:
	.string	"TYPES_H "
.LASF372:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF412:
	.string	"__amd64__ 1"
.LASF414:
	.string	"__x86_64__ 1"
.LASF66:
	.string	"__INT_FAST16_TYPE__ int"
.LASF271:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF291:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF318:
	.string	"__FLT128_DIG__ 33"
.LASF54:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF159:
	.string	"__WCHAR_WIDTH__ 32"
.LASF298:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF377:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF530:
	.string	"Attributes"
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF313:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF147:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF503:
	.string	"clear"
.LASF62:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF225:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF121:
	.string	"__cpp_constexpr 202002L"
.LASF466:
	.string	"BlackOnGreen"
.LASF125:
	.string	"__cpp_constinit 201907L"
.LASF343:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF273:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF137:
	.string	"__cpp_aligned_new 201606L"
.LASF494:
	.string	"writeString"
.LASF439:
	.string	"uint8_t"
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
.LASF208:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF497:
	.string	"_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE"
.LASF227:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF239:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF519:
	.string	"char"
.LASF255:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF294:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF286:
	.string	"__FLT32_DIG__ 6"
.LASF142:
	.string	"__GXX_ABI_VERSION 1018"
.LASF522:
	.string	"endIndex"
.LASF502:
	.string	"_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE"
.LASF99:
	.string	"__cpp_variable_templates 201304L"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF87:
	.string	"__cpp_rvalue_reference 200610L"
.LASF345:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF477:
	.string	"WhiteOnLightGray"
.LASF94:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF69:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF356:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF326:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF188:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF181:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF175:
	.string	"__UINT8_MAX__ 0xff"
.LASF176:
	.string	"__UINT16_MAX__ 0xffff"
.LASF68:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF491:
	.string	"s_cursorPos"
.LASF531:
	.string	"updateHardwareCursor"
.LASF167:
	.string	"__INTMAX_WIDTH__ 64"
.LASF421:
	.string	"__k8__ 1"
.LASF251:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF109:
	.string	"__cpp_capture_star_this 201603L"
.LASF152:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF58:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF289:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF138:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF237:
	.string	"__DBL_DIG__ 15"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF179:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF130:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF19:
	.string	"__LP64__ 1"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF334:
	.string	"__FLT32X_DIG__ 15"
.LASF85:
	.string	"__cpp_decltype 200707L"
.LASF513:
	.string	"getCursor"
.LASF333:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF18:
	.string	"_LP64 1"
.LASF97:
	.string	"__cpp_decltype_auto 201304L"
.LASF446:
	.string	"long long int"
.LASF527:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF92:
	.string	"__cpp_nsdmi 200809L"
.LASF348:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF150:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF177:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF278:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF254:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF308:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF114:
	.string	"__cpp_structured_bindings 201606L"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF516:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF197:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF384:
	.string	"__NO_INLINE__ 1"
.LASF113:
	.string	"__cpp_template_auto 201606L"
.LASF432:
	.string	"__ELF__ 1"
.LASF342:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
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
.LASF282:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF433:
	.string	"CONSOLE_H "
.LASF2:
	.string	"__STDC__ 1"
.LASF425:
	.string	"__SSE2__ 1"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF240:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF21:
	.string	"__SIZEOF_LONG__ 8"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF375:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF204:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF42:
	.string	"__WINT_TYPE__ unsigned int"
.LASF476:
	.string	"BlackOnLightGray"
.LASF172:
	.string	"__INT16_MAX__ 0x7fff"
.LASF154:
	.string	"__SCHAR_WIDTH__ 8"
.LASF196:
	.string	"__UINT32_C(c) c ## U"
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
.LASF151:
	.string	"__WINT_MIN__ 0U"
.LASF252:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF89:
	.string	"__cpp_variadic_templates 200704L"
.LASF228:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF263:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF481:
	.string	"height"
.LASF457:
	.string	"LightBlueOnBlack"
.LASF88:
	.string	"__cpp_rvalue_references 200610L"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF266:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF456:
	.string	"DarkGrayOnBlack"
.LASF215:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF116:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF310:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF463:
	.string	"WhiteOnBlack"
.LASF320:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF34:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF464:
	.string	"BlackOnBlue"
.LASF469:
	.string	"WhiteOnCyan"
.LASF169:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF127:
	.string	"__cpp_nontype_template_args 201911L"
.LASF173:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF194:
	.string	"__UINT16_C(c) c"
.LASF174:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF96:
	.string	"__cpp_return_type_deduction 201304L"
.LASF431:
	.string	"__SEG_GS 1"
.LASF106:
	.string	"__cpp_fold_expressions 201603L"
.LASF427:
	.string	"__SSE_MATH__ 1"
.LASF44:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF281:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF493:
	.string	"writeChar"
.LASF104:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF170:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF80:
	.string	"__cpp_runtime_arrays 198712L"
.LASF380:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF455:
	.string	"LightGrayOnBlack"
.LASF144:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF499:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF117:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF132:
	.string	"__cpp_aggregate_paren_init 201902L"
.LASF226:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF235:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF160:
	.string	"__WINT_WIDTH__ 32"
.LASF358:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF295:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF445:
	.string	"short int"
.LASF205:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF331:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF110:
	.string	"__cpp_inline_variables 201606L"
.LASF141:
	.string	"__cpp_char8_t 202207L"
.LASF352:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF336:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF498:
	.string	"putChar"
.LASF437:
	.string	"long int"
.LASF111:
	.string	"__cpp_aggregate_bases 201603L"
.LASF484:
	.string	"attr"
.LASF47:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF374:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF354:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF515:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF357:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF335:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF472:
	.string	"BlackOnMagenta"
.LASF212:
	.string	"__INTPTR_WIDTH__ 64"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF369:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF186:
	.string	"__INT32_C(c) c"
.LASF296:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF267:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF41:
	.string	"__WCHAR_TYPE__ int"
.LASF45:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF532:
	.string	"_ZN6Kernel7Console20updateHardwareCursorEv"
.LASF505:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF479:
	.string	"Extent"
.LASF534:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF209:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF108:
	.string	"__cpp_if_constexpr 201606L"
.LASF512:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF128:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF451:
	.string	"CyanOnBlack"
.LASF245:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF279:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF53:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF155:
	.string	"__SHRT_WIDTH__ 16"
.LASF428:
	.string	"__SSE2_MATH__ 1"
.LASF309:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF510:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF164:
	.string	"__INTMAX_C(c) c ## L"
.LASF115:
	.string	"__cpp_variadic_using 201611L"
.LASF508:
	.string	"clearSpan"
.LASF368:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF442:
	.string	"unsigned int"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF311:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF506:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF90:
	.string	"__cpp_initializer_lists 200806L"
.LASF38:
	.string	"__GNUG__ 13"
.LASF148:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF220:
	.string	"__FLT_MANT_DIG__ 24"
.LASF517:
	.string	"getWindowCapacity"
.LASF259:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF430:
	.string	"__SEG_FS 1"
.LASF504:
	.string	"clearLine"
.LASF379:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF436:
	.string	"long unsigned int"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF76:
	.string	"__DEPRECATED 1"
.LASF486:
	.string	"s_extent"
.LASF28:
	.string	"__CHAR_BIT__ 8"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF162:
	.string	"__SIZE_WIDTH__ 64"
.LASF140:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF283:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF290:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF157:
	.string	"__LONG_WIDTH__ 64"
.LASF420:
	.string	"__k8 1"
.LASF124:
	.string	"__cpp_consteval 201811L"
.LASF224:
	.string	"__FLT_MAX_EXP__ 128"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF317:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF440:
	.string	"unsigned char"
.LASF52:
	.string	"__INT64_TYPE__ long int"
.LASF229:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF122:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF525:
	.string	"line"
.LASF218:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF518:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF93:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF426:
	.string	"__FXSR__ 1"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF49:
	.string	"__INT8_TYPE__ signed char"
.LASF187:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF500:
	.string	"putString"
.LASF269:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF219:
	.string	"__FLT_RADIX__ 2"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF64:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF460:
	.string	"LightRedOnBlack"
.LASF84:
	.string	"__cpp_lambdas 200907L"
.LASF153:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF303:
	.string	"__FLT64_MIN_EXP__ (-1021)"
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
.LASF223:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF471:
	.string	"WhiteOnRed"
.LASF217:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF249:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF528:
	.string	"Kernel"
.LASF189:
	.string	"__INT64_C(c) c ## L"
.LASF533:
	.string	"scrollDown"
.LASF67:
	.string	"__INT_FAST32_TYPE__ int"
.LASF473:
	.string	"WhiteOnMagenta"
.LASF234:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF40:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF98:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF91:
	.string	"__cpp_delegating_constructors 200604L"
.LASF314:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF83:
	.string	"__cpp_user_defined_literals 200809L"
.LASF444:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF135:
	.string	"__cpp_impl_coroutine 201902L"
.LASF241:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF441:
	.string	"short unsigned int"
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF383:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF424:
	.string	"__SSE__ 1"
.LASF101:
	.string	"__cpp_unicode_characters 201411L"
.LASF156:
	.string	"__INT_WIDTH__ 32"
.LASF328:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF511:
	.string	"setCursor"
.LASF200:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF496:
	.string	"_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE"
.LASF222:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF378:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF325:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF381:
	.string	"__REGISTER_PREFIX__ "
.LASF448:
	.string	"BlackOnBlack"
.LASF276:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF312:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF195:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF475:
	.string	"WhiteOnBrown"
.LASF248:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF274:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF341:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF81:
	.string	"__cpp_raw_strings 200710L"
.LASF247:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF447:
	.string	"bool"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF323:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF367:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF102:
	.string	"__cpp_static_assert 201411L"
.LASF185:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF72:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF257:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF292:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF406:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF48:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF360:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF136:
	.string	"__cpp_sized_deallocation 201309L"
.LASF329:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF118:
	.string	"__cpp_init_captures 201803L"
.LASF332:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF242:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF265:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF459:
	.string	"LightCyanOnBlack"
.LASF119:
	.string	"__cpp_generic_lambdas 201707L"
.LASF301:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF232:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF206:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF258:
	.string	"__DECIMAL_DIG__ 21"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/mnt/a/myOsX64"
.LASF0:
	.string	"src/kernel/Console.cpp"
	.ident	"GCC: (GNU) 13.2.0"
