	.file	"Console.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/Console.cpp"
	.align 2
	.globl	_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE, @function
_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE:
.LVL0:
.LFB75:
	.file 1 "src/kernel/Console.cpp"
	.loc 1 39 5 view -0
	.cfi_startproc
	.loc 1 39 5 is_stmt 0 view .LVU1
	movl	%edx, %r9d
	movl	%ecx, %r8d
	.loc 1 40 9 is_stmt 1 view .LVU2
.LVL1:
.LBB50:
.LBI50:
	.file 2 "src/kernel/../../include/kernel/../utils/RollingWindow.h"
	.loc 2 74 8 view .LVU3
.LBB51:
	.loc 2 76 24 is_stmt 0 view .LVU4
	movq	$_ZN6Kernel7Console12s_charBufferE, %rcx
.LVL2:
	.loc 2 76 31 view .LVU5
	addq	_ZN6Kernel7Console12s_charBufferE+327680(%rip), %rdi
.LVL3:
	.loc 2 76 40 view .LVU6
	andl	$2047, %edi
.LVL4:
	.loc 2 76 40 view .LVU7
.LBE51:
.LBE50:
.LBB52:
.LBI52:
	.file 3 "src/kernel/../../include/kernel/../utils/Array.h"
	.loc 3 25 12 is_stmt 1 view .LVU8
	.loc 3 25 12 is_stmt 0 view .LVU9
.LBE52:
	.loc 1 40 43 discriminator 2 view .LVU10
	leaq	0(,%rdi,4), %rax
	leaq	(%rax,%rdi), %rdx
.LVL5:
	.loc 1 40 43 discriminator 2 view .LVU11
	salq	$4, %rdx
	addq	%rsi, %rdx
	movb	%r9b, (%rcx,%rdx,2)
	.loc 1 41 9 is_stmt 1 view .LVU12
.LVL6:
.LBB53:
.LBI53:
	.loc 2 74 8 view .LVU13
	.loc 2 74 8 is_stmt 0 view .LVU14
.LBE53:
.LBB54:
.LBI54:
	.loc 3 25 12 is_stmt 1 view .LVU15
	.loc 3 25 12 is_stmt 0 view .LVU16
.LBE54:
	.loc 1 41 38 discriminator 2 view .LVU17
	movb	%r8b, 1(%rcx,%rdx,2)
	.loc 1 42 5 view .LVU18
	ret
	.cfi_endproc
.LFE75:
	.size	_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE, .-_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.type	_ZN6Kernel7Console7putCharEhNS0_10AttributesE, @function
_ZN6Kernel7Console7putCharEhNS0_10AttributesE:
.LVL7:
.LFB77:
	.loc 1 52 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 53 9 view .LVU20
	cmpb	$10, %dil
	je	.L12
	.loc 1 52 5 is_stmt 0 view .LVU21
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 61 13 is_stmt 1 view .LVU22
	.loc 1 61 50 is_stmt 0 view .LVU23
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %r8
	.loc 1 61 35 view .LVU24
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 61 22 view .LVU25
	movzbl	%dil, %edx
	movl	%esi, %ecx
	movq	%r8, %rsi
.LVL8:
	.loc 1 61 22 view .LVU26
	movq	%rax, %rdi
.LVL9:
	.loc 1 61 22 view .LVU27
	call	_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE
.LVL10:
	.loc 1 62 13 is_stmt 1 view .LVU28
	.loc 1 62 29 is_stmt 0 view .LVU29
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 62 13 view .LVU30
	cmpq	$80, %rax
	je	.L13
	.loc 1 72 17 is_stmt 1 view .LVU31
	.loc 1 72 31 is_stmt 0 view .LVU32
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 1 72 17 view .LVU33
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
.L2:
	.loc 1 74 5 view .LVU34
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL11:
.L12:
	.loc 1 55 13 is_stmt 1 view .LVU35
	.loc 1 55 27 is_stmt 0 view .LVU36
	movq	$0, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 56 13 is_stmt 1 view .LVU37
	.loc 1 56 27 is_stmt 0 view .LVU38
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 56 13 view .LVU39
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 1 57 13 is_stmt 1 view .LVU40
.LVL12:
.LBB59:
.LBI59:
	.loc 2 20 10 view .LVU41
.LBB60:
	.loc 2 22 16 is_stmt 0 view .LVU42
	movq	_ZN6Kernel7Console12s_charBufferE+327688(%rip), %rdx
	.loc 2 22 9 view .LVU43
	leaq	(%rdx,%rdx,4), %rsi
.LVL13:
	.loc 2 22 9 view .LVU44
	salq	$5, %rsi
	addq	$_ZN6Kernel7Console12s_charBufferE, %rsi
	movl	$20, %ecx
	movl	$0, %eax
	movq	%rsi, %rdi
.LVL14:
	.loc 2 22 9 view .LVU45
	rep stosq
	.loc 2 23 26 view .LVU46
	addq	$1, %rdx
	.loc 2 23 31 view .LVU47
	andl	$2047, %edx
	.loc 2 23 16 view .LVU48
	movq	%rdx, _ZN6Kernel7Console12s_charBufferE+327688(%rip)
	.loc 2 24 23 view .LVU49
	movq	_ZN6Kernel7Console12s_charBufferE+327680(%rip), %rax
	.loc 2 24 9 view .LVU50
	cmpq	%rax, %rdx
	je	.L14
	ret
.L14:
	.loc 2 26 30 view .LVU51
	addq	$1, %rax
	.loc 2 26 35 view .LVU52
	andl	$2047, %eax
	movq	%rax, _ZN6Kernel7Console12s_charBufferE+327680(%rip)
.LVL15:
	.loc 2 26 35 view .LVU53
	ret
.L13:
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
.LBE60:
.LBE59:
	.loc 1 64 17 is_stmt 1 view .LVU54
	.loc 1 64 31 is_stmt 0 view .LVU55
	movq	$0, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 65 17 is_stmt 1 view .LVU56
	.loc 1 65 33 is_stmt 0 view .LVU57
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
.LVL16:
	.loc 1 65 17 discriminator 1 view .LVU58
	cmpq	$2046, %rax
	ja	.L7
	.loc 1 67 21 is_stmt 1 view .LVU59
	.loc 1 67 35 is_stmt 0 view .LVU60
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 67 21 view .LVU61
	addq	$1, %rax
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
.L7:
	.loc 1 69 17 is_stmt 1 view .LVU62
.LVL17:
.LBB61:
.LBI61:
	.loc 2 20 10 view .LVU63
.LBB62:
	.loc 2 22 16 is_stmt 0 view .LVU64
	movq	_ZN6Kernel7Console12s_charBufferE+327688(%rip), %rdx
	.loc 2 22 9 view .LVU65
	leaq	(%rdx,%rdx,4), %rsi
	salq	$5, %rsi
	addq	$_ZN6Kernel7Console12s_charBufferE, %rsi
	movl	$20, %ecx
	movl	$0, %eax
	movq	%rsi, %rdi
	rep stosq
	.loc 2 23 26 view .LVU66
	addq	$1, %rdx
	.loc 2 23 31 view .LVU67
	andl	$2047, %edx
	.loc 2 23 16 view .LVU68
	movq	%rdx, _ZN6Kernel7Console12s_charBufferE+327688(%rip)
	.loc 2 24 23 view .LVU69
	movq	_ZN6Kernel7Console12s_charBufferE+327680(%rip), %rax
	.loc 2 24 9 view .LVU70
	cmpq	%rax, %rdx
	jne	.L2
	.loc 2 26 30 view .LVU71
	addq	$1, %rax
	.loc 2 26 35 view .LVU72
	andl	$2047, %eax
	movq	%rax, _ZN6Kernel7Console12s_charBufferE+327680(%rip)
.LVL18:
	.loc 2 26 35 view .LVU73
	jmp	.L2
.LBE62:
.LBE61:
	.cfi_endproc
.LFE77:
	.size	_ZN6Kernel7Console7putCharEhNS0_10AttributesE, .-_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE:
.LVL19:
.LFB80:
	.loc 1 109 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 109 5 is_stmt 0 view .LVU75
	movl	%edx, %ecx
	movl	%esi, %edx
.LVL20:
	.loc 1 110 9 is_stmt 1 view .LVU76
.LBB63:
	.loc 1 110 30 discriminator 1 view .LVU77
.LBB64:
.LBB65:
	.loc 2 76 31 is_stmt 0 view .LVU78
	movq	%rdi, %rax
	addq	_ZN6Kernel7Console12s_charBufferE+327680(%rip), %rax
	.loc 2 76 40 view .LVU79
	andl	$2047, %eax
	leaq	(%rax,%rax,4), %rsi
.LVL21:
	.loc 2 76 40 view .LVU80
	salq	$5, %rsi
	leaq	_ZN6Kernel7Console12s_charBufferE(%rsi), %rax
	addq	$_ZN6Kernel7Console12s_charBufferE+160, %rsi
.LVL22:
.L16:
	.loc 2 76 40 view .LVU81
.LBE65:
.LBE64:
	.loc 1 112 13 is_stmt 1 view .LVU82
.LBB66:
.LBI64:
	.loc 2 74 8 view .LVU83
	.loc 2 74 8 is_stmt 0 view .LVU84
.LBE66:
	.loc 1 112 45 discriminator 2 view .LVU85
	movb	%dl, (%rax)
	.loc 1 113 13 is_stmt 1 view .LVU86
	.loc 1 113 40 is_stmt 0 discriminator 2 view .LVU87
	movb	%cl, 1(%rax)
	.loc 1 110 9 is_stmt 1 discriminator 3 view .LVU88
	.loc 1 110 30 discriminator 1 view .LVU89
	addq	$2, %rax
	cmpq	%rsi, %rax
	jne	.L16
	.loc 1 110 30 is_stmt 0 discriminator 1 view .LVU90
.LBE63:
	.loc 1 115 9 is_stmt 1 view .LVU91
.LBB67:
	.loc 1 115 21 is_stmt 0 view .LVU92
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rax
	.loc 1 115 35 view .LVU93
	cmpq	%rax, %rdi
	jb	.L15
	.loc 1 115 45 discriminator 1 view .LVU94
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rax
	.loc 1 115 59 discriminator 1 view .LVU95
	addq	$25, %rax
	.loc 1 115 35 discriminator 1 view .LVU96
	cmpq	%rax, %rdi
	jnb	.L15
.LBB68:
	.loc 1 116 25 view .LVU97
	movl	$0, %esi
.L18:
.LVL23:
	.loc 1 118 17 is_stmt 1 view .LVU98
	.loc 1 118 36 is_stmt 0 view .LVU99
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %r8
	.loc 1 118 34 view .LVU100
	movq	%rdi, %rax
	subq	%r8, %rax
	.loc 1 118 64 view .LVU101
	movl	$753664, %r8d
	leaq	(%rax,%rax,4), %rax
	salq	$4, %rax
	addq	%rsi, %rax
	movb	%dl, (%r8,%rax,2)
	.loc 1 119 17 is_stmt 1 view .LVU102
	.loc 1 119 36 is_stmt 0 view .LVU103
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %r9
	.loc 1 119 34 view .LVU104
	movq	%rdi, %rax
	subq	%r9, %rax
	.loc 1 119 59 view .LVU105
	leaq	(%rax,%rax,4), %rax
	salq	$4, %rax
	addq	%rsi, %rax
	movb	%cl, 1(%r8,%rax,2)
	.loc 1 116 13 is_stmt 1 discriminator 3 view .LVU106
	addq	$1, %rsi
.LVL24:
	.loc 1 116 34 discriminator 1 view .LVU107
	cmpq	$80, %rsi
	jne	.L18
.LVL25:
.L15:
	.loc 1 116 34 is_stmt 0 discriminator 1 view .LVU108
.LBE68:
.LBE67:
	.loc 1 121 5 view .LVU109
	ret
	.cfi_endproc
.LFE80:
	.size	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE, .-_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console10flushToVgaEv
	.type	_ZN6Kernel7Console10flushToVgaEv, @function
_ZN6Kernel7Console10flushToVgaEv:
.LFB81:
	.loc 1 167 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 168 9 view .LVU111
	.loc 1 168 24 is_stmt 0 view .LVU112
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rax
	.loc 1 169 9 is_stmt 1 view .LVU113
