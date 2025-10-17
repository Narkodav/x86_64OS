	.file	"Console.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/Console.cpp"
	.align 2
	.globl	_ZN6Kernel7Console20updateHardwareCursorEv
	.type	_ZN6Kernel7Console20updateHardwareCursorEv, @function
_ZN6Kernel7Console20updateHardwareCursorEv:
.LFB17:
	.file 1 "src/kernel/Console.cpp"
	.loc 1 11 5 view -0
	.cfi_startproc
	.loc 1 12 9 view .LVU1
	.loc 1 12 34 is_stmt 0 view .LVU2
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 12 67 view .LVU3
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rdx
	.loc 1 12 36 view .LVU4
	leaq	(%rax,%rax,4), %rcx
	salq	$4, %rcx
	.loc 1 12 67 view .LVU5
	addq	%rdx, %rcx
.LVL0:
	.loc 1 15 9 is_stmt 1 view .LVU6
	movl	$980, %edi
	movl	$15, %eax
	movl	%edi, %edx
/APP
# 15 "src/kernel/Console.cpp" 1
	outb %al, %dx
# 0 "" 2
	.loc 1 16 9 view .LVU7
/NO_APP
	movl	$981, %esi
	movl	%ecx, %eax
	movl	%esi, %edx
/APP
# 16 "src/kernel/Console.cpp" 1
	outb %al, %dx
# 0 "" 2
	.loc 1 19 9 view .LVU8
/NO_APP
	movl	$14, %eax
	movl	%edi, %edx
/APP
# 19 "src/kernel/Console.cpp" 1
	outb %al, %dx
# 0 "" 2
	.loc 1 20 9 view .LVU9
	.loc 1 20 65 is_stmt 0 view .LVU10
/NO_APP
	movq	%rcx, %rax
	shrq	$8, %rax
	.loc 1 20 9 view .LVU11
	movl	%esi, %edx
/APP
# 20 "src/kernel/Console.cpp" 1
	outb %al, %dx
# 0 "" 2
	.loc 1 21 5 view .LVU12
/NO_APP
	ret
	.cfi_endproc
.LFE17:
	.size	_ZN6Kernel7Console20updateHardwareCursorEv, .-_ZN6Kernel7Console20updateHardwareCursorEv
	.align 2
	.globl	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE, @function
_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE:
.LVL1:
.LFB18:
	.loc 1 25 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 26 9 view .LVU14
	.loc 1 26 27 is_stmt 0 view .LVU15
	addq	%rdi, %rdi
.LVL2:
	.loc 1 26 27 view .LVU16
	movq	%rdi, %rax
	addq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 1 26 39 view .LVU17
	movb	%sil, (%rax)
	.loc 1 27 9 is_stmt 1 view .LVU18
	.loc 1 27 27 is_stmt 0 view .LVU19
	addq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdi
	.loc 1 27 34 view .LVU20
	movb	%dl, 1(%rdi)
	.loc 1 28 5 view .LVU21
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE, .-_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE
	.type	_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE, @function
_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE:
.LVL3:
.LFB19:
	.loc 1 34 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 35 9 view .LVU23
.LBB2:
	.loc 1 35 35 discriminator 1 view .LVU24
	.loc 1 35 33 is_stmt 0 discriminator 1 view .LVU25
	movzbl	(%rdi), %eax
	.loc 1 35 35 discriminator 1 view .LVU26
	testb	%al, %al
	je	.L8
.LBE2:
	.loc 1 34 5 view .LVU27
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %r12
	movl	%edx, %r13d
.LBB3:
	.loc 1 35 35 discriminator 1 view .LVU28
	movq	%rsi, %rbx
	.loc 1 35 33 discriminator 1 view .LVU29
	subq	%rsi, %r12
.LVL4:
.L5:
	.loc 1 36 13 is_stmt 1 view .LVU30
	.loc 1 36 22 is_stmt 0 view .LVU31
	movzbl	%al, %esi
	movl	%r13d, %edx
	movq	%rbx, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
.LVL5:
	.loc 1 35 9 is_stmt 1 discriminator 3 view .LVU32
	.loc 1 35 35 discriminator 1 view .LVU33
	addq	$1, %rbx
	.loc 1 35 33 is_stmt 0 discriminator 1 view .LVU34
	movzbl	(%r12,%rbx), %eax
	.loc 1 35 35 discriminator 1 view .LVU35
	testb	%al, %al
	jne	.L5
.LBE3:
	.loc 1 37 5 view .LVU36
	addq	$8, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
.LVL6:
	.loc 1 37 5 view .LVU37
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL7:
.L8:
	.loc 1 37 5 view .LVU38
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE, .-_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE
	.type	_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE, @function
_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE:
.LVL8:
.LFB20:
	.loc 1 43 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 44 9 view .LVU40
.LBB4:
	.loc 1 44 35 discriminator 1 view .LVU41
	.loc 1 44 33 is_stmt 0 discriminator 1 view .LVU42
	movzbl	(%rdi), %eax
	.loc 1 44 35 discriminator 1 view .LVU43
	testb	%al, %al
	je	.L16
.LBE4:
	.loc 1 43 5 view .LVU44
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edx, %r13d
.LBB5:
	.loc 1 44 33 discriminator 1 view .LVU45
	movq	%rdi, %rbx
	.loc 1 45 22 view .LVU46
	subq	%rdi, %rsi
.LVL9:
	.loc 1 45 22 view .LVU47
	movq	%rsi, %r12
.LVL10:
.L13:
	.loc 1 45 13 is_stmt 1 view .LVU48
	.loc 1 45 44 is_stmt 0 view .LVU49
	movzbl	(%rbx), %esi
	.loc 1 45 22 view .LVU50
	movzbl	%sil, %esi
	leaq	(%r12,%rbx), %rdi
	movl	%r13d, %edx
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
.LVL11:
	.loc 1 44 9 is_stmt 1 discriminator 3 view .LVU51
	.loc 1 44 35 discriminator 1 view .LVU52
	.loc 1 44 33 is_stmt 0 discriminator 1 view .LVU53
	addq	$1, %rbx
	movzbl	(%rbx), %eax
	.loc 1 44 35 discriminator 1 view .LVU54
	testb	%al, %al
	jne	.L13
.LBE5:
	.loc 1 46 5 view .LVU55
	addq	$8, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
.LVL12:
	.loc 1 46 5 view .LVU56
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL13:
.L16:
	.loc 1 46 5 view .LVU57
	ret
	.cfi_endproc
.LFE20:
	.size	_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE, .-_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.type	_ZN6Kernel7Console9setCursorENS0_9CursorPosE, @function
_ZN6Kernel7Console9setCursorENS0_9CursorPosE:
.LVL14:
.LFB21:
	.loc 1 49 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 49 5 is_stmt 0 view .LVU59
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 50 9 is_stmt 1 view .LVU60
	.loc 1 50 23 is_stmt 0 view .LVU61
	movq	%rdi, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 51 9 is_stmt 1 view .LVU62
	.loc 1 51 23 is_stmt 0 view .LVU63
	movq	%rsi, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 1 52 9 is_stmt 1 view .LVU64
	.loc 1 52 29 is_stmt 0 view .LVU65
	call	_ZN6Kernel7Console20updateHardwareCursorEv
.LVL15:
	.loc 1 53 5 view .LVU66
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	_ZN6Kernel7Console9setCursorENS0_9CursorPosE, .-_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.align 2
	.globl	_ZN6Kernel7Console5clearEhNS0_10AttributesE
	.type	_ZN6Kernel7Console5clearEhNS0_10AttributesE, @function
_ZN6Kernel7Console5clearEhNS0_10AttributesE:
.LVL16:
.LFB25:
	.loc 1 123 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 123 5 is_stmt 0 view .LVU68
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 124 9 is_stmt 1 view .LVU69
.LVL17:
.LBB6:
	.loc 1 124 30 discriminator 1 view .LVU70
.LBE6:
	.loc 1 123 5 is_stmt 0 view .LVU71
	movl	$0, %eax
.LVL18:
.L22:
.LBB7:
	.loc 1 126 13 is_stmt 1 view .LVU72
	.loc 1 126 27 is_stmt 0 view .LVU73
	movq	%rax, %rdx
	addq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	.loc 1 126 39 view .LVU74
	movb	%dil, (%rdx)
	.loc 1 127 13 is_stmt 1 view .LVU75
	.loc 1 127 27 is_stmt 0 view .LVU76
	movq	%rax, %rdx
	addq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	.loc 1 127 34 view .LVU77
	movb	%sil, 1(%rdx)
	.loc 1 124 9 is_stmt 1 discriminator 3 view .LVU78
	.loc 1 124 30 discriminator 1 view .LVU79
	addq	$2, %rax
	cmpq	$4000, %rax
	jne	.L22
	.loc 1 124 30 is_stmt 0 discriminator 1 view .LVU80
