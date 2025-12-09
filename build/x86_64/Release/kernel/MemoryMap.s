	.file	"MemoryMap.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/mnt/a/myOsX64" "src/kernel/MemoryMap.cpp"
	.align 2
	.globl	_ZN6Kernel9MemoryMap16supportsGb1PagesEv
	.type	_ZN6Kernel9MemoryMap16supportsGb1PagesEv, @function
_ZN6Kernel9MemoryMap16supportsGb1PagesEv:
.LFB113:
	.file 1 "src/kernel/MemoryMap.cpp"
	.loc 1 171 5 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 172 9 view .LVU1
	.loc 1 173 9 view .LVU2
	.loc 1 173 14 is_stmt 0 view .LVU3
	leaq	-16(%rbp), %r8
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rsi
	movl	$-2147483647, %edi
	movabsq	$cpuid, %rax
	call	*%rax
.LVL0:
	.loc 1 174 9 is_stmt 1 view .LVU4
	.loc 1 174 37 is_stmt 0 view .LVU5
	movl	-16(%rbp), %eax
	shrl	$26, %eax
	andl	$1, %eax
	.loc 1 175 5 view .LVU6
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	_ZN6Kernel9MemoryMap16supportsGb1PagesEv, .-_ZN6Kernel9MemoryMap16supportsGb1PagesEv
	.align 2
	.globl	_ZN6Kernel9MemoryMap16map128TbIdentityEPyS1_j
	.type	_ZN6Kernel9MemoryMap16map128TbIdentityEPyS1_j, @function
_ZN6Kernel9MemoryMap16map128TbIdentityEPyS1_j:
.LVL1:
.LFB114:
	.loc 1 180 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 180 5 is_stmt 0 view .LVU8
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r8
	movq	%rsi, %rdi
.LVL2:
	.loc 1 180 5 view .LVU9
	movl	%edx, %r9d
	.loc 1 181 9 is_stmt 1 view .LVU10
.LVL3:
	.loc 1 182 9 view .LVU11
	.loc 1 184 9 view .LVU12
	.loc 1 186 9 view .LVU13
.LBB5:
	.loc 1 186 30 discriminator 1 view .LVU14
.LBE5:
	.loc 1 182 18 is_stmt 0 view .LVU15
	movl	$0, %edx
.LVL4:
.LBB9:
.LBB6:
	.loc 1 197 52 view .LVU16
	movl	%r9d, %r9d
	.loc 1 197 52 view .LVU17
.LBE6:
	.loc 1 186 30 discriminator 1 view .LVU18
	movabsq	$140737488355328, %r10
	jmp	.L5
.LVL5:
.L4:
.LBB7:
	.loc 1 197 13 is_stmt 1 view .LVU19
	.loc 1 197 41 is_stmt 0 view .LVU20
	salq	$9, %rax
.LVL6:
	.loc 1 197 41 view .LVU21
	addq	%rcx, %rax
	.loc 1 197 50 view .LVU22
	movq	%r9, %rcx
.LVL7:
	.loc 1 197 50 view .LVU23
	orq	%rdx, %rcx
	.loc 1 197 147 view .LVU24
	orb	$-125, %cl
	movq	%rcx, (%rdi,%rax,8)
	.loc 1 199 13 is_stmt 1 view .LVU25
	.loc 1 199 18 is_stmt 0 view .LVU26
	addq	$1073741824, %rdx
.LVL8:
	.loc 1 199 18 view .LVU27
.LBE7:
	.loc 1 186 9 is_stmt 1 discriminator 2 view .LVU28
	.loc 1 186 30 discriminator 1 view .LVU29
	cmpq	%r10, %rdx
	je	.L8
.LVL9:
.L5:
.LBB8:
	.loc 1 189 13 view .LVU30
	.loc 1 189 36 is_stmt 0 view .LVU31
	movq	%rdx, %rax
	shrq	$39, %rax
	.loc 1 189 20 view .LVU32
	andl	$511, %eax
.LVL10:
	.loc 1 190 13 is_stmt 1 view .LVU33
	.loc 1 190 36 is_stmt 0 view .LVU34
	movq	%rdx, %rcx
	shrq	$30, %rcx
	.loc 1 190 20 view .LVU35
	andl	$511, %ecx
.LVL11:
	.loc 1 192 13 is_stmt 1 view .LVU36
	.loc 1 192 31 is_stmt 0 view .LVU37
	leaq	(%r8,%rax,8), %rsi
	.loc 1 192 13 view .LVU38
	testb	$1, (%rsi)
	jne	.L4
	.loc 1 194 17 is_stmt 1 view .LVU39
	.loc 1 194 61 is_stmt 0 view .LVU40
	movq	%rax, %r11
	salq	$12, %r11
	.loc 1 194 107 view .LVU41
	movq	(%rdi,%r11), %r11
	orq	$3, %r11
	.loc 1 194 31 view .LVU42
	movq	%r11, (%rsi)
	jmp	.L4
.LVL12:
.L8:
	.loc 1 194 31 view .LVU43
.LBE8:
.LBE9:
	.loc 1 202 9 is_stmt 1 view .LVU44
	.loc 1 202 25 is_stmt 0 view .LVU45
	movq	%r8, %rdi
.LVL13:
	.loc 1 202 25 view .LVU46
	movabsq	$load_page_tables, %rax
	call	*%rax
.LVL14:
	.loc 1 203 5 view .LVU47
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	_ZN6Kernel9MemoryMap16map128TbIdentityEPyS1_j, .-_ZN6Kernel9MemoryMap16map128TbIdentityEPyS1_j
	.section	.rodata._ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_.str1.1,"aMS",@progbits,1
.LC0:
	.string	"0b"
.LC1:
	.string	"0x"
.LC2:
	.string	"0123456789ABCDEF"
	.section	.text._ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_,"axG",@progbits,_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_,comdat
	.align 2
	.weak	_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_
	.type	_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_, @function
_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_:
.LVL15:
.LFB127:
	.file 2 "src/kernel/../../include/kernel/../drivers/Console.h"
	.loc 2 203 14 is_stmt 1 view -0
	.cfi_startproc
	.loc 2 203 14 is_stmt 0 view .LVU49
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rbx
.LBB27:
	.loc 2 206 28 is_stmt 1 view .LVU50
	movq	(%rdi), %rdx
	movq	(%rdx), %rax
	movzbl	(%rax), %edi
.LVL16:
	.loc 2 206 28 is_stmt 0 view .LVU51
	testb	%dil, %dil
	je	.L9
	movq	%rsi, %r12
	.loc 2 310 32 view .LVU52
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r13
	jmp	.L39
.LVL17:
.L19:
	.loc 2 215 42 view .LVU53
	movq	8(%rbx), %rax
	movzbl	(%rax), %r13d
	movq	(%r12), %rcx
.LVL18:
.LBB28:
.LBI28:
	.loc 2 137 21 is_stmt 1 view .LVU54
.LBB29:
	.loc 2 154 20 is_stmt 0 view .LVU55
	movl	$0, %esi
	.loc 2 158 41 view .LVU56
	movabsq	$-3689348814741910323, %r8
	.loc 2 140 13 view .LVU57
	testq	%rcx, %rcx
	je	.L56
.LVL19:
.L22:
	.loc 2 158 41 view .LVU58
	movq	%rcx, %rax
	mulq	%r8
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rdi
	addq	%rdi, %rdi
	movq	%rcx, %rax
	subq	%rdi, %rax
	.loc 2 158 35 view .LVU59
	addl	$48, %eax
	movb	%al, -80(%rbp,%rsi)
	movq	%rcx, %rax
	.loc 2 159 21 view .LVU60
	movq	%rdx, %rcx
.LVL20:
	.loc 2 159 21 view .LVU61
	movq	%rsi, %r12
	.loc 2 160 17 view .LVU62
	addq	$1, %rsi
.LVL21:
	.loc 2 156 24 is_stmt 1 view .LVU63
	cmpq	$9, %rax
	ja	.L22
.LVL22:
.LBB30:
	.loc 2 163 34 discriminator 1 view .LVU64
	testq	%rsi, %rsi
	je	.L23
	.loc 2 163 34 is_stmt 0 discriminator 1 view .LVU65
	leaq	-80(%rbp), %r14
	addq	%r14, %r12
	.loc 2 164 24 view .LVU66
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r15
.LVL23:
.L25:
	.loc 2 164 24 view .LVU67
	movzbl	(%r12), %edi
	movl	%r13d, %esi
	call	*%r15
.LVL24:
	.loc 2 163 13 is_stmt 1 discriminator 3 view .LVU68
	.loc 2 163 34 discriminator 1 view .LVU69
	movq	%r12, %rax
	subq	$1, %r12
	cmpq	%r14, %rax
	jne	.L25
	jmp	.L23
.LVL25:
.L56:
	.loc 2 163 34 is_stmt 0 discriminator 1 view .LVU70
.LBE30:
	.loc 2 142 24 view .LVU71
	movl	%r13d, %esi
	movl	$48, %edi
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %rax
	call	*%rax
.LVL26:
	.loc 2 142 24 view .LVU72
	jmp	.L23
.LVL27:
.L21:
	.loc 2 142 24 view .LVU73
.LBE29:
.LBE28:
	.loc 2 226 42 view .LVU74
	movq	8(%rbx), %rax
	movzbl	(%rax), %r14d
	movq	(%r12), %r12
.LVL28:
.LBB31:
.LBI31:
	.loc 2 117 21 is_stmt 1 view .LVU75
.LBB32:
.LBB33:
.LBI33:
	.loc 2 108 21 view .LVU76
.LBB34:
	.loc 2 110 39 discriminator 1 view .LVU77
	movabsq	$.LC0+1, %r13
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU78
	movl	$48, %edi
	.loc 2 112 24 view .LVU79
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r15
.LVL29:
.L26:
	.loc 2 112 24 view .LVU80
	movzbl	%dil, %edi
	movl	%r14d, %esi
	call	*%r15
.LVL30:
	.loc 2 110 13 is_stmt 1 discriminator 3 view .LVU81
	.loc 2 110 39 discriminator 1 view .LVU82
	addq	$1, %r13
.LVL31:
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU83
	movzbl	-1(%r13), %edi
	.loc 2 110 39 discriminator 1 view .LVU84
	testb	%dil, %dil
	jne	.L26
.LVL32:
	.loc 2 110 39 discriminator 1 view .LVU85
.LBE34:
.LBE33:
	.loc 2 123 22 is_stmt 1 discriminator 1 view .LVU86
	.loc 2 125 17 is_stmt 0 view .LVU87
	testq	%r12, %r12
	js	.L41
	.loc 2 121 20 view .LVU88
	movl	$0, %r13d
.LVL33:
.L28:
	.loc 2 127 21 view .LVU89
	addq	%r12, %r12
.LVL34:
	.loc 2 123 13 is_stmt 1 view .LVU90
	addq	$1, %r13
.LVL35:
	.loc 2 123 22 discriminator 1 view .LVU91
	cmpq	$64, %r13
	je	.L23
	.loc 2 125 17 is_stmt 0 view .LVU92
	testq	%r12, %r12
	jns	.L28
.LVL36:
.L27:
	.loc 2 129 22 is_stmt 1 discriminator 1 view .LVU93
	.loc 2 131 24 is_stmt 0 view .LVU94
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r15
.L30:
	.loc 2 131 36 view .LVU95
	movq	%r12, %rax
	shrq	$63, %rax
	.loc 2 131 24 view .LVU96
	leal	48(%rax), %edi
	movl	%r14d, %esi
	call	*%r15
.LVL37:
	.loc 2 132 21 view .LVU97
	addq	%r12, %r12
.LVL38:
	.loc 2 129 13 is_stmt 1 discriminator 2 view .LVU98
	addq	$1, %r13
.LVL39:
	.loc 2 129 22 discriminator 1 view .LVU99
	cmpq	$64, %r13
	jne	.L30
	jmp	.L23
.LVL40:
.L14:
	.loc 2 129 22 is_stmt 0 discriminator 1 view .LVU100
.LBE32:
.LBE31:
	.loc 2 237 42 view .LVU101
	movq	8(%rbx), %rax
	movzbl	(%rax), %r14d
	movq	(%r12), %r12
.LVL41:
.LBB36:
.LBI36:
	.loc 2 168 21 is_stmt 1 view .LVU102
.LBB37:
.LBB38:
.LBI38:
	.loc 2 108 21 view .LVU103
.LBB39:
	.loc 2 110 39 discriminator 1 view .LVU104
	movabsq	$.LC1+1, %r13
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU105
	movl	$48, %edi
	.loc 2 112 24 view .LVU106
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r15
.LVL42:
.L31:
	.loc 2 112 24 view .LVU107
	movzbl	%dil, %edi
	movl	%r14d, %esi
	call	*%r15
.LVL43:
	.loc 2 110 13 is_stmt 1 discriminator 3 view .LVU108
	.loc 2 110 39 discriminator 1 view .LVU109
	addq	$1, %r13
.LVL44:
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU110
	movzbl	-1(%r13), %edi
	.loc 2 110 39 discriminator 1 view .LVU111
	testb	%dil, %dil
	jne	.L31
.LVL45:
	.loc 2 110 39 discriminator 1 view .LVU112
.LBE39:
.LBE38:
	.loc 2 174 22 is_stmt 1 discriminator 1 view .LVU113
	.loc 2 176 17 is_stmt 0 view .LVU114
	movq	%r12, %r13
	shrq	$60, %r13
	jne	.L57
.LVL46:
.L33:
	.loc 2 178 21 view .LVU115
	salq	$4, %r12
.LVL47:
	.loc 2 174 13 is_stmt 1 view .LVU116
	addq	$1, %r13
.LVL48:
	.loc 2 174 22 discriminator 1 view .LVU117
	cmpq	$16, %r13
	je	.L23
	.loc 2 176 17 is_stmt 0 view .LVU118
	movq	%r12, %rax
	shrq	$60, %rax
	je	.L33
.LVL49:
.L32:
	.loc 2 180 22 is_stmt 1 discriminator 1 view .LVU119
	.loc 2 182 43 is_stmt 0 view .LVU120
	movabsq	$.LC2, %r15
.L35:
	.loc 2 182 49 view .LVU121
	movq	%r12, %rax
	shrq	$60, %rax
	.loc 2 182 24 view .LVU122
	movzbl	(%r15,%rax), %edi
	movl	%r14d, %esi
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %rax
	call	*%rax
.LVL50:
	.loc 2 183 21 view .LVU123
	salq	$4, %r12
.LVL51:
	.loc 2 180 13 is_stmt 1 discriminator 2 view .LVU124
	addq	$1, %r13
.LVL52:
	.loc 2 180 22 discriminator 1 view .LVU125
	cmpq	$16, %r13
	jne	.L35
	jmp	.L23
.LVL53:
.L20:
	.loc 2 180 22 is_stmt 0 discriminator 1 view .LVU126
.LBE37:
.LBE36:
	.loc 2 252 40 view .LVU127
	movq	8(%rbx), %rax
	movzbl	(%rax), %esi
	movl	$37, %edi
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r12
.LVL54:
	.loc 2 252 40 view .LVU128
	call	*%r12
.LVL55:
	.loc 2 253 40 view .LVU129
	movq	8(%rbx), %rax
	movzbl	(%rax), %esi
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %edi
	call	*%r12
.LVL56:
.L23:
	.loc 2 305 25 view .LVU130
	movq	(%rbx), %rax
	addq	$1, (%rax)
.L9:
	.loc 2 305 25 view .LVU131
.LBE27:
	.loc 2 203 14 view .LVU132
	addq	$40, %rsp
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
.LVL57:
	.loc 2 203 14 view .LVU133
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
	popq	%r14
	.cfi_restore 14
	popq	%r15
	.cfi_restore 15
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL58:
.L18:
	.cfi_restore_state
.LBB46:
	.loc 2 263 40 view .LVU134
	movq	8(%rbx), %rax
	movzbl	(%rax), %esi
	movl	$37, %edi
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r12
.LVL59:
	.loc 2 263 40 view .LVU135
	call	*%r12
.LVL60:
	.loc 2 264 40 view .LVU136
	movq	8(%rbx), %rax
	movzbl	(%rax), %esi
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %edi
	call	*%r12
.LVL61:
	.loc 2 266 29 view .LVU137
	jmp	.L23
.LVL62:
.L17:
	.loc 2 274 40 view .LVU138
	movq	8(%rbx), %rax
	movzbl	(%rax), %esi
	movl	$37, %edi
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r12
.LVL63:
	.loc 2 274 40 view .LVU139
	call	*%r12
.LVL64:
	.loc 2 275 40 view .LVU140
	movq	8(%rbx), %rax
	movzbl	(%rax), %esi
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %edi
	call	*%r12
.LVL65:
	.loc 2 277 29 view .LVU141
	jmp	.L23
.LVL66:
.L16:
	.loc 2 283 42 view .LVU142
	movq	8(%rbx), %rax
	movzbl	(%rax), %r13d
	movq	(%r12), %rcx
.LVL67:
.LBB41:
.LBI41:
	.loc 2 137 21 is_stmt 1 view .LVU143
.LBB42:
	.loc 2 154 20 is_stmt 0 view .LVU144
	movl	$0, %esi
	.loc 2 158 41 view .LVU145
	movabsq	$-3689348814741910323, %r8
	.loc 2 140 13 view .LVU146
	testq	%rcx, %rcx
	je	.L58
.LVL68:
.L36:
	.loc 2 158 41 view .LVU147
	movq	%rcx, %rax
	mulq	%r8
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rdi
	addq	%rdi, %rdi
	movq	%rcx, %rax
	subq	%rdi, %rax
	.loc 2 158 35 view .LVU148
	addl	$48, %eax
	movb	%al, -80(%rbp,%rsi)
	movq	%rcx, %rax
	.loc 2 159 21 view .LVU149
	movq	%rdx, %rcx
.LVL69:
	.loc 2 159 21 view .LVU150
	movq	%rsi, %r12
	.loc 2 160 17 view .LVU151
	addq	$1, %rsi
.LVL70:
	.loc 2 156 24 is_stmt 1 view .LVU152
	cmpq	$9, %rax
	ja	.L36
.LVL71:
.LBB43:
	.loc 2 163 34 discriminator 1 view .LVU153
	testq	%rsi, %rsi
	je	.L23
	.loc 2 163 34 is_stmt 0 discriminator 1 view .LVU154
	leaq	-80(%rbp), %r14
	addq	%r14, %r12
	.loc 2 164 24 view .LVU155
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r15
.LVL72:
.L38:
	.loc 2 164 24 view .LVU156
	movzbl	(%r12), %edi
	movl	%r13d, %esi
	call	*%r15
.LVL73:
	.loc 2 163 13 is_stmt 1 discriminator 3 view .LVU157
	.loc 2 163 34 discriminator 1 view .LVU158
	movq	%r12, %rax
	subq	$1, %r12
	.loc 2 163 34 is_stmt 0 discriminator 1 view .LVU159
	cmpq	%r14, %rax
	jne	.L38
	jmp	.L23
.LVL74:
.L58:
	.loc 2 163 34 discriminator 1 view .LVU160
.LBE43:
	.loc 2 142 24 view .LVU161
	movl	%r13d, %esi
	movl	$48, %edi
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %rax
	call	*%rax
.LVL75:
	.loc 2 142 24 view .LVU162
	jmp	.L23
.LVL76:
.L12:
	.loc 2 142 24 view .LVU163
.LBE42:
.LBE41:
	.loc 2 298 36 view .LVU164
	movq	8(%rbx), %rax
	movzbl	(%rax), %esi
	movl	$37, %edi
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %rax
	call	*%rax
.LVL77:
	.loc 2 299 29 view .LVU165
	jmp	.L23
.L13:
	.loc 2 301 36 view .LVU166
	movq	8(%rbx), %rax
	movzbl	(%rax), %esi
	movl	$37, %edi
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r12
.LVL78:
	.loc 2 301 36 view .LVU167
	call	*%r12
.LVL79:
	.loc 2 302 36 view .LVU168
	movq	8(%rbx), %rax
	movzbl	(%rax), %esi
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %edi
	call	*%r12
.LVL80:
	.loc 2 303 29 view .LVU169
	jmp	.L23
.LVL81:
.L11:
	.loc 2 310 32 view .LVU170
	movq	8(%rbx), %rax
	movzbl	(%rax), %esi
	movzbl	%dil, %edi
	call	*%r13
.LVL82:
	.loc 2 311 25 view .LVU171
	movq	(%rbx), %rax
	addq	$1, (%rax)
	.loc 2 206 28 is_stmt 1 view .LVU172
	movq	(%rbx), %rdx
	movq	(%rdx), %rax
	movzbl	(%rax), %edi
	testb	%dil, %dil
	je	.L9
.L39:
	.loc 2 208 21 is_stmt 0 view .LVU173
	cmpb	$37, %dil
	jne	.L11
	.loc 2 208 37 discriminator 1 view .LVU174
	cmpb	$0, 1(%rax)
	je	.L11
	.loc 2 210 25 view .LVU175
	leaq	1(%rax), %rcx
	movq	%rcx, (%rdx)
	movzbl	1(%rax), %eax
	cmpb	$37, %al
	je	.L12
	leal	-98(%rax), %edx
	cmpb	$22, %dl
	ja	.L13
	ja	.L13
	movzbl	%dl, %eax
	movabsq	$.L15, %rdx
	jmp	*(%rdx,%rax,8)
	.section	.rodata._ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_,"aG",@progbits,_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_,comdat
	.align 8
	.align 4
.L15:
	.quad	.L21
	.quad	.L20
	.quad	.L19
	.quad	.L13
	.quad	.L13
	.quad	.L13
	.quad	.L13
	.quad	.L13
	.quad	.L13
	.quad	.L13
	.quad	.L13
	.quad	.L13
	.quad	.L13
	.quad	.L13
	.quad	.L18
	.quad	.L13
	.quad	.L13
	.quad	.L17
	.quad	.L13
	.quad	.L13
	.quad	.L16
	.quad	.L13
	.quad	.L14
	.section	.text._ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_,"axG",@progbits,_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_,comdat
.LVL83:
.L41:
.LBB44:
.LBB35:
	.loc 2 121 20 view .LVU176
	movl	$0, %r13d
	jmp	.L27
.LVL84:
.L57:
	.loc 2 121 20 view .LVU177
.LBE35:
.LBE44:
.LBB45:
.LBB40:
	.loc 2 172 20 view .LVU178
	movl	$0, %r13d
	jmp	.L32
.LBE40:
.LBE45:
.LBE46:
	.cfi_endproc
.LFE127:
	.size	_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_, .-_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Initilialising kernel heap\n"
.LC4:
	.string	"Kernel heap start addr %x\n"
.LC5:
	.string	"Kernel heap end addr %x\n"
	.text
	.align 2
	.globl	_ZN6Kernel9MemoryMap17parseMemoryMapTagERNS_14HeapLinkedListE
	.type	_ZN6Kernel9MemoryMap17parseMemoryMapTagERNS_14HeapLinkedListE, @function
_ZN6Kernel9MemoryMap17parseMemoryMapTagERNS_14HeapLinkedListE:
.LVL85:
.LFB112:
	.loc 1 111 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 111 5 is_stmt 0 view .LVU180
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -120(%rbp)
	.loc 1 112 9 is_stmt 1 view .LVU181
	.loc 1 112 32 is_stmt 0 view .LVU182
	movabsq	$_ZN6Kernel9MemoryMap22s_availibleRegionCountE, %rax
	movq	$0, (%rax)
	.loc 1 113 9 is_stmt 1 view .LVU183
	.loc 1 113 96 is_stmt 0 view .LVU184
	movabsq	_ZN6Kernel9MemoryMap18s_kernelEndDynamicE, %rax
	addq	$7, %rax
	.loc 1 113 101 view .LVU185
	andq	$-8, %rax
	movabsq	%rax, _ZN6Kernel9MemoryMap24s_availibleRegionEntriesE
	.loc 1 116 9 is_stmt 1 view .LVU186
	.loc 1 116 53 is_stmt 0 view .LVU187
	movabsq	$_ZN6Kernel9MemoryMap18s_multibootMmapTagE, %rax
	movq	(%rax), %rcx
	.loc 1 116 18 view .LVU188
	movl	4(%rcx), %eax
	leal	-16(%rax), %edi
.LVL86:
	.loc 1 117 9 is_stmt 1 view .LVU189
	.loc 1 117 18 is_stmt 0 view .LVU190
	movl	8(%rcx), %esi
.LVL87:
	.loc 1 118 9 is_stmt 1 view .LVU191
	.loc 1 118 18 is_stmt 0 view .LVU192
	movl	%edi, %eax
	movl	$0, %edx
	divl	%esi
.LVL88:
	.loc 1 122 9 is_stmt 1 view .LVU193
	.loc 1 124 9 view .LVU194
	.loc 1 126 9 view .LVU195
	.loc 1 127 9 view .LVU196
	.loc 1 127 18 discriminator 1 view .LVU197
	cmpl	%esi, %edi
	jb	.L68
	leaq	16(%rcx), %rdx
.LVL89:
	.loc 1 126 18 is_stmt 0 view .LVU198
	movl	$0, %ecx
	.loc 1 122 16 view .LVU199
	movl	$0, %r12d
	.loc 1 131 64 view .LVU200
	movabsq	$_ZN6Kernel9MemoryMap22s_availibleRegionCountE, %r9
	.loc 1 131 66 view .LVU201
	movabsq	$_ZN6Kernel9MemoryMap24s_availibleRegionEntriesE, %r11
	.loc 1 132 33 view .LVU202
	movabsq	$_ZN6Kernel9MemoryMap18s_kernelEndDynamicE, %r10
	.loc 1 157 97 view .LVU203
	movl	%esi, %esi
.LVL90:
	.loc 1 157 97 view .LVU204
	jmp	.L62