.LVL26:
.LBB69:
.LBI69:
	.loc 2 104 12 view .LVU114
.LBB70:
	.loc 2 106 35 is_stmt 0 view .LVU115
	movq	_ZN6Kernel7Console12s_charBufferE+327688(%rip), %rsi
	subq	_ZN6Kernel7Console12s_charBufferE+327680(%rip), %rsi
	.loc 2 106 47 view .LVU116
	andl	$2047, %esi
.LVL27:
	.loc 2 106 47 view .LVU117
.LBE70:
.LBE69:
	.loc 1 169 48 discriminator 1 view .LVU118
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rdx
	.loc 1 169 46 discriminator 1 view .LVU119
	movq	%rsi, %rax
	subq	%rdx, %rax
	.loc 1 169 80 discriminator 1 view .LVU120
	cmpq	$24, %rax
	jbe	.L22
	.loc 1 169 104 discriminator 2 view .LVU121
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rsi
	.loc 1 169 80 discriminator 2 view .LVU122
	addq	$25, %rsi
.L22:
.LVL28:
	.loc 1 170 9 is_stmt 1 view .LVU123
.LBB71:
	.loc 1 170 25 is_stmt 0 view .LVU124
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rcx
.LVL29:
	.loc 1 170 42 is_stmt 1 discriminator 1 view .LVU125
	cmpq	%rsi, %rcx
	jnb	.L24
.L23:
.LVL30:
.LBB72:
	.loc 1 172 34 discriminator 1 view .LVU126
	.loc 1 172 25 is_stmt 0 view .LVU127
	movl	$0, %eax
.LVL31:
.L25:
	.loc 1 174 17 is_stmt 1 view .LVU128
.LBB73:
.LBI73:
	.loc 2 74 8 view .LVU129
	.loc 2 74 8 is_stmt 0 view .LVU130
.LBE73:
.LBB75:
.LBI75:
	.loc 3 25 12 is_stmt 1 view .LVU131
	.loc 3 25 12 is_stmt 0 view .LVU132
.LBE75:
	.loc 1 174 82 discriminator 2 view .LVU133
	movq	$_ZN6Kernel7Console12s_charBufferE, %r8
.LBB76:
.LBB74:
	.loc 2 76 31 view .LVU134
	movq	%rcx, %rdx
	addq	_ZN6Kernel7Console12s_charBufferE+327680(%rip), %rdx
	.loc 2 76 40 view .LVU135
	andl	$2047, %edx
.LBE74:
.LBE76:
	.loc 1 174 82 discriminator 2 view .LVU136
	leaq	(%rdx,%rdx,4), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movzbl	(%r8,%rdx,2), %r9d
	.loc 1 174 33 discriminator 2 view .LVU137
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rdi
	.loc 1 174 31 discriminator 2 view .LVU138
	movq	%rcx, %rdx
	subq	%rdi, %rdx
	.loc 1 174 61 discriminator 2 view .LVU139
	movl	$753664, %edi
	leaq	(%rdx,%rdx,4), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movb	%r9b, (%rdi,%rdx,2)
	.loc 1 175 17 is_stmt 1 view .LVU140
.LVL32:
.LBB77:
.LBI77:
	.loc 2 74 8 view .LVU141
	.loc 2 74 8 is_stmt 0 view .LVU142
.LBE77:
.LBB79:
.LBI79:
	.loc 3 25 12 is_stmt 1 view .LVU143
	.loc 3 25 12 is_stmt 0 view .LVU144
.LBE79:
.LBB80:
.LBB78:
	.loc 2 76 31 view .LVU145
	movq	%rcx, %rdx
	addq	_ZN6Kernel7Console12s_charBufferE+327680(%rip), %rdx
	.loc 2 76 40 view .LVU146
	andl	$2047, %edx
.LBE78:
.LBE80:
	.loc 1 175 77 discriminator 2 view .LVU147
	leaq	(%rdx,%rdx,4), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movzbl	1(%r8,%rdx,2), %r8d
	.loc 1 175 33 discriminator 2 view .LVU148
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %r9
	.loc 1 175 31 discriminator 2 view .LVU149
	movq	%rcx, %rdx
	subq	%r9, %rdx
	.loc 1 175 56 discriminator 2 view .LVU150
	leaq	(%rdx,%rdx,4), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movb	%r8b, 1(%rdi,%rdx,2)
	.loc 1 172 13 is_stmt 1 discriminator 3 view .LVU151
	addq	$1, %rax
.LVL33:
	.loc 1 172 34 discriminator 1 view .LVU152
	cmpq	$80, %rax
	jne	.L25
.LBE72:
	.loc 1 170 9 discriminator 2 view .LVU153
	addq	$1, %rcx
.LVL34:
	.loc 1 170 42 discriminator 1 view .LVU154
	cmpq	%rcx, %rsi
	jne	.L23
.LVL35:
.L24:
	.loc 1 170 42 is_stmt 0 discriminator 1 view .LVU155
.LBE71:
	.loc 1 179 9 is_stmt 1 view .LVU156
	.loc 1 179 34 is_stmt 0 view .LVU157
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rax
	subq	%rax, %rsi
.LVL36:
	.loc 1 180 9 is_stmt 1 view .LVU158
.LBB81:
	.loc 1 180 34 discriminator 1 view .LVU159
	cmpq	$24, %rsi
	ja	.L33
.LVL37:
.L26:
.LBB82:
	.loc 1 182 34 discriminator 1 view .LVU160
	.loc 1 182 25 is_stmt 0 view .LVU161
	movl	$0, %eax
	.loc 1 184 45 view .LVU162
	leaq	(%rsi,%rsi,4), %rdi
	salq	$4, %rdi
.LVL38:
.L28:
	.loc 1 184 17 is_stmt 1 view .LVU163
	.loc 1 184 45 is_stmt 0 view .LVU164
	movl	$753664, %edx
	leaq	(%rdi,%rax), %rcx
	movb	$0, (%rdx,%rcx,2)
	.loc 1 185 17 is_stmt 1 view .LVU165
	.loc 1 185 40 is_stmt 0 view .LVU166
	movb	$0, 1(%rdx,%rcx,2)
	.loc 1 182 13 is_stmt 1 discriminator 3 view .LVU167
	addq	$1, %rax
.LVL39:
	.loc 1 182 34 discriminator 1 view .LVU168
	cmpq	$80, %rax
	jne	.L28
.LBE82:
	.loc 1 180 9 discriminator 2 view .LVU169
	addq	$1, %rsi
.LVL40:
	.loc 1 180 34 discriminator 1 view .LVU170
	cmpq	$25, %rsi
	jne	.L26
.LBE81:
	.loc 1 188 5 is_stmt 0 view .LVU171
	ret
.LVL41:
.L33:
	.loc 1 188 5 view .LVU172
	ret
	.cfi_endproc
.LFE81:
	.size	_ZN6Kernel7Console10flushToVgaEv, .-_ZN6Kernel7Console10flushToVgaEv
	.align 2
	.globl	_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE
	.type	_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE, @function
_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE:
.LVL42:
.LFB83:
	.loc 1 198 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 199 9 view .LVU174
	.loc 1 199 20 is_stmt 0 view .LVU175
	movq	8(%rdi), %rcx
	.loc 1 199 25 view .LVU176
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rdx
	.loc 1 199 39 discriminator 4 view .LVU177
	movl	$0, %eax
	.loc 1 199 39 view .LVU178
	cmpq	%rdx, %rcx
	jb	.L34
	.loc 1 199 46 discriminator 1 view .LVU179
	movq	8(%rdi), %rdx
	.loc 1 199 50 discriminator 1 view .LVU180
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rax
	.loc 1 199 64 discriminator 1 view .LVU181
	addq	$25, %rax
	.loc 1 199 39 discriminator 1 view .LVU182
	cmpq	%rax, %rdx
	setb	%al
.L34:
	.loc 1 200 5 view .LVU183
	ret
	.cfi_endproc
.LFE83:
	.size	_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE, .-_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE
	.align 2
	.globl	_ZN6Kernel7Console12updateCursorEv
	.type	_ZN6Kernel7Console12updateCursorEv, @function
_ZN6Kernel7Console12updateCursorEv:
.LFB72:
	.loc 1 6 5 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 7 9 view .LVU185
	.loc 1 7 14 is_stmt 0 view .LVU186
	movzbl	_ZN6Kernel7Console15s_cursorEnabledE(%rip), %eax
	.loc 1 7 30 view .LVU187
	testb	%al, %al
	je	.L38
	.loc 1 7 54 discriminator 2 view .LVU188
	movq	$_ZN6Kernel7Console11s_cursorPosE, %rdi
	call	_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE
.LVL43:
	.loc 1 7 30 discriminator 1 view .LVU189
	testb	%al, %al
	jne	.L39
.L38:
	.loc 1 9 13 is_stmt 1 view .LVU190
	.loc 1 9 26 is_stmt 0 view .LVU191
	movl	$10, %esi
	movl	$980, %edi
	call	port_out_byte
.LVL44:
	.loc 1 10 13 is_stmt 1 view .LVU192
	.loc 1 10 26 is_stmt 0 view .LVU193
	movl	$32, %esi
	movl	$981, %edi
	call	port_out_byte
.LVL45:
	.loc 1 11 13 is_stmt 1 view .LVU194
.L37:
	.loc 1 23 5 is_stmt 0 view .LVU195
	movq	-8(%rbp), %rbx
	leave
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
.L39:
	.cfi_restore_state
	.loc 1 14 9 is_stmt 1 view .LVU196
	.loc 1 14 22 is_stmt 0 view .LVU197
	movl	$0, %esi
	movl	$981, %edi
	call	port_out_byte
.LVL46:
	.loc 1 15 9 is_stmt 1 view .LVU198
	.loc 1 15 22 is_stmt 0 view .LVU199
	movl	$15, %esi
	movl	$981, %edi
	call	port_out_byte
.LVL47:
	.loc 1 17 9 is_stmt 1 view .LVU200
	.loc 1 17 35 is_stmt 0 view .LVU201
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 17 39 view .LVU202
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rcx
	.loc 1 17 85 view .LVU203
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rdx
	.loc 1 17 37 view .LVU204
	subq	%rcx, %rax
	.loc 1 17 54 view .LVU205
	leaq	(%rax,%rax,4), %rbx
	salq	$4, %rbx
	.loc 1 17 85 view .LVU206
	addq	%rdx, %rbx
.LVL48:
	.loc 1 19 9 is_stmt 1 view .LVU207
	.loc 1 19 22 is_stmt 0 view .LVU208
	movl	$15, %esi
	movl	$980, %edi
	call	port_out_byte
.LVL49:
	.loc 1 20 9 is_stmt 1 view .LVU209
	.loc 1 20 22 is_stmt 0 view .LVU210
	movzbl	%bl, %esi
	movl	$981, %edi
	call	port_out_byte
.LVL50:
	.loc 1 21 9 is_stmt 1 view .LVU211
	.loc 1 21 22 is_stmt 0 view .LVU212
	movl	$14, %esi
	movl	$980, %edi
	call	port_out_byte
.LVL51:
	.loc 1 22 9 is_stmt 1 view .LVU213
	.loc 1 22 22 is_stmt 0 view .LVU214
	movzbl	%bh, %esi
	movl	$981, %edi
	call	port_out_byte
.LVL52:
	jmp	.L37
	.cfi_endproc
.LFE72:
	.size	_ZN6Kernel7Console12updateCursorEv, .-_ZN6Kernel7Console12updateCursorEv
	.align 2
	.globl	_ZN6Kernel7Console12enableCursorEv
	.type	_ZN6Kernel7Console12enableCursorEv, @function
_ZN6Kernel7Console12enableCursorEv:
.LFB73:
	.loc 1 26 5 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 27 9 view .LVU216
	.loc 1 27 25 is_stmt 0 view .LVU217
	movb	$1, _ZN6Kernel7Console15s_cursorEnabledE(%rip)
	.loc 1 28 9 is_stmt 1 view .LVU218
	.loc 1 28 21 is_stmt 0 view .LVU219
	call	_ZN6Kernel7Console12updateCursorEv