.LBE7:
	.loc 1 129 9 is_stmt 1 view .LVU81
	.loc 1 129 18 is_stmt 0 view .LVU82
	movl	$0, %edi
.LVL19:
	.loc 1 129 18 view .LVU83
	movl	$0, %esi
.LVL20:
	.loc 1 129 18 view .LVU84
	call	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
.LVL21:
	.loc 1 130 5 view .LVU85
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN6Kernel7Console5clearEhNS0_10AttributesE, .-_ZN6Kernel7Console5clearEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE:
.LVL22:
.LFB29:
	.loc 1 165 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 166 9 view .LVU87
.LBB8:
	.loc 1 166 39 discriminator 1 view .LVU88
	cmpq	%rsi, %rdi
	jnb	.L30
.LBE8:
	.loc 1 165 5 is_stmt 0 view .LVU89
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movq	%rsi, %r13
	movl	%ecx, %r14d
.LBB9:
	.loc 1 167 22 view .LVU90
	movzbl	%dl, %r12d
.LVL23:
.L27:
	.loc 1 167 13 is_stmt 1 view .LVU91
	.loc 1 167 22 is_stmt 0 view .LVU92
	movl	%r14d, %edx
	movl	%r12d, %esi
	movq	%rbx, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
.LVL24:
	.loc 1 166 9 is_stmt 1 discriminator 3 view .LVU93
	addq	$1, %rbx
.LVL25:
	.loc 1 166 39 discriminator 1 view .LVU94
	cmpq	%rbx, %r13
	jne	.L27
.LBE9:
	.loc 1 168 5 is_stmt 0 view .LVU95
	popq	%rbx
	.cfi_restore 3
.LVL26:
	.loc 1 168 5 view .LVU96
	popq	%r12
	.cfi_restore 12
.LVL27:
	.loc 1 168 5 view .LVU97
	popq	%r13
	.cfi_restore 13
.LVL28:
	.loc 1 168 5 view .LVU98
	popq	%r14
	.cfi_restore 14
.LVL29:
	.loc 1 168 5 view .LVU99
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL30:
.L30:
	.loc 1 168 5 view .LVU100
	ret
	.cfi_endproc
.LFE29:
	.size	_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE, .-_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE:
.LVL31:
.LFB27:
	.loc 1 145 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 145 5 is_stmt 0 view .LVU102
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edx, %ecx
	.loc 1 146 9 is_stmt 1 view .LVU103
	.loc 1 146 16 is_stmt 0 view .LVU104
	leaq	(%rdi,%rdi,4), %rdi
.LVL32:
	.loc 1 146 16 view .LVU105
	salq	$4, %rdi
.LVL33:
	.loc 1 147 9 is_stmt 1 view .LVU106
	.loc 1 148 9 view .LVU107
	.loc 1 148 18 is_stmt 0 view .LVU108
	movzbl	%sil, %edx
.LVL34:
	.loc 1 147 16 view .LVU109
	leaq	80(%rdi), %rsi
.LVL35:
	.loc 1 148 18 view .LVU110
	call	_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE
.LVL36:
	.loc 1 149 5 view .LVU111
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE, .-_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearLineEhNS0_10AttributesE:
.LVL37:
.LFB26:
	.loc 1 136 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 136 5 is_stmt 0 view .LVU113
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%esi, %edx
	.loc 1 137 9 is_stmt 1 view .LVU114
	.loc 1 137 31 is_stmt 0 view .LVU115
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 137 18 view .LVU116
	movzbl	%dil, %esi
.LVL38:
	.loc 1 137 18 view .LVU117
	movq	%rax, %rdi
.LVL39:
	.loc 1 137 18 view .LVU118
	call	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
.LVL40:
	.loc 1 138 9 is_stmt 1 view .LVU119
	.loc 1 138 35 is_stmt 0 view .LVU120
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rsi
	.loc 1 138 18 view .LVU121
	movl	$0, %edi
	call	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
.LVL41:
	.loc 1 139 5 view .LVU122
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE, .-_ZN6Kernel7Console9clearLineEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE:
.LVL42:
.LFB28:
	.loc 1 155 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 155 5 is_stmt 0 view .LVU124
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %rax
	.loc 1 156 9 is_stmt 1 view .LVU125
	.loc 1 156 35 is_stmt 0 view .LVU126
	leaq	(%rsi,%rsi,4), %rdi
.LVL43:
	.loc 1 156 35 view .LVU127
	salq	$4, %rdi
	.loc 1 156 16 view .LVU128
	addq	%rax, %rdi
.LVL44:
	.loc 1 157 9 is_stmt 1 view .LVU129
	.loc 1 158 9 view .LVU130
	.loc 1 158 18 is_stmt 0 view .LVU131
	movzbl	%cl, %eax
	.loc 1 157 16 view .LVU132
	leaq	(%rdi,%rdx), %rsi
.LVL45:
	.loc 1 158 18 view .LVU133
	movl	%r8d, %ecx
.LVL46:
	.loc 1 158 18 view .LVU134
	movl	%eax, %edx
.LVL47:
	.loc 1 158 18 view .LVU135
	call	_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE
.LVL48:
	.loc 1 159 5 view .LVU136
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE, .-_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console10scrollDownEm
	.type	_ZN6Kernel7Console10scrollDownEm, @function
_ZN6Kernel7Console10scrollDownEm:
.LVL49:
.LFB30:
	.loc 1 171 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 171 5 is_stmt 0 view .LVU138
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r8
	.loc 1 172 9 is_stmt 1 view .LVU139
.LVL50:
.LBB10:
	.loc 1 172 30 discriminator 1 view .LVU140
	.loc 1 172 48 is_stmt 0 discriminator 1 view .LVU141
	movl	$25, %r11d
	subq	%rdi, %r11
	.loc 1 172 30 discriminator 1 view .LVU142
	cmpq	$25, %rdi
	je	.L40
	leaq	5(%rdi,%rdi,4), %rdi
.LVL51:
	.loc 1 172 30 discriminator 1 view .LVU143
	salq	$5, %rdi
	.loc 1 172 21 view .LVU144
	movl	$0, %r10d
	imulq	$-160, %r8, %r9
.LVL52:
.L42:
.LBB11:
	.loc 1 174 13 is_stmt 1 view .LVU145
	.loc 1 175 13 view .LVU146
	.loc 1 176 13 view .LVU147
.LBB12:
	.loc 1 176 34 discriminator 1 view .LVU148
	leaq	-160(%rdi), %rax
.LVL53:
.L41:
	.loc 1 178 17 view .LVU149
	.loc 1 178 75 is_stmt 0 view .LVU150
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	leaq	(%rdx,%rax), %rsi
	.loc 1 178 39 view .LVU151
	leaq	(%rax,%r9), %rcx
	addq	%rcx, %rdx
	.loc 1 178 77 view .LVU152
	movzbl	(%rsi), %esi
	.loc 1 178 51 view .LVU153
	movb	%sil, (%rdx)
	.loc 1 179 17 is_stmt 1 view .LVU154
	.loc 1 179 70 is_stmt 0 view .LVU155
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	leaq	(%rdx,%rax), %rsi
	.loc 1 179 39 view .LVU156
	addq	%rcx, %rdx
	.loc 1 179 72 view .LVU157
	movzbl	1(%rsi), %ecx
	.loc 1 179 46 view .LVU158
	movb	%cl, 1(%rdx)
	.loc 1 176 13 is_stmt 1 discriminator 3 view .LVU159
	.loc 1 176 34 discriminator 1 view .LVU160
	addq	$2, %rax
	cmpq	%rdi, %rax
	jne	.L41
.LBE12:
.LBE11:
	.loc 1 172 9 discriminator 2 view .LVU161
	addq	$1, %r10
.LVL54:
	.loc 1 172 30 discriminator 1 view .LVU162
	addq	$160, %rdi
	cmpq	%r11, %r10
	jb	.L42
.LVL55:
	.loc 1 172 30 is_stmt 0 discriminator 1 view .LVU163
.LBE10:
.LBB13:
	.loc 1 182 30 is_stmt 1 discriminator 1 view .LVU164
	testq	%r8, %r8
	je	.L43
.LVL56:
.L40:
	.loc 1 182 30 is_stmt 0 discriminator 1 view .LVU165
.LBE13:
.LBB16:
	.loc 1 172 21 view .LVU166
	movl	$4000, %ecx
	movl	$0, %esi
.L45:
.LVL57:
	.loc 1 172 21 view .LVU167
.LBE16:
.LBB17:
.LBB14:
	.loc 1 184 13 is_stmt 1 view .LVU168
	.loc 1 185 13 view .LVU169
.LBB15:
	.loc 1 185 34 discriminator 1 view .LVU170
	leaq	-160(%rcx), %rax