.LVL91:
.L61:
	.loc 1 157 13 is_stmt 1 view .LVU205
	.loc 1 157 19 is_stmt 0 view .LVU206
	addq	%rsi, %rdx
.LVL92:
	.loc 1 127 9 is_stmt 1 view .LVU207
	addl	$1, %ecx
.LVL93:
	.loc 1 127 18 discriminator 1 view .LVU208
	cmpl	%eax, %ecx
	jnb	.L60
.LVL94:
.L62:
	.loc 1 129 13 view .LVU209
	cmpl	$1, 16(%rdx)
	jne	.L61
	.loc 1 131 17 view .LVU210
	.loc 1 131 64 is_stmt 0 view .LVU211
	movq	(%r9), %r8
	.loc 1 131 66 view .LVU212
	movq	(%r11), %rdi
	movq	%rdx, (%rdi,%r8,8)
	.loc 1 132 17 is_stmt 1 view .LVU213
	movq	(%rdx), %rbx
	cmpq	%rbx, (%r10)
	jb	.L61
	.loc 1 133 21 view .LVU214
	.loc 1 133 39 is_stmt 0 view .LVU215
	movq	(%r9), %r12
.LVL95:
	.loc 1 133 39 view .LVU216
	jmp	.L61
.LVL96:
.L68:
	.loc 1 122 16 view .LVU217
	movl	$0, %r12d
.LVL97:
.L60:
.LBB66:
.LBB67:
.LBB68:
.LBB69:
	.loc 2 110 39 is_stmt 1 discriminator 1 view .LVU218
	movabsq	$.LC3+1, %rbx
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU219
	movl	$73, %edi
	.loc 2 112 24 view .LVU220
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r13
.LVL98:
.L63:
	.loc 2 112 24 view .LVU221
	movzbl	%dil, %edi
	movl	$3, %esi
	call	*%r13
.LVL99:
	.loc 2 110 13 is_stmt 1 discriminator 3 view .LVU222
	.loc 2 110 39 discriminator 1 view .LVU223
	addq	$1, %rbx