.LVL53:
	.loc 1 29 5 view .LVU220
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	_ZN6Kernel7Console12enableCursorEv, .-_ZN6Kernel7Console12enableCursorEv
	.align 2
	.globl	_ZN6Kernel7Console13disableCursorEv
	.type	_ZN6Kernel7Console13disableCursorEv, @function
_ZN6Kernel7Console13disableCursorEv:
.LFB74:
	.loc 1 32 5 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 33 9 view .LVU222
	.loc 1 33 25 is_stmt 0 view .LVU223
	movb	$0, _ZN6Kernel7Console15s_cursorEnabledE(%rip)
	.loc 1 34 9 is_stmt 1 view .LVU224
	.loc 1 34 21 is_stmt 0 view .LVU225
	call	_ZN6Kernel7Console12updateCursorEv
.LVL54:
	.loc 1 35 5 view .LVU226
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	_ZN6Kernel7Console13disableCursorEv, .-_ZN6Kernel7Console13disableCursorEv
	.align 2
	.globl	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.type	_ZN6Kernel7Console9setCursorENS0_9CursorPosE, @function
_ZN6Kernel7Console9setCursorENS0_9CursorPosE:
.LVL55:
.LFB76:
	.loc 1 45 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 45 5 is_stmt 0 view .LVU228
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 46 9 is_stmt 1 view .LVU229
	.loc 1 46 23 is_stmt 0 view .LVU230
	movq	%rdi, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 1 47 9 is_stmt 1 view .LVU231
	.loc 1 47 23 is_stmt 0 view .LVU232
	movq	%rsi, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 1 48 9 is_stmt 1 view .LVU233
	.loc 1 48 21 is_stmt 0 view .LVU234
	call	_ZN6Kernel7Console12updateCursorEv
.LVL56:
	.loc 1 49 5 view .LVU235
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	_ZN6Kernel7Console9setCursorENS0_9CursorPosE, .-_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.align 2
	.globl	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearLineEhNS0_10AttributesE:
.LVL57:
.LFB79:
	.loc 1 100 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 100 5 is_stmt 0 view .LVU237
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%esi, %edx
	.loc 1 101 9 is_stmt 1 view .LVU238
	.loc 1 101 31 is_stmt 0 view .LVU239
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 101 18 view .LVU240
	movzbl	%dil, %esi
.LVL58:
	.loc 1 101 18 view .LVU241
	movq	%rax, %rdi
.LVL59:
	.loc 1 101 18 view .LVU242
	call	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
.LVL60:
	.loc 1 102 9 is_stmt 1 view .LVU243
	.loc 1 102 35 is_stmt 0 view .LVU244
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rsi
	.loc 1 102 18 view .LVU245
	movl	$0, %edi
	call	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
.LVL61:
	.loc 1 103 5 view .LVU246
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE, .-_ZN6Kernel7Console9clearLineEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console5clearEhNS0_10AttributesE
	.type	_ZN6Kernel7Console5clearEhNS0_10AttributesE, @function
_ZN6Kernel7Console5clearEhNS0_10AttributesE:
.LVL62:
.LFB78:
	.loc 1 81 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 81 5 is_stmt 0 view .LVU248
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %r8d
	movl	%esi, %edi
.LVL63:
	.loc 1 82 9 is_stmt 1 view .LVU249
.LBB89:
	.loc 1 82 30 discriminator 1 view .LVU250
	.loc 1 82 21 is_stmt 0 view .LVU251
	movl	$0, %r9d
.LVL64:
.L51:
.LBB90:
	.loc 1 84 34 is_stmt 1 discriminator 1 view .LVU252
	.loc 1 84 25 is_stmt 0 view .LVU253
	movl	$0, %eax
	.loc 1 86 45 view .LVU254
	leaq	(%r9,%r9,4), %rsi
	salq	$4, %rsi
.LVL65:
.L52:
	.loc 1 86 17 is_stmt 1 view .LVU255
	.loc 1 86 45 is_stmt 0 view .LVU256
	movl	$753664, %edx
	leaq	(%rsi,%rax), %rcx
	movb	%r8b, (%rdx,%rcx,2)
	.loc 1 87 17 is_stmt 1 view .LVU257
	.loc 1 87 40 is_stmt 0 view .LVU258
	movb	%dil, 1(%rdx,%rcx,2)
	.loc 1 84 13 is_stmt 1 discriminator 3 view .LVU259
	addq	$1, %rax
.LVL66:
	.loc 1 84 34 discriminator 1 view .LVU260
	cmpq	$80, %rax
	jne	.L52
	.loc 1 84 34 is_stmt 0 discriminator 1 view .LVU261
.LBE90:
	.loc 1 82 9 is_stmt 1 discriminator 2 view .LVU262
	addq	$1, %r9
.LVL67:
	.loc 1 82 30 discriminator 1 view .LVU263
	cmpq	$25, %r9
	jne	.L51
.LBE89:
	.loc 1 90 9 view .LVU264
	.loc 1 90 23 is_stmt 0 view .LVU265
	movq	$0, _ZN6Kernel7Console13s_displayLineE(%rip)
	.loc 1 91 9 is_stmt 1 view .LVU266
.LVL68:
.LBB91:
.LBI91:
	.loc 2 119 10 view .LVU267
.LBB92:
	.loc 2 121 16 is_stmt 0 view .LVU268
	movq	$_ZN6Kernel7Console12s_charBufferE, %rdx
	movq	$0, _ZN6Kernel7Console12s_charBufferE+327680(%rip)
.LVL69:
	.loc 2 121 16 view .LVU269
.LBE92:
.LBE91:
	.loc 1 92 9 is_stmt 1 view .LVU270
.LBB93:
.LBI93:
	.loc 2 20 10 view .LVU271
.LBB94:
	.loc 2 22 9 is_stmt 0 view .LVU272
	movl	$20, %ecx
	movl	$0, %eax
.LVL70:
	.loc 2 22 9 view .LVU273
	movq	%rdx, %rdi
.LVL71:
	.loc 2 22 9 view .LVU274
	rep stosq
	.loc 2 23 16 view .LVU275
	movq	$1, _ZN6Kernel7Console12s_charBufferE+327688(%rip)
.LVL72:
	.loc 2 23 16 view .LVU276
.LBE94:
.LBE93:
	.loc 1 93 9 is_stmt 1 view .LVU277
	.loc 1 93 18 is_stmt 0 view .LVU278
	movl	$0, %edi
	movl	$0, %esi
	call	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
.LVL73:
	.loc 1 94 5 view .LVU279
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	_ZN6Kernel7Console5clearEhNS0_10AttributesE, .-_ZN6Kernel7Console5clearEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console14setDisplayLineEm
	.type	_ZN6Kernel7Console14setDisplayLineEm, @function
_ZN6Kernel7Console14setDisplayLineEm:
.LVL74:
.LFB82:
	.loc 1 191 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 191 5 is_stmt 0 view .LVU281
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 192 9 is_stmt 1 view .LVU282
	.loc 1 192 23 is_stmt 0 view .LVU283
	movq	%rdi, _ZN6Kernel7Console13s_displayLineE(%rip)
	.loc 1 193 9 is_stmt 1 view .LVU284
	.loc 1 193 19 is_stmt 0 view .LVU285
	call	_ZN6Kernel7Console10flushToVgaEv
.LVL75:
	.loc 1 194 9 is_stmt 1 view .LVU286
	.loc 1 194 21 is_stmt 0 view .LVU287
	call	_ZN6Kernel7Console12updateCursorEv
.LVL76:
	.loc 1 195 5 view .LVU288
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	_ZN6Kernel7Console14setDisplayLineEm, .-_ZN6Kernel7Console14setDisplayLineEm
	.align 2
	.globl	_ZN6Kernel7Console20clampDisplayToCursorEv
	.type	_ZN6Kernel7Console20clampDisplayToCursorEv, @function
_ZN6Kernel7Console20clampDisplayToCursorEv:
.LFB84:
	.loc 1 203 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 204 9 view .LVU290
	.loc 1 204 37 is_stmt 0 view .LVU291
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rdx
	.loc 1 204 57 discriminator 2 view .LVU292
	movl	$0, %eax
	.loc 1 204 57 view .LVU293
	cmpq	$24, %rdx
	jbe	.L59
	.loc 1 204 75 discriminator 1 view .LVU294
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rax
	.loc 1 204 57 discriminator 1 view .LVU295
	subq	$25, %rax
.L59:
	.loc 1 204 23 discriminator 4 view .LVU296
	movq	%rax, _ZN6Kernel7Console13s_displayLineE(%rip)
	.loc 1 205 5 view .LVU297
	ret
	.cfi_endproc
.LFE84:
	.size	_ZN6Kernel7Console20clampDisplayToCursorEv, .-_ZN6Kernel7Console20clampDisplayToCursorEv
	.align 2
	.globl	_ZN6Kernel7Console10scrollDownEm
	.type	_ZN6Kernel7Console10scrollDownEm, @function
_ZN6Kernel7Console10scrollDownEm:
.LVL77:
.LFB85:
	.loc 1 208 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 208 5 is_stmt 0 view .LVU299
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 209 9 is_stmt 1 view .LVU300
	.loc 1 209 23 is_stmt 0 view .LVU301
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rax
	addq	%rdi, %rax
	movq	%rax, _ZN6Kernel7Console13s_displayLineE(%rip)
	.loc 1 210 9 is_stmt 1 view .LVU302
.LVL78:
.LBB95:
.LBI95:
	.loc 2 104 12 view .LVU303
.LBB96:
	.loc 2 106 35 is_stmt 0 view .LVU304
	movq	_ZN6Kernel7Console12s_charBufferE+327688(%rip), %rax
	subq	_ZN6Kernel7Console12s_charBufferE+327680(%rip), %rax
	.loc 2 106 47 view .LVU305
	andl	$2047, %eax
.LBE96:
.LBE95:
	.loc 1 210 49 discriminator 1 view .LVU306
	subq	$25, %rax
	.loc 1 210 13 discriminator 1 view .LVU307
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rdx
	.loc 1 210 9 discriminator 1 view .LVU308
	cmpq	%rdx, %rax
	jnb	.L62
	.loc 1 211 13 is_stmt 1 view .LVU309
	.loc 1 211 27 is_stmt 0 discriminator 1 view .LVU310
	movq	%rax, _ZN6Kernel7Console13s_displayLineE(%rip)
.L62:
	.loc 1 212 9 is_stmt 1 view .LVU311
	.loc 1 212 21 is_stmt 0 view .LVU312
	call	_ZN6Kernel7Console12updateCursorEv
.LVL79:
	.loc 1 213 9 is_stmt 1 view .LVU313
	.loc 1 213 19 is_stmt 0 view .LVU314
	call	_ZN6Kernel7Console10flushToVgaEv
.LVL80:
	.loc 1 214 5 view .LVU315
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	_ZN6Kernel7Console10scrollDownEm, .-_ZN6Kernel7Console10scrollDownEm
	.align 2
	.globl	_ZN6Kernel7Console8scrollUpEm
	.type	_ZN6Kernel7Console8scrollUpEm, @function
_ZN6Kernel7Console8scrollUpEm:
.LVL81:
.LFB86:
	.loc 1 217 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 217 5 is_stmt 0 view .LVU317
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 218 9 is_stmt 1 view .LVU318
	.loc 1 218 13 is_stmt 0 view .LVU319
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rax
	.loc 1 218 9 view .LVU320
	cmpq	%rdi, %rax
	jnb	.L65
	.loc 1 219 13 is_stmt 1 view .LVU321
	.loc 1 219 27 is_stmt 0 view .LVU322
	movq	$0, _ZN6Kernel7Console13s_displayLineE(%rip)
.L66:
	.loc 1 222 9 is_stmt 1 view .LVU323
	.loc 1 222 21 is_stmt 0 view .LVU324
	call	_ZN6Kernel7Console12updateCursorEv
.LVL82:
	.loc 1 223 9 is_stmt 1 view .LVU325
	.loc 1 223 19 is_stmt 0 view .LVU326
	call	_ZN6Kernel7Console10flushToVgaEv