.LVL58:
.L44:
	.loc 1 187 17 view .LVU171
	.loc 1 187 39 is_stmt 0 view .LVU172
	movq	%rax, %rdx
	addq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	.loc 1 187 51 view .LVU173
	movb	$0, (%rdx)
	.loc 1 188 17 is_stmt 1 view .LVU174
	.loc 1 188 39 is_stmt 0 view .LVU175
	movq	%rax, %rdx
	addq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	.loc 1 188 46 view .LVU176
	movb	$0, 1(%rdx)
	.loc 1 185 13 is_stmt 1 discriminator 3 view .LVU177
	.loc 1 185 34 discriminator 1 view .LVU178
	addq	$2, %rax
	cmpq	%rcx, %rax
	jne	.L44
.LBE15:
.LBE14:
	.loc 1 182 9 discriminator 2 view .LVU179
	addq	$1, %rsi
.LVL59:
	.loc 1 182 30 discriminator 1 view .LVU180
	subq	$160, %rcx
	cmpq	%rsi, %r8
	jne	.L45
.LVL60:
.L43:
	.loc 1 182 30 is_stmt 0 discriminator 1 view .LVU181
.LBE17:
	.loc 1 191 9 is_stmt 1 view .LVU182
	.loc 1 191 32 is_stmt 0 view .LVU183
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rdi
	.loc 1 191 47 view .LVU184
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rsi
	.loc 1 191 49 view .LVU185
	subq	%r8, %rsi
	.loc 1 191 18 view .LVU186
	call	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
.LVL61:
	.loc 1 192 5 view .LVU187
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	_ZN6Kernel7Console10scrollDownEm, .-_ZN6Kernel7Console10scrollDownEm
	.align 2
	.globl	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.type	_ZN6Kernel7Console7putCharEhNS0_10AttributesE, @function
_ZN6Kernel7Console7putCharEhNS0_10AttributesE:
.LVL62:
.LFB22:
	.loc 1 56 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 56 5 is_stmt 0 view .LVU189
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movl	%edi, %ebx
	movl	%esi, %edx
	.loc 1 57 9 is_stmt 1 view .LVU190
	.loc 1 57 34 is_stmt 0 view .LVU191
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 57 67 view .LVU192
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rcx
.LVL63:
	.loc 1 58 9 is_stmt 1 view .LVU193
	.loc 1 58 18 is_stmt 0 view .LVU194
	movzbl	%dil, %esi
.LVL64:
	.loc 1 57 36 view .LVU195
	leaq	(%rax,%rax,4), %rdi
.LVL65:
	.loc 1 57 36 view .LVU196
	salq	$4, %rdi
	.loc 1 57 67 view .LVU197
	addq	%rcx, %rdi
	.loc 1 58 18 view .LVU198
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
.LVL66:
	.loc 1 59 9 is_stmt 1 view .LVU199
	cmpb	$10, %bl
	je	.L56
	.loc 1 66 13 view .LVU200
	.loc 1 66 27 is_stmt 0 view .LVU201
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 66 13 view .LVU202
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 67 13 is_stmt 1 view .LVU203
	.loc 1 67 29 is_stmt 0 view .LVU204
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 67 13 view .LVU205
	cmpq	$79, %rax
	jbe	.L53
	.loc 1 69 17 is_stmt 1 view .LVU206
	.loc 1 69 31 is_stmt 0 view .LVU207
	movq	$0, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 70 17 is_stmt 1 view .LVU208
	.loc 1 70 31 is_stmt 0 view .LVU209
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 70 17 view .LVU210
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	jmp	.L53
.L56:
	.loc 1 61 13 is_stmt 1 view .LVU211
	.loc 1 61 27 is_stmt 0 view .LVU212
	movq	$0, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 62 13 is_stmt 1 view .LVU213
	.loc 1 62 27 is_stmt 0 view .LVU214
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 62 13 view .LVU215
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
.L53:
	.loc 1 74 9 is_stmt 1 view .LVU216
	.loc 1 74 25 is_stmt 0 view .LVU217
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 74 9 view .LVU218
	cmpq	$24, %rax
	ja	.L57
.L54:
	.loc 1 77 9 is_stmt 1 view .LVU219
	.loc 1 77 29 is_stmt 0 view .LVU220
	call	_ZN6Kernel7Console20updateHardwareCursorEv
.LVL67:
	.loc 1 78 5 view .LVU221
	movq	-8(%rbp), %rbx
.LVL68:
	.loc 1 78 5 view .LVU222
	leave
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
.L57:
	.cfi_restore_state
	.loc 1 75 13 is_stmt 1 view .LVU223
	.loc 1 75 23 is_stmt 0 view .LVU224
	movl	$1, %edi
	call	_ZN6Kernel7Console10scrollDownEm
.LVL69:
	jmp	.L54
	.cfi_endproc
.LFE22:
	.size	_ZN6Kernel7Console7putCharEhNS0_10AttributesE, .-_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.type	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE, @function
_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE:
.LVL70:
.LFB23:
	.loc 1 82 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 82 5 is_stmt 0 view .LVU226
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	%esi, %r12d
	.loc 1 83 9 is_stmt 1 view .LVU227
.LVL71:
.LBB18:
	.loc 1 83 35 discriminator 1 view .LVU228
	.loc 1 83 33 is_stmt 0 discriminator 1 view .LVU229
	movzbl	(%rdi), %esi
.LVL72:
	.loc 1 83 35 discriminator 1 view .LVU230
	testb	%sil, %sil
	jne	.L62
.LVL73:
.L59:
	.loc 1 83 35 discriminator 1 view .LVU231
.LBE18:
	.loc 1 96 9 is_stmt 1 view .LVU232
	.loc 1 96 29 is_stmt 0 view .LVU233
	call	_ZN6Kernel7Console20updateHardwareCursorEv
.LVL74:
	.loc 1 97 5 view .LVU234
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
.LVL75:
	.loc 1 97 5 view .LVU235
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL76:
.L60:
	.cfi_restore_state
.LBB21:
.LBB19:
	.loc 1 90 17 is_stmt 1 view .LVU236
	.loc 1 90 31 is_stmt 0 view .LVU237
	movq	$0, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 91 17 is_stmt 1 view .LVU238
	.loc 1 91 31 is_stmt 0 view .LVU239
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 91 17 view .LVU240
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 1 92 17 is_stmt 1 view .LVU241
	.loc 1 92 33 is_stmt 0 view .LVU242
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 92 17 view .LVU243
	cmpq	$24, %rax
	ja	.L65
.L61:
.LBE19:
	.loc 1 83 9 is_stmt 1 discriminator 2 view .LVU244
.LVL77:
	.loc 1 83 35 discriminator 1 view .LVU245
	.loc 1 83 33 is_stmt 0 discriminator 1 view .LVU246
	addq	$1, %rbx
	movzbl	(%rbx), %esi
	.loc 1 83 35 discriminator 1 view .LVU247
	testb	%sil, %sil
	je	.L59
.LVL78:
.L62:
.LBB20:
	.loc 1 85 13 is_stmt 1 view .LVU248
	.loc 1 85 38 is_stmt 0 view .LVU249
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 85 71 view .LVU250
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rdx
.LVL79:
	.loc 1 86 13 is_stmt 1 view .LVU251
	.loc 1 86 22 is_stmt 0 view .LVU252
	movzbl	%sil, %esi
	.loc 1 85 40 view .LVU253
	leaq	(%rax,%rax,4), %rdi
	salq	$4, %rdi
	.loc 1 85 71 view .LVU254
	addq	%rdx, %rdi
	.loc 1 86 22 view .LVU255
	movl	%r12d, %edx
.LVL80:
	.loc 1 86 22 view .LVU256
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
.LVL81:
	.loc 1 87 13 is_stmt 1 view .LVU257
	.loc 1 87 27 is_stmt 0 view .LVU258
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 87 13 view .LVU259
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 88 13 is_stmt 1 view .LVU260
	.loc 1 88 29 is_stmt 0 view .LVU261
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 88 49 view .LVU262
	cmpq	$79, %rax
	ja	.L60
	.loc 1 88 49 discriminator 2 view .LVU263
	cmpb	$10, (%rbx)
	jne	.L61
	jmp	.L60
.L65:
	.loc 1 93 21 is_stmt 1 view .LVU264
	.loc 1 93 31 is_stmt 0 view .LVU265
	movl	$1, %edi
	call	_ZN6Kernel7Console10scrollDownEm
.LVL82:
	jmp	.L61
.LBE20:
.LBE21:
	.cfi_endproc
.LFE23:
	.size	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE, .-_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE
	.type	_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE, @function
_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE:
.LVL83:
.LFB24:
	.loc 1 101 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 101 5 is_stmt 0 view .LVU267
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	%esi, %r12d
	.loc 1 102 9 is_stmt 1 view .LVU268