.LVL100:
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU224
	movzbl	-1(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU225
	testb	%dil, %dil
	jne	.L63
.LVL101:
	.loc 2 110 39 discriminator 1 view .LVU226
.LBE69:
.LBE68:
	.loc 2 345 33 view .LVU227
	movabsq	$_ZN6Kernel7Console20clampDisplayToCursorEv, %rax
	call	*%rax
.LVL102:
	.loc 2 346 25 view .LVU228
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL103:
	.loc 2 347 23 view .LVU229
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL104:
.LBE67:
.LBE66:
	.loc 1 161 9 is_stmt 1 view .LVU230
	.loc 1 161 84 is_stmt 0 view .LVU231
	movabsq	$_ZN6Kernel9MemoryMap24s_availibleRegionEntriesE, %rax
	movq	(%rax), %rdx
	.loc 1 161 144 view .LVU232
	movabsq	_ZN6Kernel9MemoryMap22s_availibleRegionCountE, %rax
	leaq	7(%rdx,%rax,8), %r14
	.loc 1 161 18 view .LVU233
	andq	$-8, %r14
.LVL105:
	.loc 1 162 9 is_stmt 1 view .LVU234
	.loc 1 162 70 is_stmt 0 view .LVU235
	movq	(%rdx,%r12,8), %rax
	.loc 1 162 77 view .LVU236
	movq	(%rax), %r13
	addq	8(%rax), %r13
	.loc 1 162 18 view .LVU237
	movabsq	$-140737488355328, %rax
	addq	%rax, %r13
.LVL106:
	.loc 1 164 9 is_stmt 1 view .LVU238
	.loc 1 164 9 is_stmt 0 view .LVU239
	movq	%r14, -96(%rbp)
.LVL107:
.LBB70:
.LBI70:
	.loc 2 319 21 is_stmt 1 view .LVU240
	movabsq	$.LC4, %rax
	movq	%rax, -88(%rbp)
.LVL108:
	.loc 2 319 21 is_stmt 0 view .LVU241
	movb	$15, -97(%rbp)
.LVL109:
.LBB71:
.LBB72:
.LBI72:
	.loc 2 201 21 is_stmt 1 view .LVU242
.LBB73:
	.loc 2 203 14 is_stmt 0 view .LVU243
	leaq	-88(%rbp), %rax
.LVL110:
	.loc 2 203 14 view .LVU244
	movq	%rax, -80(%rbp)
	leaq	-97(%rbp), %rax
.LVL111:
	.loc 2 203 14 view .LVU245
	movq	%rax, -72(%rbp)
	.loc 2 313 20 view .LVU246
	leaq	-96(%rbp), %rsi
.LVL112:
	.loc 2 313 20 view .LVU247
	leaq	-80(%rbp), %rdi
.LVL113:
	.loc 2 313 20 view .LVU248
	movabsq	$_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_, %rax
.LVL114:
	.loc 2 313 20 view .LVU249
	call	*%rax
.LVL115:
	.loc 2 314 22 view .LVU250
	movzbl	-97(%rbp), %r12d
	movq	-88(%rbp), %rbx
.LVL116:
.LBB74:
.LBI74:
	.loc 2 108 21 is_stmt 1 view .LVU251
.LBB75:
	.loc 2 110 39 discriminator 1 view .LVU252
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU253
	movzbl	(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU254
	testb	%dil, %dil
	je	.L64
	addq	$1, %rbx
.LVL117:
	.loc 2 112 24 view .LVU255
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r15
.LVL118:
.L65:
	.loc 2 112 24 view .LVU256
	movzbl	%dil, %edi
	movl	%r12d, %esi
	call	*%r15
.LVL119:
	.loc 2 110 13 is_stmt 1 discriminator 3 view .LVU257
	.loc 2 110 39 discriminator 1 view .LVU258
	addq	$1, %rbx
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU259
	movzbl	-1(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU260
	testb	%dil, %dil
	jne	.L65
.LVL120:
.L64:
	.loc 2 110 39 discriminator 1 view .LVU261
.LBE75:
.LBE74:
.LBE73:
.LBE72:
	.loc 2 329 33 view .LVU262
	movabsq	$_ZN6Kernel7Console20clampDisplayToCursorEv, %rax
	call	*%rax
.LVL121:
	.loc 2 330 25 view .LVU263
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL122:
	.loc 2 331 23 view .LVU264
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL123:
	.loc 2 331 23 view .LVU265
.LBE71:
.LBE70:
	.loc 1 165 9 is_stmt 1 view .LVU266
	.loc 1 165 9 is_stmt 0 view .LVU267
	movq	%r13, -96(%rbp)
.LVL124:
.LBB76:
.LBI76:
	.loc 2 319 21 is_stmt 1 view .LVU268
	movabsq	$.LC5, %rax
	movq	%rax, -88(%rbp)
.LVL125:
	.loc 2 319 21 is_stmt 0 view .LVU269
	movb	$15, -97(%rbp)
.LVL126:
.LBB77:
.LBB78:
.LBI78:
	.loc 2 201 21 is_stmt 1 view .LVU270
.LBB79:
	.loc 2 203 14 is_stmt 0 view .LVU271
	leaq	-88(%rbp), %rax
.LVL127:
	.loc 2 203 14 view .LVU272
	movq	%rax, -64(%rbp)
	leaq	-97(%rbp), %rax
.LVL128:
	.loc 2 203 14 view .LVU273
	movq	%rax, -56(%rbp)
	.loc 2 313 20 view .LVU274
	leaq	-96(%rbp), %rsi
.LVL129:
	.loc 2 313 20 view .LVU275
	leaq	-64(%rbp), %rdi
.LVL130:
	.loc 2 313 20 view .LVU276
	movabsq	$_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_, %rax
.LVL131:
	.loc 2 313 20 view .LVU277
	call	*%rax
.LVL132:
	.loc 2 314 22 view .LVU278
	movzbl	-97(%rbp), %r12d
	movq	-88(%rbp), %rbx
.LVL133:
.LBB80:
.LBI80:
	.loc 2 108 21 is_stmt 1 view .LVU279
.LBB81:
	.loc 2 110 39 discriminator 1 view .LVU280
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU281
	movzbl	(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU282
	testb	%dil, %dil
	je	.L66
	addq	$1, %rbx
.LVL134:
	.loc 2 112 24 view .LVU283
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r15
.LVL135:
.L67:
	.loc 2 112 24 view .LVU284
	movzbl	%dil, %edi
	movl	%r12d, %esi
	call	*%r15
.LVL136:
	.loc 2 110 13 is_stmt 1 discriminator 3 view .LVU285
	.loc 2 110 39 discriminator 1 view .LVU286
	addq	$1, %rbx
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU287
	movzbl	-1(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU288
	testb	%dil, %dil
	jne	.L67
.LVL137:
.L66:
	.loc 2 110 39 discriminator 1 view .LVU289
.LBE81:
.LBE80:
.LBE79:
.LBE78:
	.loc 2 329 33 view .LVU290
	movabsq	$_ZN6Kernel7Console20clampDisplayToCursorEv, %rax
	call	*%rax
.LVL138:
	.loc 2 330 25 view .LVU291
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL139:
	.loc 2 331 23 view .LVU292
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL140:
	.loc 2 331 23 view .LVU293
.LBE77:
.LBE76:
	.loc 1 166 9 is_stmt 1 view .LVU294
	.loc 1 166 24 is_stmt 0 view .LVU295
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	-120(%rbp), %rdi
	movabsq	$_ZNV6Kernel14HeapLinkedList10initializeEPvS1_, %rax
	call	*%rax
.LVL141:
	.loc 1 168 5 view .LVU296
	addq	$88, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
.LVL142:
	.loc 1 168 5 view .LVU297
	popq	%r14
	.cfi_restore 14
.LVL143:
	.loc 1 168 5 view .LVU298
	popq	%r15
	.cfi_restore 15
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	_ZN6Kernel9MemoryMap17parseMemoryMapTagERNS_14HeapLinkedListE, .-_ZN6Kernel9MemoryMap17parseMemoryMapTagERNS_14HeapLinkedListE
	.section	.rodata.str1.1
.LC6:
	.string	"Memory Map : Initialising\n"
.LC7:
	.string	"Kernel memory region:\n"
.LC8:
	.string	"  Start: %x\n"
.LC9:
	.string	"  End:   %x\n"
.LC10:
	.string	"  Size:  %d B\n"
	.text
	.align 2
	.globl	_ZN6Kernel9MemoryMap10initialiseEyRNS_14HeapLinkedListE
	.type	_ZN6Kernel9MemoryMap10initialiseEyRNS_14HeapLinkedListE, @function
_ZN6Kernel9MemoryMap10initialiseEyRNS_14HeapLinkedListE:
.LVL144:
.LFB111:
	.loc 1 69 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 69 5 is_stmt 0 view .LVU300
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %r14
	movq	%rsi, -144(%rbp)
	.loc 1 70 9 is_stmt 1 view .LVU301
.LVL145:
.LBB113:
.LBI113:
	.loc 2 335 21 view .LVU302
.LBB114:
.LBB115:
.LBI115:
	.loc 2 108 21 view .LVU303
.LBB116:
	.loc 2 110 39 discriminator 1 view .LVU304
	movabsq	$.LC6+1, %rbx
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU305
	movl	$77, %edi
.LVL146:
	.loc 2 112 24 view .LVU306
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r12
.LVL147:
.L75:
	.loc 2 112 24 view .LVU307
	movzbl	%dil, %edi
	movl	$3, %esi
	call	*%r12
.LVL148:
	.loc 2 110 13 is_stmt 1 discriminator 3 view .LVU308
	.loc 2 110 39 discriminator 1 view .LVU309
	addq	$1, %rbx
.LVL149:
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU310
	movzbl	-1(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU311
	testb	%dil, %dil
	jne	.L75
.LVL150:
	.loc 2 110 39 discriminator 1 view .LVU312
.LBE116:
.LBE115:
	.loc 2 345 33 view .LVU313
	movabsq	$_ZN6Kernel7Console20clampDisplayToCursorEv, %rax
	call	*%rax
.LVL151:
	.loc 2 346 25 view .LVU314
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL152:
	.loc 2 347 23 view .LVU315
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL153:
	.loc 2 347 23 view .LVU316
.LBE114:
.LBE113:
	.loc 1 71 9 is_stmt 1 view .LVU317
.LBB117:
.LBI117:
	.loc 2 319 21 view .LVU318
.LBB118:
.LBB119:
.LBI119:
	.loc 2 108 21 view .LVU319
.LBB120:
	.loc 2 110 39 discriminator 1 view .LVU320
	movabsq	$.LC7+1, %rbx
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU321
	movl	$75, %edi
	.loc 2 112 24 view .LVU322
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r12
.LVL154:
.L76:
	.loc 2 112 24 view .LVU323
	movzbl	%dil, %edi
	movl	$15, %esi
	call	*%r12
.LVL155:
	.loc 2 110 13 is_stmt 1 discriminator 3 view .LVU324
	.loc 2 110 39 discriminator 1 view .LVU325
	addq	$1, %rbx
.LVL156:
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU326
	movzbl	-1(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU327
	testb	%dil, %dil
	jne	.L76
.LVL157:
	.loc 2 110 39 discriminator 1 view .LVU328
.LBE120:
.LBE119:
	.loc 2 329 33 view .LVU329
	movabsq	$_ZN6Kernel7Console20clampDisplayToCursorEv, %rax
	call	*%rax
.LVL158:
	.loc 2 330 25 view .LVU330
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL159:
	.loc 2 331 23 view .LVU331
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL160:
	.loc 2 331 23 view .LVU332
.LBE118:
.LBE117:
	.loc 1 72 9 is_stmt 1 view .LVU333
	.loc 1 72 62 is_stmt 0 view .LVU334
	movabsq	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE, %rax
	movq	%rax, -136(%rbp)
.LVL161:
	.loc 1 72 62 view .LVU335
	movq	%rax, -112(%rbp)
.LVL162:
.LBB121:
.LBI121:
	.loc 2 319 21 is_stmt 1 view .LVU336
	movabsq	$.LC8, %rax
.LVL163:
	.loc 2 319 21 is_stmt 0 view .LVU337
	movq	%rax, -104(%rbp)
.LVL164:
	.loc 2 319 21 view .LVU338
	movb	$15, -113(%rbp)
.LVL165:
.LBB122:
.LBB123:
.LBI123:
	.loc 2 201 21 is_stmt 1 view .LVU339
.LBB124:
	.loc 2 203 14 is_stmt 0 view .LVU340
	leaq	-104(%rbp), %rax
.LVL166:
	.loc 2 203 14 view .LVU341
	movq	%rax, -96(%rbp)
	leaq	-113(%rbp), %rax
.LVL167:
	.loc 2 203 14 view .LVU342
	movq	%rax, -88(%rbp)
	.loc 2 313 20 view .LVU343
	leaq	-112(%rbp), %rsi
.LVL168:
	.loc 2 313 20 view .LVU344
	leaq	-96(%rbp), %rdi
.LVL169:
	.loc 2 313 20 view .LVU345
	movabsq	$_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_, %rax
.LVL170:
	.loc 2 313 20 view .LVU346
	call	*%rax
.LVL171:
	.loc 2 314 22 view .LVU347
	movzbl	-113(%rbp), %r12d
	movq	-104(%rbp), %rbx
.LVL172:
.LBB125:
.LBI125:
	.loc 2 108 21 is_stmt 1 view .LVU348
.LBB126:
	.loc 2 110 39 discriminator 1 view .LVU349
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU350
	movzbl	(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU351
	testb	%dil, %dil
	je	.L77
	addq	$1, %rbx
.LVL173:
	.loc 2 112 24 view .LVU352
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r13
.LVL174:
.L78:
	.loc 2 112 24 view .LVU353
	movzbl	%dil, %edi
	movl	%r12d, %esi
	call	*%r13
.LVL175:
	.loc 2 110 13 is_stmt 1 discriminator 3 view .LVU354
	.loc 2 110 39 discriminator 1 view .LVU355
	addq	$1, %rbx
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU356
	movzbl	-1(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU357
	testb	%dil, %dil
	jne	.L78
.LVL176:
.L77:
	.loc 2 110 39 discriminator 1 view .LVU358
.LBE126:
.LBE125:
.LBE124:
.LBE123:
	.loc 2 329 33 view .LVU359
	movabsq	$_ZN6Kernel7Console20clampDisplayToCursorEv, %rax
	call	*%rax
.LVL177:
	.loc 2 330 25 view .LVU360
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL178:
	.loc 2 331 23 view .LVU361
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL179:
	.loc 2 331 23 view .LVU362
.LBE122:
.LBE121:
	.loc 1 73 9 is_stmt 1 view .LVU363
	.loc 1 73 62 is_stmt 0 view .LVU364
	movabsq	$_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE+8, %rax
	movq	(%rax), %r15
.LVL180:
	.loc 1 73 62 view .LVU365
	movq	%r15, -112(%rbp)
.LVL181:
.LBB127:
.LBI127:
	.loc 2 319 21 is_stmt 1 view .LVU366
	movabsq	$.LC9, %rax
	movq	%rax, -104(%rbp)
.LVL182:
	.loc 2 319 21 is_stmt 0 view .LVU367
	movb	$15, -113(%rbp)
.LVL183:
.LBB128:
.LBB129:
.LBI129:
	.loc 2 201 21 is_stmt 1 view .LVU368
.LBB130:
	.loc 2 203 14 is_stmt 0 view .LVU369
	leaq	-104(%rbp), %rax
.LVL184:
	.loc 2 203 14 view .LVU370
	movq	%rax, -80(%rbp)
	leaq	-113(%rbp), %rax
.LVL185:
	.loc 2 203 14 view .LVU371
	movq	%rax, -72(%rbp)
	.loc 2 313 20 view .LVU372
	leaq	-112(%rbp), %rsi
.LVL186:
	.loc 2 313 20 view .LVU373
	leaq	-80(%rbp), %rdi
.LVL187:
	.loc 2 313 20 view .LVU374
	movabsq	$_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_, %rax
.LVL188:
	.loc 2 313 20 view .LVU375
	call	*%rax
.LVL189:
	.loc 2 314 22 view .LVU376
	movzbl	-113(%rbp), %r12d
	movq	-104(%rbp), %rbx
.LVL190:
.LBB131:
.LBI131:
	.loc 2 108 21 is_stmt 1 view .LVU377
.LBB132:
	.loc 2 110 39 discriminator 1 view .LVU378
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU379
	movzbl	(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU380
	testb	%dil, %dil
	je	.L79
	addq	$1, %rbx
.LVL191:
	.loc 2 112 24 view .LVU381
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r13
.LVL192:
.L80:
	.loc 2 112 24 view .LVU382
	movzbl	%dil, %edi
	movl	%r12d, %esi
	call	*%r13
.LVL193:
	.loc 2 110 13 is_stmt 1 discriminator 3 view .LVU383
	.loc 2 110 39 discriminator 1 view .LVU384
	addq	$1, %rbx
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU385
	movzbl	-1(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU386
	testb	%dil, %dil
	jne	.L80
.LVL194:
.L79:
	.loc 2 110 39 discriminator 1 view .LVU387
.LBE132:
.LBE131:
.LBE130:
.LBE129:
	.loc 2 329 33 view .LVU388
	movabsq	$_ZN6Kernel7Console20clampDisplayToCursorEv, %rax
	call	*%rax
.LVL195:
	.loc 2 330 25 view .LVU389
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL196:
	.loc 2 331 23 view .LVU390
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL197:
	.loc 2 331 23 view .LVU391
.LBE128:
.LBE127:
	.loc 1 74 9 is_stmt 1 view .LVU392
	.loc 1 74 23 is_stmt 0 view .LVU393
	movq	%r15, %rax
	movq	-136(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LVL198:
.LBB133:
.LBI133:
	.loc 2 319 21 is_stmt 1 view .LVU394
	movabsq	$.LC10, %rax
.LVL199:
	.loc 2 319 21 is_stmt 0 view .LVU395
	movq	%rax, -104(%rbp)
.LVL200:
	.loc 2 319 21 view .LVU396
	movb	$15, -113(%rbp)
.LVL201:
.LBB134:
.LBB135:
.LBI135:
	.loc 2 201 21 is_stmt 1 view .LVU397
.LBB136:
	.loc 2 203 14 is_stmt 0 view .LVU398
	leaq	-104(%rbp), %rax
.LVL202:
	.loc 2 203 14 view .LVU399
	movq	%rax, -64(%rbp)
	leaq	-113(%rbp), %rax
.LVL203:
	.loc 2 203 14 view .LVU400
	movq	%rax, -56(%rbp)
	.loc 2 313 20 view .LVU401
	leaq	-112(%rbp), %rsi
.LVL204:
	.loc 2 313 20 view .LVU402
	leaq	-64(%rbp), %rdi
.LVL205:
	.loc 2 313 20 view .LVU403
	movabsq	$_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_, %rax
.LVL206:
	.loc 2 313 20 view .LVU404
	call	*%rax
.LVL207:
	.loc 2 314 22 view .LVU405
	movzbl	-113(%rbp), %r12d
	movq	-104(%rbp), %rbx
.LVL208:
.LBB137:
.LBI137:
	.loc 2 108 21 is_stmt 1 view .LVU406
.LBB138:
	.loc 2 110 39 discriminator 1 view .LVU407
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU408
	movzbl	(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU409
	testb	%dil, %dil
	je	.L81
	addq	$1, %rbx
.LVL209:
	.loc 2 112 24 view .LVU410
	movabsq	$_ZN6Kernel7Console7putCharEhNS0_10AttributesE, %r13
.LVL210:
.L82:
	.loc 2 112 24 view .LVU411
	movzbl	%dil, %edi
	movl	%r12d, %esi
	call	*%r13
.LVL211:
	.loc 2 110 13 is_stmt 1 discriminator 3 view .LVU412
	.loc 2 110 39 discriminator 1 view .LVU413
	addq	$1, %rbx
	.loc 2 110 35 is_stmt 0 discriminator 1 view .LVU414
	movzbl	-1(%rbx), %edi
	.loc 2 110 39 discriminator 1 view .LVU415
	testb	%dil, %dil
	jne	.L82
.LVL212:
.L81:
	.loc 2 110 39 discriminator 1 view .LVU416
.LBE138:
.LBE137:
.LBE136:
.LBE135:
	.loc 2 329 33 view .LVU417
	movabsq	$_ZN6Kernel7Console20clampDisplayToCursorEv, %rax
	call	*%rax
.LVL213:
	.loc 2 330 25 view .LVU418
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL214:
	.loc 2 331 23 view .LVU419
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL215:
	.loc 2 331 23 view .LVU420
.LBE134:
.LBE133:
	.loc 1 77 9 is_stmt 1 view .LVU421
	.loc 1 77 27 is_stmt 0 view .LVU422
	movq	%r14, %rax
	movabsq	%rax, _ZN6Kernel9MemoryMap17s_multibootHeaderE
	.loc 1 78 9 is_stmt 1 view .LVU423
	.loc 1 78 80 is_stmt 0 view .LVU424
	leaq	8(%r14), %rdx
.LVL216:
	.loc 1 80 9 is_stmt 1 view .LVU425
	.loc 1 80 116 is_stmt 0 view .LVU426
	movl	(%r14), %eax
	.loc 1 80 95 view .LVU427
	leaq	(%r14,%rax,8), %rax
	.loc 1 80 9 view .LVU428
	cmpq	%r15, %rax
	cmovb	%r15, %rax
	movabsq	%rax, _ZN6Kernel9MemoryMap18s_kernelEndDynamicE
	.loc 1 89 26 is_stmt 1 view .LVU429
	.loc 1 89 21 is_stmt 0 view .LVU430
	movl	8(%r14), %eax
	.loc 1 89 26 view .LVU431
	testl	%eax, %eax
	je	.L74
.L85:
	.loc 1 95 13 is_stmt 1 view .LVU432
	cmpl	$6, %eax
	je	.L93
	.loc 1 102 13 view .LVU433
	.loc 1 102 99 is_stmt 0 view .LVU434
	movl	4(%rdx), %eax
	addl	$7, %eax
	.loc 1 102 104 view .LVU435
	andl	$-8, %eax
	.loc 1 102 17 view .LVU436
	addq	%rax, %rdx
.LVL217:
	.loc 1 89 26 is_stmt 1 view .LVU437
	.loc 1 89 21 is_stmt 0 view .LVU438
	movl	(%rdx), %eax
	.loc 1 89 26 view .LVU439
	testl	%eax, %eax
	jne	.L85
	jmp	.L74
.L93:
	.loc 1 97 17 is_stmt 1 view .LVU440
	.loc 1 97 36 is_stmt 0 view .LVU441
	movq	%rdx, %rax
	movabsq	%rax, _ZN6Kernel9MemoryMap18s_multibootMmapTagE
	.loc 1 98 17 is_stmt 1 view .LVU442
	.loc 1 98 34 is_stmt 0 view .LVU443
	movq	-144(%rbp), %rdi
	movabsq	$_ZN6Kernel9MemoryMap17parseMemoryMapTagERNS_14HeapLinkedListE, %rax
	call	*%rax
.LVL218:
	.loc 1 99 17 is_stmt 1 view .LVU444
.L74:
	.loc 1 108 5 is_stmt 0 view .LVU445
	addq	$104, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
	popq	%r14
	.cfi_restore 14
.LVL219:
	.loc 1 108 5 view .LVU446
	popq	%r15
	.cfi_restore 15
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	_ZN6Kernel9MemoryMap10initialiseEyRNS_14HeapLinkedListE, .-_ZN6Kernel9MemoryMap10initialiseEyRNS_14HeapLinkedListE
	.type	_GLOBAL__sub_I__ZN6Kernel9MemoryMap19s_multibootTagNamesE, @function
_GLOBAL__sub_I__ZN6Kernel9MemoryMap19s_multibootTagNamesE:
.LFB132:
	.loc 1 204 1 is_stmt 1 view -0
	.cfi_startproc
.LBB144:
.LBI144:
	.loc 1 204 1 view .LVU448
.LBB145:
	.loc 2 72 103 is_stmt 0 view .LVU449
	movabsq	$_ZGVN6Kernel7Console12s_charBufferE, %rax
	cmpb	$0, (%rax)
	jne	.L94
	.loc 2 72 103 discriminator 1 view .LVU450
	movb	$1, (%rax)
.LVL220:
.LBB146:
.LBI146:
	.file 3 "src/kernel/../../include/kernel/../drivers/../utils/RollingWindow.h"
	.loc 3 135 5 is_stmt 1 view .LVU451
.LBB147:
.LBB148:
	.loc 3 136 5 discriminator 1 view .LVU452
.LBE148:
	.loc 3 135 5 is_stmt 0 view .LVU453
	movl	$2048, %eax
.L96:
.LBB149:
	.loc 3 136 5 is_stmt 1 discriminator 1 view .LVU454
	subq	$1, %rax
	jne	.L96
	.loc 3 136 5 is_stmt 0 discriminator 4 view .LVU455
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rax
	movq	$0, 327680(%rax)
	movq	$0, 327688(%rax)
	.loc 3 137 16 view .LVU456
	movq	$0, 327680(%rax)
	.loc 3 138 16 view .LVU457
	movq	$0, 327688(%rax)
.LVL221:
.L94:
	.loc 3 138 16 view .LVU458
.LBE149:
.LBE147:
.LBE146:
.LBE145:
.LBE144:
	.loc 1 204 1 view .LVU459
	ret
	.cfi_endproc
.LFE132:
	.size	_GLOBAL__sub_I__ZN6Kernel9MemoryMap19s_multibootTagNamesE, .-_GLOBAL__sub_I__ZN6Kernel9MemoryMap19s_multibootTagNamesE
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__ZN6Kernel9MemoryMap19s_multibootTagNamesE
	.weak	_ZGVN6Kernel7Console12s_charBufferE
	.section	.bss._ZGVN6Kernel7Console12s_charBufferE,"awG",@nobits,_ZGVN6Kernel7Console12s_charBufferE,comdat
	.align 8
	.type	_ZGVN6Kernel7Console12s_charBufferE, @object
	.size	_ZGVN6Kernel7Console12s_charBufferE, 8
_ZGVN6Kernel7Console12s_charBufferE:
	.zero	8
	.globl	_ZN6Kernel9MemoryMap22s_availibleRegionCountE
	.section	.bss
	.align 8
	.type	_ZN6Kernel9MemoryMap22s_availibleRegionCountE, @object
	.size	_ZN6Kernel9MemoryMap22s_availibleRegionCountE, 8
_ZN6Kernel9MemoryMap22s_availibleRegionCountE:
	.zero	8
	.globl	_ZN6Kernel9MemoryMap24s_availibleRegionEntriesE
	.align 8
	.type	_ZN6Kernel9MemoryMap24s_availibleRegionEntriesE, @object
	.size	_ZN6Kernel9MemoryMap24s_availibleRegionEntriesE, 8
_ZN6Kernel9MemoryMap24s_availibleRegionEntriesE:
	.zero	8
	.globl	_ZN6Kernel9MemoryMap18s_kernelEndDynamicE
	.align 8
	.type	_ZN6Kernel9MemoryMap18s_kernelEndDynamicE, @object
	.size	_ZN6Kernel9MemoryMap18s_kernelEndDynamicE, 8
_ZN6Kernel9MemoryMap18s_kernelEndDynamicE:
	.zero	8
	.globl	_ZN6Kernel9MemoryMap18s_multibootMmapTagE
	.align 8
	.type	_ZN6Kernel9MemoryMap18s_multibootMmapTagE, @object
	.size	_ZN6Kernel9MemoryMap18s_multibootMmapTagE, 8
_ZN6Kernel9MemoryMap18s_multibootMmapTagE:
	.zero	8
	.globl	_ZN6Kernel9MemoryMap17s_multibootHeaderE
	.align 8
	.type	_ZN6Kernel9MemoryMap17s_multibootHeaderE, @object
	.size	_ZN6Kernel9MemoryMap17s_multibootHeaderE, 8
_ZN6Kernel9MemoryMap17s_multibootHeaderE:
	.zero	8
	.globl	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE
	.section	.rodata
	.align 32
	.type	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE, @object
	.size	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE, 112
_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE:
	.quad	__kernel_start_
	.quad	__kernel_end_
	.quad	__multiboot_header_start_
	.quad	__multiboot_header_end_
	.quad	__text_start_
	.quad	__text_end_
	.quad	__data_start_
	.quad	__data_end_
	.quad	__rodata_start_
	.quad	__rodata_end_
	.quad	__bss_start_
	.quad	__bss_end_
	.quad	stack_top
	.quad	stack_bottom
	.globl	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE
	.section	.rodata.str1.1
.LC11:
	.string	"Unknown"
.LC12:
	.string	"Available"
.LC13:
	.string	"Reserved"
.LC14:
	.string	"ACPI Reclaim"
.LC15:
	.string	"ACPI NVS"
.LC16:
	.string	"Bad RAM"
	.data
	.align 32
	.type	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE, @object
	.size	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE, 48
_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE:
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.globl	_ZN6Kernel9MemoryMap19s_multibootTagNamesE
	.section	.rodata.str1.1
.LC17:
	.string	"End"
.LC18:
	.string	"Cmdline"
.LC19:
	.string	"Bootloader name"
.LC20:
	.string	"Module"
.LC21:
	.string	"Basic memory info"
.LC22:
	.string	"Boot device"
.LC23:
	.string	"Memory map"
.LC24:
	.string	"VBE info"
.LC25:
	.string	"Framebuffer info"
.LC26:
	.string	"EFI memory map"
.LC27:
	.string	"EFI boot services"
.LC28:
	.string	"EFI ACPI table"
.LC29:
	.string	"EFI memory map v2"
.LC30:
	.string	"SMBIOS tables"
.LC31:
	.string	"OEM strings"
.LC32:
	.string	"ACPI old RSDP"
.LC33:
	.string	"ACPI new RSDP"
.LC34:
	.string	"NVRAM"
.LC35:
	.string	"EFI memory map v3"
.LC36:
	.string	"EFI memory map v4"
.LC37:
	.string	"Load base address"
	.data
	.align 32
	.type	_ZN6Kernel9MemoryMap19s_multibootTagNamesE, @object
	.size	_ZN6Kernel9MemoryMap19s_multibootTagNamesE, 168
_ZN6Kernel9MemoryMap19s_multibootTagNamesE:
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.weak	_ZN6Kernel7Console13s_shouldFlushE
	.section	.bss._ZN6Kernel7Console13s_shouldFlushE,"awG",@nobits,_ZN6Kernel7Console13s_shouldFlushE,comdat
	.type	_ZN6Kernel7Console13s_shouldFlushE, @object
	.size	_ZN6Kernel7Console13s_shouldFlushE, 1
_ZN6Kernel7Console13s_shouldFlushE:
	.zero	1
	.weak	_ZN6Kernel7Console15s_cursorEnabledE
	.section	.bss._ZN6Kernel7Console15s_cursorEnabledE,"awG",@nobits,_ZN6Kernel7Console15s_cursorEnabledE,comdat
	.type	_ZN6Kernel7Console15s_cursorEnabledE, @object
	.size	_ZN6Kernel7Console15s_cursorEnabledE, 1
_ZN6Kernel7Console15s_cursorEnabledE:
	.zero	1
	.weak	_ZN6Kernel7Console13s_displayLineE
	.section	.bss._ZN6Kernel7Console13s_displayLineE,"awG",@nobits,_ZN6Kernel7Console13s_displayLineE,comdat
	.align 8
	.type	_ZN6Kernel7Console13s_displayLineE, @object
	.size	_ZN6Kernel7Console13s_displayLineE, 8
_ZN6Kernel7Console13s_displayLineE:
	.zero	8
	.weak	_ZN6Kernel7Console11s_cursorPosE
	.section	.bss._ZN6Kernel7Console11s_cursorPosE,"awG",@nobits,_ZN6Kernel7Console11s_cursorPosE,comdat
	.align 16
	.type	_ZN6Kernel7Console11s_cursorPosE, @object
	.size	_ZN6Kernel7Console11s_cursorPosE, 16
_ZN6Kernel7Console11s_cursorPosE:
	.zero	16
	.weak	_ZN6Kernel7Console12s_charBufferE
	.section	.bss._ZN6Kernel7Console12s_charBufferE,"awG",@nobits,_ZN6Kernel7Console12s_charBufferE,comdat
	.align 32
	.type	_ZN6Kernel7Console12s_charBufferE, @object
	.size	_ZN6Kernel7Console12s_charBufferE, 327696
_ZN6Kernel7Console12s_charBufferE:
	.zero	327696
	.text
.Letext0:
	.file 4 "src/kernel/../../include/kernel/../utils/Types.h"
	.file 5 "src/kernel/../../include/kernel/Heap.h"
	.file 6 "src/kernel/../../include/kernel/MemoryMap.h"
	.file 7 "src/kernel/../../include/kernel/../utils/Utils.h"
	.file 8 "src/kernel/../../include/kernel/../drivers/../utils/Array.h"
	.file 9 "src/kernel/../../include/kernel/KernelData.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x28fd
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x57
	.long	.LASF832
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL99
	.quad	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2c
	.long	.LASF444
	.byte	0x5
	.byte	0x17
	.long	0x43
	.uleb128 0xc
	.long	0x2e
	.uleb128 0x2d
	.long	0x2e
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.long	.LASF442
	.uleb128 0xc
	.long	0x43
	.uleb128 0x15
	.byte	0x8
	.byte	0x5
	.long	.LASF443
	.uleb128 0x2c
	.long	.LASF445
	.byte	0x8
	.byte	0x17
	.long	0x61
	.uleb128 0x15
	.byte	0x1
	.byte	0x8
	.long	.LASF446
	.uleb128 0x15
	.byte	0x2
	.byte	0x7
	.long	.LASF447
	.uleb128 0x2c
	.long	.LASF448
	.byte	0xa
	.byte	0x16
	.long	0x7a
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.long	.LASF449
	.uleb128 0x2c
	.long	.LASF450
	.byte	0xb
	.byte	0x1c
	.long	0x91
	.uleb128 0xc
	.long	0x81
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.long	.LASF451
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.long	.LASF452
	.uleb128 0x15
	.byte	0x2
	.byte	0x5
	.long	.LASF453
	.uleb128 0x58
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x15
	.byte	0x8
	.byte	0x5
	.long	.LASF454
	.uleb128 0x59
	.byte	0x8
	.uleb128 0x5a
	.string	"std"
	.byte	0x4
	.byte	0x16
	.byte	0xb
	.long	0x18d
	.uleb128 0x5b
	.long	.LASF455
	.byte	0x4
	.byte	0xc5
	.byte	0x17
	.long	0x194
	.byte	0x1
	.uleb128 0x11
	.long	.LASF456
	.value	0x168
	.long	0x194
	.byte	0x1
	.uleb128 0x11
	.long	.LASF457
	.value	0x196
	.long	0x194
	.byte	0x1
	.uleb128 0x11
	.long	.LASF458
	.value	0x174
	.long	0x194
	.byte	0
	.uleb128 0x22
	.long	.LASF459
	.long	0x194
	.uleb128 0x11
	.long	.LASF458
	.value	0x174
	.long	0x194
	.byte	0
	.uleb128 0x22
	.long	.LASF459
	.long	0x194
	.uleb128 0x11
	.long	.LASF460
	.value	0x16e
	.long	0x194
	.byte	0
	.uleb128 0x11
	.long	.LASF457
	.value	0x196
	.long	0x194
	.byte	0
	.uleb128 0x11
	.long	.LASF458
	.value	0x174
	.long	0x194
	.byte	0
	.uleb128 0x22
	.long	.LASF459
	.long	0x194
	.uleb128 0x11
	.long	.LASF457
	.value	0x196
	.long	0x194
	.byte	0
	.uleb128 0x11
	.long	.LASF458
	.value	0x174
	.long	0x194
	.byte	0
	.uleb128 0x22
	.long	.LASF459
	.long	0x194
	.uleb128 0x11
	.long	.LASF457
	.value	0x196
	.long	0x194
	.byte	0
	.uleb128 0x11
	.long	.LASF458
	.value	0x174
	.long	0x194
	.byte	0
	.uleb128 0x22
	.long	.LASF459
	.long	0x194
	.uleb128 0x11
	.long	.LASF461
	.value	0x1a1
	.long	0x194
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.byte	0x2
	.long	.LASF462
	.uleb128 0xc
	.long	0x18d
	.uleb128 0x2d
	.long	0x18d
	.uleb128 0x43
	.long	.LASF463
	.byte	0x2
	.byte	0xa
	.long	0xd92
	.uleb128 0x3d
	.long	.LASF725
	.byte	0x1
	.byte	0x2
	.byte	0xc
	.long	0x687
	.uleb128 0x3e
	.long	.LASF570
	.byte	0x1
	.long	0x56
	.byte	0x2
	.byte	0xf
	.long	0x27a
	.uleb128 0x2
	.long	.LASF464
	.byte	0
	.uleb128 0x2
	.long	.LASF465
	.byte	0x1
	.uleb128 0x2
	.long	.LASF466
	.byte	0x2
	.uleb128 0x2
	.long	.LASF467
	.byte	0x3
	.uleb128 0x2
	.long	.LASF468
	.byte	0x4
	.uleb128 0x2
	.long	.LASF469
	.byte	0x5
	.uleb128 0x2
	.long	.LASF470
	.byte	0x6
	.uleb128 0x2
	.long	.LASF471
	.byte	0x7
	.uleb128 0x2
	.long	.LASF472
	.byte	0x8
	.uleb128 0x2
	.long	.LASF473
	.byte	0x9
	.uleb128 0x2
	.long	.LASF474
	.byte	0xa
	.uleb128 0x2
	.long	.LASF475
	.byte	0xb
	.uleb128 0x2
	.long	.LASF476
	.byte	0xc
	.uleb128 0x2
	.long	.LASF477
	.byte	0xd
	.uleb128 0x2
	.long	.LASF478
	.byte	0xe
	.uleb128 0x2
	.long	.LASF479
	.byte	0xf
	.uleb128 0x2
	.long	.LASF480
	.byte	0x10
	.uleb128 0x2
	.long	.LASF481
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF482
	.byte	0x20
	.uleb128 0x2
	.long	.LASF483
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF484
	.byte	0x30
	.uleb128 0x2
	.long	.LASF485
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF486
	.byte	0x40
	.uleb128 0x2
	.long	.LASF487
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF488
	.byte	0x50
	.uleb128 0x2
	.long	.LASF489
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF490
	.byte	0x60
	.uleb128 0x2
	.long	.LASF491
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF492
	.byte	0x70
	.uleb128 0x2
	.long	.LASF493
	.byte	0x7f
	.byte	0
	.uleb128 0x23
	.long	.LASF494
	.byte	0x10
	.byte	0x2
	.byte	0x31
	.long	0x29d
	.uleb128 0x2e
	.string	"x"
	.byte	0x2
	.byte	0x33
	.byte	0x14
	.long	0x2e
	.byte	0
	.uleb128 0x2e
	.string	"y"
	.byte	0x2
	.byte	0x34
	.byte	0x14
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x2d
	.long	0x27a
	.uleb128 0xc
	.long	0x29d
	.uleb128 0x23
	.long	.LASF495
	.byte	0x10
	.byte	0x2
	.byte	0x37
	.long	0x2ce
	.uleb128 0x6
	.long	.LASF496
	.byte	0x2
	.byte	0x39
	.byte	0x14
	.long	0x2e
	.byte	0
	.uleb128 0x6
	.long	.LASF497
	.byte	0x2
	.byte	0x3a
	.byte	0x14
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x2a7
	.uleb128 0x23
	.long	.LASF498
	.byte	0x2
	.byte	0x2
	.byte	0x3d
	.long	0x2fa
	.uleb128 0x6
	.long	.LASF499
	.byte	0x2
	.byte	0x3f
	.byte	0x15
	.long	0x56
	.byte	0
	.uleb128 0x6
	.long	.LASF500
	.byte	0x2
	.byte	0x40
	.byte	0x18
	.long	0x1b5
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	0x2d3
	.uleb128 0x5c
	.long	.LASF501
	.byte	0x2
	.byte	0x44
	.byte	0x21
	.long	.LASF503
	.long	0x2ce
	.byte	0x10
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF691
	.byte	0x2
	.byte	0x46
	.byte	0x2b
	.long	.LASF693
	.long	0xda8
	.quad	0xffff8000000b8000
	.uleb128 0x44
	.long	.LASF502
	.byte	0x47
	.long	.LASF504
	.long	0x39
	.value	0x800
	.uleb128 0x24
	.long	.LASF507
	.byte	0x48
	.byte	0x67
	.long	.LASF509
	.long	0x1195
	.uleb128 0x44
	.long	.LASF505
	.byte	0x49
	.long	.LASF506
	.long	0x39
	.value	0x7d0
	.uleb128 0x24
	.long	.LASF508
	.byte	0x4a
	.byte	0x2a
	.long	.LASF510
	.long	0x29d
	.uleb128 0x24
	.long	.LASF511
	.byte	0x4b
	.byte	0x27
	.long	.LASF512
	.long	0x3e
	.uleb128 0x24
	.long	.LASF513
	.byte	0x4c
	.byte	0x25
	.long	.LASF514
	.long	0x199
	.uleb128 0x24
	.long	.LASF515
	.byte	0x4d
	.byte	0x25
	.long	.LASF516
	.long	0x199
	.uleb128 0x19
	.long	.LASF517
	.byte	0x2
	.byte	0x50
	.long	.LASF519
	.long	0x3c8
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x56
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x19
	.long	.LASF518
	.byte	0x2
	.byte	0x69
	.long	.LASF520
	.long	0x3e2
	.uleb128 0x1
	.long	0x56
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x12
	.long	.LASF521
	.value	0x15f
	.long	.LASF523
	.long	0x3fc
	.uleb128 0x1
	.long	0x56
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x12
	.long	.LASF522
	.value	0x160
	.long	.LASF524
	.long	0x416
	.uleb128 0x1
	.long	0x56
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x12
	.long	.LASF522
	.value	0x162
	.long	.LASF525
	.long	0x435
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x56
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x12
	.long	.LASF526
	.value	0x165
	.long	.LASF527
	.long	0x459
	.uleb128 0x1
	.long	0x27a
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x56
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x12
	.long	.LASF526
	.value	0x168
	.long	.LASF528
	.long	0x47d
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x56
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x12
	.long	.LASF529
	.value	0x16b
	.long	.LASF530
	.long	0x492
	.uleb128 0x1
	.long	0x27a
	.byte	0
	.uleb128 0x40
	.long	.LASF531
	.value	0x16c
	.byte	0x2a
	.long	.LASF533
	.long	0x140f
	.uleb128 0x40
	.long	.LASF532
	.value	0x16d
	.byte	0x1e
	.long	.LASF534
	.long	0x1414
	.uleb128 0x40
	.long	.LASF535
	.value	0x16e
	.byte	0x1e
	.long	.LASF536
	.long	0x1419
	.uleb128 0x12
	.long	.LASF537
	.value	0x170
	.long	.LASF538
	.long	0x4d7
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x12
	.long	.LASF539
	.value	0x171
	.long	.LASF540
	.long	0x4ec
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x41
	.long	.LASF541
	.value	0x173
	.long	.LASF543
	.uleb128 0x41
	.long	.LASF542
	.value	0x174
	.long	.LASF544
	.uleb128 0x12
	.long	.LASF545
	.value	0x176
	.long	.LASF546
	.long	0x517
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x41
	.long	.LASF547
	.value	0x178
	.long	.LASF548
	.uleb128 0x12
	.long	.LASF549
	.value	0x17b
	.long	.LASF550
	.long	0x546
	.uleb128 0x1
	.long	0x141e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x45
	.long	.LASF551
	.value	0x17e
	.long	.LASF553
	.uleb128 0x45
	.long	.LASF552
	.value	0x17f
	.long	.LASF554
	.uleb128 0x5d
	.long	.LASF555
	.byte	0x2
	.value	0x180
	.byte	0x15
	.long	.LASF556
	.long	0x18d
	.long	0x577
	.uleb128 0x1
	.long	0x142f
	.byte	0
	.uleb128 0x19
	.long	.LASF557
	.byte	0x2
	.byte	0xa8
	.long	.LASF558
	.long	0x598
	.uleb128 0x13
	.string	"T"
	.long	0x91
	.uleb128 0x1
	.long	0x91
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x19
	.long	.LASF559
	.byte	0x2
	.byte	0x75
	.long	.LASF560
	.long	0x5b9
	.uleb128 0x13
	.string	"T"
	.long	0x91
	.uleb128 0x1
	.long	0x91
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x19
	.long	.LASF561
	.byte	0x2
	.byte	0x89
	.long	.LASF562
	.long	0x5da
	.uleb128 0x13
	.string	"T"
	.long	0x91
	.uleb128 0x1
	.long	0x91
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x46
	.long	.LASF569
	.byte	0x2
	.byte	0xc9
	.long	.LASF622
	.long	0x607
	.uleb128 0x2f
	.string	"Ts"
	.long	0x5f7
	.uleb128 0x30
	.long	0x15bf
	.byte	0
	.uleb128 0x1
	.long	0x141e
	.uleb128 0x1
	.long	0x1b5
	.uleb128 0x1
	.long	0x15bf
	.byte	0
	.uleb128 0x19
	.long	.LASF563
	.byte	0x2
	.byte	0x6c
	.long	.LASF564
	.long	0x628
	.uleb128 0x13
	.string	"T"
	.long	0x142a
	.uleb128 0x1
	.long	0x141e
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.uleb128 0x12
	.long	.LASF565
	.value	0x13f
	.long	.LASF566
	.long	0x650
	.uleb128 0x2f
	.string	"Ts"
	.long	0x645
	.uleb128 0x30
	.long	0x91
	.byte	0
	.uleb128 0x1
	.long	0x141e
	.uleb128 0x1
	.long	0x91
	.byte	0
	.uleb128 0x12
	.long	.LASF567
	.value	0x13f
	.long	.LASF568
	.long	0x669
	.uleb128 0x31
	.string	"Ts"
	.uleb128 0x1
	.long	0x141e
	.byte	0
	.uleb128 0x5e
	.long	.LASF567
	.byte	0x2
	.value	0x14f
	.byte	0x15
	.long	.LASF833
	.byte	0x1
	.uleb128 0x31
	.string	"Ts"
	.uleb128 0x1
	.long	0x141e
	.uleb128 0x1
	.long	0x1b5
	.byte	0
	.byte	0
	.uleb128 0x5f
	.long	.LASF834
	.byte	0x30
	.byte	0x8
	.byte	0x5
	.byte	0xc
	.byte	0xb
	.long	0x97a
	.uleb128 0x3e
	.long	.LASF571
	.byte	0x8
	.long	0x81
	.byte	0x5
	.byte	0xf
	.long	0x6ac
	.uleb128 0x2
	.long	.LASF572
	.byte	0x1
	.byte	0
	.uleb128 0x23
	.long	.LASF573
	.byte	0x20
	.byte	0x5
	.byte	0x14
	.long	0x77e
	.uleb128 0x6
	.long	.LASF574
	.byte	0x5
	.byte	0x16
	.byte	0x14
	.long	0x144d
	.byte	0
	.uleb128 0x6
	.long	.LASF575
	.byte	0x5
	.byte	0x17
	.byte	0x14
	.long	0x144d
	.byte	0x8
	.uleb128 0x6
	.long	.LASF576
	.byte	0x5
	.byte	0x18
	.byte	0x32
	.long	0xfb7
	.byte	0x10
	.uleb128 0x6
	.long	.LASF577
	.byte	0x5
	.byte	0x19
	.byte	0x16
	.long	0x6f
	.byte	0x18
	.uleb128 0x6
	.long	.LASF578
	.byte	0x5
	.byte	0x1a
	.byte	0x16
	.long	0x6f
	.byte	0x1c
	.uleb128 0x47
	.long	.LASF583
	.byte	0x1c
	.byte	0x12
	.long	.LASF585
	.long	0x18d
	.long	0x710
	.long	0x716
	.uleb128 0x3
	.long	0x1452
	.byte	0
	.uleb128 0x48
	.long	.LASF579
	.byte	0x1d
	.long	.LASF580
	.long	0x728
	.long	0x72e
	.uleb128 0x3
	.long	0x144d
	.byte	0
	.uleb128 0x48
	.long	.LASF581
	.byte	0x21
	.long	.LASF582
	.long	0x740
	.long	0x746
	.uleb128 0x3
	.long	0x144d
	.byte	0
	.uleb128 0x47
	.long	.LASF584
	.byte	0x26
	.byte	0x14
	.long	.LASF586
	.long	0x2e
	.long	0x75d
	.long	0x763
	.uleb128 0x3
	.long	0x144d
	.byte	0
	.uleb128 0x60
	.long	.LASF587
	.byte	0x5
	.byte	0x2b
	.byte	0x13
	.long	.LASF588
	.long	0xb4
	.long	0x777
	.uleb128 0x3
	.long	0x144d
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6ac
	.uleb128 0x1d
	.long	.LASF589
	.byte	0x32
	.byte	0x10
	.long	0x144d
	.byte	0
	.uleb128 0x1d
	.long	.LASF590
	.byte	0x33
	.byte	0xf
	.long	0xb4
	.byte	0x8
	.uleb128 0x1d
	.long	.LASF591
	.byte	0x34
	.byte	0xf
	.long	0xb4
	.byte	0x10
	.uleb128 0x1d
	.long	.LASF592
	.byte	0x35
	.byte	0x19
	.long	0x3e
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF593
	.byte	0x36
	.byte	0x19
	.long	0x3e
	.byte	0x20
	.uleb128 0x1d
	.long	.LASF594
	.byte	0x37
	.byte	0x19
	.long	0x3e
	.byte	0x28
	.uleb128 0x14
	.long	.LASF595
	.byte	0x5
	.byte	0x3a
	.byte	0xe
	.long	.LASF596
	.long	0x7df
	.long	0x7ef
	.uleb128 0x3
	.long	0x1457
	.uleb128 0x1
	.long	0xb4
	.uleb128 0x1
	.long	0xb4
	.byte	0
	.uleb128 0x8
	.long	.LASF597
	.byte	0x5
	.byte	0x50
	.byte	0xf
	.long	.LASF599
	.long	0xb4
	.long	0x807
	.long	0x812
	.uleb128 0x3
	.long	0x145c
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x8
	.long	.LASF598
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	.LASF600
	.long	0xb4
	.long	0x82a
	.long	0x83a
	.uleb128 0x3
	.long	0x145c
	.uleb128 0x1
	.long	0xb4
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x14
	.long	.LASF601
	.byte	0x5
	.byte	0x52
	.byte	0xe
	.long	.LASF602
	.long	0x84e
	.long	0x859
	.uleb128 0x3
	.long	0x145c
	.uleb128 0x1
	.long	0xb4
	.byte	0
	.uleb128 0x14
	.long	.LASF603
	.byte	0x5
	.byte	0x54
	.byte	0xe
	.long	.LASF604
	.long	0x86d
	.long	0x873
	.uleb128 0x3
	.long	0x1461
	.byte	0
	.uleb128 0x8
	.long	.LASF605
	.byte	0x5
	.byte	0x56
	.byte	0x10
	.long	.LASF606
	.long	0x2e
	.long	0x88b
	.long	0x891
	.uleb128 0x3
	.long	0x1461
	.byte	0
	.uleb128 0x8
	.long	.LASF607
	.byte	0x5
	.byte	0x57
	.byte	0x10
	.long	.LASF608
	.long	0x2e
	.long	0x8a9
	.long	0x8af
	.uleb128 0x3
	.long	0x1461
	.byte	0
	.uleb128 0x8
	.long	.LASF609
	.byte	0x5
	.byte	0x58
	.byte	0x10
	.long	.LASF610
	.long	0x2e
	.long	0x8c7
	.long	0x8cd
	.uleb128 0x3
	.long	0x1461
	.byte	0
	.uleb128 0x8
	.long	.LASF611
	.byte	0x5
	.byte	0x59
	.byte	0x10
	.long	.LASF612
	.long	0x2e
	.long	0x8e5
	.long	0x8eb
	.uleb128 0x3
	.long	0x1461
	.byte	0
	.uleb128 0x8
	.long	.LASF613
	.byte	0x5
	.byte	0x5a
	.byte	0x10
	.long	.LASF614
	.long	0x2e
	.long	0x903
	.long	0x909
	.uleb128 0x3
	.long	0x1461
	.byte	0
	.uleb128 0x8
	.long	.LASF615
	.byte	0x5
	.byte	0x5b
	.byte	0x10
	.long	.LASF616
	.long	0x2e
	.long	0x921
	.long	0x927
	.uleb128 0x3
	.long	0x1461
	.byte	0
	.uleb128 0x8
	.long	.LASF617
	.byte	0x5
	.byte	0x5c
	.byte	0x10
	.long	.LASF618
	.long	0x2e
	.long	0x93f
	.long	0x945
	.uleb128 0x3
	.long	0x1461
	.byte	0
	.uleb128 0x8
	.long	.LASF619
	.byte	0x5
	.byte	0x5d
	.byte	0x10
	.long	.LASF620
	.long	0x2e
	.long	0x95d
	.long	0x963
	.uleb128 0x3
	.long	0x1461
	.byte	0
	.uleb128 0x61
	.long	.LASF621
	.byte	0x5
	.byte	0x60
	.byte	0x17
	.long	.LASF623
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x687
	.uleb128 0xc
	.long	0x687
	.uleb128 0x62
	.long	.LASF835
	.byte	0x1
	.byte	0x6
	.byte	0xc
	.byte	0xb
	.uleb128 0x32
	.long	.LASF644
	.byte	0x8
	.byte	0xf
	.long	0x9b3
	.uleb128 0x6
	.long	.LASF611
	.byte	0x6
	.byte	0x11
	.byte	0x16
	.long	0x6f
	.byte	0
	.uleb128 0x6
	.long	.LASF624
	.byte	0x6
	.byte	0x12
	.byte	0x16
	.long	0x6f
	.byte	0x4
	.byte	0
	.uleb128 0x49
	.long	.LASF650
	.long	0x6f
	.byte	0x16
	.long	0xa46
	.uleb128 0x25
	.string	"End"
	.byte	0
	.uleb128 0x2
	.long	.LASF625
	.byte	0x1
	.uleb128 0x2
	.long	.LASF626
	.byte	0x2
	.uleb128 0x2
	.long	.LASF627
	.byte	0x3
	.uleb128 0x2
	.long	.LASF628
	.byte	0x4
	.uleb128 0x2
	.long	.LASF629
	.byte	0x5
	.uleb128 0x2
	.long	.LASF630
	.byte	0x6
	.uleb128 0x25
	.string	"Vbe"
	.byte	0x7
	.uleb128 0x2
	.long	.LASF631
	.byte	0x8
	.uleb128 0x2
	.long	.LASF632
	.byte	0x9
	.uleb128 0x2
	.long	.LASF633
	.byte	0xa
	.uleb128 0x2
	.long	.LASF634
	.byte	0xb
	.uleb128 0x2
	.long	.LASF635
	.byte	0xc
	.uleb128 0x2
	.long	.LASF636
	.byte	0xd
	.uleb128 0x2
	.long	.LASF637
	.byte	0xe
	.uleb128 0x2
	.long	.LASF638
	.byte	0xf
	.uleb128 0x2
	.long	.LASF639
	.byte	0x10
	.uleb128 0x2
	.long	.LASF640
	.byte	0x11
	.uleb128 0x2
	.long	.LASF641
	.byte	0x12
	.uleb128 0x2
	.long	.LASF642
	.byte	0x13
	.uleb128 0x2
	.long	.LASF643
	.byte	0x14
	.uleb128 0x25
	.string	"Num"
	.byte	0x15
	.byte	0
	.uleb128 0x32
	.long	.LASF645
	.byte	0x8
	.byte	0x30
	.long	0xa6c
	.uleb128 0x6
	.long	.LASF646
	.byte	0x6
	.byte	0x32
	.byte	0x15
	.long	0x9b3
	.byte	0
	.uleb128 0x6
	.long	.LASF584
	.byte	0x6
	.byte	0x33
	.byte	0x16
	.long	0x6f
	.byte	0x4
	.byte	0
	.uleb128 0x32
	.long	.LASF647
	.byte	0x10
	.byte	0x36
	.long	0xa9f
	.uleb128 0x2e
	.string	"tag"
	.byte	0x6
	.byte	0x38
	.byte	0x1a
	.long	0xa46
	.byte	0
	.uleb128 0x6
	.long	.LASF648
	.byte	0x6
	.byte	0x39
	.byte	0x16
	.long	0x6f
	.byte	0x8
	.uleb128 0x6
	.long	.LASF649
	.byte	0x6
	.byte	0x3a
	.byte	0x16
	.long	0x6f
	.byte	0xc
	.byte	0
	.uleb128 0x49
	.long	.LASF651
	.long	0x6f
	.byte	0x3d
	.long	0xad2
	.uleb128 0x2
	.long	.LASF652
	.byte	0x1
	.uleb128 0x2
	.long	.LASF653
	.byte	0x2
	.uleb128 0x2
	.long	.LASF654
	.byte	0x3
	.uleb128 0x25
	.string	"Nvs"
	.byte	0x4
	.uleb128 0x2
	.long	.LASF655
	.byte	0x5
	.uleb128 0x25
	.string	"Num"
	.byte	0x6
	.byte	0
	.uleb128 0x32
	.long	.LASF656
	.byte	0x18
	.byte	0x47
	.long	0xb12
	.uleb128 0x6
	.long	.LASF657
	.byte	0x6
	.byte	0x49
	.byte	0x16
	.long	0x81
	.byte	0
	.uleb128 0x2e
	.string	"len"
	.byte	0x6
	.byte	0x4a
	.byte	0x16
	.long	0x81
	.byte	0x8
	.uleb128 0x6
	.long	.LASF646
	.byte	0x6
	.byte	0x4b
	.byte	0x21
	.long	0xa9f
	.byte	0x10
	.uleb128 0x6
	.long	.LASF658
	.byte	0x6
	.byte	0x4c
	.byte	0x16
	.long	0x6f
	.byte	0x14
	.byte	0
	.uleb128 0x23
	.long	.LASF659
	.byte	0x70
	.byte	0x6
	.byte	0x50
	.long	0xbd5
	.uleb128 0x6
	.long	.LASF660
	.byte	0x6
	.byte	0x52
	.byte	0x16
	.long	0x81
	.byte	0
	.uleb128 0x6
	.long	.LASF661
	.byte	0x6
	.byte	0x53
	.byte	0x16
	.long	0x81
	.byte	0x8
	.uleb128 0x6
	.long	.LASF662
	.byte	0x6
	.byte	0x55
	.byte	0x16
	.long	0x81
	.byte	0x10
	.uleb128 0x6
	.long	.LASF663
	.byte	0x6
	.byte	0x56
	.byte	0x16
	.long	0x81
	.byte	0x18
	.uleb128 0x6
	.long	.LASF664
	.byte	0x6
	.byte	0x58
	.byte	0x16
	.long	0x81
	.byte	0x20
	.uleb128 0x6
	.long	.LASF665
	.byte	0x6
	.byte	0x59
	.byte	0x16
	.long	0x81
	.byte	0x28
	.uleb128 0x6
	.long	.LASF666
	.byte	0x6
	.byte	0x5b
	.byte	0x16
	.long	0x81
	.byte	0x30
	.uleb128 0x6
	.long	.LASF667
	.byte	0x6
	.byte	0x5c
	.byte	0x16
	.long	0x81
	.byte	0x38
	.uleb128 0x6
	.long	.LASF668
	.byte	0x6
	.byte	0x5e
	.byte	0x16
	.long	0x81
	.byte	0x40
	.uleb128 0x6
	.long	.LASF669
	.byte	0x6
	.byte	0x5f
	.byte	0x16
	.long	0x81
	.byte	0x48
	.uleb128 0x6
	.long	.LASF670
	.byte	0x6
	.byte	0x61
	.byte	0x16
	.long	0x81
	.byte	0x50
	.uleb128 0x6
	.long	.LASF671
	.byte	0x6
	.byte	0x62
	.byte	0x16
	.long	0x81
	.byte	0x58
	.uleb128 0x6
	.long	.LASF672
	.byte	0x6
	.byte	0x64
	.byte	0x16
	.long	0x81
	.byte	0x60
	.uleb128 0x6
	.long	.LASF673
	.byte	0x6
	.byte	0x65
	.byte	0x16
	.long	0x81
	.byte	0x68
	.byte	0
	.uleb128 0xc
	.long	0xb12
	.uleb128 0x3e
	.long	.LASF674
	.byte	0x8
	.long	0x81
	.byte	0x6
	.byte	0x68
	.long	0xc41
	.uleb128 0x2
	.long	.LASF675
	.byte	0x1
	.uleb128 0x2
	.long	.LASF676
	.byte	0x2
	.uleb128 0x2
	.long	.LASF677
	.byte	0x4
	.uleb128 0x2
	.long	.LASF678
	.byte	0x8
	.uleb128 0x2
	.long	.LASF679
	.byte	0x10
	.uleb128 0x2
	.long	.LASF680
	.byte	0x20
	.uleb128 0x2
	.long	.LASF681
	.byte	0x40
	.uleb128 0x2
	.long	.LASF682
	.byte	0x80
	.uleb128 0x63
	.long	.LASF683
	.value	0x100
	.uleb128 0x64
	.long	.LASF684
	.quad	0x8000000000000000
	.uleb128 0x2
	.long	.LASF463
	.byte	0x3
	.uleb128 0x2
	.long	.LASF685
	.byte	0x7
	.uleb128 0x2
	.long	.LASF686
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.long	.LASF687
	.byte	0x7b
	.byte	0x1c
	.long	.LASF689
	.long	0x14fd
	.uleb128 0x1a
	.long	.LASF688
	.byte	0x7c
	.byte	0x1c
	.long	.LASF690
	.long	0x150d
	.uleb128 0x65
	.long	.LASF692
	.byte	0x6
	.byte	0x7d
	.byte	0x26
	.long	.LASF694
	.long	0x8c
	.byte	0x1
	.byte	0x3
	.uleb128 0x66
	.long	.LASF695
	.byte	0x6
	.byte	0x7e
	.byte	0x26
	.long	.LASF696
	.long	0x8c
	.value	0x400
	.byte	0x3
	.uleb128 0x4a
	.long	.LASF697
	.byte	0x7f
	.long	.LASF698
	.long	0x8c
	.long	0x100000
	.uleb128 0x4a
	.long	.LASF699
	.byte	0x80
	.long	.LASF700
	.long	0x8c
	.long	0x40000000
	.uleb128 0x3f
	.long	.LASF701
	.byte	0x6
	.byte	0x81
	.byte	0x26
	.long	.LASF702
	.long	0x8c
	.quad	0x10000000000
	.uleb128 0x3f
	.long	.LASF703
	.byte	0x6
	.byte	0x82
	.byte	0x26
	.long	.LASF704
	.long	0x8c
	.quad	0xffff800000000000
	.uleb128 0x1a
	.long	.LASF705
	.byte	0x84
	.byte	0x29
	.long	.LASF706
	.long	0xbd5
	.uleb128 0x1a
	.long	.LASF707
	.byte	0x86
	.byte	0x21
	.long	.LASF708
	.long	0x151d
	.uleb128 0x1a
	.long	.LASF709
	.byte	0x87
	.byte	0x22
	.long	.LASF710
	.long	0x1522
	.uleb128 0x1a
	.long	.LASF711
	.byte	0x88
	.byte	0x19
	.long	.LASF712
	.long	0x81
	.uleb128 0x1a
	.long	.LASF713
	.byte	0x8d
	.byte	0x25
	.long	.LASF714
	.long	0x1527
	.uleb128 0x1a
	.long	.LASF715
	.byte	0x8e
	.byte	0x19
	.long	.LASF716
	.long	0x81
	.uleb128 0x19
	.long	.LASF717
	.byte	0x6
	.byte	0x91
	.long	.LASF718
	.long	0xd4c
	.uleb128 0x1
	.long	0x81
	.uleb128 0x1
	.long	0x1531
	.byte	0
	.uleb128 0x19
	.long	.LASF719
	.byte	0x6
	.byte	0xa8
	.long	.LASF720
	.long	0xd6b
	.uleb128 0x1
	.long	0x1536
	.uleb128 0x1
	.long	0x1536
	.uleb128 0x1
	.long	0x6f
	.byte	0
	.uleb128 0x46
	.long	.LASF721
	.byte	0x6
	.byte	0xab
	.long	.LASF722
	.long	0xd80
	.uleb128 0x1
	.long	0x1531
	.byte	0
	.uleb128 0x67
	.long	.LASF723
	.byte	0x6
	.byte	0xad
	.byte	0x15
	.long	.LASF836
	.long	0x18d
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2d3
	.long	0xda8
	.uleb128 0x1e
	.long	0x43
	.byte	0x18
	.uleb128 0x1e
	.long	0x43
	.byte	0x4f
	.byte	0
	.uleb128 0xe
	.long	0xd92
	.uleb128 0x43
	.long	.LASF724
	.byte	0x7
	.byte	0x1b
	.long	0x1158
	.uleb128 0x3d
	.long	.LASF726
	.byte	0xa0
	.byte	0x8
	.byte	0xa
	.long	0xfb2
	.uleb128 0x6
	.long	.LASF727
	.byte	0x8
	.byte	0xe
	.byte	0xb
	.long	0x1158
	.byte	0
	.uleb128 0x1f
	.long	.LASF728
	.byte	0x8
	.byte	0x11
	.long	.LASF729
	.long	0xde4
	.long	0xdea
	.uleb128 0x3
	.long	0x1168
	.byte	0
	.uleb128 0x1f
	.long	.LASF728
	.byte	0x8
	.byte	0x13
	.long	.LASF730
	.long	0xdfd
	.long	0xe08
	.uleb128 0x3
	.long	0x1168
	.uleb128 0x1
	.long	0x116d
	.byte	0
	.uleb128 0x1f
	.long	.LASF728
	.byte	0x8
	.byte	0x14
	.long	.LASF731
	.long	0xe1b
	.long	0xe26
	.uleb128 0x3
	.long	0x1168
	.uleb128 0x1
	.long	0x1172
	.byte	0
	.uleb128 0x33
	.long	.LASF732
	.byte	0x8
	.byte	0x16
	.byte	0x10
	.long	.LASF733
	.long	0x1177
	.long	0xe3e
	.long	0xe49
	.uleb128 0x3
	.long	0x1168
	.uleb128 0x1
	.long	0x116d
	.byte	0
	.uleb128 0x33
	.long	.LASF732
	.byte	0x8
	.byte	0x17
	.byte	0x10
	.long	.LASF734
	.long	0x1177
	.long	0xe61
	.long	0xe6c
	.uleb128 0x3
	.long	0x1168
	.uleb128 0x1
	.long	0x1172
	.byte	0
	.uleb128 0x8
	.long	.LASF584
	.byte	0x8
	.byte	0x19
	.byte	0x1a
	.long	.LASF735
	.long	0x2e
	.long	0xe84
	.long	0xe8a
	.uleb128 0x3
	.long	0x117c
	.byte	0
	.uleb128 0x8
	.long	.LASF736
	.byte	0x8
	.byte	0x1a
	.byte	0x18
	.long	.LASF737
	.long	0x18d
	.long	0xea2
	.long	0xea8
	.uleb128 0x3
	.long	0x117c
	.byte	0
	.uleb128 0x8
	.long	.LASF738
	.byte	0x8
	.byte	0x1c
	.byte	0xc
	.long	.LASF739
	.long	0x1181
	.long	0xec0
	.long	0xecb
	.uleb128 0x3
	.long	0x1168
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x8
	.long	.LASF587
	.byte	0x8
	.byte	0x1d
	.byte	0xc
	.long	.LASF740
	.long	0x1186
	.long	0xee3
	.long	0xee9
	.uleb128 0x3
	.long	0x1168
	.byte	0
	.uleb128 0x8
	.long	.LASF741
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	.LASF742
	.long	0x1186
	.long	0xf01
	.long	0xf07
	.uleb128 0x3
	.long	0x1168
	.byte	0
	.uleb128 0x34
	.string	"end"
	.byte	0x8
	.byte	0x1f
	.byte	0xc
	.long	.LASF746
	.long	0x1186
	.long	0xf1f
	.long	0xf25
	.uleb128 0x3
	.long	0x1168
	.byte	0
	.uleb128 0x8
	.long	.LASF738
	.byte	0x8
	.byte	0x21
	.byte	0x12
	.long	.LASF743
	.long	0x118b
	.long	0xf3d
	.long	0xf48
	.uleb128 0x3
	.long	0x117c
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x8
	.long	.LASF587
	.byte	0x8
	.byte	0x22
	.byte	0x12
	.long	.LASF744
	.long	0x1190
	.long	0xf60
	.long	0xf66
	.uleb128 0x3
	.long	0x117c
	.byte	0
	.uleb128 0x8
	.long	.LASF741
	.byte	0x8
	.byte	0x23
	.byte	0x12
	.long	.LASF745
	.long	0x1190
	.long	0xf7e
	.long	0xf84
	.uleb128 0x3
	.long	0x117c
	.byte	0
	.uleb128 0x34
	.string	"end"
	.byte	0x8
	.byte	0x24
	.byte	0x12
	.long	.LASF747
	.long	0x1190
	.long	0xf9c
	.long	0xfa2
	.uleb128 0x3
	.long	0x117c
	.byte	0
	.uleb128 0x13
	.string	"T"
	.long	0x2d3
	.uleb128 0x68
	.string	"N"
	.long	0x43
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.long	0xdb8
	.uleb128 0x3d
	.long	.LASF748
	.byte	0x8
	.byte	0x7
	.byte	0x1e
	.long	0x1152
	.uleb128 0x6
	.long	.LASF749
	.byte	0x7
	.byte	0x21
	.byte	0xb
	.long	0x91
	.byte	0
	.uleb128 0x14
	.long	.LASF750
	.byte	0x7
	.byte	0x24
	.byte	0x9
	.long	.LASF751
	.long	0xfe4
	.long	0xfea
	.uleb128 0x3
	.long	0x1434
	.byte	0
	.uleb128 0x1f
	.long	.LASF752
	.byte	0x7
	.byte	0x25
	.long	.LASF753
	.long	0xffd
	.long	0x1008
	.uleb128 0x3
	.long	0x1434
	.uleb128 0x3
	.long	0xa6
	.byte	0
	.uleb128 0x14
	.long	.LASF750
	.byte	0x7
	.byte	0x26
	.byte	0x9
	.long	.LASF754
	.long	0x101c
	.long	0x1027
	.uleb128 0x3
	.long	0x1434
	.uleb128 0x1
	.long	0x91
	.byte	0
	.uleb128 0x1f
	.long	.LASF750
	.byte	0x7
	.byte	0x28
	.long	.LASF755
	.long	0x103a
	.long	0x1045
	.uleb128 0x3
	.long	0x1434
	.uleb128 0x1
	.long	0x1439
	.byte	0
	.uleb128 0x33
	.long	.LASF732
	.byte	0x7
	.byte	0x29
	.byte	0x12
	.long	.LASF756
	.long	0x143e
	.long	0x105d
	.long	0x1068
	.uleb128 0x3
	.long	0x1434
	.uleb128 0x1
	.long	0x1439
	.byte	0
	.uleb128 0x1f
	.long	.LASF750
	.byte	0x7
	.byte	0x2a
	.long	.LASF757
	.long	0x107b
	.long	0x1086
	.uleb128 0x3
	.long	0x1434
	.uleb128 0x1
	.long	0x1443
	.byte	0
	.uleb128 0x33
	.long	.LASF732
	.byte	0x7
	.byte	0x2b
	.byte	0x12
	.long	.LASF758
	.long	0x143e
	.long	0x109e
	.long	0x10a9
	.uleb128 0x3
	.long	0x1434
	.uleb128 0x1
	.long	0x1443
	.byte	0
	.uleb128 0x4b
	.string	"set"
	.byte	0x2d
	.long	.LASF761
	.long	0x10bb
	.long	0x10c6
	.uleb128 0x3
	.long	0x1434
	.uleb128 0x1
	.long	0x695
	.byte	0
	.uleb128 0x14
	.long	.LASF521
	.byte	0x7
	.byte	0x31
	.byte	0xe
	.long	.LASF759
	.long	0x10da
	.long	0x10e5
	.uleb128 0x3
	.long	0x1434
	.uleb128 0x1
	.long	0x695
	.byte	0
	.uleb128 0x34
	.string	"get"
	.byte	0x7
	.byte	0x35
	.byte	0xe
	.long	.LASF760
	.long	0x18d
	.long	0x10fd
	.long	0x1108
	.uleb128 0x3
	.long	0x1448
	.uleb128 0x1
	.long	0x695
	.byte	0
	.uleb128 0x4b
	.string	"set"
	.byte	0x39
	.long	.LASF762
	.long	0x111a
	.long	0x1125
	.uleb128 0x3
	.long	0x1434
	.uleb128 0x1
	.long	0x91
	.byte	0
	.uleb128 0x34
	.string	"get"
	.byte	0x7
	.byte	0x3d
	.byte	0xb
	.long	.LASF763
	.long	0x91
	.long	0x113d
	.long	0x1143
	.uleb128 0x3
	.long	0x1448
	.byte	0
	.uleb128 0x13
	.string	"E"
	.long	0x695
	.uleb128 0x13
	.string	"T"
	.long	0x91
	.byte	0
	.uleb128 0xc
	.long	0xfb7
	.byte	0
	.uleb128 0x1c
	.long	0x2d3
	.long	0x1168
	.uleb128 0x1e
	.long	0x43
	.byte	0x4f
	.byte	0
	.uleb128 0xa
	.long	0xdb8
	.uleb128 0xe
	.long	0xfb2
	.uleb128 0x4c
	.long	0xdb8
	.uleb128 0xe
	.long	0xdb8
	.uleb128 0xa
	.long	0xfb2
	.uleb128 0xe
	.long	0x2d3
	.uleb128 0xa
	.long	0x2d3
	.uleb128 0xe
	.long	0x2fa
	.uleb128 0xa
	.long	0x2fa
	.uleb128 0x69
	.long	.LASF764
	.long	0x50010
	.byte	0x3
	.byte	0x7f
	.byte	0x7
	.long	0x139f
	.uleb128 0x6
	.long	.LASF727
	.byte	0x3
	.byte	0x82
	.byte	0x7
	.long	0x13a4
	.byte	0
	.uleb128 0x4d
	.long	.LASF765
	.byte	0x83
	.long	0x3e
	.long	0x50000
	.uleb128 0x4d
	.long	.LASF589
	.byte	0x84
	.long	0x3e
	.long	0x50008
	.uleb128 0x14
	.long	.LASF766
	.byte	0x3
	.byte	0x87
	.byte	0x5
	.long	.LASF767
	.long	0x11e2
	.long	0x11e8
	.uleb128 0x3
	.long	0x13b5
	.byte	0
	.uleb128 0x14
	.long	.LASF768
	.byte	0x3
	.byte	0x8d
	.byte	0xa
	.long	.LASF769
	.long	0x11fc
	.long	0x1207
	.uleb128 0x3
	.long	0x13b5
	.uleb128 0x1
	.long	0x116d
	.byte	0
	.uleb128 0x14
	.long	.LASF770
	.byte	0x3
	.byte	0x97
	.byte	0xa
	.long	.LASF771
	.long	0x121b
	.long	0x1221
	.uleb128 0x3
	.long	0x13b5
	.byte	0
	.uleb128 0x14
	.long	.LASF772
	.byte	0x3
	.byte	0xa4
	.byte	0xa
	.long	.LASF773
	.long	0x1235
	.long	0x1240
	.uleb128 0x3
	.long	0x13b5
	.uleb128 0x1
	.long	0x116d
	.byte	0
	.uleb128 0x14
	.long	.LASF774
	.byte	0x3
	.byte	0xbc
	.byte	0xa
	.long	.LASF775
	.long	0x1254
	.long	0x125a
	.uleb128 0x3
	.long	0x13b5
	.byte	0
	.uleb128 0x8
	.long	.LASF738
	.byte	0x3
	.byte	0xc3
	.byte	0x8
	.long	.LASF776
	.long	0x1177
	.long	0x1272
	.long	0x127d
	.uleb128 0x3
	.long	0x13b5
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x8
	.long	.LASF777
	.byte	0x3
	.byte	0xc8
	.byte	0x8
	.long	.LASF778
	.long	0x1177
	.long	0x1295
	.long	0x129b
	.uleb128 0x3
	.long	0x13b5
	.byte	0
	.uleb128 0x8
	.long	.LASF779
	.byte	0x3
	.byte	0xcd
	.byte	0x8
	.long	.LASF780
	.long	0x1177
	.long	0x12b3
	.long	0x12b9
	.uleb128 0x3
	.long	0x13b5
	.byte	0
	.uleb128 0x8
	.long	.LASF738
	.byte	0x3
	.byte	0xd2
	.byte	0xe
	.long	.LASF781
	.long	0x116d
	.long	0x12d1
	.long	0x12dc
	.uleb128 0x3
	.long	0x13bf
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x8
	.long	.LASF777
	.byte	0x3
	.byte	0xd7
	.byte	0xe
	.long	.LASF782
	.long	0x116d
	.long	0x12f4
	.long	0x12fa
	.uleb128 0x3
	.long	0x13bf
	.byte	0
	.uleb128 0x8
	.long	.LASF779
	.byte	0x3
	.byte	0xdc
	.byte	0xe
	.long	.LASF783
	.long	0x116d
	.long	0x1312
	.long	0x1318
	.uleb128 0x3
	.long	0x13bf
	.byte	0
	.uleb128 0x8
	.long	.LASF584
	.byte	0x3
	.byte	0xe1
	.byte	0xc
	.long	.LASF784
	.long	0x2e
	.long	0x1330
	.long	0x1336
	.uleb128 0x3
	.long	0x13bf
	.byte	0
	.uleb128 0x8
	.long	.LASF785
	.byte	0x3
	.byte	0xe6
	.byte	0xc
	.long	.LASF786
	.long	0x2e
	.long	0x134e
	.long	0x1354
	.uleb128 0x3
	.long	0x13bf
	.byte	0
	.uleb128 0x8
	.long	.LASF736
	.byte	0x3
	.byte	0xeb
	.byte	0xa
	.long	.LASF787
	.long	0x18d
	.long	0x136c
	.long	0x1372
	.uleb128 0x3
	.long	0x13bf
	.byte	0
	.uleb128 0x14
	.long	.LASF521
	.byte	0x3
	.byte	0xf0
	.byte	0xa
	.long	.LASF788
	.long	0x1386
	.long	0x138c
	.uleb128 0x3
	.long	0x13b5
	.byte	0
	.uleb128 0x13
	.string	"T"
	.long	0xdb8
	.uleb128 0x6a
	.long	.LASF789
	.long	0x43
	.value	0x800
	.byte	0
	.uleb128 0xc
	.long	0x1195
	.uleb128 0x1c
	.long	0xdb8
	.long	0x13b5
	.uleb128 0x6b
	.long	0x43
	.value	0x7ff
	.byte	0
	.uleb128 0xa
	.long	0x1195
	.uleb128 0xc
	.long	0x13b5
	.uleb128 0xa
	.long	0x139f
	.uleb128 0x26
	.long	0x349
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.uleb128 0x26
	.long	0x368
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console11s_cursorPosE
	.uleb128 0x26
	.long	0x377
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_displayLineE
	.uleb128 0x26
	.long	0x386
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console15s_cursorEnabledE
	.uleb128 0x26
	.long	0x395
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_shouldFlushE
	.uleb128 0xe
	.long	0x2a2
	.uleb128 0xe
	.long	0x2ce
	.uleb128 0xe
	.long	0x39
	.uleb128 0xa
	.long	0x142a
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.long	.LASF790
	.uleb128 0xc
	.long	0x1423
	.uleb128 0xe
	.long	0x29d
	.uleb128 0xa
	.long	0xfb7
	.uleb128 0xe
	.long	0x1152
	.uleb128 0xe
	.long	0xfb7
	.uleb128 0x4c
	.long	0xfb7
	.uleb128 0xa
	.long	0x1152
	.uleb128 0xa
	.long	0x6ac
	.uleb128 0xa
	.long	0x77e
	.uleb128 0xa
	.long	0x97a
	.uleb128 0xa
	.long	0x687
	.uleb128 0xa
	.long	0x97f
	.uleb128 0x1c
	.long	0x56
	.long	0x1471
	.uleb128 0x6c
	.byte	0
	.uleb128 0xf
	.long	.LASF791
	.byte	0xd
	.long	0x1466
	.uleb128 0xf
	.long	.LASF792
	.byte	0xe
	.long	0x1466
	.uleb128 0xf
	.long	.LASF793
	.byte	0x10
	.long	0x1466
	.uleb128 0xf
	.long	.LASF794
	.byte	0x11
	.long	0x1466
	.uleb128 0xf
	.long	.LASF795
	.byte	0x13
	.long	0x1466
	.uleb128 0xf
	.long	.LASF796
	.byte	0x14
	.long	0x1466
	.uleb128 0xf
	.long	.LASF797
	.byte	0x16
	.long	0x1466
	.uleb128 0xf
	.long	.LASF798
	.byte	0x17
	.long	0x1466
	.uleb128 0xf
	.long	.LASF799
	.byte	0x19
	.long	0x1466
	.uleb128 0xf
	.long	.LASF800
	.byte	0x1a
	.long	0x1466
	.uleb128 0xf
	.long	.LASF801
	.byte	0x1c
	.long	0x1466
	.uleb128 0xf
	.long	.LASF802
	.byte	0x1d
	.long	0x1466
	.uleb128 0xf
	.long	.LASF803
	.byte	0x1f
	.long	0x1466
	.uleb128 0xf
	.long	.LASF804
	.byte	0x20
	.long	0x1466
	.uleb128 0x1c
	.long	0x141e
	.long	0x150d
	.uleb128 0x1e
	.long	0x43
	.byte	0x14
	.byte	0
	.uleb128 0x1c
	.long	0x141e
	.long	0x151d
	.uleb128 0x1e
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x98d
	.uleb128 0xa
	.long	0xa6c
	.uleb128 0xa
	.long	0x152c
	.uleb128 0xa
	.long	0xad2
	.uleb128 0xe
	.long	0x687
	.uleb128 0xa
	.long	0x81
	.uleb128 0x35
	.long	0xc41
	.byte	0x5
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap19s_multibootTagNamesE
	.uleb128 0x35
	.long	0xc50
	.byte	0x1d
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE
	.uleb128 0x36
	.long	0xcd8
	.byte	0x25
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE
	.uleb128 0x36
	.long	0xce7
	.byte	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap17s_multibootHeaderE
	.uleb128 0x36
	.long	0xcf6
	.byte	0x3c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap18s_multibootMmapTagE
	.uleb128 0x35
	.long	0xd05
	.byte	0x3d
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap18s_kernelEndDynamicE
	.uleb128 0x36
	.long	0xd14
	.byte	0x41
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap24s_availibleRegionEntriesE
	.uleb128 0x35
	.long	0xd23
	.byte	0x42
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap22s_availibleRegionCountE
	.uleb128 0xe
	.long	0x91
	.uleb128 0xb
	.long	0xc2
	.uleb128 0xb
	.long	0xcf
	.uleb128 0xb
	.long	0xdb
	.uleb128 0xb
	.long	0xe7
	.uleb128 0xb
	.long	0xf3
	.uleb128 0xb
	.long	0xfc
	.uleb128 0xb
	.long	0x108
	.uleb128 0xb
	.long	0x111
	.uleb128 0xb
	.long	0x11d
	.uleb128 0xb
	.long	0x129
	.uleb128 0xb
	.long	0x135
	.uleb128 0xb
	.long	0x13e
	.uleb128 0xb
	.long	0x14a
	.uleb128 0xb
	.long	0x156
	.uleb128 0xb
	.long	0x15f
	.uleb128 0xb
	.long	0x16b
	.uleb128 0xb
	.long	0x177
	.uleb128 0xb
	.long	0x180
	.uleb128 0x4e
	.long	.LASF805
	.byte	0x9
	.byte	0x24
	.long	0x162f
	.uleb128 0x1
	.long	0x1536
	.byte	0
	.uleb128 0x4e
	.long	.LASF806
	.byte	0x7
	.byte	0x10
	.long	0x1654
	.uleb128 0x1
	.long	0x6f
	.uleb128 0x1
	.long	0x1654
	.uleb128 0x1
	.long	0x1654
	.uleb128 0x1
	.long	0x1654
	.uleb128 0x1
	.long	0x1654
	.byte	0
	.uleb128 0xa
	.long	0x6f
	.uleb128 0x6d
	.long	.LASF837
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x16c6
	.uleb128 0x4f
	.long	0x16c6
	.quad	.LBI144
	.byte	.LVU448
	.quad	.LBB144
	.quad	.LBE144-.LBB144
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.uleb128 0x4f
	.long	0x1d3c
	.quad	.LBI146
	.byte	.LVU451
	.quad	.LBB146
	.quad	.LBE146-.LBB146
	.byte	0x2
	.byte	0x48
	.byte	0x67
	.uleb128 0x4
	.long	0x1d4a
	.long	.LLST98
	.long	.LVUS98
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6e
	.long	.LASF838
	.byte	0x1
	.uleb128 0x1b
	.long	0x577
	.long	0x1712
	.uleb128 0x13
	.string	"T"
	.long	0x91
	.uleb128 0x27
	.string	"val"
	.byte	0xa8
	.byte	0x21
	.long	0x91
	.uleb128 0x28
	.long	.LASF500
	.byte	0xa8
	.byte	0x31
	.long	0x1b5
	.uleb128 0x20
	.long	.LASF807
	.byte	0xab
	.byte	0x18
	.long	0x4a
	.uleb128 0x37
	.string	"i"
	.byte	0xac
	.byte	0x14
	.long	0x2e
	.uleb128 0x20
	.long	.LASF808
	.byte	0xad
	.byte	0x14
	.long	0x2e
	.byte	0
	.uleb128 0x1b
	.long	0x598
	.long	0x1758
	.uleb128 0x13
	.string	"T"
	.long	0x91
	.uleb128 0x27
	.string	"val"
	.byte	0x75
	.byte	0x21
	.long	0x91
	.uleb128 0x28
	.long	.LASF500
	.byte	0x75
	.byte	0x31
	.long	0x1b5
	.uleb128 0x20
	.long	.LASF807
	.byte	0x78
	.byte	0x18
	.long	0x4a
	.uleb128 0x37
	.string	"i"
	.byte	0x79
	.byte	0x14
	.long	0x2e
	.uleb128 0x20
	.long	.LASF808
	.byte	0x7a
	.byte	0x14
	.long	0x2e
	.byte	0
	.uleb128 0x1b
	.long	0x5b9
	.long	0x17a0
	.uleb128 0x13
	.string	"T"
	.long	0x91
	.uleb128 0x27
	.string	"val"
	.byte	0x89
	.byte	0x21
	.long	0x91
	.uleb128 0x28
	.long	.LASF500
	.byte	0x89
	.byte	0x31
	.long	0x1b5
	.uleb128 0x20
	.long	.LASF809
	.byte	0x8b
	.byte	0x12
	.long	0x17a0
	.uleb128 0x20
	.long	.LASF810
	.byte	0x9a
	.byte	0x14
	.long	0x2e
	.uleb128 0x50
	.uleb128 0x37
	.string	"i"
	.byte	0xa3
	.byte	0x19
	.long	0x2e
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x1423
	.long	0x17b0
	.uleb128 0x1e
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x1b
	.long	0x5da
	.long	0x1c84
	.uleb128 0x2f
	.string	"Ts"
	.long	0x17c7
	.uleb128 0x30
	.long	0x15bf
	.byte	0
	.uleb128 0x27
	.string	"str"
	.byte	0xc9
	.byte	0x2b
	.long	0x141e
	.uleb128 0x28
	.long	.LASF500
	.byte	0xc9
	.byte	0x3b
	.long	0x1b5
	.uleb128 0x6f
	.byte	0x2
	.byte	0xc9
	.byte	0x46
	.long	0x17eb
	.uleb128 0x1
	.long	0x15bf
	.byte	0
	.uleb128 0x70
	.byte	0x10
	.byte	0x2
	.byte	0xcb
	.byte	0xe
	.uleb128 0x71
	.long	.LASF811
	.long	.LASF839
	.long	0x1801
	.long	0x1811
	.uleb128 0x3
	.long	0x1806
	.uleb128 0xa
	.long	0x17eb
	.uleb128 0x3
	.long	0xa6
	.byte	0
	.uleb128 0x6
	.long	.LASF812
	.byte	0x2
	.byte	0xce
	.byte	0x18
	.long	0x1c84
	.byte	0
	.uleb128 0x6
	.long	.LASF813
	.byte	0x2
	.byte	0xd7
	.byte	0x30
	.long	0x1c89
	.byte	0x8
	.uleb128 0x72
	.long	.LASF814
	.long	.LASF840
	.long	0x1861
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x51
	.long	.LASF815
	.long	0x15bf
	.uleb128 0xc
	.long	0x17eb
	.uleb128 0x51
	.long	.LASF815
	.long	0x15bf
	.uleb128 0x73
	.long	.LASF816
	.long	0x1872
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xc
	.long	0x1c8e
	.uleb128 0x74
	.string	"val"
	.byte	0x2
	.byte	0xcb
	.byte	0x19
	.long	0x15bf
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x75
	.long	.LASF500
	.long	0x1c89
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x76
	.string	"str"
	.long	0x1c84
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x38
	.long	.LLRL13
	.uleb128 0x16
	.long	0x1758
	.quad	.LBI28
	.byte	.LVU54
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x2
	.byte	0xd7
	.byte	0x2a
	.long	0x195d
	.uleb128 0x4
	.long	0x1773
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x4
	.long	0x1768
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x52
	.long	0x177e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.long	0x1789
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x53
	.long	0x1794
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x1942
	.uleb128 0xd
	.long	0x1795
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x9
	.quad	.LVL24
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL26
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x54
	.long	0x1712
	.quad	.LBI31
	.byte	.LVU75
	.long	.LLRL18
	.byte	0xe2
	.long	0x1a42
	.uleb128 0x4
	.long	0x172d
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x4
	.long	0x1722
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x38
	.long	.LLRL18
	.uleb128 0x39
	.long	0x1738
	.uleb128 0xd
	.long	0x1743
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x39
	.long	0x174c
	.uleb128 0x16
	.long	0x1c93
	.quad	.LBI33
	.byte	.LVU76
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0x2
	.byte	0x77
	.byte	0x16
	.long	0x1a21
	.uleb128 0x4
	.long	0x1cae
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x4
	.long	0x1ca3
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x17
	.long	0x1cb9
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0xd
	.long	0x1cba
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x9
	.quad	.LVL30
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL37
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x7
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x25
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x54
	.long	0x16cc
	.quad	.LBI36
	.byte	.LVU102
	.long	.LLRL25
	.byte	0xed
	.long	0x1b1c
	.uleb128 0x4
	.long	0x16e7
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x4
	.long	0x16dc
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x38
	.long	.LLRL25
	.uleb128 0x39
	.long	0x16f2
	.uleb128 0xd
	.long	0x16fd
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x39
	.long	0x1706
	.uleb128 0x16
	.long	0x1c93
	.quad	.LBI38
	.byte	.LVU103
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.byte	0x2
	.byte	0xaa
	.byte	0x16
	.long	0x1b06
	.uleb128 0x4
	.long	0x1cae
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x4
	.long	0x1ca3
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x17
	.long	0x1cb9
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0xd
	.long	0x1cba
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x9
	.quad	.LVL43
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL50
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1758
	.quad	.LBI41
	.byte	.LVU143
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.value	0x11b
	.byte	0x2a
	.long	0x1bc7
	.uleb128 0x4
	.long	0x1773
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x4
	.long	0x1768
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x52
	.long	0x177e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.long	0x1789
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x53
	.long	0x1794
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x1bac
	.uleb128 0xd
	.long	0x1795
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x9
	.quad	.LVL73
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL75
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LVL55
	.long	0x3c8
	.long	0x1bdf
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x25
	.byte	0
	.uleb128 0x7
	.quad	.LVL56
	.long	0x3c8
	.uleb128 0x29
	.quad	.LVL60
	.long	0x3c8
	.long	0x1c04
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x25
	.byte	0
	.uleb128 0x7
	.quad	.LVL61
	.long	0x3c8
	.uleb128 0x29
	.quad	.LVL64
	.long	0x3c8
	.long	0x1c29
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x25
	.byte	0
	.uleb128 0x7
	.quad	.LVL65
	.long	0x3c8
	.uleb128 0x29
	.quad	.LVL77
	.long	0x3c8
	.long	0x1c4e
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x25
	.byte	0
	.uleb128 0x29
	.quad	.LVL79
	.long	0x3c8
	.long	0x1c66
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x25
	.byte	0
	.uleb128 0x7
	.quad	.LVL80
	.long	0x3c8
	.uleb128 0x7
	.quad	.LVL82
	.long	0x3c8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x141e
	.uleb128 0xe
	.long	0x1b5
	.uleb128 0xa
	.long	0x1853
	.uleb128 0x1b
	.long	0x607
	.long	0x1cc5
	.uleb128 0x13
	.string	"T"
	.long	0x142a
	.uleb128 0x27
	.string	"str"
	.byte	0x6c
	.byte	0x22
	.long	0x141e
	.uleb128 0x28
	.long	.LASF500
	.byte	0x6c
	.byte	0x32
	.long	0x1b5
	.uleb128 0x50
	.uleb128 0x37
	.string	"i"
	.byte	0x6e
	.byte	0x19
	.long	0x2e
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x628
	.long	0x1cf4
	.uleb128 0x2f
	.string	"Ts"
	.long	0x1cdc
	.uleb128 0x30
	.long	0x91
	.byte	0
	.uleb128 0x3a
	.string	"str"
	.value	0x13f
	.byte	0x27
	.long	0x141e
	.uleb128 0x77
	.byte	0x2
	.value	0x13f
	.byte	0x2e
	.uleb128 0x1
	.long	0x91
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x650
	.long	0x1d12
	.uleb128 0x31
	.string	"Ts"
	.uleb128 0x3a
	.string	"str"
	.value	0x13f
	.byte	0x27
	.long	0x141e
	.uleb128 0x55
	.value	0x13f
	.byte	0x2e
	.byte	0
	.uleb128 0x1b
	.long	0x669
	.long	0x1d3c
	.uleb128 0x31
	.string	"Ts"
	.uleb128 0x3a
	.string	"str"
	.value	0x14f
	.byte	0x27
	.long	0x141e
	.uleb128 0x3a
	.string	"atr"
	.value	0x14f
	.byte	0x37
	.long	0x1b5
	.uleb128 0x55
	.value	0x14f
	.byte	0x3e
	.byte	0
	.uleb128 0x78
	.long	0x11ce
	.long	0x1d4a
	.byte	0x2
	.long	0x1d54
	.uleb128 0x79
	.long	.LASF841
	.long	0x13ba
	.byte	0
	.uleb128 0x7a
	.long	0x1d3c
	.long	.LASF842
	.long	0x1d65
	.long	0x1d6b
	.uleb128 0x2a
	.long	0x1d4a
	.byte	0
	.uleb128 0x3b
	.long	0xd4c
	.byte	0xb2
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e4e
	.uleb128 0x21
	.long	.LASF817
	.byte	0xb2
	.byte	0x30
	.long	0x1536
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x21
	.long	.LASF818
	.byte	0xb2
	.byte	0x40
	.long	0x1536
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x21
	.long	.LASF819
	.byte	0xb2
	.byte	0x4f
	.long	0x6f
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x56
	.long	.LASF820
	.byte	0xb5
	.byte	0xe
	.long	0x91
	.long	0x40000000
	.uleb128 0x18
	.long	.LASF657
	.byte	0xb6
	.byte	0x12
	.long	0x81
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x56
	.long	.LASF821
	.byte	0xb8
	.byte	0x10
	.long	0x2e
	.long	0x20000
	.uleb128 0x7b
	.long	.LLRL4
	.long	0x1e38
	.uleb128 0x42
	.string	"i"
	.byte	0xba
	.byte	0x15
	.long	0x2e
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x38
	.long	.LLRL6
	.uleb128 0x18
	.long	.LASF822
	.byte	0xbd
	.byte	0x14
	.long	0x2e
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x18
	.long	.LASF823
	.byte	0xbe
	.byte	0x14
	.long	0x2e
	.long	.LLST8
	.long	.LVUS8
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL14
	.long	0x161e
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0xd80
	.byte	0xaa
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ecf
	.uleb128 0x3c
	.string	"eax"
	.byte	0x12
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.string	"ebx"
	.byte	0x17
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.string	"ecx"
	.byte	0x1c
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.string	"edx"
	.byte	0x21
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.quad	.LVL0
	.long	0x162f
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x11
	.sleb128 -2147483647
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0xd6b
	.byte	0x6e
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f7
	.uleb128 0x21
	.long	.LASF824
	.byte	0x6e
	.byte	0x37
	.long	0x1531
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x18
	.long	.LASF825
	.byte	0x74
	.byte	0x12
	.long	0x6f
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x18
	.long	.LASF648
	.byte	0x75
	.byte	0x12
	.long	0x6f
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x18
	.long	.LASF826
	.byte	0x76
	.byte	0x12
	.long	0x6f
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x18
	.long	.LASF827
	.byte	0x7a
	.byte	0x10
	.long	0x2e
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x18
	.long	.LASF828
	.byte	0x7c
	.byte	0x1d
	.long	0x152c
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x42
	.string	"i"
	.byte	0x7e
	.byte	0x12
	.long	0x6f
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x18
	.long	.LASF829
	.byte	0xa1
	.byte	0x12
	.long	0x81
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x18
	.long	.LASF830
	.byte	0xa2
	.byte	0x12
	.long	0x81
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x7c
	.long	0x1d12
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.byte	0x1
	.byte	0xa0
	.byte	0x17
	.long	0x2040
	.uleb128 0x2a
	.long	0x1d2b
	.uleb128 0x2a
	.long	0x1d1f
	.uleb128 0x7d
	.long	0x1c93
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.byte	0x2
	.value	0x153
	.byte	0x1a
	.long	0x2018
	.uleb128 0x2a
	.long	0x1cae
	.uleb128 0x2a
	.long	0x1ca3
	.uleb128 0x17
	.long	0x1cb9
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.uleb128 0xd
	.long	0x1cba
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x9
	.quad	.LVL99
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL102
	.long	0x517
	.uleb128 0x7
	.quad	.LVL103
	.long	0x551
	.uleb128 0x7
	.quad	.LVL104
	.long	0x546
	.byte	0
	.uleb128 0x16
	.long	0x1cc5
	.quad	.LBI70
	.byte	.LVU240
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.byte	0x1
	.byte	0xa4
	.byte	0x17
	.long	0x218a
	.uleb128 0x4
	.long	0x1ced
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x4
	.long	0x1cdc
	.long	.LLST47
	.long	.LVUS47
	.uleb128 0x10
	.long	0x17b0
	.quad	.LBI72
	.byte	.LVU242
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.value	0x147
	.byte	0x1a
	.long	0x2162
	.uleb128 0x4
	.long	0x17e5
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x4
	.long	0x17d2
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x4
	.long	0x17c7
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x10
	.long	0x1c93
	.quad	.LBI74
	.byte	.LVU251
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.value	0x13a
	.byte	0x16
	.long	0x2142
	.uleb128 0x4
	.long	0x1cae
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x4
	.long	0x1ca3
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x17
	.long	0x1cb9
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0xd
	.long	0x1cba
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x9
	.quad	.LVL119
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL115
	.long	0x182b
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL121
	.long	0x517
	.uleb128 0x7
	.quad	.LVL122
	.long	0x551
	.uleb128 0x7
	.quad	.LVL123
	.long	0x546
	.byte	0
	.uleb128 0x16
	.long	0x1cc5
	.quad	.LBI76
	.byte	.LVU268
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.byte	0x1
	.byte	0xa5
	.byte	0x17
	.long	0x22d4
	.uleb128 0x4
	.long	0x1ced
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x4
	.long	0x1cdc
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x10
	.long	0x17b0
	.quad	.LBI78
	.byte	.LVU270
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.value	0x147
	.byte	0x1a
	.long	0x22ac
	.uleb128 0x4
	.long	0x17e5
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x4
	.long	0x17d2
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x4
	.long	0x17c7
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x10
	.long	0x1c93
	.quad	.LBI80
	.byte	.LVU279
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.value	0x13a
	.byte	0x16
	.long	0x228c
	.uleb128 0x4
	.long	0x1cae
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x4
	.long	0x1ca3
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x17
	.long	0x1cb9
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0xd
	.long	0x1cba
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0x9
	.quad	.LVL136
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL132
	.long	0x182b
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL138
	.long	0x517
	.uleb128 0x7
	.quad	.LVL139
	.long	0x551
	.uleb128 0x7
	.quad	.LVL140
	.long	0x546
	.byte	0
	.uleb128 0x9
	.quad	.LVL141
	.long	0x7cb
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0xd32
	.byte	0x44
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x28fb
	.uleb128 0x21
	.long	.LASF831
	.byte	0x44
	.byte	0x29
	.long	0x81
	.long	.LLST62
	.long	.LVUS62
	.uleb128 0x21
	.long	.LASF824
	.byte	0x44
	.byte	0x4c
	.long	0x1531
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x42
	.string	"tag"
	.byte	0x4e
	.byte	0x17
	.long	0x28fb
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x16
	.long	0x1d12
	.quad	.LBI113
	.byte	.LVU302
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.byte	0x1
	.byte	0x46
	.byte	0x17
	.long	0x2429
	.uleb128 0x4
	.long	0x1d2b
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x4
	.long	0x1d1f
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x10
	.long	0x1c93
	.quad	.LBI115
	.byte	.LVU303
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.value	0x153
	.byte	0x1a
	.long	0x2401
	.uleb128 0x4
	.long	0x1cae
	.long	.LLST67
	.long	.LVUS67
	.uleb128 0x4
	.long	0x1ca3
	.long	.LLST68
	.long	.LVUS68
	.uleb128 0x17
	.long	0x1cb9
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.uleb128 0xd
	.long	0x1cba
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x9
	.quad	.LVL148
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL151
	.long	0x517
	.uleb128 0x7
	.quad	.LVL152
	.long	0x551
	.uleb128 0x7
	.quad	.LVL153
	.long	0x546
	.byte	0
	.uleb128 0x16
	.long	0x1cf4
	.quad	.LBI117
	.byte	.LVU318
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.byte	0x1
	.byte	0x47
	.byte	0x17
	.long	0x24f9
	.uleb128 0x4
	.long	0x1d01
	.long	.LLST70
	.long	.LVUS70
	.uleb128 0x10
	.long	0x1c93
	.quad	.LBI119
	.byte	.LVU319
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.value	0x143
	.byte	0x1a
	.long	0x24d1
	.uleb128 0x4
	.long	0x1cae
	.long	.LLST71
	.long	.LVUS71
	.uleb128 0x4
	.long	0x1ca3
	.long	.LLST72
	.long	.LVUS72
	.uleb128 0x17
	.long	0x1cb9
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.uleb128 0xd
	.long	0x1cba
	.long	.LLST73
	.long	.LVUS73
	.uleb128 0x9
	.quad	.LVL155
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL158
	.long	0x517
	.uleb128 0x7
	.quad	.LVL159
	.long	0x551
	.uleb128 0x7
	.quad	.LVL160
	.long	0x546
	.byte	0
	.uleb128 0x16
	.long	0x1cc5
	.quad	.LBI121
	.byte	.LVU336
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.byte	0x1
	.byte	0x48
	.byte	0x17
	.long	0x264b
	.uleb128 0x4
	.long	0x1ced
	.long	.LLST74
	.long	.LVUS74
	.uleb128 0x4
	.long	0x1cdc
	.long	.LLST75
	.long	.LVUS75
	.uleb128 0x10
	.long	0x17b0
	.quad	.LBI123
	.byte	.LVU339
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.value	0x147
	.byte	0x1a
	.long	0x2623
	.uleb128 0x4
	.long	0x17e5
	.long	.LLST76
	.long	.LVUS76
	.uleb128 0x4
	.long	0x17d2
	.long	.LLST77
	.long	.LVUS77
	.uleb128 0x4
	.long	0x17c7
	.long	.LLST78
	.long	.LVUS78
	.uleb128 0x10
	.long	0x1c93
	.quad	.LBI125
	.byte	.LVU348
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.value	0x13a
	.byte	0x16
	.long	0x25fb
	.uleb128 0x4
	.long	0x1cae
	.long	.LLST79
	.long	.LVUS79
	.uleb128 0x4
	.long	0x1ca3
	.long	.LLST80
	.long	.LVUS80
	.uleb128 0x17
	.long	0x1cb9
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.uleb128 0xd
	.long	0x1cba
	.long	.LLST81
	.long	.LVUS81
	.uleb128 0x9
	.quad	.LVL175
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL171
	.long	0x182b
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL177
	.long	0x517
	.uleb128 0x7
	.quad	.LVL178
	.long	0x551
	.uleb128 0x7
	.quad	.LVL179
	.long	0x546
	.byte	0
	.uleb128 0x16
	.long	0x1cc5
	.quad	.LBI127
	.byte	.LVU366
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.byte	0x1
	.byte	0x49
	.byte	0x17
	.long	0x2795
	.uleb128 0x4
	.long	0x1ced
	.long	.LLST82
	.long	.LVUS82
	.uleb128 0x4
	.long	0x1cdc
	.long	.LLST83
	.long	.LVUS83
	.uleb128 0x10
	.long	0x17b0
	.quad	.LBI129
	.byte	.LVU368
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.value	0x147
	.byte	0x1a
	.long	0x276d
	.uleb128 0x4
	.long	0x17e5
	.long	.LLST84
	.long	.LVUS84
	.uleb128 0x4
	.long	0x17d2
	.long	.LLST85
	.long	.LVUS85
	.uleb128 0x4
	.long	0x17c7
	.long	.LLST86
	.long	.LVUS86
	.uleb128 0x10
	.long	0x1c93
	.quad	.LBI131
	.byte	.LVU377
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.value	0x13a
	.byte	0x16
	.long	0x274d
	.uleb128 0x4
	.long	0x1cae
	.long	.LLST87
	.long	.LVUS87
	.uleb128 0x4
	.long	0x1ca3
	.long	.LLST88
	.long	.LVUS88
	.uleb128 0x17
	.long	0x1cb9
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.uleb128 0xd
	.long	0x1cba
	.long	.LLST89
	.long	.LVUS89
	.uleb128 0x9
	.quad	.LVL193
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL189
	.long	0x182b
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL195
	.long	0x517
	.uleb128 0x7
	.quad	.LVL196
	.long	0x551
	.uleb128 0x7
	.quad	.LVL197
	.long	0x546
	.byte	0
	.uleb128 0x16
	.long	0x1cc5
	.quad	.LBI133
	.byte	.LVU394
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.byte	0x1
	.byte	0x4a
	.byte	0x17
	.long	0x28e4
	.uleb128 0x4
	.long	0x1ced
	.long	.LLST90
	.long	.LVUS90
	.uleb128 0x4
	.long	0x1cdc
	.long	.LLST91
	.long	.LVUS91
	.uleb128 0x10
	.long	0x17b0
	.quad	.LBI135
	.byte	.LVU397
	.quad	.LBB135
	.quad	.LBE135-.LBB135
	.value	0x147
	.byte	0x1a
	.long	0x28bc
	.uleb128 0x4
	.long	0x17e5
	.long	.LLST92
	.long	.LVUS92
	.uleb128 0x4
	.long	0x17d2
	.long	.LLST93
	.long	.LVUS93
	.uleb128 0x4
	.long	0x17c7
	.long	.LLST94
	.long	.LVUS94
	.uleb128 0x10
	.long	0x1c93
	.quad	.LBI137
	.byte	.LVU406
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.value	0x13a
	.byte	0x16
	.long	0x2897
	.uleb128 0x4
	.long	0x1cae
	.long	.LLST95
	.long	.LVUS95
	.uleb128 0x4
	.long	0x1ca3
	.long	.LLST96
	.long	.LVUS96
	.uleb128 0x17
	.long	0x1cb9
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.uleb128 0xd
	.long	0x1cba
	.long	.LLST97
	.long	.LVUS97
	.uleb128 0x9
	.quad	.LVL211
	.long	0x3c8
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL207
	.long	0x182b
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL213
	.long	0x517
	.uleb128 0x7
	.quad	.LVL214
	.long	0x551
	.uleb128 0x7
	.quad	.LVL215
	.long	0x546
	.byte	0
	.uleb128 0x9
	.quad	.LVL218
	.long	0x1ecf
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xa46
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x9
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x10
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x13
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 258
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.uleb128 0x86
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x16
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x4107
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2f
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4107
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 172
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x7
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x21
	.sleb128 33
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
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.sleb128 38
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x6
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.sleb128 17
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 42
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x4108
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0xa
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5d
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.uleb128 0x60
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
	.uleb128 0x61
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
	.uleb128 0x62
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
	.uleb128 0x63
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x64
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x65
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
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x66
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
	.uleb128 0x67
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x68
	.uleb128 0x30
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x69
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
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
	.uleb128 0x6a
	.uleb128 0x30
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x6b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x6c
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x6e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6f
	.uleb128 0x4108
	.byte	0x1
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
	.uleb128 0x70
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x71
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x72
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
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
	.uleb128 0x73
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x74
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x75
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x76
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x77
	.uleb128 0x4108
	.byte	0x1
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x78
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x79
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
.LVUS98:
	.uleb128 .LVU451
	.uleb128 .LVU458
.LLST98:
	.byte	0x8
	.quad	.LVL220
	.uleb128 .LVL221-.LVL220
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 0
.LLST9:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL16-.LVL15
	.uleb128 .LVL57-.LVL15
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL57-.LVL15
	.uleb128 .LVL58-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.LVL15
	.uleb128 .LFE127-.LVL15
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 0
.LLST10:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL17-.LVL15
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL17-.LVL15
	.uleb128 .LVL19-.LVL15
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL19-.LVL15
	.uleb128 .LVL25-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL15
	.uleb128 .LVL28-.LVL15
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL28-.LVL15
	.uleb128 .LVL40-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL40-.LVL15
	.uleb128 .LVL41-.LVL15
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL41-.LVL15
	.uleb128 .LVL53-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.LVL15
	.uleb128 .LVL54-.LVL15
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL54-.LVL15
	.uleb128 .LVL58-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.LVL15
	.uleb128 .LVL59-.LVL15
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL59-.LVL15
	.uleb128 .LVL62-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL62-.LVL15
	.uleb128 .LVL63-.LVL15
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL63-.LVL15
	.uleb128 .LVL66-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL66-.LVL15
	.uleb128 .LVL68-.LVL15
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL68-.LVL15
	.uleb128 .LVL74-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL74-.LVL15
	.uleb128 .LVL78-.LVL15
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL78-.LVL15
	.uleb128 .LVL81-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL81-.LVL15
	.uleb128 .LVL83-.LVL15
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL83-.LVL15
	.uleb128 .LFE127-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 0
.LLST11:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x23
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL16-.LVL15
	.uleb128 .LVL57-.LVL15
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x23
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL57-.LVL15
	.uleb128 .LVL58-.LVL15
	.uleb128 0x5
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL58-.LVL15
	.uleb128 .LFE127-.LVL15
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x23
	.uleb128 0x8
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 0
.LLST12:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL16-.LVL15
	.uleb128 .LVL57-.LVL15
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL57-.LVL15
	.uleb128 .LVL58-.LVL15
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL58-.LVL15
	.uleb128 .LFE127-.LVL15
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
.LVUS14:
	.uleb128 .LVU54
	.uleb128 .LVU73
.LLST14:
	.byte	0x8
	.quad	.LVL18
	.uleb128 .LVL27-.LVL18
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS15:
	.uleb128 .LVU54
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU67
	.uleb128 .LVU70
	.uleb128 .LVU72
.LLST15:
	.byte	0x6
	.quad	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL20-.LVL18
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL20-.LVL18
	.uleb128 .LVL23-.LVL18
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL25-.LVL18
	.uleb128 .LVL26-1-.LVL18
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS16:
	.uleb128 .LVU58
	.uleb128 .LVU67
.LLST16:
	.byte	0x8
	.quad	.LVL19
	.uleb128 .LVL23-.LVL19
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS17:
	.uleb128 .LVU64
	.uleb128 .LVU67
.LLST17:
	.byte	0x8
	.quad	.LVL22
	.uleb128 .LVL23-.LVL22
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU75
	.uleb128 .LVU100
	.uleb128 .LVU176
	.uleb128 .LVU177
.LLST19:
	.byte	0x6
	.quad	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL40-.LVL28
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL83-.LVL28
	.uleb128 .LVL84-.LVL28
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS20:
	.uleb128 .LVU75
	.uleb128 .LVU100
	.uleb128 .LVU176
	.uleb128 .LVU177
.LLST20:
	.byte	0x6
	.quad	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL40-.LVL28
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL83-.LVL28
	.uleb128 .LVL84-.LVL28
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS21:
	.uleb128 .LVU85
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU100
	.uleb128 .LVU176
	.uleb128 .LVU177
.LLST21:
	.byte	0x6
	.quad	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL33-.LVL32
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.LVL32
	.uleb128 .LVL40-.LVL32
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL83-.LVL32
	.uleb128 .LVL84-.LVL32
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU76
	.uleb128 .LVU85
.LLST22:
	.byte	0x8
	.quad	.LVL28
	.uleb128 .LVL32-.LVL28
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS23:
	.uleb128 .LVU76
	.uleb128 .LVU85
.LLST23:
	.byte	0x8
	.quad	.LVL28
	.uleb128 .LVL32-.LVL28
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU85
.LLST24:
	.byte	0x6
	.quad	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL29-.LVL28
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.LVL28
	.uleb128 .LVL30-.LVL28
	.uleb128 0xe
	.byte	0x3
	.quad	.LC0
	.byte	0x20
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL28
	.uleb128 .LVL31-.LVL28
	.uleb128 0xd
	.byte	0x7d
	.sleb128 0
	.byte	0x3
	.quad	.LC0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.LVL28
	.uleb128 .LVL32-.LVL28
	.uleb128 0xd
	.byte	0x7d
	.sleb128 0
	.byte	0x3
	.quad	.LC0+1
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU102
	.uleb128 .LVU126
	.uleb128 .LVU177
	.uleb128 0
.LLST26:
	.byte	0x6
	.quad	.LVL41
	.byte	0x4
	.uleb128 .LVL41-.LVL41
	.uleb128 .LVL53-.LVL41
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL84-.LVL41
	.uleb128 .LFE127-.LVL41
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS27:
	.uleb128 .LVU102
	.uleb128 .LVU126
	.uleb128 .LVU177
	.uleb128 0
.LLST27:
	.byte	0x6
	.quad	.LVL41
	.byte	0x4
	.uleb128 .LVL41-.LVL41
	.uleb128 .LVL53-.LVL41
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL84-.LVL41
	.uleb128 .LFE127-.LVL41
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS28:
	.uleb128 .LVU112
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU126
	.uleb128 .LVU177
	.uleb128 0
.LLST28:
	.byte	0x6
	.quad	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL46-.LVL45
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.LVL45
	.uleb128 .LVL53-.LVL45
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL84-.LVL45
	.uleb128 .LFE127-.LVL45
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 .LVU103
	.uleb128 .LVU112
.LLST29:
	.byte	0x8
	.quad	.LVL41
	.uleb128 .LVL45-.LVL41
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS30:
	.uleb128 .LVU103
	.uleb128 .LVU112
.LLST30:
	.byte	0x8
	.quad	.LVL41
	.uleb128 .LVL45-.LVL41
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 .LVU104
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU112
.LLST31:
	.byte	0x6
	.quad	.LVL41
	.byte	0x4
	.uleb128 .LVL41-.LVL41
	.uleb128 .LVL42-.LVL41
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.LVL41
	.uleb128 .LVL43-.LVL41
	.uleb128 0xe
	.byte	0x3
	.quad	.LC1
	.byte	0x20
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL41
	.uleb128 .LVL44-.LVL41
	.uleb128 0xd
	.byte	0x7d
	.sleb128 0
	.byte	0x3
	.quad	.LC1
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.LVL41
	.uleb128 .LVL45-.LVL41
	.uleb128 0xd
	.byte	0x7d
	.sleb128 0
	.byte	0x3
	.quad	.LC1+1
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 .LVU143
	.uleb128 .LVU163
.LLST32:
	.byte	0x8
	.quad	.LVL67
	.uleb128 .LVL76-.LVL67
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS33:
	.uleb128 .LVU143
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU156
	.uleb128 .LVU160
	.uleb128 .LVU162
.LLST33:
	.byte	0x6
	.quad	.LVL67
	.byte	0x4
	.uleb128 .LVL67-.LVL67
	.uleb128 .LVL69-.LVL67
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL69-.LVL67
	.uleb128 .LVL72-.LVL67
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL74-.LVL67
	.uleb128 .LVL75-1-.LVL67
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS34:
	.uleb128 .LVU147
	.uleb128 .LVU156
.LLST34:
	.byte	0x8
	.quad	.LVL68
	.uleb128 .LVL72-.LVL68
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS35:
	.uleb128 .LVU153
	.uleb128 .LVU156
.LLST35:
	.byte	0x8
	.quad	.LVL71
	.uleb128 .LVL72-.LVL71
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LVL14-1-.LVL1
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL14-1-.LVL1
	.uleb128 .LFE114-.LVL1
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL5-.LVL1
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL5-.LVL1
	.uleb128 .LVL13-.LVL1
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL13-.LVL1
	.uleb128 .LFE114-.LVL1
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 0
.LLST2:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL4-.LVL1
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL4-.LVL1
	.uleb128 .LVL14-1-.LVL1
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL14-1-.LVL1
	.uleb128 .LFE114-.LVL1
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU12
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU47
.LLST3:
	.byte	0x6
	.quad	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LVL14-1-.LVL3
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS5:
	.uleb128 .LVU14
	.uleb128 .LVU19
.LLST5:
	.byte	0x8
	.quad	.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU19
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU30
	.uleb128 .LVU33
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU47
.LLST7:
	.byte	0x6
	.quad	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-.LVL5
	.uleb128 .LVL8-.LVL5
	.uleb128 0xa
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0x27
	.byte	0x25
	.byte	0xa
	.value	0x1ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL5
	.uleb128 .LVL9-.LVL5
	.uleb128 0xe
	.byte	0x71
	.sleb128 -1073741824
	.byte	0x8
	.byte	0x27
	.byte	0x25
	.byte	0xa
	.value	0x1ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL5
	.uleb128 .LVL12-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL12-.LVL5
	.uleb128 .LVL14-1-.LVL5
	.uleb128 0xe
	.byte	0x71
	.sleb128 -1073741824
	.byte	0x8
	.byte	0x27
	.byte	0x25
	.byte	0xa
	.value	0x1ff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU19
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU30
	.uleb128 .LVU36
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU47
.LLST8:
	.byte	0x6
	.quad	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL7-.LVL5
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL7-.LVL5
	.uleb128 .LVL8-.LVL5
	.uleb128 0x9
	.byte	0x71
	.sleb128 0
	.byte	0x4e
	.byte	0x25
	.byte	0xa
	.value	0x1ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL5
	.uleb128 .LVL9-.LVL5
	.uleb128 0xd
	.byte	0x71
	.sleb128 -1073741824
	.byte	0x4e
	.byte	0x25
	.byte	0xa
	.value	0x1ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL5
	.uleb128 .LVL12-.LVL5
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL12-.LVL5
	.uleb128 .LVL14-1-.LVL5
	.uleb128 0xd
	.byte	0x71
	.sleb128 -1073741824
	.byte	0x4e
	.byte	0x25
	.byte	0xa
	.value	0x1ff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 0
.LLST36:
	.byte	0x6
	.quad	.LVL85
	.byte	0x4
	.uleb128 .LVL85-.LVL85
	.uleb128 .LVL86-.LVL85
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL86-.LVL85
	.uleb128 .LFE112-.LVL85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
.LVUS37:
	.uleb128 .LVU189
	.uleb128 .LVU205
	.uleb128 .LVU217
	.uleb128 .LVU218
.LLST37:
	.byte	0x6
	.quad	.LVL86
	.byte	0x4
	.uleb128 .LVL86-.LVL86
	.uleb128 .LVL91-.LVL86
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL96-.LVL86
	.uleb128 .LVL97-.LVL86
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS38:
	.uleb128 .LVU191
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU218
.LLST38:
	.byte	0x6
	.quad	.LVL87
	.byte	0x4
	.uleb128 .LVL87-.LVL87
	.uleb128 .LVL90-.LVL87
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL90-.LVL87
	.uleb128 .LVL91-.LVL87
	.uleb128 0xc
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap18s_multibootMmapTagE
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL91-.LVL87
	.uleb128 .LVL97-.LVL87
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS39:
	.uleb128 .LVU193
	.uleb128 .LVU221
.LLST39:
	.byte	0x8
	.quad	.LVL88
	.uleb128 .LVL98-.LVL88
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS40:
	.uleb128 .LVU194
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 .LVU218
.LLST40:
	.byte	0x6
	.quad	.LVL88
	.byte	0x4
	.uleb128 .LVL88-.LVL88
	.uleb128 .LVL91-.LVL88
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL91-.LVL88
	.uleb128 .LVL96-.LVL88
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL96-.LVL88
	.uleb128 .LVL97-.LVL88
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU195
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 .LVU218
.LLST41:
	.byte	0x6
	.quad	.LVL88
	.byte	0x4
	.uleb128 .LVL88-.LVL88
	.uleb128 .LVL89-.LVL88
	.uleb128 0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL89-.LVL88
	.uleb128 .LVL96-.LVL88
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL96-.LVL88
	.uleb128 .LVL97-.LVL88
	.uleb128 0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 .LVU196
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 .LVU218
.LLST42:
	.byte	0x6
	.quad	.LVL88
	.byte	0x4
	.uleb128 .LVL88-.LVL88
	.uleb128 .LVL91-.LVL88
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL91-.LVL88
	.uleb128 .LVL96-.LVL88
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL96-.LVL88
	.uleb128 .LVL97-.LVL88
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 .LVU234
	.uleb128 .LVU298
.LLST43:
	.byte	0x8
	.quad	.LVL105
	.uleb128 .LVL143-.LVL105
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS44:
	.uleb128 .LVU238
	.uleb128 .LVU297
.LLST44:
	.byte	0x8
	.quad	.LVL106
	.uleb128 .LVL142-.LVL106
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS45:
	.uleb128 .LVU218
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU226
.LLST45:
	.byte	0x6
	.quad	.LVL97
	.byte	0x4
	.uleb128 .LVL97-.LVL97
	.uleb128 .LVL98-.LVL97
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL98-.LVL97
	.uleb128 .LVL99-.LVL97
	.uleb128 0xe
	.byte	0x3
	.quad	.LC3
	.byte	0x20
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL99-.LVL97
	.uleb128 .LVL100-.LVL97
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	.LC3
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL100-.LVL97
	.uleb128 .LVL101-.LVL97
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	.LC3+1
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS46:
	.uleb128 .LVU240
	.uleb128 .LVU265
.LLST46:
	.byte	0x8
	.quad	.LVL107
	.uleb128 .LVL123-.LVL107
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS47:
	.uleb128 .LVU239
	.uleb128 .LVU265
.LLST47:
	.byte	0x8
	.quad	.LVL106
	.uleb128 .LVL123-.LVL106
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.byte	0
.LVUS48:
	.uleb128 .LVU242
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU261
.LLST48:
	.byte	0x6
	.quad	.LVL109
	.byte	0x4
	.uleb128 .LVL109-.LVL109
	.uleb128 .LVL112-.LVL109
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL112-.LVL109
	.uleb128 .LVL115-1-.LVL109
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL115-1-.LVL109
	.uleb128 .LVL120-.LVL109
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0
.LVUS49:
	.uleb128 .LVU242
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU261
.LLST49:
	.byte	0x6
	.quad	.LVL109
	.byte	0x4
	.uleb128 .LVL109-.LVL109
	.uleb128 .LVL111-.LVL109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.byte	0x4
	.uleb128 .LVL111-.LVL109
	.uleb128 .LVL114-.LVL109
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL114-.LVL109
	.uleb128 .LVL115-1-.LVL109
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL115-1-.LVL109
	.uleb128 .LVL120-.LVL109
	.uleb128 0x2
	.byte	0x3f
	.byte	0x9f
	.byte	0
.LVUS50:
	.uleb128 .LVU241
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU261
.LLST50:
	.byte	0x6
	.quad	.LVL108
	.byte	0x4
	.uleb128 .LVL108-.LVL108
	.uleb128 .LVL110-.LVL108
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL110-.LVL108
	.uleb128 .LVL111-.LVL108
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL111-.LVL108
	.uleb128 .LVL113-.LVL108
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL113-.LVL108
	.uleb128 .LVL115-1-.LVL108
	.uleb128 0x3
	.byte	0x75
	.sleb128 0
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL115-1-.LVL108
	.uleb128 .LVL120-.LVL108
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 .LVU251
	.uleb128 .LVU261
.LLST51:
	.byte	0x8
	.quad	.LVL116
	.uleb128 .LVL120-.LVL116
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS52:
	.uleb128 .LVU251
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU256
.LLST52:
	.byte	0x6
	.quad	.LVL116
	.byte	0x4
	.uleb128 .LVL116-.LVL116
	.uleb128 .LVL117-.LVL116
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL117-.LVL116
	.uleb128 .LVL118-.LVL116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
.LVUS53:
	.uleb128 .LVU252
	.uleb128 .LVU256
.LLST53:
	.byte	0x8
	.quad	.LVL116
	.uleb128 .LVL118-.LVL116
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS54:
	.uleb128 .LVU268
	.uleb128 .LVU275
	.uleb128 .LVU275
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU293
.LLST54:
	.byte	0x6
	.quad	.LVL124
	.byte	0x4
	.uleb128 .LVL124-.LVL124
	.uleb128 .LVL129-.LVL124
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x4
	.uleb128 .LVL129-.LVL124
	.uleb128 .LVL132-1-.LVL124
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL132-1-.LVL124
	.uleb128 .LVL140-.LVL124
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS55:
	.uleb128 .LVU267
	.uleb128 .LVU293
.LLST55:
	.byte	0x8
	.quad	.LVL123
	.uleb128 .LVL140-.LVL123
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.byte	0
.LVUS56:
	.uleb128 .LVU270
	.uleb128 .LVU275
	.uleb128 .LVU275
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU289
.LLST56:
	.byte	0x6
	.quad	.LVL126
	.byte	0x4
	.uleb128 .LVL126-.LVL126
	.uleb128 .LVL129-.LVL126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL129-.LVL126
	.uleb128 .LVL132-1-.LVL126
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL132-1-.LVL126
	.uleb128 .LVL137-.LVL126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0
.LVUS57:
	.uleb128 .LVU270
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU289
.LLST57:
	.byte	0x6
	.quad	.LVL126
	.byte	0x4
	.uleb128 .LVL126-.LVL126
	.uleb128 .LVL128-.LVL126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.byte	0x4
	.uleb128 .LVL128-.LVL126
	.uleb128 .LVL131-.LVL126
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL131-.LVL126
	.uleb128 .LVL132-1-.LVL126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL132-1-.LVL126
	.uleb128 .LVL137-.LVL126
	.uleb128 0x2
	.byte	0x3f
	.byte	0x9f
	.byte	0
.LVUS58:
	.uleb128 .LVU269
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU289
.LLST58:
	.byte	0x6
	.quad	.LVL125
	.byte	0x4
	.uleb128 .LVL125-.LVL125
	.uleb128 .LVL127-.LVL125
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL127-.LVL125
	.uleb128 .LVL128-.LVL125
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL128-.LVL125
	.uleb128 .LVL130-.LVL125
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL130-.LVL125
	.uleb128 .LVL132-1-.LVL125
	.uleb128 0x3
	.byte	0x75
	.sleb128 0
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL132-1-.LVL125
	.uleb128 .LVL137-.LVL125
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 .LVU279
	.uleb128 .LVU289
.LLST59:
	.byte	0x8
	.quad	.LVL133
	.uleb128 .LVL137-.LVL133
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS60:
	.uleb128 .LVU279
	.uleb128 .LVU283
	.uleb128 .LVU283
	.uleb128 .LVU284
.LLST60:
	.byte	0x6
	.quad	.LVL133
	.byte	0x4
	.uleb128 .LVL133-.LVL133
	.uleb128 .LVL134-.LVL133
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL134-.LVL133
	.uleb128 .LVL135-.LVL133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
.LVUS61:
	.uleb128 .LVU280
	.uleb128 .LVU284
.LLST61:
	.byte	0x8
	.quad	.LVL133
	.uleb128 .LVL135-.LVL133
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS62:
	.uleb128 0
	.uleb128 .LVU306
	.uleb128 .LVU306
	.uleb128 .LVU446
	.uleb128 .LVU446
	.uleb128 0
.LLST62:
	.byte	0x6
	.quad	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL146-.LVL144
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL146-.LVL144
	.uleb128 .LVL219-.LVL144
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL219-.LVL144
	.uleb128 .LFE111-.LVL144
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS63:
	.uleb128 0
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 0
.LLST63:
	.byte	0x6
	.quad	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL147-.LVL144
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL147-.LVL144
	.uleb128 .LFE111-.LVL144
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
.LVUS64:
	.uleb128 .LVU425
	.uleb128 .LVU444
.LLST64:
	.byte	0x8
	.quad	.LVL216
	.uleb128 .LVL218-1-.LVL216
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS65:
	.uleb128 .LVU302
	.uleb128 .LVU316
.LLST65:
	.byte	0x8
	.quad	.LVL145
	.uleb128 .LVL153-.LVL145
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS66:
	.uleb128 .LVU302
	.uleb128 .LVU316
.LLST66:
	.byte	0x8
	.quad	.LVL145
	.uleb128 .LVL153-.LVL145
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.byte	0
.LVUS67:
	.uleb128 .LVU303
	.uleb128 .LVU312
.LLST67:
	.byte	0x8
	.quad	.LVL145
	.uleb128 .LVL150-.LVL145
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS68:
	.uleb128 .LVU303
	.uleb128 .LVU312
.LLST68:
	.byte	0x8
	.quad	.LVL145
	.uleb128 .LVL150-.LVL145
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.byte	0
.LVUS69:
	.uleb128 .LVU304
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU312
.LLST69:
	.byte	0x6
	.quad	.LVL145
	.byte	0x4
	.uleb128 .LVL145-.LVL145
	.uleb128 .LVL147-.LVL145
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL147-.LVL145
	.uleb128 .LVL148-.LVL145
	.uleb128 0xe
	.byte	0x3
	.quad	.LC6
	.byte	0x20
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL148-.LVL145
	.uleb128 .LVL149-.LVL145
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	.LC6
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL149-.LVL145
	.uleb128 .LVL150-.LVL145
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	.LC6+1
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS70:
	.uleb128 .LVU318
	.uleb128 .LVU332
.LLST70:
	.byte	0x8
	.quad	.LVL153
	.uleb128 .LVL160-.LVL153
	.uleb128 0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.byte	0
.LVUS71:
	.uleb128 .LVU319
	.uleb128 .LVU328
.LLST71:
	.byte	0x8
	.quad	.LVL153
	.uleb128 .LVL157-.LVL153
	.uleb128 0x2
	.byte	0x3f
	.byte	0x9f
	.byte	0
.LVUS72:
	.uleb128 .LVU319
	.uleb128 .LVU328
.LLST72:
	.byte	0x8
	.quad	.LVL153
	.uleb128 .LVL157-.LVL153
	.uleb128 0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.byte	0
.LVUS73:
	.uleb128 .LVU320
	.uleb128 .LVU323
	.uleb128 .LVU323
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU328
.LLST73:
	.byte	0x6
	.quad	.LVL153
	.byte	0x4
	.uleb128 .LVL153-.LVL153
	.uleb128 .LVL154-.LVL153
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL154-.LVL153
	.uleb128 .LVL155-.LVL153
	.uleb128 0xe
	.byte	0x3
	.quad	.LC7
	.byte	0x20
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL155-.LVL153
	.uleb128 .LVL156-.LVL153
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	.LC7
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL156-.LVL153
	.uleb128 .LVL157-.LVL153
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	.LC7+1
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS74:
	.uleb128 .LVU336
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 .LVU362
.LLST74:
	.byte	0x6
	.quad	.LVL162
	.byte	0x4
	.uleb128 .LVL162-.LVL162
	.uleb128 .LVL163-.LVL162
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL163-.LVL162
	.uleb128 .LVL179-.LVL162
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE
	.byte	0
.LVUS75:
	.uleb128 .LVU335
	.uleb128 .LVU362
.LLST75:
	.byte	0x8
	.quad	.LVL161
	.uleb128 .LVL179-.LVL161
	.uleb128 0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.byte	0
.LVUS76:
	.uleb128 .LVU339
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU358
.LLST76:
	.byte	0x6
	.quad	.LVL165
	.byte	0x4
	.uleb128 .LVL165-.LVL165
	.uleb128 .LVL168-.LVL165
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL168-.LVL165
	.uleb128 .LVL171-1-.LVL165
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL171-1-.LVL165
	.uleb128 .LVL176-.LVL165
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.byte	0
.LVUS77:
	.uleb128 .LVU339
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU358
.LLST77:
	.byte	0x6
	.quad	.LVL165
	.byte	0x4
	.uleb128 .LVL165-.LVL165
	.uleb128 .LVL167-.LVL165
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.byte	0x4
	.uleb128 .LVL167-.LVL165
	.uleb128 .LVL170-.LVL165
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL170-.LVL165
	.uleb128 .LVL171-1-.LVL165
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL171-1-.LVL165
	.uleb128 .LVL176-.LVL165
	.uleb128 0x2
	.byte	0x3f
	.byte	0x9f
	.byte	0
.LVUS78:
	.uleb128 .LVU338
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 .LVU345
	.uleb128 .LVU345
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU358
.LLST78:
	.byte	0x6
	.quad	.LVL164
	.byte	0x4
	.uleb128 .LVL164-.LVL164
	.uleb128 .LVL166-.LVL164
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL166-.LVL164
	.uleb128 .LVL167-.LVL164
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL167-.LVL164
	.uleb128 .LVL169-.LVL164
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL169-.LVL164
	.uleb128 .LVL171-1-.LVL164
	.uleb128 0x3
	.byte	0x75
	.sleb128 0
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL171-1-.LVL164
	.uleb128 .LVL176-.LVL164
	.uleb128 0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.byte	0
.LVUS79:
	.uleb128 .LVU348
	.uleb128 .LVU358
.LLST79:
	.byte	0x8
	.quad	.LVL172
	.uleb128 .LVL176-.LVL172
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS80:
	.uleb128 .LVU348
	.uleb128 .LVU352
	.uleb128 .LVU352
	.uleb128 .LVU353
.LLST80:
	.byte	0x6
	.quad	.LVL172
	.byte	0x4
	.uleb128 .LVL172-.LVL172
	.uleb128 .LVL173-.LVL172
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL173-.LVL172
	.uleb128 .LVL174-.LVL172
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
.LVUS81:
	.uleb128 .LVU349
	.uleb128 .LVU353
.LLST81:
	.byte	0x8
	.quad	.LVL172
	.uleb128 .LVL174-.LVL172
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS82:
	.uleb128 .LVU366
	.uleb128 .LVU391
.LLST82:
	.byte	0x8
	.quad	.LVL181
	.uleb128 .LVL197-.LVL181
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS83:
	.uleb128 .LVU365
	.uleb128 .LVU391
.LLST83:
	.byte	0x8
	.quad	.LVL180
	.uleb128 .LVL197-.LVL180
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.byte	0
.LVUS84:
	.uleb128 .LVU368
	.uleb128 .LVU373
	.uleb128 .LVU373
	.uleb128 .LVU376
	.uleb128 .LVU376
	.uleb128 .LVU387
.LLST84:
	.byte	0x6
	.quad	.LVL183
	.byte	0x4
	.uleb128 .LVL183-.LVL183
	.uleb128 .LVL186-.LVL183
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL186-.LVL183
	.uleb128 .LVL189-1-.LVL183
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL189-1-.LVL183
	.uleb128 .LVL194-.LVL183
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.byte	0
.LVUS85:
	.uleb128 .LVU368
	.uleb128 .LVU371
	.uleb128 .LVU371
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 .LVU376
	.uleb128 .LVU376
	.uleb128 .LVU387
.LLST85:
	.byte	0x6
	.quad	.LVL183
	.byte	0x4
	.uleb128 .LVL183-.LVL183
	.uleb128 .LVL185-.LVL183
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.byte	0x4
	.uleb128 .LVL185-.LVL183
	.uleb128 .LVL188-.LVL183
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL188-.LVL183
	.uleb128 .LVL189-1-.LVL183
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL189-1-.LVL183
	.uleb128 .LVL194-.LVL183
	.uleb128 0x2
	.byte	0x3f
	.byte	0x9f
	.byte	0
.LVUS86:
	.uleb128 .LVU367
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU371
	.uleb128 .LVU371
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 .LVU376
	.uleb128 .LVU376
	.uleb128 .LVU387
.LLST86:
	.byte	0x6
	.quad	.LVL182
	.byte	0x4
	.uleb128 .LVL182-.LVL182
	.uleb128 .LVL184-.LVL182
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL184-.LVL182
	.uleb128 .LVL185-.LVL182
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL185-.LVL182
	.uleb128 .LVL187-.LVL182
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL187-.LVL182
	.uleb128 .LVL189-1-.LVL182
	.uleb128 0x3
	.byte	0x75
	.sleb128 0
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL189-1-.LVL182
	.uleb128 .LVL194-.LVL182
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.byte	0
.LVUS87:
	.uleb128 .LVU377
	.uleb128 .LVU387
.LLST87:
	.byte	0x8
	.quad	.LVL190
	.uleb128 .LVL194-.LVL190
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS88:
	.uleb128 .LVU377
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 .LVU382
.LLST88:
	.byte	0x6
	.quad	.LVL190
	.byte	0x4
	.uleb128 .LVL190-.LVL190
	.uleb128 .LVL191-.LVL190
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL191-.LVL190
	.uleb128 .LVL192-.LVL190
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
.LVUS89:
	.uleb128 .LVU378
	.uleb128 .LVU382
.LLST89:
	.byte	0x8
	.quad	.LVL190
	.uleb128 .LVL192-.LVL190
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS90:
	.uleb128 .LVU394
	.uleb128 .LVU395
	.uleb128 .LVU395
	.uleb128 .LVU402
	.uleb128 .LVU402
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 .LVU420
.LLST90:
	.byte	0x6
	.quad	.LVL198
	.byte	0x4
	.uleb128 .LVL198-.LVL198
	.uleb128 .LVL199-.LVL198
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL199-.LVL198
	.uleb128 .LVL204-.LVL198
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x4
	.uleb128 .LVL204-.LVL198
	.uleb128 .LVL207-1-.LVL198
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL207-1-.LVL198
	.uleb128 .LVL215-.LVL198
	.uleb128 0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS91:
	.uleb128 .LVU393
	.uleb128 .LVU420
.LLST91:
	.byte	0x8
	.quad	.LVL197
	.uleb128 .LVL215-.LVL197
	.uleb128 0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.byte	0
.LVUS92:
	.uleb128 .LVU397
	.uleb128 .LVU402
	.uleb128 .LVU402
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 .LVU416
.LLST92:
	.byte	0x6
	.quad	.LVL201
	.byte	0x4
	.uleb128 .LVL201-.LVL201
	.uleb128 .LVL204-.LVL201
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL204-.LVL201
	.uleb128 .LVL207-1-.LVL201
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL207-1-.LVL201
	.uleb128 .LVL212-.LVL201
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.byte	0
.LVUS93:
	.uleb128 .LVU397
	.uleb128 .LVU400
	.uleb128 .LVU400
	.uleb128 .LVU404
	.uleb128 .LVU404
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 .LVU416
.LLST93:
	.byte	0x6
	.quad	.LVL201
	.byte	0x4
	.uleb128 .LVL201-.LVL201
	.uleb128 .LVL203-.LVL201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.byte	0x4
	.uleb128 .LVL203-.LVL201
	.uleb128 .LVL206-.LVL201
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL206-.LVL201
	.uleb128 .LVL207-1-.LVL201
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL207-1-.LVL201
	.uleb128 .LVL212-.LVL201
	.uleb128 0x2
	.byte	0x3f
	.byte	0x9f
	.byte	0
.LVUS94:
	.uleb128 .LVU396
	.uleb128 .LVU399
	.uleb128 .LVU399
	.uleb128 .LVU400
	.uleb128 .LVU400
	.uleb128 .LVU403
	.uleb128 .LVU403
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 .LVU416
.LLST94:
	.byte	0x6
	.quad	.LVL200
	.byte	0x4
	.uleb128 .LVL200-.LVL200
	.uleb128 .LVL202-.LVL200
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL202-.LVL200
	.uleb128 .LVL203-.LVL200
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL203-.LVL200
	.uleb128 .LVL205-.LVL200
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL205-.LVL200
	.uleb128 .LVL207-1-.LVL200
	.uleb128 0x3
	.byte	0x75
	.sleb128 0
	.byte	0x6
	.byte	0x4
	.uleb128 .LVL207-1-.LVL200
	.uleb128 .LVL212-.LVL200
	.uleb128 0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.byte	0
.LVUS95:
	.uleb128 .LVU406
	.uleb128 .LVU416
.LLST95:
	.byte	0x8
	.quad	.LVL208
	.uleb128 .LVL212-.LVL208
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS96:
	.uleb128 .LVU406
	.uleb128 .LVU410
	.uleb128 .LVU410
	.uleb128 .LVU411
.LLST96:
	.byte	0x6
	.quad	.LVL208
	.byte	0x4
	.uleb128 .LVL208-.LVL208
	.uleb128 .LVL209-.LVL208
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL209-.LVL208
	.uleb128 .LVL210-.LVL208
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
.LVUS97:
	.uleb128 .LVU407
	.uleb128 .LVU411
.LLST97:
	.byte	0x8
	.quad	.LVL208
	.uleb128 .LVL210-.LVL208
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB127
	.quad	.LFE127-.LFB127
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
.LLRL4:
	.byte	0x5
	.quad	.LBB5
	.byte	0x4
	.uleb128 .LBB5-.LBB5
	.uleb128 .LBE5-.LBB5
	.byte	0x4
	.uleb128 .LBB9-.LBB5
	.uleb128 .LBE9-.LBB5
	.byte	0
.LLRL6:
	.byte	0x5
	.quad	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB7-.LBB6
	.uleb128 .LBE7-.LBB6
	.byte	0x4
	.uleb128 .LBB8-.LBB6
	.uleb128 .LBE8-.LBB6
	.byte	0
.LLRL13:
	.byte	0x5
	.quad	.LBB27
	.byte	0x4
	.uleb128 .LBB27-.LBB27
	.uleb128 .LBE27-.LBB27
	.byte	0x4
	.uleb128 .LBB46-.LBB27
	.uleb128 .LBE46-.LBB27
	.byte	0
.LLRL18:
	.byte	0x5
	.quad	.LBB31
	.byte	0x4
	.uleb128 .LBB31-.LBB31
	.uleb128 .LBE31-.LBB31
	.byte	0x4
	.uleb128 .LBB44-.LBB31
	.uleb128 .LBE44-.LBB31
	.byte	0
.LLRL25:
	.byte	0x5
	.quad	.LBB36
	.byte	0x4
	.uleb128 .LBB36-.LBB36
	.uleb128 .LBE36-.LBB36
	.byte	0x4
	.uleb128 .LBB45-.LBB36
	.uleb128 .LBE45-.LBB36
	.byte	0
.LLRL99:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB127
	.uleb128 .LFE127-.LFB127
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
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.long	.LASF433
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2
	.long	.LASF436
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x3
	.long	.LASF437
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x3
	.long	.LASF438
	.file 10 "src/kernel/../../include/kernel/../drivers/../utils/Types.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xa
	.byte	0x4
	.file 11 "src/kernel/../../include/kernel/../drivers/../utils/Utils.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x2
	.long	.LASF439
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF440
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.long	.LASF441
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.0.165eaf55c77c8c917655c53714e5dbbb,comdat
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
.LASF472:
	.string	"DarkGrayOnBlack"
.LASF733:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSERKS4_"
.LASF90:
	.string	"__cpp_variadic_templates 200704L"
.LASF321:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF491:
	.string	"WhiteOnBrown"
.LASF513:
	.string	"s_cursorEnabled"
.LASF56:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF178:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF502:
	.string	"s_bufferLineCount"
.LASF797:
	.string	"__text_start_"
.LASF315:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF431:
	.string	"__SEG_GS 1"
.LASF163:
	.string	"__SIZE_WIDTH__ 64"
.LASF189:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF20:
	.string	"__LP64__ 1"
.LASF586:
	.string	"_ZN6Kernel14HeapLinkedList5Block4sizeEv"
.LASF713:
	.string	"s_availibleRegionEntries"
.LASF531:
	.string	"getCursor"
.LASF336:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF101:
	.string	"__cpp_digit_separators 201309L"
.LASF604:
	.string	"_ZNK6Kernel14HeapLinkedList11printBlocksEv"
.LASF333:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF259:
	.string	"__DECIMAL_DIG__ 21"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF23:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF242:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF811:
	.string	"~<lambda>"
.LASF564:
	.string	"_ZN6Kernel7Console9putStringIKcEEvPT_NS0_10AttributesE"
.LASF744:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF482:
	.string	"BlackOnGreen"
.LASF206:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF794:
	.string	"__kernel_end_"
.LASF33:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF711:
	.string	"s_kernelEndDynamic"
.LASF611:
	.string	"totalSize"
.LASF694:
	.string	"_ZN6Kernel9MemoryMap4s_1BE"
.LASF102:
	.string	"__cpp_unicode_characters 201411L"
.LASF279:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF128:
	.string	"__cpp_nontype_template_args 201911L"
.LASF651:
	.string	"MultibootMemoryType"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF40:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF139:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF193:
	.string	"__UINT8_C(c) c"
.LASF832:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mcmodel=large -mtune=generic -march=x86-64 -g -ggdb3 -O1 -std=c++20 -ffreestanding -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin -fno-stack-protector -fno-rtti -fpermissive"
.LASF51:
	.string	"__INT16_TYPE__ short int"
.LASF825:
	.string	"dataSize"
.LASF835:
	.string	"MemoryMap"
.LASF489:
	.string	"WhiteOnMagenta"
.LASF473:
	.string	"LightBlueOnBlack"
.LASF617:
	.string	"allocatedPercentage"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF547:
	.string	"clampDisplayToCursor"
.LASF413:
	.string	"__x86_64 1"
.LASF494:
	.string	"CursorPos"
.LASF248:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF295:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF120:
	.string	"__cpp_generic_lambdas 201707L"
.LASF795:
	.string	"__multiboot_header_start_"
.LASF175:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF703:
	.string	"s_higherHalfBase"
.LASF229:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF725:
	.string	"Console"
.LASF46:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF839:
	.string	"_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENUlOT_E_D4Ev"
.LASF288:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF253:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF352:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF829:
	.string	"startAddr"
.LASF646:
	.string	"type"
.LASF735:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4sizeEv"
.LASF283:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF160:
	.string	"__WCHAR_WIDTH__ 32"
.LASF773:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE9pushFrontERKS5_"
.LASF305:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF37:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF682:
	.string	"Huge"
.LASF207:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF291:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF759:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_"
.LASF455:
	.string	"is_integral_v"
.LASF563:
	.string	"putString<char const>"
.LASF32:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF796:
	.string	"__multiboot_header_end_"
.LASF332:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF623:
	.string	"_ZN6Kernel14HeapLinkedList5alignEm"
.LASF676:
	.string	"Writable"
.LASF304:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF628:
	.string	"BasicMeminfo"
.LASF437:
	.string	"HEAP_H "
.LASF370:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF208:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF770:
	.string	"popBack"
.LASF355:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF203:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF764:
	.string	"RollingWindowVolatile<Utils::Array<Kernel::Console::VgaChar, 80>, 2048>"
.LASF567:
	.string	"print<>"
.LASF247:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF582:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markFreeEv"
.LASF680:
	.string	"Accessed"
.LASF639:
	.string	"AcpiNew"
.LASF499:
	.string	"character"
.LASF326:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF807:
	.string	"bits"
.LASF261:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF546:
	.string	"_ZN6Kernel7Console14setDisplayLineEm"
.LASF706:
	.string	"_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE"
.LASF268:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF728:
	.string	"Array"
.LASF347:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF430:
	.string	"__SEG_FS 1"
.LASF62:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF534:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF626:
	.string	"BootLoaderName"
.LASF417:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF501:
	.string	"s_extent"
.LASF443:
	.string	"long int"
.LASF340:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF348:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF726:
	.string	"Array<Kernel::Console::VgaChar, 80>"
.LASF81:
	.string	"__cpp_runtime_arrays 198712L"
.LASF66:
	.string	"__INT_FAST8_TYPE__ int"
.LASF606:
	.string	"_ZNK6Kernel14HeapLinkedList8usedSizeEv"
.LASF320:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF658:
	.string	"zero"
.LASF576:
	.string	"metadata"
.LASF630:
	.string	"Mmap"
.LASF58:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF36:
	.string	"__SIZEOF_POINTER__ 8"
.LASF390:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF362:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF290:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF308:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF130:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF763:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getEv"
.LASF510:
	.string	"_ZN6Kernel7Console11s_cursorPosE"
.LASF681:
	.string	"Dirty"
.LASF337:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF820:
	.string	"pageSize"
.LASF432:
	.string	"__ELF__ 1"
.LASF426:
	.string	"__FXSR__ 1"
.LASF211:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF252:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF210:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF225:
	.string	"__FLT_MAX_EXP__ 128"
.LASF22:
	.string	"__SIZEOF_LONG__ 8"
.LASF589:
	.string	"m_head"
.LASF278:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF826:
	.string	"entryCount"
.LASF824:
	.string	"heap"
.LASF188:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF258:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF537:
	.string	"scrollDown"
.LASF103:
	.string	"__cpp_static_assert 201411L"
.LASF539:
	.string	"scrollUp"
.LASF439:
	.string	"ROLLING_WINDOW_H "
.LASF141:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF705:
	.string	"s_kernelMemoryRegion"
.LASF313:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF224:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF310:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF592:
	.string	"m_usedSize"
.LASF452:
	.string	"signed char"
.LASF509:
	.string	"_ZN6Kernel7Console12s_charBufferE"
.LASF511:
	.string	"s_displayLine"
.LASF79:
	.string	"__cpp_binary_literals 201304L"
.LASF297:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF136:
	.string	"__cpp_impl_coroutine 201902L"
.LASF384:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF541:
	.string	"enableCursor"
.LASF235:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF831:
	.string	"multibootInfoAddr"
.LASF708:
	.string	"_ZN6Kernel9MemoryMap17s_multibootHeaderE"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF535:
	.string	"getWindowCapacity"
.LASF162:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF194:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF300:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF645:
	.string	"MultibootTag"
.LASF133:
	.string	"__cpp_aggregate_paren_init 201902L"
.LASF542:
	.string	"disableCursor"
.LASF468:
	.string	"RedOnBlack"
.LASF111:
	.string	"__cpp_inline_variables 201606L"
.LASF307:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF554:
	.string	"_ZN6Kernel7Console12updateCursorEv"
.LASF72:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF446:
	.string	"unsigned char"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF25:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF296:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF226:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF660:
	.string	"kernelStartAddr"
.LASF570:
	.string	"Attributes"
.LASF87:
	.string	"__cpp_attributes 200809L"
.LASF662:
	.string	"multibootHeaderStartAddr"
.LASF204:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF782:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF659:
	.string	"KernelMemoryRegion"
.LASF753:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyED4Ev"
.LASF635:
	.string	"EfiMemmap2"
.LASF641:
	.string	"EfiMemmap3"
.LASF642:
	.string	"EfiMemmap4"
.LASF241:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF585:
	.string	"_ZNK6Kernel14HeapLinkedList5Block6isUsedEv"
.LASF766:
	.string	"RollingWindowVolatile"
.LASF145:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF197:
	.string	"__UINT32_C(c) c ## U"
.LASF780:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF553:
	.string	"_ZN6Kernel7Console10flushToVgaEv"
.LASF95:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF165:
	.string	"__INTMAX_C(c) c ## L"
.LASF91:
	.string	"__cpp_initializer_lists 200806L"
.LASF24:
	.string	"__SIZEOF_SHORT__ 2"
.LASF739:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF377:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF69:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF190:
	.string	"__INT64_C(c) c ## L"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF717:
	.string	"initialise"
.LASF167:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF112:
	.string	"__cpp_aggregate_bases 201603L"
.LASF327:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF562:
	.string	"_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE"
.LASF140:
	.string	"__cpp_template_template_args 201611L"
.LASF39:
	.string	"__GNUG__ 13"
.LASF790:
	.string	"char"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF376:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF149:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF788:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5clearEv"
.LASF669:
	.string	"rodataEndAddr"
.LASF822:
	.string	"l1Index"
.LASF516:
	.string	"_ZN6Kernel7Console13s_shouldFlushE"
.LASF480:
	.string	"BlackOnBlue"
.LASF301:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF30:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF508:
	.string	"s_cursorPos"
.LASF785:
	.string	"capacity"
.LASF275:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF561:
	.string	"putNumDec<long long unsigned int>"
.LASF702:
	.string	"_ZN6Kernel9MemoryMap5s_1TBE"
.LASF571:
	.string	"BlockFlags"
.LASF3:
	.string	"__cplusplus 202002L"
.LASF176:
	.string	"__UINT8_MAX__ 0xff"
.LASF231:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF699:
	.string	"s_1GB"
.LASF346:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF249:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF372:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF500:
	.string	"attr"
.LASF98:
	.string	"__cpp_decltype_auto 201304L"
.LASF479:
	.string	"WhiteOnBlack"
.LASF691:
	.string	"s_vgaScreen"
.LASF520:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF819:
	.string	"flags"
.LASF580:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markUsedEv"
.LASF143:
	.string	"__GXX_ABI_VERSION 1018"
.LASF183:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF114:
	.string	"__cpp_template_auto 201606L"
.LASF322:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF672:
	.string	"stackTopAddr"
.LASF742:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF757:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4EOS4_"
.LASF768:
	.string	"pushBack"
.LASF379:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF276:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF26:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF816:
	.string	"__closure"
.LASF371:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF627:
	.string	"Module"
.LASF118:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF519:
	.string	"_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE"
.LASF664:
	.string	"textStartAddr"
.LASF732:
	.string	"operator="
.LASF44:
	.string	"__INTMAX_TYPE__ long int"
.LASF150:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF166:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF821:
	.string	"pages"
.LASF655:
	.string	"BadRam"
.LASF267:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF129:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF339:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF749:
	.string	"m_flags"
.LASF474:
	.string	"LightGreenOnBlack"
.LASF527:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF729:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4Ev"
.LASF438:
	.string	"CONSOLE_H "
.LASF192:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF614:
	.string	"_ZNK6Kernel14HeapLinkedList14usedPercentageEv"
.LASF363:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF109:
	.string	"__cpp_if_constexpr 201606L"
.LASF693:
	.string	"_ZN6Kernel7Console11s_vgaScreenE"
.LASF533:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF652:
	.string	"Available"
.LASF792:
	.string	"stack_top"
.LASF185:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF219:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF801:
	.string	"__rodata_start_"
.LASF827:
	.string	"regionAfterKernel"
.LASF661:
	.string	"kernelEndAddr"
.LASF521:
	.string	"clear"
.LASF469:
	.string	"MagentaOnBlack"
.LASF476:
	.string	"LightRedOnBlack"
.LASF123:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF791:
	.string	"stack_bottom"
.LASF260:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF38:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF813:
	.string	"__attr"
.LASF61:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF779:
	.string	"front"
.LASF755:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4ERKS4_"
.LASF687:
	.string	"s_multibootTagNames"
.LASF373:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF180:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF774:
	.string	"popFront"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF569:
	.string	"printImpl<long long unsigned int&>"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF227:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF625:
	.string	"Cmdline"
.LASF667:
	.string	"dataEndAddr"
.LASF338:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF245:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF689:
	.string	"_ZN6Kernel9MemoryMap19s_multibootTagNamesE"
.LASF524:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF117:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF771:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE7popBackEv"
.LASF471:
	.string	"LightGrayOnBlack"
.LASF723:
	.string	"supportsGb1Pages"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF191:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF234:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF747:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF734:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSEOS4_"
.LASF172:
	.string	"__INT8_MAX__ 0x7f"
.LASF67:
	.string	"__INT_FAST16_TYPE__ int"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF777:
	.string	"back"
.LASF442:
	.string	"long unsigned int"
.LASF590:
	.string	"m_startAddr"
.LASF579:
	.string	"markUsed"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF345:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF216:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF55:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF380:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF663:
	.string	"multibootHeaderEndAddr"
.LASF670:
	.string	"bssStartAddr"
.LASF353:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF490:
	.string	"BlackOnBrown"
.LASF769:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8pushBackERKS5_"
.LASF456:
	.string	"is_enum_v"
.LASF467:
	.string	"CyanOnBlack"
.LASF155:
	.string	"__SCHAR_WIDTH__ 8"
.LASF767:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC4Ev"
.LASF730:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4ERKS4_"
.LASF70:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF280:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF483:
	.string	"WhiteOnGreen"
.LASF738:
	.string	"operator[]"
.LASF421:
	.string	"__k8__ 1"
.LASF745:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
.LASF19:
	.string	"_LP64 1"
.LASF842:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC2Ev"
.LASF504:
	.string	"_ZN6Kernel7Console17s_bufferLineCountE"
.LASF841:
	.string	"this"
.LASF466:
	.string	"GreenOnBlack"
.LASF722:
	.string	"_ZN6Kernel9MemoryMap17parseMemoryMapTagERNS_14HeapLinkedListE"
.LASF743:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF285:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF286:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF551:
	.string	"flushToVga"
.LASF522:
	.string	"clearLine"
.LASF244:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF481:
	.string	"WhiteOnBlue"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF478:
	.string	"YellowOnBlack"
.LASF560:
	.string	"_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE"
.LASF221:
	.string	"__FLT_MANT_DIG__ 24"
.LASF381:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF68:
	.string	"__INT_FAST32_TYPE__ int"
.LASF543:
	.string	"_ZN6Kernel7Console12enableCursorEv"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF781:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF643:
	.string	"LoadbaseAddr"
.LASF406:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF17:
	.string	"__OPTIMIZE__ 1"
.LASF568:
	.string	"_ZN6Kernel7Console5printIJEEEvPKcDpT_"
.LASF164:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF311:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF718:
	.string	"_ZN6Kernel9MemoryMap10initialiseEyRNS_14HeapLinkedListE"
.LASF598:
	.string	"reallocate"
.LASF105:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF273:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF748:
	.string	"FlagMap<Kernel::HeapLinkedList::BlockFlags, long long unsigned int>"
.LASF720:
	.string	"_ZN6Kernel9MemoryMap16map128TbIdentityEPyS1_j"
.LASF793:
	.string	"__kernel_start_"
.LASF545:
	.string	"setDisplayLine"
.LASF168:
	.string	"__INTMAX_WIDTH__ 64"
.LASF97:
	.string	"__cpp_return_type_deduction 201304L"
.LASF637:
	.string	"OemStrings"
.LASF7:
	.string	"__GNUC__ 13"
.LASF615:
	.string	"availiblePercentage"
.LASF186:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF696:
	.string	"_ZN6Kernel9MemoryMap5s_1KBE"
.LASF648:
	.string	"entrySize"
.LASF465:
	.string	"BlueOnBlack"
.LASF233:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF638:
	.string	"AcpiOld"
.LASF349:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF697:
	.string	"s_1MB"
.LASF784:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4sizeEv"
.LASF220:
	.string	"__FLT_RADIX__ 2"
.LASF454:
	.string	"long long int"
.LASF116:
	.string	"__cpp_variadic_using 201611L"
.LASF48:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF605:
	.string	"usedSize"
.LASF265:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF496:
	.string	"width"
.LASF159:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF610:
	.string	"_ZNK6Kernel14HeapLinkedList13allocatedSizeEv"
.LASF434:
	.string	"TYPES_H "
.LASF817:
	.string	"PML4"
.LASF799:
	.string	"__data_start_"
.LASF695:
	.string	"s_1KB"
.LASF209:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF306:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF414:
	.string	"__x86_64__ 1"
.LASF631:
	.string	"Framebuffer"
.LASF218:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF45:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF161:
	.string	"__WINT_WIDTH__ 32"
.LASF600:
	.string	"_ZN6Kernel14HeapLinkedList10reallocateEPvm"
.LASF29:
	.string	"__CHAR_BIT__ 8"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF684:
	.string	"NoExecute"
.LASF412:
	.string	"__amd64__ 1"
.LASF366:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF621:
	.string	"align"
.LASF274:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF704:
	.string	"_ZN6Kernel9MemoryMap16s_higherHalfBaseE"
.LASF125:
	.string	"__cpp_consteval 201811L"
.LASF678:
	.string	"WriteThrough"
.LASF572:
	.string	"Used"
.LASF78:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF124:
	.string	"__cpp_conditional_explicit 201806L"
.LASF34:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF809:
	.string	"buff"
.LASF187:
	.string	"__INT32_C(c) c"
.LASF119:
	.string	"__cpp_init_captures 201803L"
.LASF42:
	.string	"__WCHAR_TYPE__ int"
.LASF677:
	.string	"User"
.LASF566:
	.string	"_ZN6Kernel7Console5printIJyEEEvPKcDpT_"
.LASF810:
	.string	"count"
.LASF43:
	.string	"__WINT_TYPE__ unsigned int"
.LASF657:
	.string	"addr"
.LASF361:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF420:
	.string	"__k8 1"
.LASF596:
	.string	"_ZNV6Kernel14HeapLinkedList10initializeEPvS1_"
.LASF709:
	.string	"s_multibootMmapTag"
.LASF64:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF449:
	.string	"unsigned int"
.LASF495:
	.string	"Extent"
.LASF223:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF316:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF517:
	.string	"writeChar"
.LASF341:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF314:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF222:
	.string	"__FLT_DIG__ 6"
.LASF573:
	.string	"Block"
.LASF588:
	.string	"_ZN6Kernel14HeapLinkedList5Block4dataEv"
.LASF595:
	.string	"initialize"
.LASF217:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF486:
	.string	"BlackOnRed"
.LASF228:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF144:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF201:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF328:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF158:
	.string	"__LONG_WIDTH__ 64"
.LASF772:
	.string	"pushFront"
.LASF230:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF323:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF272:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF653:
	.string	"Reserved"
.LASF716:
	.string	"_ZN6Kernel9MemoryMap22s_availibleRegionCountE"
.LASF83:
	.string	"__cpp_unicode_literals 200710L"
.LASF324:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF142:
	.string	"__cpp_char8_t 202207L"
.LASF89:
	.string	"__cpp_rvalue_references 200610L"
.LASF2:
	.string	"__STDC__ 1"
.LASF131:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF35:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF665:
	.string	"textEndAddr"
.LASF54:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF75:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF156:
	.string	"__SHRT_WIDTH__ 16"
.LASF649:
	.string	"entryVersion"
.LASF565:
	.string	"print<long long unsigned int>"
.LASF108:
	.string	"__cpp_range_based_for 201603L"
.LASF808:
	.string	"offset"
.LASF786:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8capacityEv"
.LASF761:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_"
.LASF99:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF828:
	.string	"entry"
.LASF450:
	.string	"uint64_t"
.LASF715:
	.string	"s_availibleRegionCount"
.LASF174:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF538:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF50:
	.string	"__INT8_TYPE__ signed char"
.LASF644:
	.string	"MultibootHeader"
.LASF289:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF368:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF232:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF422:
	.string	"__code_model_large__ 1"
.LASF830:
	.string	"endAddr"
.LASF462:
	.string	"bool"
.LASF814:
	.string	"operator()<long long unsigned int&>"
.LASF137:
	.string	"__cpp_sized_deallocation 201309L"
.LASF100:
	.string	"__cpp_variable_templates 201304L"
.LASF581:
	.string	"markFree"
.LASF840:
	.string	"_ZZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_ENKUlOT_E_clIS2_EEDaSA_"
.LASF688:
	.string	"s_multibootMemoryTypeNames"
.LASF575:
	.string	"next"
.LASF113:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF148:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF756:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSERKS4_"
.LASF270:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF714:
	.string	"_ZN6Kernel9MemoryMap24s_availibleRegionEntriesE"
.LASF364:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF319:
	.string	"__FLT128_DIG__ 33"
.LASF181:
	.string	"__INT8_C(c) c"
.LASF583:
	.string	"isUsed"
.LASF293:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF239:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF135:
	.string	"__cpp_concepts 202002L"
.LASF488:
	.string	"BlackOnMagenta"
.LASF52:
	.string	"__INT32_TYPE__ int"
.LASF636:
	.string	"Smbios"
.LASF134:
	.string	"__cpp_using_enum 201907L"
.LASF741:
	.string	"begin"
.LASF287:
	.string	"__FLT32_DIG__ 6"
.LASF266:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF506:
	.string	"_ZN6Kernel7Console16s_windowCapacityE"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF343:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF342:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF675:
	.string	"Present"
.LASF719:
	.string	"map128TbIdentity"
.LASF700:
	.string	"_ZN6Kernel9MemoryMap5s_1GBE"
.LASF529:
	.string	"setCursor"
.LASF73:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF632:
	.string	"EfiMemmap"
.LASF331:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF317:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF53:
	.string	"__INT64_TYPE__ long int"
.LASF104:
	.string	"__cpp_namespace_attributes 201411L"
.LASF31:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF584:
	.string	"size"
.LASF503:
	.string	"_ZN6Kernel7Console8s_extentE"
.LASF451:
	.string	"long long unsigned int"
.LASF115:
	.string	"__cpp_structured_bindings 201606L"
.LASF269:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF445:
	.string	"uint8_t"
.LASF518:
	.string	"putChar"
.LASF151:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF712:
	.string	"_ZN6Kernel9MemoryMap18s_kernelEndDynamicE"
.LASF357:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF74:
	.string	"__INTPTR_TYPE__ long int"
.LASF281:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF121:
	.string	"__cpp_designated_initializers 201707L"
.LASF765:
	.string	"m_tail"
.LASF63:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF383:
	.string	"__USER_LABEL_PREFIX__ "
.LASF47:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF789:
	.string	"s_size"
.LASF365:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF335:
	.string	"__FLT32X_DIG__ 15"
.LASF138:
	.string	"__cpp_aligned_new 201606L"
.LASF760:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_"
.LASF378:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF212:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF18:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF202:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF591:
	.string	"m_endAddr"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF701:
	.string	"s_1TB"
.LASF77:
	.string	"__DEPRECATED 1"
.LASF752:
	.string	"~FlagMap"
.LASF292:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF433:
	.string	"MEMORY_MAP_H "
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF612:
	.string	"_ZNK6Kernel14HeapLinkedList9totalSizeEv"
.LASF493:
	.string	"WhiteOnLightGray"
.LASF802:
	.string	"__rodata_end_"
.LASF751:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ev"
.LASF528:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF754:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ey"
.LASF783:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF804:
	.string	"__bss_end_"
.LASF776:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF88:
	.string	"__cpp_rvalue_reference 200610L"
.LASF460:
	.string	"is_pointer_v"
.LASF423:
	.string	"__MMX__ 1"
.LASF593:
	.string	"m_availibleSize"
.LASF577:
	.string	"heapId"
.LASF458:
	.string	"is_void_v"
.LASF607:
	.string	"availibleSize"
.LASF594:
	.string	"m_allocatedSize"
.LASF199:
	.string	"__UINT64_C(c) c ## UL"
.LASF122:
	.string	"__cpp_constexpr 202002L"
.LASF609:
	.string	"allocatedSize"
.LASF49:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF236:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF724:
	.string	"Utils"
.LASF65:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF692:
	.string	"s_1B"
.LASF463:
	.string	"Kernel"
.LASF803:
	.string	"__bss_start_"
.LASF477:
	.string	"LightMagentaOnBlack"
.LASF60:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF360:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF257:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF256:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF85:
	.string	"__cpp_lambdas 200907L"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF599:
	.string	"_ZN6Kernel14HeapLinkedList8allocateEm"
.LASF344:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF668:
	.string	"rodataStartAddr"
.LASF602:
	.string	"_ZN6Kernel14HeapLinkedList4freeEPv"
.LASF746:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF498:
	.string	"VgaChar"
.LASF251:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF834:
	.string	"HeapLinkedList"
.LASF530:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF507:
	.string	"s_charBuffer"
.LASF762:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setEy"
.LASF425:
	.string	"__SSE2__ 1"
.LASF329:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF556:
	.string	"_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE"
.LASF246:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF558:
	.string	"_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE"
.LASF382:
	.string	"__REGISTER_PREFIX__ "
.LASF559:
	.string	"putNumBin<long long unsigned int>"
.LASF238:
	.string	"__DBL_DIG__ 15"
.LASF505:
	.string	"s_windowCapacity"
.LASF550:
	.string	"_ZN6Kernel7Console14printInterruptEPKcmmNS0_10AttributesE"
.LASF375:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF312:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF750:
	.string	"FlagMap"
.LASF107:
	.string	"__cpp_fold_expressions 201603L"
.LASF179:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF666:
	.string	"dataStartAddr"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF536:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF805:
	.string	"load_page_tables"
.LASF671:
	.string	"bssdataEndAddr"
.LASF557:
	.string	"putNumHex<long long unsigned int>"
.LASF427:
	.string	"__SSE_MATH__ 1"
.LASF453:
	.string	"short int"
.LASF153:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF195:
	.string	"__UINT16_C(c) c"
.LASF758:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSEOS4_"
.LASF86:
	.string	"__cpp_decltype 200707L"
.LASF515:
	.string	"s_shouldFlush"
.LASF512:
	.string	"_ZN6Kernel7Console13s_displayLineE"
.LASF487:
	.string	"WhiteOnRed"
.LASF683:
	.string	"Global"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF354:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF514:
	.string	"_ZN6Kernel7Console15s_cursorEnabledE"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF294:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF250:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF169:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF302:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF461:
	.string	"is_signed_v"
.LASF608:
	.string	"_ZNK6Kernel14HeapLinkedList13availibleSizeEv"
.LASF823:
	.string	"l2Index"
.LASF731:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4EOS4_"
.LASF818:
	.string	"PDPT"
.LASF243:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF359:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF787:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5emptyEv"
.LASF436:
	.string	"UTILS_H "
.LASF173:
	.string	"__INT16_MAX__ 0x7fff"
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF157:
	.string	"__INT_WIDTH__ 32"
.LASF525:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF318:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF76:
	.string	"__GXX_WEAK__ 1"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF171:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF737:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5emptyEv"
.LASF110:
	.string	"__cpp_capture_star_this 201603L"
.LASF640:
	.string	"Nvram"
.LASF815:
	.string	"auto:1"
.LASF262:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF686:
	.string	"UserRo"
.LASF778:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF597:
	.string	"allocate"
.LASF80:
	.string	"__cpp_hex_float 201603L"
.LASF264:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF549:
	.string	"printInterrupt"
.LASF616:
	.string	"_ZNK6Kernel14HeapLinkedList19availiblePercentageEv"
.LASF548:
	.string	"_ZN6Kernel7Console20clampDisplayToCursorEv"
.LASF685:
	.string	"UserRw"
.LASF214:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF200:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF298:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF618:
	.string	"_ZNK6Kernel14HeapLinkedList19allocatedPercentageEv"
.LASF57:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF812:
	.string	"__str"
.LASF205:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF806:
	.string	"cpuid"
.LASF358:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF215:
	.string	"__GCC_IEC_559 2"
.LASF27:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF775:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8popFrontEv"
.LASF523:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF28:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF41:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF325:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF698:
	.string	"_ZN6Kernel9MemoryMap5s_1MBE"
.LASF457:
	.string	"is_convertible_v"
.LASF428:
	.string	"__SSE2_MATH__ 1"
.LASF484:
	.string	"BlackOnCyan"
.LASF309:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF330:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF350:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF93:
	.string	"__cpp_nsdmi 200809L"
.LASF277:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF147:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF84:
	.string	"__cpp_user_defined_literals 200809L"
.LASF21:
	.string	"__SIZEOF_INT__ 4"
.LASF96:
	.string	"__cpp_alias_templates 200704L"
.LASF448:
	.string	"uint32_t"
.LASF634:
	.string	"EfiAcpi"
.LASF271:
	.string	"__FLT16_DIG__ 3"
.LASF798:
	.string	"__text_end_"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF552:
	.string	"updateCursor"
.LASF411:
	.string	"__amd64 1"
.LASF154:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF263:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF650:
	.string	"TagType"
.LASF71:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF367:
	.string	"__BFLT16_DIG__ 2"
.LASF106:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF444:
	.string	"size_t"
.LASF254:
	.string	"__LDBL_DIG__ 18"
.LASF656:
	.string	"MultibootMmapEntry"
.LASF440:
	.string	"ARRAY_H "
.LASF740:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF152:
	.string	"__WINT_MIN__ 0U"
.LASF470:
	.string	"BrownOnBlack"
.LASF303:
	.string	"__FLT64_DIG__ 15"
.LASF170:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF601:
	.string	"free"
.LASF485:
	.string	"WhiteOnCyan"
.LASF475:
	.string	"LightCyanOnBlack"
.LASF182:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF59:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF836:
	.string	"_ZN6Kernel9MemoryMap16supportsGb1PagesEv"
.LASF619:
	.string	"freePercentage"
.LASF447:
	.string	"short unsigned int"
.LASF578:
	.string	"magic"
.LASF299:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF555:
	.string	"cursorInScreenBounds"
.LASF424:
	.string	"__SSE__ 1"
.LASF441:
	.string	"KERNEL_DATA_H "
.LASF255:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF464:
	.string	"BlackOnBlack"
.LASF132:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF647:
	.string	"MultibootTagMmap"
.LASF673:
	.string	"stackBottomAddr"
.LASF603:
	.string	"printBlocks"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF629:
	.string	"Bootdev"
.LASF196:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF679:
	.string	"CacheDisable"
.LASF369:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF532:
	.string	"getExtent"
.LASF838:
	.string	"__static_initialization_and_destruction_0"
.LASF707:
	.string	"s_multibootHeader"
.LASF92:
	.string	"__cpp_delegating_constructors 200604L"
.LASF674:
	.string	"PageFlags"
.LASF837:
	.string	"_GLOBAL__sub_I__ZN6Kernel9MemoryMap19s_multibootTagNamesE"
.LASF710:
	.string	"_ZN6Kernel9MemoryMap18s_multibootMmapTagE"
.LASF198:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF82:
	.string	"__cpp_raw_strings 200710L"
.LASF633:
	.string	"EfiBootServices"
.LASF126:
	.string	"__cpp_constinit 201907L"
.LASF334:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF282:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF736:
	.string	"empty"
.LASF459:
	.string	"is_same_v"
.LASF184:
	.string	"__INT16_C(c) c"
.LASF622:
	.string	"_ZN6Kernel7Console9printImplIJRyEEEvPKcNS0_10AttributesEDpOT_"
.LASF690:
	.string	"_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE"
.LASF351:
	.string	"__FLT64X_DIG__ 18"
.LASF544:
	.string	"_ZN6Kernel7Console13disableCursorEv"
.LASF526:
	.string	"clearSpan"
.LASF284:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF213:
	.string	"__INTPTR_WIDTH__ 64"
.LASF624:
	.string	"reserved"
.LASF613:
	.string	"usedPercentage"
.LASF240:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF721:
	.string	"parseMemoryMapTag"
.LASF587:
	.string	"data"
.LASF727:
	.string	"m_data"
.LASF94:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF800:
	.string	"__data_end_"
.LASF356:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF492:
	.string	"BlackOnLightGray"
.LASF574:
	.string	"prev"
.LASF654:
	.string	"AcpiReclaimable"
.LASF237:
	.string	"__DBL_MANT_DIG__ 53"
.LASF540:
	.string	"_ZN6Kernel7Console8scrollUpEm"
.LASF127:
	.string	"__cpp_deduction_guides 201907L"
.LASF146:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF833:
	.string	"_ZN6Kernel7Console5printIJEEEvPKcNS0_10AttributesEDpT_"
.LASF177:
	.string	"__UINT16_MAX__ 0xffff"
.LASF497:
	.string	"height"
.LASF620:
	.string	"_ZNK6Kernel14HeapLinkedList14freePercentageEv"
.LASF374:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/mnt/a/myOsX64"
.LASF0:
	.string	"src/kernel/MemoryMap.cpp"
	.ident	"GCC: (GNU) 13.2.0"