.LVL83:
	.loc 1 224 5 view .LVU327
	popq	%rbp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL84:
.L65:
	.cfi_restore_state
	.loc 1 221 13 is_stmt 1 view .LVU328
	.loc 1 221 27 is_stmt 0 view .LVU329
	movq	_ZN6Kernel7Console13s_displayLineE(%rip), %rax
	subq	%rdi, %rax
	movq	%rax, _ZN6Kernel7Console13s_displayLineE(%rip)
	jmp	.L66
	.cfi_endproc
.LFE86:
	.size	_ZN6Kernel7Console8scrollUpEm, .-_ZN6Kernel7Console8scrollUpEm
	.type	_GLOBAL__sub_I__ZN6Kernel7Console12updateCursorEv, @function
_GLOBAL__sub_I__ZN6Kernel7Console12updateCursorEv:
.LFB97:
	.loc 1 225 1 is_stmt 1 view -0
	.cfi_startproc
.LBB102:
.LBI102:
	.loc 1 225 1 view .LVU331
.LBB103:
	.file 4 "src/kernel/../../include/kernel/Console.h"
	.loc 4 72 95 is_stmt 0 view .LVU332
	cmpb	$0, _ZGVN6Kernel7Console12s_charBufferE(%rip)
	jne	.L68
	.loc 4 72 95 discriminator 1 view .LVU333
	movb	$1, _ZGVN6Kernel7Console12s_charBufferE(%rip)
.LVL85:
.LBB104:
.LBI104:
	.loc 2 14 5 is_stmt 1 view .LVU334
.LBB105:
.LBB106:
	.loc 2 15 5 discriminator 1 view .LVU335
.LBE106:
	.loc 2 14 5 is_stmt 0 view .LVU336
	movl	$2048, %eax
.L70:
.LBB107:
	.loc 2 15 5 is_stmt 1 discriminator 1 view .LVU337
	subq	$1, %rax
	jne	.L70
	.loc 2 15 5 is_stmt 0 discriminator 4 view .LVU338
	movq	$0, _ZN6Kernel7Console12s_charBufferE+327680(%rip)
	movq	$0, _ZN6Kernel7Console12s_charBufferE+327688(%rip)
.LVL86:
.L68:
	.loc 2 15 5 discriminator 4 view .LVU339
.LBE107:
.LBE105:
.LBE104:
.LBE103:
.LBE102:
	.loc 1 225 1 view .LVU340
	ret
	.cfi_endproc
.LFE97:
	.size	_GLOBAL__sub_I__ZN6Kernel7Console12updateCursorEv, .-_GLOBAL__sub_I__ZN6Kernel7Console12updateCursorEv
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__ZN6Kernel7Console12updateCursorEv
	.weak	_ZGVN6Kernel7Console12s_charBufferE
	.section	.bss._ZGVN6Kernel7Console12s_charBufferE,"awG",@nobits,_ZGVN6Kernel7Console12s_charBufferE,comdat
	.align 8
	.type	_ZGVN6Kernel7Console12s_charBufferE, @object
	.size	_ZGVN6Kernel7Console12s_charBufferE, 8