.LVL84:
.LBB22:
	.loc 1 102 35 discriminator 1 view .LVU269
	.loc 1 102 33 is_stmt 0 discriminator 1 view .LVU270
	movzbl	(%rdi), %eax
	.loc 1 102 35 discriminator 1 view .LVU271
	testb	%al, %al
	jne	.L70
.LVL85:
.L67:
	.loc 1 102 35 discriminator 1 view .LVU272
.LBE22:
	.loc 1 115 9 is_stmt 1 view .LVU273
	.loc 1 115 29 is_stmt 0 view .LVU274
	call	_ZN6Kernel7Console20updateHardwareCursorEv
.LVL86:
	.loc 1 116 5 view .LVU275
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
.LVL87:
	.loc 1 116 5 view .LVU276
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL88:
.L68:
	.cfi_restore_state
.LBB25:
.LBB23:
	.loc 1 109 17 is_stmt 1 view .LVU277
	.loc 1 109 31 is_stmt 0 view .LVU278
	movq	$0, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 110 17 is_stmt 1 view .LVU279
	.loc 1 110 31 is_stmt 0 view .LVU280
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 110 17 view .LVU281
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 1 111 17 is_stmt 1 view .LVU282
	.loc 1 111 33 is_stmt 0 view .LVU283
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 111 17 view .LVU284
	cmpq	$24, %rax
	ja	.L73
.L69:
.LBE23:
	.loc 1 102 9 is_stmt 1 discriminator 2 view .LVU285
.LVL89:
	.loc 1 102 35 discriminator 1 view .LVU286
	.loc 1 102 33 is_stmt 0 discriminator 1 view .LVU287
	addq	$1, %rbx
	movzbl	(%rbx), %eax
	.loc 1 102 35 discriminator 1 view .LVU288
	testb	%al, %al
	je	.L67
.LVL90:
.L70:
.LBB24:
	.loc 1 104 13 is_stmt 1 view .LVU289
	.loc 1 104 38 is_stmt 0 view .LVU290
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 104 71 view .LVU291
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rdx
.LVL91:
	.loc 1 105 13 is_stmt 1 view .LVU292
	.loc 1 105 33 is_stmt 0 view .LVU293
	movzbl	(%rbx), %esi
	.loc 1 105 22 view .LVU294
	movzbl	%sil, %esi
	.loc 1 104 40 view .LVU295
	leaq	(%rax,%rax,4), %rdi
	salq	$4, %rdi
	.loc 1 104 71 view .LVU296
	addq	%rdx, %rdi
	.loc 1 105 22 view .LVU297
	movl	%r12d, %edx
.LVL92:
	.loc 1 105 22 view .LVU298
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
.LVL93:
	.loc 1 106 13 is_stmt 1 view .LVU299
	.loc 1 106 27 is_stmt 0 view .LVU300
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 106 13 view .LVU301
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 107 13 is_stmt 1 view .LVU302
	.loc 1 107 29 is_stmt 0 view .LVU303
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 107 49 view .LVU304
	cmpq	$79, %rax
	ja	.L68
	.loc 1 107 57 discriminator 2 view .LVU305
	movzbl	(%rbx), %eax
	.loc 1 107 49 discriminator 2 view .LVU306
	cmpb	$10, %al
	jne	.L69
	jmp	.L68
.L73:
	.loc 1 112 21 is_stmt 1 view .LVU307
	.loc 1 112 31 is_stmt 0 view .LVU308
	movl	$1, %edi
	call	_ZN6Kernel7Console10scrollDownEm
.LVL94:
	jmp	.L69
.LBE24:
.LBE25:
	.cfi_endproc
.LFE24:
	.size	_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE, .-_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE
	.globl	_ZN6Kernel7Console11s_cursorPosE
	.section	.bss
	.align 16
	.type	_ZN6Kernel7Console11s_cursorPosE, @object
	.size	_ZN6Kernel7Console11s_cursorPosE, 16
_ZN6Kernel7Console11s_cursorPosE:
	.zero	16
	.globl	_ZN6Kernel7Console16s_windowCapacityE
	.section	.rodata
	.align 8
	.type	_ZN6Kernel7Console16s_windowCapacityE, @object
	.size	_ZN6Kernel7Console16s_windowCapacityE, 8
_ZN6Kernel7Console16s_windowCapacityE:
	.quad	2000
	.globl	_ZN6Kernel7Console8s_extentE
	.align 16
	.type	_ZN6Kernel7Console8s_extentE, @object
	.size	_ZN6Kernel7Console8s_extentE, 16
_ZN6Kernel7Console8s_extentE:
	.quad	80
	.quad	25
	.globl	_ZN6Kernel7Console12s_vgaAddressE
	.data
	.align 8
	.type	_ZN6Kernel7Console12s_vgaAddressE, @object
	.size	_ZN6Kernel7Console12s_vgaAddressE, 8
_ZN6Kernel7Console12s_vgaAddressE:
	.quad	753664
	.text