_ZGVN6Kernel7Console12s_charBufferE:
	.zero	8
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
	.file 5 "src/kernel/../../include/kernel/../utils/Types.h"
	.file 6 "src/kernel/../../include/kernel/../utils/Utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1449
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x33
	.long	.LASF602
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x1c
	.long	.LASF440
	.byte	0x5
	.byte	0x17
	.long	0x47
	.uleb128 0xa
	.long	0x32
	.uleb128 0x1d
	.long	0x32
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF438
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF439
	.uleb128 0x1c
	.long	.LASF441
	.byte	0x8
	.byte	0x17
	.long	0x60
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF442
	.uleb128 0x1c
	.long	.LASF443
	.byte	0x9
	.byte	0x18
	.long	0x72
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF444
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF445
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF446
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF447
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF448
	.uleb128 0x34
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF449
	.uleb128 0x35
	.string	"std"
	.byte	0x5
	.byte	0x16
	.byte	0xb
	.long	0xbd
	.uleb128 0x36
	.long	.LASF598
	.byte	0x5
	.byte	0xc5
	.byte	0x17
	.long	0xc4
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF450
	.uleb128 0xa
	.long	0xbd
	.uleb128 0x1d
	.long	0xbd
	.uleb128 0x24
	.long	.LASF451
	.byte	0x4
	.byte	0xa
	.long	0x475
	.uleb128 0x37
	.long	.LASF603
	.byte	0x1
	.byte	0x4
	.byte	0xc
	.byte	0xb
	.uleb128 0x38
	.long	.LASF604
	.byte	0x7
	.byte	0x1
	.long	0x55
	.byte	0x4
	.byte	0xf
	.byte	0x14
	.byte	0x1
	.long	0x1aa
	.uleb128 0x2
	.long	.LASF452
	.byte	0
	.uleb128 0x2
	.long	.LASF453
	.byte	0x1
	.uleb128 0x2
	.long	.LASF454
	.byte	0x2
	.uleb128 0x2
	.long	.LASF455
	.byte	0x3
	.uleb128 0x2
	.long	.LASF456
	.byte	0x4
	.uleb128 0x2
	.long	.LASF457
	.byte	0x5
	.uleb128 0x2
	.long	.LASF458
	.byte	0x6
	.uleb128 0x2
	.long	.LASF459
	.byte	0x7
	.uleb128 0x2
	.long	.LASF460
	.byte	0x8
	.uleb128 0x2
	.long	.LASF461
	.byte	0x9
	.uleb128 0x2
	.long	.LASF462
	.byte	0xa
	.uleb128 0x2
	.long	.LASF463
	.byte	0xb
	.uleb128 0x2
	.long	.LASF464
	.byte	0xc
	.uleb128 0x2
	.long	.LASF465
	.byte	0xd
	.uleb128 0x2
	.long	.LASF466
	.byte	0xe
	.uleb128 0x2
	.long	.LASF467
	.byte	0xf
	.uleb128 0x2
	.long	.LASF468
	.byte	0x10
	.uleb128 0x2
	.long	.LASF469
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF470
	.byte	0x20
	.uleb128 0x2
	.long	.LASF471
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF472
	.byte	0x30
	.uleb128 0x2
	.long	.LASF473
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF474
	.byte	0x40
	.uleb128 0x2
	.long	.LASF475
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF476
	.byte	0x50
	.uleb128 0x2
	.long	.LASF477
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF478
	.byte	0x60
	.uleb128 0x2
	.long	.LASF479
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF480
	.byte	0x70
	.uleb128 0x2
	.long	.LASF481
	.byte	0x7f
	.byte	0
	.uleb128 0x1e
	.long	.LASF482
	.byte	0x10
	.byte	0x31
	.long	0x1c8
	.uleb128 0x25
	.string	"x"
	.byte	0x33
	.long	0x32
	.byte	0
	.uleb128 0x25
	.string	"y"
	.byte	0x34
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x1d
	.long	0x1aa
	.uleb128 0xa
	.long	0x1c8
	.uleb128 0x1e
	.long	.LASF483
	.byte	0x10
	.byte	0x37
	.long	0x1f8
	.uleb128 0x13
	.long	.LASF484
	.byte	0x4
	.byte	0x39
	.byte	0x14
	.long	0x32
	.byte	0
	.uleb128 0x13
	.long	.LASF485
	.byte	0x4
	.byte	0x3a
	.byte	0x14
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x1d2
	.uleb128 0x1e
	.long	.LASF486
	.byte	0x2
	.byte	0x3d
	.long	0x223
	.uleb128 0x13
	.long	.LASF487
	.byte	0x4
	.byte	0x3f
	.byte	0x15
	.long	0x55
	.byte	0
	.uleb128 0x13
	.long	.LASF488
	.byte	0x4
	.byte	0x40
	.byte	0x18
	.long	0xe2
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0x1fd
	.uleb128 0x39
	.long	.LASF489
	.byte	0x4
	.byte	0x44
	.byte	0x21
	.long	.LASF491
	.long	0x1f8
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
	.uleb128 0x3a
	.long	.LASF605
	.byte	0x4
	.byte	0x46
	.byte	0x2b
	.long	.LASF606
	.long	0x48b
	.long	0xb8000
	.byte	0x3
	.uleb128 0x26
	.long	.LASF490
	.byte	0x47
	.long	.LASF492
	.long	0x3d
	.value	0x800
	.uleb128 0x16
	.long	.LASF495
	.byte	0x48
	.byte	0x5f
	.long	.LASF497
	.long	0x6d6
	.uleb128 0x26
	.long	.LASF493
	.byte	0x49
	.long	.LASF494
	.long	0x3d
	.value	0x7d0
	.uleb128 0x16
	.long	.LASF496
	.byte	0x4a
	.byte	0x2a
	.long	.LASF498
	.long	0x1c8
	.uleb128 0x16
	.long	.LASF499
	.byte	0x4b
	.byte	0x27
	.long	.LASF500
	.long	0x42
	.uleb128 0x16
	.long	.LASF501
	.byte	0x4c
	.byte	0x25
	.long	.LASF502
	.long	0xc9
	.uleb128 0x16
	.long	.LASF503
	.byte	0x4d
	.byte	0x25
	.long	.LASF504
	.long	0xc9
	.uleb128 0x27
	.long	.LASF505
	.byte	0x50
	.long	.LASF507
	.long	0x2ed
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0x27
	.long	.LASF506
	.byte	0x69
	.long	.LASF508
	.long	0x306
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0xc
	.long	.LASF509
	.value	0x15f
	.long	.LASF511
	.long	0x320
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0xc
	.long	.LASF510
	.value	0x160
	.long	.LASF512
	.long	0x33a
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0xc
	.long	.LASF510
	.value	0x162
	.long	.LASF513
	.long	0x359
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0xc
	.long	.LASF514
	.value	0x165
	.long	.LASF515
	.long	0x37d
	.uleb128 0x1
	.long	0x1aa
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0xc
	.long	.LASF514
	.value	0x168
	.long	.LASF516
	.long	0x3a1
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0xc
	.long	.LASF517
	.value	0x16b
	.long	.LASF518
	.long	0x3b6
	.uleb128 0x1
	.long	0x1aa
	.byte	0
	.uleb128 0x1f
	.long	.LASF519
	.value	0x16c
	.byte	0x2a
	.long	.LASF521
	.long	0x94f
	.uleb128 0x1f
	.long	.LASF520
	.value	0x16d
	.byte	0x1e
	.long	.LASF522
	.long	0x954
	.uleb128 0x1f
	.long	.LASF523
	.value	0x16e
	.byte	0x1e
	.long	.LASF524
	.long	0x959
	.uleb128 0xc
	.long	.LASF525
	.value	0x170
	.long	.LASF526
	.long	0x3fb
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0xc
	.long	.LASF527
	.value	0x171
	.long	.LASF528
	.long	0x410
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x20
	.long	.LASF529
	.value	0x173
	.long	.LASF531
	.uleb128 0x20
	.long	.LASF530
	.value	0x174
	.long	.LASF532
	.uleb128 0xc
	.long	.LASF533
	.value	0x176
	.long	.LASF534
	.long	0x43b
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x20
	.long	.LASF535
	.value	0x178
	.long	.LASF536
	.uleb128 0x28
	.long	.LASF537
	.value	0x17b
	.long	.LASF539
	.uleb128 0x28
	.long	.LASF538
	.value	0x17c
	.long	.LASF540
	.uleb128 0x3b
	.long	.LASF607
	.byte	0x4
	.value	0x17d
	.byte	0x15
	.long	.LASF608
	.long	0xbd
	.uleb128 0x1
	.long	0x95e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x1fd
	.long	0x48b
	.uleb128 0x22
	.long	0x47
	.byte	0x18
	.uleb128 0x22
	.long	0x47
	.byte	0x4f
	.byte	0
	.uleb128 0xd
	.long	0x475
	.uleb128 0x24
	.long	.LASF541
	.byte	0x6
	.byte	0x19
	.long	0x693
	.uleb128 0x3c
	.long	.LASF565
	.byte	0xa0
	.byte	0x3
	.byte	0x7
	.byte	0xb
	.long	0x68d
	.uleb128 0x13
	.long	.LASF542
	.byte	0x3
	.byte	0xb
	.byte	0xb
	.long	0x693
	.byte	0
	.uleb128 0x23
	.long	.LASF543
	.byte	0xe
	.long	.LASF544
	.long	0x4c7
	.long	0x4cd
	.uleb128 0x3
	.long	0x6a3
	.byte	0
	.uleb128 0x23
	.long	.LASF543
	.byte	0x10
	.long	.LASF545
	.long	0x4df
	.long	0x4ea
	.uleb128 0x3
	.long	0x6a3
	.uleb128 0x1
	.long	0x6ad
	.byte	0
	.uleb128 0x23
	.long	.LASF543
	.byte	0x11
	.long	.LASF546
	.long	0x4fc
	.long	0x507
	.uleb128 0x3
	.long	0x6a3
	.uleb128 0x1
	.long	0x6b2
	.byte	0
	.uleb128 0x29
	.long	.LASF547
	.byte	0x13
	.long	.LASF548
	.long	0x6b8
	.long	0x51d
	.long	0x528
	.uleb128 0x3
	.long	0x6a3
	.uleb128 0x1
	.long	0x6ad
	.byte	0
	.uleb128 0x29
	.long	.LASF547
	.byte	0x14
	.long	.LASF549
	.long	0x6b8
	.long	0x53e
	.long	0x549
	.uleb128 0x3
	.long	0x6a3
	.uleb128 0x1
	.long	0x6b2
	.byte	0
	.uleb128 0x6
	.long	.LASF550
	.byte	0x3
	.byte	0x16
	.byte	0x1a
	.long	.LASF551
	.long	0x32
	.long	0x561
	.long	0x567
	.uleb128 0x3
	.long	0x6bd
	.byte	0
	.uleb128 0x6
	.long	.LASF552
	.byte	0x3
	.byte	0x17
	.byte	0x18
	.long	.LASF553
	.long	0xbd
	.long	0x57f
	.long	0x585
	.uleb128 0x3
	.long	0x6bd
	.byte	0
	.uleb128 0x6
	.long	.LASF554
	.byte	0x3
	.byte	0x19
	.byte	0xc
	.long	.LASF555
	.long	0x6c2
	.long	0x59d
	.long	0x5a8
	.uleb128 0x3
	.long	0x6a3
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x6
	.long	.LASF556
	.byte	0x3
	.byte	0x1a
	.byte	0xc
	.long	.LASF557
	.long	0x6c7
	.long	0x5c0
	.long	0x5c6
	.uleb128 0x3
	.long	0x6a3
	.byte	0
	.uleb128 0x6
	.long	.LASF558
	.byte	0x3
	.byte	0x1b
	.byte	0xc
	.long	.LASF559
	.long	0x6c7
	.long	0x5de
	.long	0x5e4
	.uleb128 0x3
	.long	0x6a3
	.byte	0
	.uleb128 0x2a
	.string	"end"
	.byte	0x1c
	.byte	0xc
	.long	.LASF563
	.long	0x6c7
	.long	0x5fb
	.long	0x601
	.uleb128 0x3
	.long	0x6a3
	.byte	0
	.uleb128 0x6
	.long	.LASF554
	.byte	0x3
	.byte	0x1e
	.byte	0x12
	.long	.LASF560
	.long	0x6cc
	.long	0x619
	.long	0x624
	.uleb128 0x3
	.long	0x6bd
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x6
	.long	.LASF556
	.byte	0x3
	.byte	0x1f
	.byte	0x12
	.long	.LASF561
	.long	0x6d1
	.long	0x63c
	.long	0x642
	.uleb128 0x3
	.long	0x6bd
	.byte	0
	.uleb128 0x6
	.long	.LASF558
	.byte	0x3
	.byte	0x20
	.byte	0x12
	.long	.LASF562
	.long	0x6d1
	.long	0x65a
	.long	0x660
	.uleb128 0x3
	.long	0x6bd
	.byte	0
	.uleb128 0x2a
	.string	"end"
	.byte	0x21
	.byte	0x12
	.long	.LASF564
	.long	0x6d1
	.long	0x677
	.long	0x67d
	.uleb128 0x3
	.long	0x6bd
	.byte	0
	.uleb128 0x2b
	.string	"T"
	.long	0x1fd
	.uleb128 0x3d
	.string	"N"
	.long	0x47
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.long	0x49b
	.byte	0
	.uleb128 0x21
	.long	0x1fd
	.long	0x6a3
	.uleb128 0x22
	.long	0x47
	.byte	0x4f
	.byte	0
	.uleb128 0x14
	.long	0x49b
	.uleb128 0xa
	.long	0x6a3
	.uleb128 0xd
	.long	0x68d
	.uleb128 0x3e
	.byte	0x8
	.long	0x49b
	.uleb128 0xd
	.long	0x49b
	.uleb128 0x14
	.long	0x68d
	.uleb128 0xd
	.long	0x1fd
	.uleb128 0x14
	.long	0x1fd
	.uleb128 0xd
	.long	0x223
	.uleb128 0x14
	.long	0x223
	.uleb128 0x3f
	.long	.LASF566
	.long	0x50010
	.byte	0x2
	.byte	0x6
	.byte	0x7
	.long	0x8da
	.uleb128 0x13
	.long	.LASF542
	.byte	0x2
	.byte	0x9
	.byte	0x7
	.long	0x8df
	.byte	0
	.uleb128 0x2c
	.long	.LASF567
	.byte	0xa
	.long	0x32
	.long	0x50000
	.uleb128 0x2c
	.long	.LASF568
	.byte	0xb
	.long	0x32
	.long	0x50008
	.uleb128 0x15
	.long	.LASF569
	.byte	0xe
	.byte	0x5
	.long	.LASF571
	.long	0x722
	.long	0x728
	.uleb128 0x3
	.long	0x8f0
	.byte	0
	.uleb128 0x15
	.long	.LASF570
	.byte	0x14
	.byte	0xa
	.long	.LASF572
	.long	0x73b
	.long	0x746
	.uleb128 0x3
	.long	0x8f0
	.uleb128 0x1
	.long	0x6ad
	.byte	0
	.uleb128 0x15
	.long	.LASF573
	.byte	0x1e
	.byte	0xa
	.long	.LASF574
	.long	0x759
	.long	0x75f
	.uleb128 0x3
	.long	0x8f0
	.byte	0
	.uleb128 0x15
	.long	.LASF575
	.byte	0x2b
	.byte	0xa
	.long	.LASF576
	.long	0x772
	.long	0x77d
	.uleb128 0x3
	.long	0x8f0
	.uleb128 0x1
	.long	0x6ad
	.byte	0
	.uleb128 0x15
	.long	.LASF577
	.byte	0x43
	.byte	0xa
	.long	.LASF578
	.long	0x790
	.long	0x796
	.uleb128 0x3
	.long	0x8f0
	.byte	0
	.uleb128 0x6
	.long	.LASF554
	.byte	0x2
	.byte	0x4a
	.byte	0x8
	.long	.LASF579
	.long	0x6b8
	.long	0x7ae
	.long	0x7b9
	.uleb128 0x3
	.long	0x8f0
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x6
	.long	.LASF580
	.byte	0x2
	.byte	0x4f
	.byte	0x8
	.long	.LASF581
	.long	0x6b8
	.long	0x7d1
	.long	0x7d7
	.uleb128 0x3
	.long	0x8f0
	.byte	0
	.uleb128 0x6
	.long	.LASF582
	.byte	0x2
	.byte	0x54
	.byte	0x8
	.long	.LASF583
	.long	0x6b8
	.long	0x7ef
	.long	0x7f5
	.uleb128 0x3
	.long	0x8f0
	.byte	0
	.uleb128 0x6
	.long	.LASF554
	.byte	0x2
	.byte	0x59
	.byte	0xe
	.long	.LASF584
	.long	0x6ad
	.long	0x80d
	.long	0x818
	.uleb128 0x3
	.long	0x8fa
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x6
	.long	.LASF580
	.byte	0x2
	.byte	0x5e
	.byte	0xe
	.long	.LASF585
	.long	0x6ad
	.long	0x830
	.long	0x836
	.uleb128 0x3
	.long	0x8fa
	.byte	0
	.uleb128 0x6
	.long	.LASF582
	.byte	0x2
	.byte	0x63
	.byte	0xe
	.long	.LASF586
	.long	0x6ad
	.long	0x84e
	.long	0x854
	.uleb128 0x3
	.long	0x8fa
	.byte	0
	.uleb128 0x6
	.long	.LASF550
	.byte	0x2
	.byte	0x68
	.byte	0xc
	.long	.LASF587
	.long	0x32
	.long	0x86c
	.long	0x872
	.uleb128 0x3
	.long	0x8fa
	.byte	0
	.uleb128 0x6
	.long	.LASF588
	.byte	0x2
	.byte	0x6d
	.byte	0xc
	.long	.LASF589
	.long	0x32
	.long	0x88a
	.long	0x890
	.uleb128 0x3
	.long	0x8fa
	.byte	0
	.uleb128 0x6
	.long	.LASF552
	.byte	0x2
	.byte	0x72
	.byte	0xa
	.long	.LASF590
	.long	0xbd
	.long	0x8a8
	.long	0x8ae
	.uleb128 0x3
	.long	0x8fa
	.byte	0
	.uleb128 0x15
	.long	.LASF509
	.byte	0x77
	.byte	0xa
	.long	.LASF591
	.long	0x8c1
	.long	0x8c7
	.uleb128 0x3
	.long	0x8f0
	.byte	0
	.uleb128 0x2b
	.string	"T"
	.long	0x49b
	.uleb128 0x40
	.long	.LASF592
	.long	0x47
	.value	0x800
	.byte	0
	.uleb128 0xa
	.long	0x6d6
	.uleb128 0x21
	.long	0x49b
	.long	0x8f0
	.uleb128 0x41
	.long	0x47
	.value	0x7ff
	.byte	0
	.uleb128 0x14
	.long	0x6d6
	.uleb128 0xa
	.long	0x8f0
	.uleb128 0x14
	.long	0x8da
	.uleb128 0xa
	.long	0x8fa
	.uleb128 0x17
	.long	0x26f
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.uleb128 0x17
	.long	0x28e
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console11s_cursorPosE
	.uleb128 0x17
	.long	0x29d
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_displayLineE
	.uleb128 0x17
	.long	0x2ac
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console15s_cursorEnabledE
	.uleb128 0x17
	.long	0x2bb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_shouldFlushE
	.uleb128 0xd
	.long	0x1cd
	.uleb128 0xd
	.long	0x1f8
	.uleb128 0xd
	.long	0x3d
	.uleb128 0xd
	.long	0x1c8
	.uleb128 0x42
	.long	0xaf
	.uleb128 0x43
	.long	.LASF609
	.byte	0x6
	.byte	0x12
	.byte	0x11
	.long	0x97f
	.uleb128 0x1
	.long	0x67
	.uleb128 0x1
	.long	0x55
	.byte	0
	.uleb128 0x44
	.long	.LASF610
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ec
	.uleb128 0x18
	.long	0x9ec
	.quad	.LBI102
	.byte	.LVU331
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.uleb128 0x18
	.long	0xaa2
	.quad	.LBI104
	.byte	.LVU334
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.byte	0x4
	.byte	0x48
	.byte	0x5f
	.uleb128 0x4
	.long	0xab0
	.long	.LLST55
	.long	.LVUS55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	.LASF611
	.byte	0x1
	.uleb128 0x11
	.long	0x854
	.long	0xa00
	.byte	0x3
	.long	0xa0a
	.uleb128 0x12
	.long	.LASF593
	.long	0x8ff
	.byte	0
	.uleb128 0x11
	.long	0x8ae
	.long	0xa18
	.byte	0x3
	.long	0xa22
	.uleb128 0x12
	.long	.LASF593
	.long	0x8f5
	.byte	0
	.uleb128 0x11
	.long	0x872
	.long	0xa30
	.byte	0x3
	.long	0xa3a
	.uleb128 0x12
	.long	.LASF593
	.long	0x8ff
	.byte	0
	.uleb128 0x11
	.long	0x728
	.long	0xa48
	.byte	0x3
	.long	0xa5d
	.uleb128 0x12
	.long	.LASF593
	.long	0x8f5
	.uleb128 0x2d
	.long	.LASF594
	.byte	0x14
	.byte	0x1c
	.long	0x6ad
	.byte	0
	.uleb128 0x11
	.long	0x585
	.long	0xa6b
	.byte	0x3
	.long	0xa7f
	.uleb128 0x12
	.long	.LASF593
	.long	0x6a8
	.uleb128 0x46
	.string	"i"
	.byte	0x3
	.byte	0x19
	.byte	0x1e
	.long	0x32
	.byte	0
	.uleb128 0x11
	.long	0x796
	.long	0xa8d
	.byte	0x3
	.long	0xaa2
	.uleb128 0x12
	.long	.LASF593
	.long	0x8f5
	.uleb128 0x2d
	.long	.LASF595
	.byte	0x4a
	.byte	0x1a
	.long	0x32
	.byte	0
	.uleb128 0x11
	.long	0x70f
	.long	0xab0
	.byte	0x2
	.long	0xaba
	.uleb128 0x12
	.long	.LASF593
	.long	0x8f5
	.byte	0
	.uleb128 0x47
	.long	0xaa2
	.long	.LASF612
	.long	0xacb
	.long	0xad1
	.uleb128 0x19
	.long	0xab0
	.byte	0
	.uleb128 0x7
	.long	0x3fb
	.byte	0xd8
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1b
	.uleb128 0x8
	.long	.LASF596
	.byte	0xd8
	.byte	0x23
	.long	0x32
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x9
	.quad	.LVL82
	.long	0x130a
	.uleb128 0x9
	.quad	.LVL83
	.long	0xc25
	.byte	0
	.uleb128 0x7
	.long	0x3e6
	.byte	0xcf
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0xb97
	.uleb128 0x8
	.long	.LASF596
	.byte	0xcf
	.byte	0x25
	.long	0x32
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0xe
	.long	0x9f2
	.quad	.LBI95
	.byte	.LVU303
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.byte	0xd2
	.byte	0x2e
	.long	0xb7c
	.uleb128 0x4
	.long	0xa00
	.long	.LLST53
	.long	.LVUS53
	.byte	0
	.uleb128 0x9
	.quad	.LVL79
	.long	0x130a
	.uleb128 0x9
	.quad	.LVL80
	.long	0xc25
	.byte	0
	.uleb128 0x48
	.long	0x43b
	.byte	0x1
	.byte	0xca
	.byte	0xa
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.long	0x45c
	.byte	0xc5
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0xbdb
	.uleb128 0x2e
	.string	"pos"
	.byte	0xc5
	.byte	0x3c
	.long	0x95e
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x7
	.long	0x426
	.byte	0xbe
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0xc25
	.uleb128 0x8
	.long	.LASF597
	.byte	0xbe
	.byte	0x29
	.long	0x32
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x9
	.quad	.LVL75
	.long	0xc25
	.uleb128 0x9
	.quad	.LVL76
	.long	0x130a
	.byte	0
	.uleb128 0x7
	.long	0x446
	.byte	0xa6
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0xe16
	.uleb128 0x49
	.long	.LASF595
	.byte	0x1
	.byte	0xa8
	.byte	0x10
	.long	0x32
	.uleb128 0x2f
	.long	.LASF599
	.byte	0xa9
	.long	0x32
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x2f
	.long	.LASF600
	.byte	0xb3
	.long	0x32
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x1a
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0xd9c
	.uleb128 0xf
	.string	"i"
	.byte	0xaa
	.byte	0x15
	.long	0x32
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x1b
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0xf
	.string	"j"
	.byte	0xac
	.byte	0x19
	.long	0x32
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x30
	.long	0xa7f
	.quad	.LBI73
	.byte	.LVU129
	.long	.LLRL28
	.byte	0xae
	.byte	0x4d
	.long	0xcec
	.uleb128 0x4
	.long	0xa96
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x4
	.long	0xa8d
	.long	.LLST30
	.long	.LVUS30
	.byte	0
	.uleb128 0xe
	.long	0xa5d
	.quad	.LBI75
	.byte	.LVU131
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.byte	0xae
	.byte	0x50
	.long	0xd2b
	.uleb128 0x4
	.long	0xa74
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x4
	.long	0xa6b
	.long	.LLST32
	.long	.LVUS32
	.byte	0
	.uleb128 0x30
	.long	0xa7f
	.quad	.LBI77
	.byte	.LVU141
	.long	.LLRL33
	.byte	0xaf
	.byte	0x48
	.long	0xd5e
	.uleb128 0x4
	.long	0xa96
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x4
	.long	0xa8d
	.long	.LLST35
	.long	.LVUS35
	.byte	0
	.uleb128 0x18
	.long	0xa5d
	.quad	.LBI79
	.byte	.LVU143
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.byte	0x1
	.byte	0xaf
	.byte	0x4b
	.uleb128 0x4
	.long	0xa74
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x4
	.long	0xa6b
	.long	.LLST37
	.long	.LVUS37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.long	0xde6
	.uleb128 0xf
	.string	"i"
	.byte	0xb4
	.byte	0x15
	.long	0x32
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x1b
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0xf
	.string	"j"
	.byte	0xb6
	.byte	0x19
	.long	0x32
	.long	.LLST39
	.long	.LVUS39
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x9f2
	.quad	.LBI69
	.byte	.LVU114
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.byte	0x1
	.byte	0xa9
	.byte	0x2b
	.uleb128 0x4
	.long	0xa00
	.long	.LLST25
	.long	.LVUS25
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x33a
	.byte	0x69
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0xee1
	.uleb128 0x4a
	.long	.LASF597
	.byte	0x1
	.byte	0x69
	.byte	0x24
	.long	0x32
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x8
	.long	.LASF601
	.byte	0x69
	.byte	0x32
	.long	0x55
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x8
	.long	.LASF488
	.byte	0x6b
	.byte	0x28
	.long	0xe2
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x1a
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.long	0xebd
	.uleb128 0xf
	.string	"j"
	.byte	0x6e
	.byte	0x15
	.long	0x32
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x4b
	.long	0xa7f
	.quad	.LBI64
	.byte	.LVU83
	.long	.LLRL19
	.byte	0x1
	.byte	0x70
	.byte	0x1e
	.uleb128 0x4
	.long	0xa96
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x4
	.long	0xa8d
	.long	.LLST21
	.long	.LVUS21
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.uleb128 0xf
	.string	"j"
	.byte	0x74
	.byte	0x19
	.long	0x32
	.long	.LLST22
	.long	.LVUS22
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x320
	.byte	0x60
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0xf54
	.uleb128 0x8
	.long	.LASF601
	.byte	0x60
	.byte	0x25
	.long	0x55
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x8
	.long	.LASF488
	.byte	0x62
	.byte	0x28
	.long	0xe2
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x10
	.quad	.LVL60
	.long	0xe16
	.long	0xf46
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x9
	.quad	.LVL61
	.long	0x1125
	.byte	0
	.uleb128 0x7
	.long	0x306
	.byte	0x4c
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x1057
	.uleb128 0x8
	.long	.LASF601
	.byte	0x4d
	.byte	0x11
	.long	0x55
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x8
	.long	.LASF488
	.byte	0x4f
	.byte	0x14
	.long	0xe2
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x1a
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.long	0xfe0
	.uleb128 0xf
	.string	"i"
	.byte	0x52
	.byte	0x15
	.long	0x32
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x1b
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0xf
	.string	"j"
	.byte	0x54
	.byte	0x19
	.long	0x32
	.long	.LLST47
	.long	.LVUS47
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0xa0a
	.quad	.LBI91
	.byte	.LVU267
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.byte	0x5b
	.byte	0x1b
	.long	0x1012
	.uleb128 0x4
	.long	0xa18
	.long	.LLST48
	.long	.LVUS48
	.byte	0
	.uleb128 0xe
	.long	0xa3a
	.quad	.LBI93
	.byte	.LVU271
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.byte	0x5c
	.byte	0x1e
	.long	0x1049
	.uleb128 0x19
	.long	0xa51
	.uleb128 0x4
	.long	0xa48
	.long	.LLST50
	.long	.LVUS50
	.byte	0
	.uleb128 0x9
	.quad	.LVL73
	.long	0x1125
	.byte	0
	.uleb128 0x7
	.long	0x2ed
	.byte	0x33
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x1125
	.uleb128 0x31
	.string	"c"
	.byte	0x33
	.byte	0x23
	.long	0x55
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x8
	.long	.LASF488
	.byte	0x33
	.byte	0x31
	.long	0xe2
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xe
	.long	0xa3a
	.quad	.LBI59
	.byte	.LVU41
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.byte	0x39
	.byte	0x22
	.long	0x10ce
	.uleb128 0x19
	.long	0xa51
	.uleb128 0x4
	.long	0xa48
	.long	.LLST13
	.long	.LVUS13
	.byte	0
	.uleb128 0xe
	.long	0xa3a
	.quad	.LBI61
	.byte	.LVU63
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.byte	0x45
	.byte	0x26
	.long	0x1105
	.uleb128 0x19
	.long	0xa51
	.uleb128 0x4
	.long	0xa48
	.long	.LLST15
	.long	.LVUS15
	.byte	0
	.uleb128 0x32
	.quad	.LVL10
	.long	0x1162
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x3a1
	.byte	0x2c
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x1162
	.uleb128 0x31
	.string	"pos"
	.byte	0x2c
	.byte	0x27
	.long	0x1aa
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x9
	.quad	.LVL56
	.long	0x130a
	.byte	0
	.uleb128 0x7
	.long	0x2ca
	.byte	0x25
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x12b6
	.uleb128 0x8
	.long	.LASF597
	.byte	0x25
	.byte	0x24
	.long	0x32
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x2e
	.string	"pos"
	.byte	0x25
	.byte	0x31
	.long	0x32
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.long	.LASF487
	.byte	0x25
	.byte	0x3e
	.long	0x55
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x8
	.long	.LASF488
	.byte	0x25
	.byte	0x54
	.long	0xe2
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xe
	.long	0xa7f
	.quad	.LBI50
	.byte	.LVU3
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.byte	0x28
	.byte	0x1a
	.long	0x1203
	.uleb128 0x4
	.long	0xa96
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x4
	.long	0xa8d
	.long	.LLST4
	.long	.LVUS4
	.byte	0
	.uleb128 0xe
	.long	0xa5d
	.quad	.LBI52
	.byte	.LVU8
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.byte	0x28
	.byte	0x1f
	.long	0x1242
	.uleb128 0x4
	.long	0xa74
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x4
	.long	0xa6b
	.long	.LLST6
	.long	.LVUS6
	.byte	0
	.uleb128 0xe
	.long	0xa7f
	.quad	.LBI53
	.byte	.LVU13
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.byte	0x29
	.byte	0x1a
	.long	0x1281
	.uleb128 0x4
	.long	0xa96
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x4
	.long	0xa8d
	.long	.LLST8
	.long	.LVUS8
	.byte	0
	.uleb128 0x18
	.long	0xa5d
	.quad	.LBI54
	.byte	.LVU15
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.byte	0x1
	.byte	0x29
	.byte	0x1f
	.uleb128 0x19
	.long	0xa74
	.uleb128 0x4
	.long	0xa6b
	.long	.LLST9
	.long	.LVUS9
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x41b
	.byte	0x1f
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x12e0
	.uleb128 0x9
	.quad	.LVL54
	.long	0x130a
	.byte	0
	.uleb128 0x7
	.long	0x410
	.byte	0x19
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x130a
	.uleb128 0x9
	.quad	.LVL53
	.long	0x130a
	.byte	0
	.uleb128 0x4c
	.long	0x451
	.byte	0x1
	.byte	0x5
	.byte	0xa
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.string	"pos"
	.byte	0x11
	.byte	0x10
	.long	0x32
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x10
	.quad	.LVL43
	.long	0xbb1
	.long	0x1356
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console11s_cursorPosE
	.byte	0
	.uleb128 0x10
	.quad	.LVL44
	.long	0x968
	.long	0x1374
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x3d4
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x10
	.quad	.LVL45
	.long	0x968
	.long	0x1393
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x3d5
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.quad	.LVL46
	.long	0x968
	.long	0x13b1
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x3d5
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.quad	.LVL47
	.long	0x968
	.long	0x13cf
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x3d5
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.quad	.LVL49
	.long	0x968
	.long	0x13ed
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x3d4
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.quad	.LVL50
	.long	0x968
	.long	0x140f
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x3d5
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.quad	.LVL51
	.long	0x968
	.long	0x142d
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x3d4
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x32
	.quad	.LVL52
	.long	0x968
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x3d5
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.sleb128 16
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.sleb128 16
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
	.sleb128 3
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
	.uleb128 0x2b
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xd
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
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x6
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4c
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
.LVUS55:
	.uleb128 .LVU334
	.uleb128 .LVU339