.Letext0:
	.file 2 "src/kernel/../../include/Types.h"
	.file 3 "src/kernel/../../include/Console.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbfc
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1f
	.long	.LASF529
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x1c
	.long	.LASF438
	.byte	0x5
	.long	0x41
	.uleb128 0xd
	.long	0x32
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF436
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF437
	.uleb128 0x1c
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
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF446
	.uleb128 0x21
	.string	"std"
	.byte	0x2
	.byte	0x16
	.byte	0xb
	.long	0xab
	.uleb128 0x22
	.long	.LASF521
	.byte	0x2
	.byte	0x49
	.byte	0x17
	.long	0xb2
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.long	.LASF447
	.uleb128 0xd
	.long	0xab
	.uleb128 0x23
	.long	.LASF448
	.byte	0x3
	.byte	0x7
	.byte	0xb
	.long	0x3f1
	.uleb128 0x24
	.long	.LASF530
	.byte	0x1
	.byte	0x3
	.byte	0x9
	.byte	0xb
	.uleb128 0x25
	.long	.LASF531
	.byte	0x7
	.byte	0x1
	.long	0x4f
	.byte	0x3
	.byte	0xc
	.byte	0x14
	.byte	0x1
	.long	0x194
	.uleb128 0x2
	.long	.LASF449
	.byte	0
	.uleb128 0x2
	.long	.LASF450
	.byte	0x1
	.uleb128 0x2
	.long	.LASF451
	.byte	0x2
	.uleb128 0x2
	.long	.LASF452
	.byte	0x3
	.uleb128 0x2
	.long	.LASF453
	.byte	0x4
	.uleb128 0x2
	.long	.LASF454
	.byte	0x5
	.uleb128 0x2
	.long	.LASF455
	.byte	0x6
	.uleb128 0x2
	.long	.LASF456
	.byte	0x7
	.uleb128 0x2
	.long	.LASF457
	.byte	0x8
	.uleb128 0x2
	.long	.LASF458
	.byte	0x9
	.uleb128 0x2
	.long	.LASF459
	.byte	0xa
	.uleb128 0x2
	.long	.LASF460
	.byte	0xb
	.uleb128 0x2
	.long	.LASF461
	.byte	0xc
	.uleb128 0x2
	.long	.LASF462
	.byte	0xd
	.uleb128 0x2
	.long	.LASF463
	.byte	0xe
	.uleb128 0x2
	.long	.LASF464
	.byte	0xf
	.uleb128 0x2
	.long	.LASF465
	.byte	0x10
	.uleb128 0x2
	.long	.LASF466
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF467
	.byte	0x20
	.uleb128 0x2
	.long	.LASF468
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF469
	.byte	0x30
	.uleb128 0x2
	.long	.LASF470
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF471
	.byte	0x40
	.uleb128 0x2
	.long	.LASF472
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF473
	.byte	0x50
	.uleb128 0x2
	.long	.LASF474
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF475
	.byte	0x60
	.uleb128 0x2
	.long	.LASF476
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF477
	.byte	0x70
	.uleb128 0x2
	.long	.LASF478
	.byte	0x7f
	.byte	0
	.uleb128 0x16
	.long	.LASF479
	.byte	0x10
	.byte	0x2e
	.long	0x1b2
	.uleb128 0x1d
	.string	"x"
	.byte	0x30
	.long	0x32
	.byte	0
	.uleb128 0x1d
	.string	"y"
	.byte	0x31
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.long	0x194
	.uleb128 0xd
	.long	0x1b2
	.uleb128 0x16
	.long	.LASF480
	.byte	0x10
	.byte	0x34
	.long	0x1e0
	.uleb128 0x10
	.long	.LASF481
	.byte	0x36
	.byte	0x14
	.long	0x32
	.byte	0
	.uleb128 0x10
	.long	.LASF482
	.byte	0x37
	.byte	0x14
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x1bc
	.uleb128 0x16
	.long	.LASF483
	.byte	0x2
	.byte	0x3a
	.long	0x209
	.uleb128 0x10
	.long	.LASF484
	.byte	0x3c
	.byte	0x15
	.long	0x4f
	.byte	0
	.uleb128 0x10
	.long	.LASF485
	.byte	0x3d
	.byte	0x18
	.long	0xcc
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.long	0x1e5
	.uleb128 0x11
	.long	.LASF486
	.byte	0x41
	.byte	0x22
	.long	.LASF488
	.long	0x3f1
	.uleb128 0x11
	.long	.LASF487
	.byte	0x42
	.byte	0x1d
	.long	.LASF489
	.long	0x1e0
	.uleb128 0x11
	.long	.LASF490
	.byte	0x43
	.byte	0x1d
	.long	.LASF491
	.long	0x3c
	.uleb128 0x11
	.long	.LASF492
	.byte	0x44
	.byte	0x23
	.long	.LASF493
	.long	0x1b2
	.uleb128 0x26
	.long	.LASF532
	.byte	0x3
	.byte	0x46
	.byte	0x15
	.long	.LASF533
	.uleb128 0xb
	.long	.LASF494
	.byte	0x49
	.long	.LASF496
	.long	0x274
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xb
	.long	.LASF495
	.byte	0x4a
	.long	.LASF497
	.long	0x292
	.uleb128 0x1
	.long	0x3f6
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xb
	.long	.LASF495
	.byte	0x4b
	.long	.LASF498
	.long	0x2b0
	.uleb128 0x1
	.long	0x40c
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xb
	.long	.LASF499
	.byte	0x4e
	.long	.LASF500
	.long	0x2c9
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xb
	.long	.LASF501
	.byte	0x4f
	.long	.LASF502
	.long	0x2e2
	.uleb128 0x1
	.long	0x3f6
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xb
	.long	.LASF501
	.byte	0x50
	.long	.LASF503
	.long	0x2fb
	.uleb128 0x1
	.long	0x40c
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xc
	.long	.LASF504
	.value	0x121
	.long	.LASF506
	.long	0x315
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xc
	.long	.LASF505
	.value	0x122
	.long	.LASF507
	.long	0x32f
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xc
	.long	.LASF505
	.value	0x124
	.long	.LASF508
	.long	0x34e
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xc
	.long	.LASF509
	.value	0x127
	.long	.LASF510
	.long	0x372
	.uleb128 0x1
	.long	0x194
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xc
	.long	.LASF509
	.value	0x12a
	.long	.LASF511
	.long	0x396
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0xc
	.long	.LASF512
	.value	0x12d
	.long	.LASF513
	.long	0x3ab
	.uleb128 0x1
	.long	0x194
	.byte	0
	.uleb128 0x18
	.long	.LASF514
	.value	0x12e
	.byte	0x2a
	.long	.LASF516
	.long	0x411
	.uleb128 0x18
	.long	.LASF515
	.value	0x12f
	.byte	0x1e
	.long	.LASF517
	.long	0x416
	.uleb128 0x18
	.long	.LASF518
	.value	0x130
	.byte	0x1e
	.long	.LASF519
	.long	0x41b
	.uleb128 0x27
	.long	.LASF534
	.byte	0x3
	.value	0x132
	.byte	0x15
	.long	.LASF535
	.byte	0x1
	.uleb128 0x1
	.long	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x209
	.uleb128 0x19
	.long	0x402
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF520
	.uleb128 0xd
	.long	0x3fb
	.uleb128 0x17
	.long	0x402
	.uleb128 0x19
	.long	0x407
	.uleb128 0x1a
	.long	0x1b7
	.uleb128 0x1a
	.long	0x1e0
	.uleb128 0x1a
	.long	0x3c
	.uleb128 0x12
	.long	0x20e
	.byte	0x5
	.byte	0x20
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_vgaAddressE
	.uleb128 0x12
	.long	0x21d
	.byte	0x6
	.byte	0x1b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console8s_extentE
	.uleb128 0x12
	.long	0x22c
	.byte	0x7
	.byte	0x12
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console16s_windowCapacityE
	.uleb128 0x12
	.long	0x23b
	.byte	0x8
	.byte	0x21
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console11s_cursorPosE
	.uleb128 0x28
	.long	0x9d
	.uleb128 0x6
	.long	0x3db
	.byte	0xaa
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x564
	.uleb128 0x3
	.long	.LASF522
	.byte	0xaa
	.byte	0x25
	.long	0x32
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0xe
	.long	.LLRL37
	.long	0x4fc
	.uleb128 0x5
	.string	"i"
	.byte	0xac
	.byte	0x15
	.long	0x32
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x13
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1b
	.string	"src"
	.byte	0xae
	.long	0x32
	.uleb128 0x1b
	.string	"dst"
	.byte	0xaf
	.long	0x32
	.uleb128 0x13
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x5
	.string	"j"
	.byte	0xb0
	.byte	0x19
	.long	0x32
	.long	.LLST39
	.long	.LVUS39
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LLRL40
	.long	0x556
	.uleb128 0x5
	.string	"i"
	.byte	0xb6
	.byte	0x15
	.long	0x32
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x13
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x1b
	.string	"dst"
	.byte	0xb8
	.long	0x32
	.uleb128 0x13
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x5
	.string	"j"
	.byte	0xb9
	.byte	0x19
	.long	0x32
	.long	.LLST42
	.long	.LVUS42
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL61
	.long	0xa3b
	.byte	0
	.uleb128 0x6
	.long	0x372
	.byte	0xa1
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x604
	.uleb128 0x3
	.long	.LASF523
	.byte	0xa1
	.byte	0x24
	.long	0x32
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x3
	.long	.LASF524
	.byte	0xa1
	.byte	0x37
	.long	0x32
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x3
	.long	.LASF525
	.byte	0xa1
	.byte	0x49
	.long	0x4f
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x3
	.long	.LASF485
	.byte	0xa3
	.byte	0x28
	.long	0xcc
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0xf
	.long	.LLRL21
	.uleb128 0x5
	.string	"i"
	.byte	0xa6
	.byte	0x15
	.long	0x32
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x8
	.quad	.LVL24
	.long	0xb89
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x34e
	.byte	0x97
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b0
	.uleb128 0xa
	.string	"pos"
	.byte	0x97
	.byte	0x27
	.long	0x194
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x3
	.long	.LASF526
	.byte	0x97
	.byte	0x33
	.long	0x32
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x3
	.long	.LASF525
	.byte	0x97
	.byte	0x43
	.long	0x4f
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x3
	.long	.LASF485
	.byte	0x99
	.byte	0x28
	.long	0xcc
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x14
	.long	.LASF523
	.byte	0x9c
	.long	0x32
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x14
	.long	.LASF524
	.byte	0x9d
	.long	0x32
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x8
	.quad	.LVL48
	.long	0x564
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x32f
	.byte	0x8d
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x769
	.uleb128 0x3
	.long	.LASF527
	.byte	0x8d
	.byte	0x24
	.long	0x32
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x3
	.long	.LASF525
	.byte	0x8d
	.byte	0x32
	.long	0x4f
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x3
	.long	.LASF485
	.byte	0x8f
	.byte	0x28
	.long	0xcc
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x14
	.long	.LASF523
	.byte	0x92
	.long	0x32
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x14
	.long	.LASF524
	.byte	0x93
	.long	0x32
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x8
	.quad	.LVL36
	.long	0x564
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x32
	.byte	0x24
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x34
	.byte	0x24
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x32
	.byte	0x24
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x315
	.byte	0x84
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x7dc
	.uleb128 0x3
	.long	.LASF525
	.byte	0x84
	.byte	0x25
	.long	0x4f
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x3
	.long	.LASF485
	.byte	0x86
	.byte	0x28
	.long	0xcc
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x15
	.quad	.LVL40
	.long	0x6b0
	.long	0x7ce
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x9
	.quad	.LVL41
	.long	0xa3b
	.byte	0
	.uleb128 0x6
	.long	0x2fb
	.byte	0x76
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x847
	.uleb128 0x3
	.long	.LASF525
	.byte	0x77
	.byte	0x11
	.long	0x4f
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x3
	.long	.LASF485
	.byte	0x79
	.byte	0x14
	.long	0xcc
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0xe
	.long	.LLRL15
	.long	0x839
	.uleb128 0x5
	.string	"i"
	.byte	0x7c
	.byte	0x15
	.long	0x32
	.long	.LLST16
	.long	.LVUS16
	.byte	0
	.uleb128 0x9
	.quad	.LVL21
	.long	0xa3b
	.byte	0
	.uleb128 0x6
	.long	0x2e2
	.byte	0x63
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f6
	.uleb128 0xa
	.string	"str"
	.byte	0x63
	.byte	0x32
	.long	0x40c
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x3
	.long	.LASF485
	.byte	0x63
	.byte	0x42
	.long	0xcc
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0xe
	.long	.LLRL54
	.long	0x8e8
	.uleb128 0x5
	.string	"i"
	.byte	0x66
	.byte	0x15
	.long	0x32
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0xf
	.long	.LLRL56
	.uleb128 0x5
	.string	"pos"
	.byte	0x68
	.byte	0x14
	.long	0x32
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x15
	.quad	.LVL93
	.long	0xb89
	.long	0x8d3
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL94
	.long	0x469
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL86
	.long	0xbd1
	.byte	0
	.uleb128 0x6
	.long	0x2c9
	.byte	0x50
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a5
	.uleb128 0xa
	.string	"str"
	.byte	0x50
	.byte	0x29
	.long	0x3f6
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x3
	.long	.LASF485
	.byte	0x50
	.byte	0x39
	.long	0xcc
	.long	.LLST47
	.long	.LVUS47
	.uleb128 0xe
	.long	.LLRL48
	.long	0x997
	.uleb128 0x5
	.string	"i"
	.byte	0x53
	.byte	0x15
	.long	0x32
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0xf
	.long	.LLRL50
	.uleb128 0x5
	.string	"pos"
	.byte	0x55
	.byte	0x14
	.long	0x32
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x15
	.quad	.LVL81
	.long	0xb89
	.long	0x982
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL82
	.long	0x469
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL74
	.long	0xbd1
	.byte	0
	.uleb128 0x6
	.long	0x2b0
	.byte	0x37
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xa3b
	.uleb128 0xa
	.string	"c"
	.byte	0x37
	.byte	0x23
	.long	0x4f
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x3
	.long	.LASF485
	.byte	0x37
	.byte	0x31
	.long	0xcc
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x5
	.string	"pos"
	.byte	0x39
	.byte	0x10
	.long	0x32
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x15
	.quad	.LVL66
	.long	0xb89
	.long	0xa1a
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x9
	.quad	.LVL67
	.long	0xbd1
	.uleb128 0x8
	.quad	.LVL69
	.long	0x469
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x396
	.byte	0x30
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xa78
	.uleb128 0xa
	.string	"pos"
	.byte	0x30
	.byte	0x27
	.long	0x194
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x9
	.quad	.LVL15
	.long	0xbd1
	.byte	0
	.uleb128 0x6
	.long	0x292
	.byte	0x27
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xb02
	.uleb128 0xa
	.string	"str"
	.byte	0x27
	.byte	0x34
	.long	0x40c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x3
	.long	.LASF523
	.byte	0x27
	.byte	0x40
	.long	0x32
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x3
	.long	.LASF485
	.byte	0x29
	.byte	0x2a
	.long	0xcc
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xf
	.long	.LLRL10
	.uleb128 0x5
	.string	"i"
	.byte	0x2c
	.byte	0x15
	.long	0x32
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x8
	.quad	.LVL11
	.long	0xb89
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x274
	.byte	0x1e
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xb89
	.uleb128 0xa
	.string	"str"
	.byte	0x1e
	.byte	0x2b
	.long	0x3f6
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x3
	.long	.LASF523
	.byte	0x1e
	.byte	0x37
	.long	0x32
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x3
	.long	.LASF485
	.byte	0x20
	.byte	0x2a
	.long	0xcc
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0xf
	.long	.LLRL5
	.uleb128 0x5
	.string	"i"
	.byte	0x23
	.byte	0x15
	.long	0x32
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x8
	.quad	.LVL5
	.long	0xb89
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x256
	.byte	0x17
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd1
	.uleb128 0x3
	.long	.LASF528
	.byte	0x17
	.byte	0x24
	.long	0x32
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1e
	.long	.LASF484
	.byte	0x33
	.long	0x4f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF485
	.byte	0x49
	.long	0xcc
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x29
	.long	0x24a
	.byte	0x1
	.byte	0xa
	.byte	0xa
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.string	"pos"
	.byte	0xc
	.byte	0x10
	.long	0x32
	.long	.LLST0
	.long	.LVUS0
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x7a
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
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 23
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS36:
	.uleb128 0
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 0
.LLST36:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 .LFE30-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU140
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU165
.LLST38:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS39:
	.uleb128 .LVU148
	.uleb128 .LVU149