.LLST55:
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS54:
	.uleb128 0
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU328
	.uleb128 .LVU328
	.uleb128 0
.LLST54:
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL82-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL82-1-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LFE86-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS52:
	.uleb128 0
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 0
.LLST52:
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 .LFE85-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS53:
	.uleb128 .LVU303
	.uleb128 .LVU304
.LLST53:
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 0
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 0
.LLST51:
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL75-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL75-1-.Ltext0
	.uleb128 .LFE82-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU123
	.uleb128 .LVU158
.LLST23:
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS24:
	.uleb128 .LVU158
	.uleb128 .LVU160
	.uleb128 .LVU172
	.uleb128 0
.LLST24:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS26:
	.uleb128 .LVU125
	.uleb128 .LVU160
	.uleb128 .LVU172
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS27:
	.uleb128 .LVU126
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU155
.LLST27:
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS29:
	.uleb128 .LVU129
	.uleb128 .LVU130
.LLST29:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS30:
	.uleb128 .LVU129
	.uleb128 .LVU130
.LLST30:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 .LVU130
	.uleb128 .LVU132
.LLST31:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS32:
	.uleb128 .LVU130
	.uleb128 .LVU132
.LLST32:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1f
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE+327680
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.value	0x7ff
	.byte	0x1a
	.byte	0x8
	.byte	0xa0
	.byte	0x1e
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU141
	.uleb128 .LVU142
.LLST34:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS35:
	.uleb128 .LVU141
	.uleb128 .LVU142
.LLST35:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU142
	.uleb128 .LVU144
.LLST36:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS37:
	.uleb128 .LVU142
	.uleb128 .LVU144
.LLST37:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1f
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE+327680
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.value	0x7ff
	.byte	0x1a
	.byte	0x8
	.byte	0xa0
	.byte	0x1e
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU159
	.uleb128 0
.LLST38:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS39:
	.uleb128 .LVU160
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU172
.LLST39:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS25:
	.uleb128 .LVU114
	.uleb128 .LVU117
.LLST25:
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 0
.LLST16:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LFE80-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 0
.LLST17:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE80-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS18:
	.uleb128 .LVU77
	.uleb128 .LVU81
.LLST18:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 .LVU83
	.uleb128 .LVU84
.LLST20:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS21:
	.uleb128 .LVU83
	.uleb128 .LVU84
.LLST21:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU98
	.uleb128 .LVU108
.LLST22:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS42:
	.uleb128 0
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 0
.LLST42:
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL60-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL60-1-.Ltext0
	.uleb128 .LFE79-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 0
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 0
.LLST43:
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL60-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL60-1-.Ltext0
	.uleb128 .LFE79-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS44:
	.uleb128 0
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 0
.LLST44:
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL73-1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL73-1-.Ltext0
	.uleb128 .LFE78-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS45:
	.uleb128 0
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 0
.LLST45:
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LFE78-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS46:
	.uleb128 .LVU250
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 .LVU279
.LLST46:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL73-1-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS47:
	.uleb128 .LVU252
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU273
.LLST47:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS48:
	.uleb128 .LVU267
	.uleb128 .LVU269
.LLST48:
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS50:
	.uleb128 .LVU271
	.uleb128 .LVU276
.LLST50:
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL10-1-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LFE77-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL10-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL10-1-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE77-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU41
	.uleb128 .LVU53
.LLST13:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU63
	.uleb128 .LVU73
.LLST15:
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 0
	.uleb128 .LVU235
.LLST41:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL56-1-.Ltext0
	.uleb128 0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x8
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE75-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE75-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LFE75-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS3:
	.uleb128 .LVU3
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
.LLST3:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU3
	.uleb128 .LVU7
.LLST4:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU7
	.uleb128 .LVU9
.LLST5:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS6:
	.uleb128 .LVU7
	.uleb128 .LVU9
.LLST6:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x10
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xa0
	.byte	0x1e
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU13
	.uleb128 .LVU14
.LLST7:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU13
	.uleb128 .LVU14
.LLST8:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU14
	.uleb128 .LVU16
.LLST9:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x10
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xa0
	.byte	0x1e
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS40:
	.uleb128 .LVU207
	.uleb128 0
.LLST40:
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LFE72-.Ltext0
	.uleb128 0x1
	.byte	0x53
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
.LLRL19:
	.byte	0x4
	.uleb128 .LBB64-.Ltext0
	.uleb128 .LBE64-.Ltext0
	.byte	0x4
	.uleb128 .LBB66-.Ltext0
	.uleb128 .LBE66-.Ltext0
	.byte	0
.LLRL28:
	.byte	0x4
	.uleb128 .LBB73-.Ltext0
	.uleb128 .LBE73-.Ltext0
	.byte	0x4
	.uleb128 .LBB76-.Ltext0
	.uleb128 .LBE76-.Ltext0
	.byte	0
.LLRL33:
	.byte	0x4
	.uleb128 .LBB77-.Ltext0
	.uleb128 .LBE77-.Ltext0
	.byte	0x4
	.uleb128 .LBB80-.Ltext0
	.uleb128 .LBE80-.Ltext0
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
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF433
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF436
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x2
	.long	.LASF437
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x4
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
.LASF585:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF328:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF169:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF316:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF491:
	.string	"_ZN6Kernel7Console8s_extentE"
.LASF273:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF217:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF606:
	.string	"_ZN6Kernel7Console11s_vgaScreenE"
.LASF244:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF509:
	.string	"clear"
.LASF360:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF166:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF203:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF412:
	.string	"__amd64__ 1"
.LASF411:
	.string	"__amd64 1"
.LASF212:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF286:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF497:
	.string	"_ZN6Kernel7Console12s_charBufferE"
.LASF498:
	.string	"_ZN6Kernel7Console11s_cursorPosE"
.LASF193:
	.string	"__UINT8_C(c) c"
.LASF458:
	.string	"BrownOnBlack"
.LASF472:
	.string	"BlackOnCyan"
.LASF588:
	.string	"capacity"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF340:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF239:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF206:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF507:
	.string	"_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE"
.LASF220:
	.string	"__FLT_RADIX__ 2"
.LASF121:
	.string	"__cpp_designated_initializers 201707L"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF348:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF548:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSERKS4_"
.LASF338:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF27:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF539:
	.string	"_ZN6Kernel7Console10flushToVgaEv"
.LASF453:
	.string	"BlueOnBlack"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF179:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF80:
	.string	"__cpp_hex_float 201603L"
.LASF124:
	.string	"__cpp_conditional_explicit 201806L"
.LASF301:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF159:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF24:
	.string	"__SIZEOF_SHORT__ 2"
.LASF47:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF28:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF456:
	.string	"RedOnBlack"
.LASF482:
	.string	"CursorPos"
.LASF492:
	.string	"_ZN6Kernel7Console17s_bufferLineCountE"
.LASF605:
	.string	"s_vgaScreen"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF515:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF466:
	.string	"YellowOnBlack"
.LASF541:
	.string	"Utils"
.LASF101:
	.string	"__cpp_digit_separators 201309L"
.LASF557:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF146:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF457:
	.string	"MagentaOnBlack"
.LASF374:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF271:
	.string	"__FLT16_DIG__ 3"
.LASF51:
	.string	"__INT16_TYPE__ short int"
.LASF285:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF592:
	.string	"s_size"
.LASF17:
	.string	"__OPTIMIZE__ 1"
.LASF254:
	.string	"__LDBL_DIG__ 18"
.LASF354:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF128:
	.string	"__cpp_nontype_template_args 201911L"
.LASF546:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4EOS4_"
.LASF57:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF58:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF64:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF433:
	.string	"CONSOLE_H "
.LASF34:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF263:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF289:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF249:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF61:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF150:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF183:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF298:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF167:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF337:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF586:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF601:
	.string	"clearValue"
.LASF303:
	.string	"__FLT64_DIG__ 15"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF250:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF346:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF269:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF267:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF513:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF347:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF209:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF555:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF62:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF469:
	.string	"WhiteOnBlue"
.LASF584:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF181:
	.string	"__INT8_C(c) c"
.LASF325:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF200:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF127:
	.string	"__cpp_deduction_guides 201907L"
.LASF60:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF185:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF241:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF587:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4sizeEv"
.LASF465:
	.string	"LightMagentaOnBlack"
.LASF540:
	.string	"_ZN6Kernel7Console12updateCursorEv"
.LASF32:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF113:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF317:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF204:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF480:
	.string	"BlackOnLightGray"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF566:
	.string	"RollingWindow<Utils::Array<Kernel::Console::VgaChar, 80>, 2048>"
.LASF352:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF96:
	.string	"__cpp_alias_templates 200704L"
.LASF591:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5clearEv"
.LASF222:
	.string	"__FLT_DIG__ 6"
.LASF202:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF390:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF294:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF462:
	.string	"LightGreenOnBlack"
.LASF157:
	.string	"__INT_WIDTH__ 32"
.LASF560:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF573:
	.string	"popBack"
.LASF446:
	.string	"long long unsigned int"
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
.LASF454:
	.string	"GreenOnBlack"
.LASF192:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF367:
	.string	"__BFLT16_DIG__ 2"
.LASF42:
	.string	"__WCHAR_TYPE__ int"
.LASF172:
	.string	"__INT8_MAX__ 0x7f"
.LASF520:
	.string	"getExtent"
.LASF336:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF265:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF471:
	.string	"WhiteOnGreen"
.LASF596:
	.string	"lines"
.LASF345:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF108:
	.string	"__cpp_range_based_for 201603L"
.LASF603:
	.string	"Console"
.LASF350:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF488:
	.string	"attr"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF365:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF533:
	.string	"setDisplayLine"
.LASF542:
	.string	"m_data"
.LASF66:
	.string	"__INT_FAST8_TYPE__ int"
.LASF478:
	.string	"BlackOnBrown"
.LASF71:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF132:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF257:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF590:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5emptyEv"
.LASF74:
	.string	"__INTPTR_TYPE__ long int"
.LASF474:
	.string	"BlackOnRed"
.LASF79:
	.string	"__cpp_binary_literals 201304L"
.LASF423:
	.string	"__MMX__ 1"
.LASF135:
	.string	"__cpp_concepts 202002L"
.LASF191:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF493:
	.string	"s_windowCapacity"
.LASF307:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF31:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF83:
	.string	"__cpp_unicode_literals 200710L"
.LASF562:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
.LASF130:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF251:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF52:
	.string	"__INT32_TYPE__ int"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF362:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF413:
	.string	"__x86_64 1"
.LASF440:
	.string	"size_t"
.LASF551:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4sizeEv"
.LASF199:
	.string	"__UINT64_C(c) c ## UL"
.LASF484:
	.string	"width"
.LASF608:
	.string	"_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE"
.LASF281:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF76:
	.string	"__GXX_WEAK__ 1"
.LASF599:
	.string	"endLine"
.LASF486:
	.string	"VgaChar"
.LASF487:
	.string	"character"
.LASF245:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF260:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF208:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF323:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF305:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF290:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF434:
	.string	"TYPES_H "
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF578:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8popFrontEv"
.LASF485:
	.string	"height"
.LASF564:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF414:
	.string	"__x86_64__ 1"
.LASF67:
	.string	"__INT_FAST16_TYPE__ int"
.LASF567:
	.string	"m_tail"