.LLST39:
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU163
	.uleb128 .LVU165
	.uleb128 .LVU167
	.uleb128 .LVU181
.LLST41:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS42:
	.uleb128 .LVU170
	.uleb128 .LVU171
.LLST42:
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 0
.LLST17:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE29-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 0
.LLST18:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE29-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE29-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE29-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS22:
	.uleb128 .LVU88
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU96
	.uleb128 .LVU100
	.uleb128 0
.LLST22:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE29-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS30:
	.uleb128 0
	.uleb128 .LVU127
.LLST30:
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x8
	.byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 0
.LLST31:
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LFE28-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 0
.LLST32:
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL48-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL48-1-.Ltext0
	.uleb128 .LFE28-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS33:
	.uleb128 0
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 0
.LLST33:
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL48-1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL48-1-.Ltext0
	.uleb128 .LFE28-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU129
	.uleb128 .LVU136
.LLST34:
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL48-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS35:
	.uleb128 .LVU130
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU136
.LLST35:
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL45-.Ltext0
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL48-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LFE27-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 0
.LLST24:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 .LFE27-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 0
.LLST25:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 .LFE27-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU106
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 .LFE27-.Ltext0
	.uleb128 0xc
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x32
	.byte	0x24
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 .LVU107
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 0
.LLST27:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x4
	.byte	0x75
	.sleb128 80
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 .LFE27-.Ltext0
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x32
	.byte	0x24
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.uleb128 0x50
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 0
.LLST28:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL40-1-.Ltext0
	.uleb128 .LFE26-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 0
.LLST29:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL40-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL40-1-.Ltext0
	.uleb128 .LFE26-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LFE25-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST14:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-1-.Ltext0
	.uleb128 0x2
	.byte	0x71
	.sleb128 1
	.byte	0x4
	.uleb128 .LVL21-1-.Ltext0
	.uleb128 .LFE25-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU70
	.uleb128 .LVU72
.LLST16:
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS52:
	.uleb128 0
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 0
.LLST52:
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LFE24-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS53:
	.uleb128 0
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 0
.LLST53:
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LVL88-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LFE24-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS55:
	.uleb128 .LVU269
	.uleb128 .LVU272
	.uleb128 .LVU277
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 0
.LLST55:
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LFE24-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS57:
	.uleb128 .LVU292
	.uleb128 .LVU298
.LLST57:
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x9
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x50
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS46:
	.uleb128 0
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 0
.LLST46:
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE23-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS47:
	.uleb128 0
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 0
.LLST47:
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LFE23-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS49:
	.uleb128 .LVU228
	.uleb128 .LVU231
	.uleb128 .LVU236
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 0
.LLST49:
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL77-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LFE23-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 .LVU251
	.uleb128 .LVU256
.LLST51:
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x9
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x50
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 0
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 0
.LLST43:
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL66-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL66-1-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LFE22-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS44:
	.uleb128 0
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 0
.LLST44:
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL66-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL66-1-.Ltext0
	.uleb128 .LFE22-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS45:
	.uleb128 .LVU193
	.uleb128 .LVU199
.LLST45:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL66-1-.Ltext0
	.uleb128 0x9
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x50
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU66
.LLST12:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-1-.Ltext0
	.uleb128 0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x8
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE20-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE20-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE20-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS11:
	.uleb128 .LVU41
	.uleb128 .LVU48
	.uleb128 .LVU57
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE20-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE19-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE19-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE19-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS6:
	.uleb128 .LVU24
	.uleb128 .LVU30
	.uleb128 .LVU38
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE19-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LFE18-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 .LVU6
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LFE17-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.Ldebug_loc3:
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
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL5:
	.byte	0x4
	.uleb128 .LBB2-.Ltext0
	.uleb128 .LBE2-.Ltext0
	.byte	0x4
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0
.LLRL10:
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0x4
	.uleb128 .LBB5-.Ltext0
	.uleb128 .LBE5-.Ltext0
	.byte	0
.LLRL15:
	.byte	0x4
	.uleb128 .LBB6-.Ltext0
	.uleb128 .LBE6-.Ltext0
	.byte	0x4
	.uleb128 .LBB7-.Ltext0
	.uleb128 .LBE7-.Ltext0
	.byte	0
.LLRL21:
	.byte	0x4
	.uleb128 .LBB8-.Ltext0
	.uleb128 .LBE8-.Ltext0
	.byte	0x4
	.uleb128 .LBB9-.Ltext0
	.uleb128 .LBE9-.Ltext0
	.byte	0
.LLRL37:
	.byte	0x4
	.uleb128 .LBB10-.Ltext0
	.uleb128 .LBE10-.Ltext0
	.byte	0x4
	.uleb128 .LBB16-.Ltext0
	.uleb128 .LBE16-.Ltext0
	.byte	0
.LLRL40:
	.byte	0x4
	.uleb128 .LBB13-.Ltext0
	.uleb128 .LBE13-.Ltext0
	.byte	0x4
	.uleb128 .LBB17-.Ltext0
	.uleb128 .LBE17-.Ltext0
	.byte	0
.LLRL48:
	.byte	0x4
	.uleb128 .LBB18-.Ltext0
	.uleb128 .LBE18-.Ltext0
	.byte	0x4
	.uleb128 .LBB21-.Ltext0
	.uleb128 .LBE21-.Ltext0
	.byte	0
.LLRL50:
	.byte	0x4
	.uleb128 .LBB19-.Ltext0
	.uleb128 .LBE19-.Ltext0
	.byte	0x4
	.uleb128 .LBB20-.Ltext0
	.uleb128 .LBE20-.Ltext0
	.byte	0
.LLRL54:
	.byte	0x4
	.uleb128 .LBB22-.Ltext0
	.uleb128 .LBE22-.Ltext0
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0
.LLRL56:
	.byte	0x4
	.uleb128 .LBB23-.Ltext0
	.uleb128 .LBE23-.Ltext0
	.byte	0x4
	.uleb128 .LBB24-.Ltext0
	.uleb128 .LBE24-.Ltext0
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
	.section	.debug_macro,"G",@progbits,wm4.0.fcd621f2a7e3597d4fe7ec232229cc14,comdat
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
	.section	.debug_macro,"G",@progbits,wm4.Types.h.2.4ea8d4bb880677d63564d2c5ad748363,comdat
.Ldebug_macro3:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF434
	.byte	0x5
	.uleb128 0x14
	.long	.LASF435
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF278:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF328:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF244:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF316:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF489:
	.string	"_ZN6Kernel7Console8s_extentE"
.LASF273:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF217:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF306:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF104:
	.string	"__cpp_namespace_attributes 201411L"
.LASF360:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF166:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF203:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF72:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF502:
	.string	"_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE"
.LASF411:
	.string	"__amd64 1"
.LASF212:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF286:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF493:
	.string	"_ZN6Kernel7Console11s_cursorPosE"
.LASF193:
	.string	"__UINT8_C(c) c"
.LASF455:
	.string	"BrownOnBlack"
.LASF469:
	.string	"BlackOnCyan"
.LASF468:
	.string	"WhiteOnGreen"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF340:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF239:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF159:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF341:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF121:
	.string	"__cpp_designated_initializers 201707L"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF348:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF338:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF450:
	.string	"BlueOnBlack"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF179:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF80:
	.string	"__cpp_hex_float 201603L"
.LASF124:
	.string	"__cpp_conditional_explicit 201806L"
.LASF38:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF301:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF491:
	.string	"_ZN6Kernel7Console16s_windowCapacityE"
.LASF147:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF232:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF47:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF28:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF453:
	.string	"RedOnBlack"
.LASF479:
	.string	"CursorPos"
.LASF200:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF32:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF510:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF199:
	.string	"__UINT64_C(c) c ## UL"
.LASF463:
	.string	"YellowOnBlack"
.LASF237:
	.string	"__DBL_MANT_DIG__ 53"
.LASF101:
	.string	"__cpp_digit_separators 201309L"
.LASF146:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF454:
	.string	"MagentaOnBlack"
.LASF374:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF271:
	.string	"__FLT16_DIG__ 3"
.LASF51:
	.string	"__INT16_TYPE__ short int"
.LASF285:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF17:
	.string	"__OPTIMIZE__ 1"
.LASF254:
	.string	"__LDBL_DIG__ 18"
.LASF354:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF24:
	.string	"__SIZEOF_SHORT__ 2"
.LASF57:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF58:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF64:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF34:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF263:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF289:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF61:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF150:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF62:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF144:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF37:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF525:
	.string	"clearValue"
.LASF303:
	.string	"__FLT64_DIG__ 15"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF269:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF508:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF347:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF331:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF466:
	.string	"WhiteOnBlue"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF181:
	.string	"__INT8_C(c) c"
.LASF325:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF127:
	.string	"__cpp_deduction_guides 201907L"
.LASF60:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF185:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF462:
	.string	"LightMagentaOnBlack"
.LASF113:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF317:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF204:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF298:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF488:
	.string	"_ZN6Kernel7Console12s_vgaAddressE"
.LASF352:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF96:
	.string	"__cpp_alias_templates 200704L"
.LASF417:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF222:
	.string	"__FLT_DIG__ 6"
.LASF202:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF390:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF294:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF167:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF459:
	.string	"LightGreenOnBlack"
.LASF528:
	.string	"index"
.LASF214:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF443:
	.string	"long long unsigned int"
.LASF215:
	.string	"__GCC_IEC_559 2"
.LASF320:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF300:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF194:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF211:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF262:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF7:
	.string	"__GNUC__ 13"
.LASF451:
	.string	"GreenOnBlack"
.LASF192:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF367:
	.string	"__BFLT16_DIG__ 2"
.LASF172:
	.string	"__INT8_MAX__ 0x7f"
.LASF515:
	.string	"getExtent"
.LASF486:
	.string	"s_vgaAddress"
.LASF322:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF350:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF522:
	.string	"lines"
.LASF345:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF108:
	.string	"__cpp_range_based_for 201603L"
.LASF530:
	.string	"Console"
.LASF496:
	.string	"_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE"
.LASF27:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF251:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF365:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF265:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF66:
	.string	"__INT_FAST8_TYPE__ int"
.LASF475:
	.string	"BlackOnBrown"
.LASF71:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF162:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF132:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF257:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF44:
	.string	"__INTMAX_TYPE__ long int"
.LASF523:
	.string	"startIndex"
.LASF74:
	.string	"__INTPTR_TYPE__ long int"
.LASF471:
	.string	"BlackOnRed"
.LASF79:
	.string	"__cpp_binary_literals 201304L"
.LASF423:
	.string	"__MMX__ 1"
.LASF135:
	.string	"__cpp_concepts 202002L"
.LASF191:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF490:
	.string	"s_windowCapacity"
.LASF307:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF31:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF83:
	.string	"__cpp_unicode_literals 200710L"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF52:
	.string	"__INT32_TYPE__ int"
.LASF339:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF362:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF413:
	.string	"__x86_64 1"
.LASF438:
	.string	"size_t"
.LASF481:
	.string	"width"
.LASF281:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF76:
	.string	"__GXX_WEAK__ 1"
.LASF483:
	.string	"VgaChar"
.LASF484:
	.string	"character"
.LASF245:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF169:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF208:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF323:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF305:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF366:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF434:
	.string	"TYPES_H "
.LASF373:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF412:
	.string	"__amd64__ 1"
.LASF414:
	.string	"__x86_64__ 1"
.LASF67:
	.string	"__INT_FAST16_TYPE__ int"
.LASF272:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF292:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF319:
	.string	"__FLT128_DIG__ 33"
.LASF55:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF160:
	.string	"__WCHAR_WIDTH__ 32"
.LASF299:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF378:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF531:
	.string	"Attributes"
.LASF30:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF314:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF148:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF504:
	.string	"clear"
.LASF63:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF226:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF122:
	.string	"__cpp_constexpr 202002L"
.LASF467:
	.string	"BlackOnGreen"
.LASF126:
	.string	"__cpp_constinit 201907L"
.LASF344:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF274:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF138:
	.string	"__cpp_aligned_new 201606L"
.LASF495:
	.string	"writeString"
.LASF439:
	.string	"uint8_t"
.LASF3:
	.string	"__cplusplus 202002L"
.LASF106:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF164:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF383:
	.string	"__USER_LABEL_PREFIX__ "
.LASF308:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF231:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF351:
	.string	"__FLT64X_DIG__ 18"
.LASF288:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF40:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF261:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF209:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF498:
	.string	"_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE"
.LASF228:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF240:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF520:
	.string	"char"
.LASF256:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF295:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF287:
	.string	"__FLT32_DIG__ 6"
.LASF143:
	.string	"__GXX_ABI_VERSION 1018"
.LASF524:
	.string	"endIndex"
.LASF503:
	.string	"_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE"
.LASF100:
	.string	"__cpp_variable_templates 201304L"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF88:
	.string	"__cpp_rvalue_reference 200610L"
.LASF346:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF478:
	.string	"WhiteOnLightGray"
.LASF95:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF70:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF357:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF327:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF189:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF182:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF176:
	.string	"__UINT8_MAX__ 0xff"
.LASF177:
	.string	"__UINT16_MAX__ 0xffff"
.LASF69:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF492:
	.string	"s_cursorPos"
.LASF532:
	.string	"updateHardwareCursor"
.LASF168:
	.string	"__INTMAX_WIDTH__ 64"
.LASF421:
	.string	"__k8__ 1"
.LASF252:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF110:
	.string	"__cpp_capture_star_this 201603L"