.LASF531:
	.string	"_ZN6Kernel7Console12enableCursorEv"
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
.LASF604:
	.string	"Attributes"
.LASF136:
	.string	"__cpp_impl_coroutine 201902L"
.LASF148:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF63:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF226:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF122:
	.string	"__cpp_constexpr 202002L"
.LASF470:
	.string	"BlackOnGreen"
.LASF126:
	.string	"__cpp_constinit 201907L"
.LASF344:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF274:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF138:
	.string	"__cpp_aligned_new 201606L"
.LASF441:
	.string	"uint8_t"
.LASF3:
	.string	"__cplusplus 202002L"
.LASF106:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF164:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF383:
	.string	"__USER_LABEL_PREFIX__ "
.LASF214:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
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
.LASF522:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF228:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF240:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF264:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF256:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF295:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF287:
	.string	"__FLT32_DIG__ 6"
.LASF143:
	.string	"__GXX_ABI_VERSION 1018"
.LASF495:
	.string	"s_charBuffer"
.LASF314:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF100:
	.string	"__cpp_variable_templates 201304L"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF88:
	.string	"__cpp_rvalue_reference 200610L"
.LASF565:
	.string	"Array<Kernel::Console::VgaChar, 80>"
.LASF481:
	.string	"WhiteOnLightGray"
.LASF95:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF70:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF568:
	.string	"m_head"
.LASF357:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF327:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF379:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF574:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE7popBackEv"
.LASF182:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF364:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF176:
	.string	"__UINT8_MAX__ 0xff"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF177:
	.string	"__UINT16_MAX__ 0xffff"
.LASF69:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF496:
	.string	"s_cursorPos"
.LASF168:
	.string	"__INTMAX_WIDTH__ 64"
.LASF421:
	.string	"__k8__ 1"
.LASF48:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF528:
	.string	"_ZN6Kernel7Console8scrollUpEm"
.LASF153:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF59:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF561:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF139:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF49:
	.string	"__SIG_ATOMIC_TYPE__ int"
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
.LASF504:
	.string	"_ZN6Kernel7Console13s_shouldFlushE"
.LASF270:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF86:
	.string	"__cpp_decltype 200707L"
.LASF519:
	.string	"getCursor"
.LASF334:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF373:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF292:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF19:
	.string	"_LP64 1"
.LASF98:
	.string	"__cpp_decltype_auto 201304L"
.LASF449:
	.string	"long long int"
.LASF575:
	.string	"pushFront"
.LASF93:
	.string	"__cpp_nsdmi 200809L"
.LASF349:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF366:
	.string	"__BFLT16_MANT_DIG__ 8"
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
.LASF499:
	.string	"s_displayLine"
.LASF114:
	.string	"__cpp_template_auto 201606L"
.LASF532:
	.string	"_ZN6Kernel7Console13disableCursorEv"
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
.LASF377:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF25:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF144:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF582:
	.string	"front"
.LASF234:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF371:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF283:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF341:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF2:
	.string	"__STDC__ 1"
.LASF425:
	.string	"__SSE2__ 1"
.LASF310:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF577:
	.string	"popFront"
.LASF22:
	.string	"__SIZEOF_LONG__ 8"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF272:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF376:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF205:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF216:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF89:
	.string	"__cpp_rvalue_references 200610L"
.LASF553:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5emptyEv"
.LASF547:
	.string	"operator="
.LASF173:
	.string	"__INT16_MAX__ 0x7fff"
.LASF550:
	.string	"size"
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
.LASF549:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSEOS4_"
.LASF152:
	.string	"__WINT_MIN__ 0U"
.LASF253:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF90:
	.string	"__cpp_variadic_templates 200704L"
.LASF554:
	.string	"operator[]"
.LASF600:
	.string	"start"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF534:
	.string	"_ZN6Kernel7Console14setDisplayLineEm"
.LASF576:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE9pushFrontERKS5_"
.LASF527:
	.string	"scrollUp"
.LASF501:
	.string	"s_cursorEnabled"
.LASF609:
	.string	"port_out_byte"
.LASF460:
	.string	"DarkGrayOnBlack"
.LASF38:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF117:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF311:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF467:
	.string	"WhiteOnBlack"
.LASF321:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF35:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF103:
	.string	"__cpp_static_assert 201411L"
.LASF468:
	.string	"BlackOnBlue"
.LASF473:
	.string	"WhiteOnCyan"
.LASF170:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF436:
	.string	"UTILS_H "
.LASF174:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF563:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF195:
	.string	"__UINT16_C(c) c"
.LASF175:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF544:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4Ev"
.LASF306:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF97:
	.string	"__cpp_return_type_deduction 201304L"
.LASF431:
	.string	"__SEG_GS 1"
.LASF107:
	.string	"__cpp_fold_expressions 201603L"
.LASF427:
	.string	"__SSE_MATH__ 1"
.LASF443:
	.string	"uint16_t"
.LASF45:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF282:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF461:
	.string	"LightBlueOnBlack"
.LASF505:
	.string	"writeChar"
.LASF593:
	.string	"this"
.LASF571:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC4Ev"
.LASF105:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF171:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF81:
	.string	"__cpp_runtime_arrays 198712L"
.LASF381:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF459:
	.string	"LightGrayOnBlack"
.LASF145:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF508:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF118:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF33:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF583:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
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
.LASF382:
	.string	"__REGISTER_PREFIX__ "
.LASF296:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF612:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC2Ev"
.LASF607:
	.string	"cursorInScreenBounds"
.LASF448:
	.string	"short int"
.LASF147:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF332:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF111:
	.string	"__cpp_inline_variables 201606L"
.LASF142:
	.string	"__cpp_char8_t 202207L"
.LASF353:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF572:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8pushBackERKS5_"
.LASF506:
	.string	"putChar"
.LASF439:
	.string	"long int"
.LASF503:
	.string	"s_shouldFlush"
.LASF112:
	.string	"__cpp_aggregate_bases 201603L"
.LASF39:
	.string	"__GNUG__ 13"
.LASF611:
	.string	"__static_initialization_and_destruction_0"
.LASF375:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF355:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF521:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF358:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF538:
	.string	"updateCursor"
.LASF476:
	.string	"BlackOnMagenta"
.LASF213:
	.string	"__INTPTR_WIDTH__ 64"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF370:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF322:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF187:
	.string	"__INT32_C(c) c"
.LASF297:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF268:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF50:
	.string	"__INT8_TYPE__ signed char"
.LASF151:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF46:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF198:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF155:
	.string	"__SCHAR_WIDTH__ 8"
.LASF602:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O1 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF511:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF483:
	.string	"Extent"
.LASF526:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF237:
	.string	"__DBL_MANT_DIG__ 53"
.LASF210:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF109:
	.string	"__cpp_if_constexpr 201606L"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF518:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF129:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF455:
	.string	"CyanOnBlack"
.LASF537:
	.string	"flushToVga"
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
.LASF589:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8capacityEv"
.LASF516:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF165:
	.string	"__INTMAX_C(c) c ## L"
.LASF535:
	.string	"clampDisplayToCursor"
.LASF37:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF514:
	.string	"clearSpan"
.LASF369:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF445:
	.string	"unsigned int"
.LASF36:
	.string	"__SIZEOF_POINTER__ 8"
.LASF312:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF335:
	.string	"__FLT32X_DIG__ 15"
.LASF512:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF91:
	.string	"__cpp_initializer_lists 200806L"
.LASF579:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF149:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF221:
	.string	"__FLT_MANT_DIG__ 24"
.LASF232:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF523:
	.string	"getWindowCapacity"
.LASF543:
	.string	"Array"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF598:
	.string	"is_integral_v"
.LASF430:
	.string	"__SEG_FS 1"
.LASF510:
	.string	"clearLine"
.LASF556:
	.string	"data"
.LASF380:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF438:
	.string	"long unsigned int"
.LASF610:
	.string	"_GLOBAL__sub_I__ZN6Kernel7Console12updateCursorEv"
.LASF552:
	.string	"empty"
.LASF77:
	.string	"__DEPRECATED 1"
.LASF489:
	.string	"s_extent"
.LASF29:
	.string	"__CHAR_BIT__ 8"
.LASF437:
	.string	"ROLLING_WINDOW_H "
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF163:
	.string	"__SIZE_WIDTH__ 64"
.LASF141:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF104:
	.string	"__cpp_namespace_attributes 201411L"
.LASF284:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF291:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF158:
	.string	"__LONG_WIDTH__ 64"
.LASF569:
	.string	"RollingWindow"
.LASF595:
	.string	"index"
.LASF420:
	.string	"__k8 1"
.LASF125:
	.string	"__cpp_consteval 201811L"
.LASF581:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF318:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF442:
	.string	"unsigned char"
.LASF53:
	.string	"__INT64_TYPE__ long int"
.LASF230:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF189:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF123:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF597:
	.string	"line"
.LASF219:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF524:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF94:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF426:
	.string	"__FXSR__ 1"
.LASF536:
	.string	"_ZN6Kernel7Console20clampDisplayToCursorEv"
.LASF188:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF494:
	.string	"_ZN6Kernel7Console16s_windowCapacityE"
.LASF72:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF490:
	.string	"s_bufferLineCount"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF65:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF464:
	.string	"LightRedOnBlack"
.LASF85:
	.string	"__cpp_lambdas 200907L"
.LASF154:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF304:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF252:
	.string	"__DBL_IS_IEC_60559__ 1"
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
.LASF530:
	.string	"disableCursor"
.LASF224:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF475:
	.string	"WhiteOnRed"
.LASF218:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF559:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
.LASF451:
	.string	"Kernel"
.LASF190:
	.string	"__INT64_C(c) c ## L"
.LASF525:
	.string	"scrollDown"
.LASF68:
	.string	"__INT_FAST32_TYPE__ int"
.LASF477:
	.string	"WhiteOnMagenta"
.LASF235:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF21:
	.string	"__SIZEOF_INT__ 4"
.LASF99:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF502:
	.string	"_ZN6Kernel7Console15s_cursorEnabledE"
.LASF92:
	.string	"__cpp_delegating_constructors 200604L"
.LASF529:
	.string	"enableCursor"
.LASF315:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF500:
	.string	"_ZN6Kernel7Console13s_displayLineE"
.LASF84:
	.string	"__cpp_user_defined_literals 200809L"
.LASF447:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF570:
	.string	"pushBack"
.LASF242:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF259:
	.string	"__DECIMAL_DIG__ 21"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF444:
	.string	"short unsigned int"
.LASF558:
	.string	"begin"
.LASF384:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF110:
	.string	"__cpp_capture_star_this 201603L"
.LASF102:
	.string	"__cpp_unicode_characters 201411L"
.LASF30:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF329:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF308:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF517:
	.string	"setCursor"
.LASF331:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF201:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF479:
	.string	"WhiteOnBrown"
.LASF223:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF313:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF580:
	.string	"back"
.LASF326:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF225:
	.string	"__FLT_MAX_EXP__ 128"
.LASF417:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF452:
	.string	"BlackOnBlack"
.LASF277:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF243:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF196:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF339:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF44:
	.string	"__INTMAX_TYPE__ long int"
.LASF275:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF545:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4ERKS4_"
.LASF342:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF229:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF82:
	.string	"__cpp_raw_strings 200710L"
.LASF248:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF41:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF450:
	.string	"bool"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF324:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF368:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF162:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF186:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF73:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF258:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF119:
	.string	"__cpp_init_captures 201803L"
.LASF293:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF406:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF594:
	.string	"value"
.LASF361:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF137:
	.string	"__cpp_sized_deallocation 201309L"
.LASF330:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF116:
	.string	"__cpp_variadic_using 201611L"
.LASF333:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF43:
	.string	"__WINT_TYPE__ unsigned int"
.LASF266:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF463:
	.string	"LightCyanOnBlack"
.LASF120:
	.string	"__cpp_generic_lambdas 201707L"
.LASF302:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF424:
	.string	"__SSE__ 1"
.LASF233:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF207:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF215:
	.string	"__GCC_IEC_559 2"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/mnt/a/myOsX64"
.LASF0:
	.string	"src/kernel/Console.cpp"
	.ident	"GCC: (GNU) 13.2.0"