.LASF153:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF59:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF290:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF139:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF238:
	.string	"__DBL_DIG__ 15"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF180:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF131:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF20:
	.string	"__LP64__ 1"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF335:
	.string	"__FLT32X_DIG__ 15"
.LASF86:
	.string	"__cpp_decltype 200707L"
.LASF514:
	.string	"getCursor"
.LASF334:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF19:
	.string	"_LP64 1"
.LASF98:
	.string	"__cpp_decltype_auto 201304L"
.LASF446:
	.string	"long long int"
.LASF526:
	.string	"length"
.LASF93:
	.string	"__cpp_nsdmi 200809L"
.LASF349:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF151:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF178:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF18:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF279:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF255:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF309:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF115:
	.string	"__cpp_structured_bindings 201606L"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF517:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF198:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF114:
	.string	"__cpp_template_auto 201606L"
.LASF432:
	.string	"__ELF__ 1"
.LASF343:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF75:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF363:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF184:
	.string	"__INT16_C(c) c"
.LASF183:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF25:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF130:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF364:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF234:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF371:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF283:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF433:
	.string	"CONSOLE_H "
.LASF2:
	.string	"__STDC__ 1"
.LASF425:
	.string	"__SSE2__ 1"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF241:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF22:
	.string	"__SIZEOF_LONG__ 8"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF376:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF205:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF43:
	.string	"__WINT_TYPE__ unsigned int"
.LASF477:
	.string	"BlackOnLightGray"
.LASF173:
	.string	"__INT16_MAX__ 0x7fff"
.LASF155:
	.string	"__SCHAR_WIDTH__ 8"
.LASF197:
	.string	"__UINT32_C(c) c ## U"
.LASF134:
	.string	"__cpp_using_enum 201907L"
.LASF56:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF26:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF78:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF276:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF152:
	.string	"__WINT_MIN__ 0U"
.LASF253:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF90:
	.string	"__cpp_variadic_templates 200704L"
.LASF229:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF264:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF482:
	.string	"height"
.LASF458:
	.string	"LightBlueOnBlack"
.LASF89:
	.string	"__cpp_rvalue_references 200610L"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF267:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF457:
	.string	"DarkGrayOnBlack"
.LASF216:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF117:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF311:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF464:
	.string	"WhiteOnBlack"
.LASF321:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF35:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF465:
	.string	"BlackOnBlue"
.LASF470:
	.string	"WhiteOnCyan"
.LASF170:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF128:
	.string	"__cpp_nontype_template_args 201911L"
.LASF174:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF195:
	.string	"__UINT16_C(c) c"
.LASF175:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF97:
	.string	"__cpp_return_type_deduction 201304L"
.LASF431:
	.string	"__SEG_GS 1"
.LASF107:
	.string	"__cpp_fold_expressions 201603L"
.LASF427:
	.string	"__SSE_MATH__ 1"
.LASF45:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF282:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF494:
	.string	"writeChar"
.LASF105:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF171:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF81:
	.string	"__cpp_runtime_arrays 198712L"
.LASF381:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF456:
	.string	"LightGrayOnBlack"
.LASF145:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF500:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF118:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF33:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF133:
	.string	"__cpp_aggregate_paren_init 201902L"
.LASF227:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF236:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF161:
	.string	"__WINT_WIDTH__ 32"
.LASF359:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF21:
	.string	"__SIZEOF_INT__ 4"
.LASF296:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF445:
	.string	"short int"
.LASF206:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF332:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF111:
	.string	"__cpp_inline_variables 201606L"
.LASF142:
	.string	"__cpp_char8_t 202207L"
.LASF353:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF337:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF499:
	.string	"putChar"
.LASF437:
	.string	"long int"
.LASF112:
	.string	"__cpp_aggregate_bases 201603L"
.LASF485:
	.string	"attr"
.LASF48:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF375:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF355:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF516:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF358:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF336:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF473:
	.string	"BlackOnMagenta"
.LASF213:
	.string	"__INTPTR_WIDTH__ 64"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF370:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF187:
	.string	"__INT32_C(c) c"
.LASF297:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF268:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF42:
	.string	"__WCHAR_TYPE__ int"
.LASF46:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF533:
	.string	"_ZN6Kernel7Console20updateHardwareCursorEv"
.LASF529:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O1 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF506:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF480:
	.string	"Extent"
.LASF535:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF210:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF109:
	.string	"__cpp_if_constexpr 201606L"
.LASF513:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF129:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF452:
	.string	"CyanOnBlack"
.LASF246:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF23:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF280:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF54:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF156:
	.string	"__SHRT_WIDTH__ 16"
.LASF428:
	.string	"__SSE2_MATH__ 1"
.LASF310:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF511:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF165:
	.string	"__INTMAX_C(c) c ## L"
.LASF116:
	.string	"__cpp_variadic_using 201611L"
.LASF509:
	.string	"clearSpan"
.LASF369:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF442:
	.string	"unsigned int"
.LASF36:
	.string	"__SIZEOF_POINTER__ 8"
.LASF312:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF507:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF91:
	.string	"__cpp_initializer_lists 200806L"
.LASF39:
	.string	"__GNUG__ 13"
.LASF149:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF221:
	.string	"__FLT_MANT_DIG__ 24"
.LASF518:
	.string	"getWindowCapacity"
.LASF260:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF521:
	.string	"is_integral_v"
.LASF430:
	.string	"__SEG_FS 1"
.LASF505:
	.string	"clearLine"
.LASF380:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF436:
	.string	"long unsigned int"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF77:
	.string	"__DEPRECATED 1"
.LASF487:
	.string	"s_extent"
.LASF29:
	.string	"__CHAR_BIT__ 8"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF163:
	.string	"__SIZE_WIDTH__ 64"
.LASF141:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF284:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF291:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF158:
	.string	"__LONG_WIDTH__ 64"
.LASF420:
	.string	"__k8 1"
.LASF125:
	.string	"__cpp_consteval 201811L"
.LASF225:
	.string	"__FLT_MAX_EXP__ 128"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF318:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF440:
	.string	"unsigned char"
.LASF53:
	.string	"__INT64_TYPE__ long int"
.LASF230:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF123:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF527:
	.string	"line"
.LASF219:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF519:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF94:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF426:
	.string	"__FXSR__ 1"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF50:
	.string	"__INT8_TYPE__ signed char"
.LASF188:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF501:
	.string	"putString"
.LASF270:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF220:
	.string	"__FLT_RADIX__ 2"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF65:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF461:
	.string	"LightRedOnBlack"
.LASF85:
	.string	"__cpp_lambdas 200907L"
.LASF154:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF304:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF247:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF356:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF140:
	.string	"__cpp_template_template_args 201611L"
.LASF372:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF87:
	.string	"__cpp_attributes 200809L"
.LASF224:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF472:
	.string	"WhiteOnRed"
.LASF218:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF250:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF448:
	.string	"Kernel"
.LASF190:
	.string	"__INT64_C(c) c ## L"
.LASF534:
	.string	"scrollDown"
.LASF68:
	.string	"__INT_FAST32_TYPE__ int"
.LASF474:
	.string	"WhiteOnMagenta"
.LASF235:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF41:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF99:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF92:
	.string	"__cpp_delegating_constructors 200604L"
.LASF315:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF84:
	.string	"__cpp_user_defined_literals 200809L"
.LASF444:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF136:
	.string	"__cpp_impl_coroutine 201902L"
.LASF242:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF441:
	.string	"short unsigned int"
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF384:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF424:
	.string	"__SSE__ 1"
.LASF102:
	.string	"__cpp_unicode_characters 201411L"
.LASF157:
	.string	"__INT_WIDTH__ 32"
.LASF329:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF512:
	.string	"setCursor"
.LASF201:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF497:
	.string	"_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE"
.LASF223:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF379:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF326:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF377:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF382:
	.string	"__REGISTER_PREFIX__ "
.LASF449:
	.string	"BlackOnBlack"
.LASF277:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF313:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF196:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF476:
	.string	"WhiteOnBrown"
.LASF249:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF275:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF342:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF82:
	.string	"__cpp_raw_strings 200710L"
.LASF248:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF447:
	.string	"bool"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF324:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF368:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF103:
	.string	"__cpp_static_assert 201411L"
.LASF186:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF73:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF258:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF293:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF406:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF49:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF361:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF137:
	.string	"__cpp_sized_deallocation 201309L"
.LASF330:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF119:
	.string	"__cpp_init_captures 201803L"
.LASF333:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF243:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF266:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF460:
	.string	"LightCyanOnBlack"
.LASF120:
	.string	"__cpp_generic_lambdas 201707L"
.LASF302:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF233:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF207:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF259:
	.string	"__DECIMAL_DIG__ 21"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/mnt/a/myOsX64"
.LASF0:
	.string	"src/kernel/Console.cpp"
	.ident	"GCC: (GNU) 13.2.0"
