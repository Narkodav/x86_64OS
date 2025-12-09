	.file	"Console.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/mnt/a/myOsX64" "src/drivers/Console.cpp"
	.align 2
	.globl	_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE, @function
_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE:
.LVL0:
.LFB97:
	.file 1 "src/drivers/Console.cpp"
	.loc 1 39 5 view -0
	.cfi_startproc
	.loc 1 39 5 is_stmt 0 view .LVU1
	movq	%rdi, %rax
	movl	%edx, %r8d
	movl	%ecx, %edi
.LVL1:
	.loc 1 40 9 is_stmt 1 view .LVU2
.LBB48:
.LBI48:
	.file 2 "src/drivers/../../include/drivers/../utils/RollingWindow.h"
	.loc 2 195 8 view .LVU3
.LBB49:
	.loc 2 197 24 is_stmt 0 view .LVU4
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rcx
.LVL2:
	.loc 2 197 24 view .LVU5
	movq	327680(%rcx), %rdx
.LVL3:
	.loc 2 197 24 view .LVU6
.LBE49:
.LBE48:
.LBB51:
.LBI51:
	.file 3 "src/drivers/../../include/drivers/../utils/Array.h"
	.loc 3 28 12 is_stmt 1 view .LVU7
	.loc 3 28 12 is_stmt 0 view .LVU8
.LBE51:
.LBB52:
.LBB50:
	.loc 2 197 31 view .LVU9
	addq	%rax, %rdx
	.loc 2 197 40 view .LVU10
	andl	$2047, %edx
.LBE50:
.LBE52:
	.loc 1 40 43 discriminator 2 view .LVU11
	leaq	(%rdx,%rdx,4), %rdx
	salq	$4, %rdx
	addq	%rsi, %rdx
	movb	%r8b, (%rcx,%rdx,2)
	.loc 1 41 9 is_stmt 1 view .LVU12
.LVL4:
.LBB53:
.LBI53:
	.loc 2 195 8 view .LVU13
.LBB54:
	.loc 2 197 24 is_stmt 0 view .LVU14
	movq	327680(%rcx), %rdx
.LVL5:
	.loc 2 197 24 view .LVU15
.LBE54:
.LBE53:
.LBB56:
.LBI56:
	.loc 3 28 12 is_stmt 1 view .LVU16
	.loc 3 28 12 is_stmt 0 view .LVU17
.LBE56:
.LBB57:
.LBB55:
	.loc 2 197 31 view .LVU18
	addq	%rdx, %rax
.LVL6:
	.loc 2 197 40 view .LVU19
	andl	$2047, %eax
.LBE55:
.LBE57:
	.loc 1 41 38 discriminator 2 view .LVU20
	leaq	(%rax,%rax,4), %rax
	salq	$4, %rax
	addq	%rsi, %rax
	movb	%dil, 1(%rcx,%rax,2)
	.loc 1 42 5 view .LVU21
	ret
	.cfi_endproc
.LFE97:
	.size	_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE, .-_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.type	_ZN6Kernel7Console7putCharEhNS0_10AttributesE, @function
_ZN6Kernel7Console7putCharEhNS0_10AttributesE:
.LVL7:
.LFB99:
	.loc 1 52 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 53 9 view .LVU23
	cmpb	$10, %dil
	je	.L12
	.loc 1 52 5 is_stmt 0 view .LVU24
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 61 13 is_stmt 1 view .LVU25
	.loc 1 61 50 is_stmt 0 view .LVU26
	movabsq	$_ZN6Kernel7Console11s_cursorPosE, %rbx
	movq	(%rbx), %r8
	.loc 1 61 35 view .LVU27
	movq	8(%rbx), %rax
	.loc 1 61 22 view .LVU28
	movzbl	%dil, %edx
	movl	%esi, %ecx
	movq	%r8, %rsi
.LVL8:
	.loc 1 61 22 view .LVU29
	movq	%rax, %rdi
.LVL9:
	.loc 1 61 22 view .LVU30
	movabsq	$_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE, %rax
	call	*%rax
.LVL10:
	.loc 1 62 13 is_stmt 1 view .LVU31
	.loc 1 62 29 is_stmt 0 view .LVU32
	movq	(%rbx), %rax
	.loc 1 62 13 view .LVU33
	cmpq	$80, %rax
	je	.L13
	.loc 1 72 17 is_stmt 1 view .LVU34
	.loc 1 72 31 is_stmt 0 view .LVU35
	movabsq	$_ZN6Kernel7Console11s_cursorPosE, %rdx
	movq	(%rdx), %rax
	.loc 1 72 17 view .LVU36
	addq	$1, %rax
	movq	%rax, (%rdx)
.L2:
	.loc 1 74 5 view .LVU37
	movq	-8(%rbp), %rbx
	leave
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
.LVL11:
.L12:
	.loc 1 55 13 is_stmt 1 view .LVU38
	.loc 1 55 27 is_stmt 0 view .LVU39
	movabsq	$_ZN6Kernel7Console11s_cursorPosE, %rax
	movq	$0, (%rax)
	.loc 1 56 13 is_stmt 1 view .LVU40
	.loc 1 56 27 is_stmt 0 view .LVU41
	movq	8(%rax), %rdx
	.loc 1 56 13 view .LVU42
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	.loc 1 57 13 is_stmt 1 view .LVU43
.LVL12:
.LBB62:
.LBI62:
	.loc 2 141 10 view .LVU44
.LBB63:
	.loc 2 143 16 is_stmt 0 view .LVU45
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rdx
	movq	327688(%rdx), %rax
	.loc 2 143 9 view .LVU46
	leaq	(%rax,%rax,4), %rsi
.LVL13:
	.loc 2 143 9 view .LVU47
	salq	$5, %rsi
	addq	%rdx, %rsi
	movl	$20, %ecx
	movl	$0, %eax
	movq	%rsi, %rdi
.LVL14:
	.loc 2 143 9 view .LVU48
	rep stosq
	.loc 2 144 19 view .LVU49
	movq	327688(%rdx), %rax
	.loc 2 144 26 view .LVU50
	addq	$1, %rax
	.loc 2 144 31 view .LVU51
	andl	$2047, %eax
	.loc 2 144 16 view .LVU52
	movq	%rax, 327688(%rdx)
	.loc 2 145 13 view .LVU53
	movq	327688(%rdx), %rcx
	.loc 2 145 23 view .LVU54
	movq	327680(%rdx), %rax
	.loc 2 145 9 view .LVU55
	cmpq	%rax, %rcx
	je	.L14
	ret
.L14:
	.loc 2 147 23 view .LVU56
	movq	327680(%rdx), %rax
	.loc 2 147 30 view .LVU57
	addq	$1, %rax
	.loc 2 147 35 view .LVU58
	andl	$2047, %eax
	.loc 2 147 20 view .LVU59
	movq	%rax, 327680(%rdx)
.LVL15:
	.loc 2 147 20 view .LVU60
	ret
.L13:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
.LBE63:
.LBE62:
	.loc 1 64 17 is_stmt 1 view .LVU61
	.loc 1 64 31 is_stmt 0 view .LVU62
	movq	$0, (%rbx)
	.loc 1 65 17 is_stmt 1 view .LVU63
	.loc 1 65 33 is_stmt 0 view .LVU64
	movq	8(%rbx), %rax
.LVL16:
	.loc 1 65 17 discriminator 1 view .LVU65
	cmpq	$2046, %rax
	ja	.L7
	.loc 1 67 21 is_stmt 1 view .LVU66
	.loc 1 67 35 is_stmt 0 view .LVU67
	movq	8(%rbx), %rax
	.loc 1 67 21 view .LVU68
	addq	$1, %rax
	movq	%rax, 8(%rbx)
.L7:
	.loc 1 69 17 is_stmt 1 view .LVU69
.LVL17:
.LBB64:
.LBI64:
	.loc 2 141 10 view .LVU70
.LBB65:
	.loc 2 143 16 is_stmt 0 view .LVU71
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rdx
	movq	327688(%rdx), %rax
	.loc 2 143 9 view .LVU72
	leaq	(%rax,%rax,4), %rsi
	salq	$5, %rsi
	addq	%rdx, %rsi
	movl	$20, %ecx
	movl	$0, %eax
	movq	%rsi, %rdi
	rep stosq
	.loc 2 144 19 view .LVU73
	movq	327688(%rdx), %rax
	.loc 2 144 26 view .LVU74
	addq	$1, %rax
	.loc 2 144 31 view .LVU75
	andl	$2047, %eax
	.loc 2 144 16 view .LVU76
	movq	%rax, 327688(%rdx)
	.loc 2 145 13 view .LVU77
	movq	327688(%rdx), %rcx
	.loc 2 145 23 view .LVU78
	movq	327680(%rdx), %rax
	.loc 2 145 9 view .LVU79
	cmpq	%rax, %rcx
	jne	.L2
	.loc 2 147 23 view .LVU80
	movq	327680(%rdx), %rax
	.loc 2 147 30 view .LVU81
	addq	$1, %rax
	.loc 2 147 35 view .LVU82
	andl	$2047, %eax
	.loc 2 147 20 view .LVU83
	movq	%rax, 327680(%rdx)
.LVL18:
	.loc 2 147 20 view .LVU84
	jmp	.L2
.LBE65:
.LBE64:
	.cfi_endproc
.LFE99:
	.size	_ZN6Kernel7Console7putCharEhNS0_10AttributesE, .-_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE:
.LVL19:
.LFB102:
	.loc 1 109 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 109 5 is_stmt 0 view .LVU86
	movl	%esi, %r8d
	movl	%edx, %esi
.LVL20:
	.loc 1 110 9 is_stmt 1 view .LVU87
.LBB66:
	.loc 1 110 30 discriminator 1 view .LVU88
	.loc 1 110 21 is_stmt 0 view .LVU89
	movl	$0, %edx
.LVL21:
.LBB67:
.LBB68:
	.loc 2 197 24 view .LVU90
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rcx
.LVL22:
.L16:
	.loc 2 197 24 view .LVU91
.LBE68:
.LBE67:
	.loc 1 112 13 is_stmt 1 view .LVU92
.LBB71:
.LBI67:
	.loc 2 195 8 view .LVU93
.LBB69:
	.loc 2 197 24 is_stmt 0 view .LVU94
	movq	327680(%rcx), %rax
.LVL23:
	.loc 2 197 24 view .LVU95
.LBE69:
.LBE71:
.LBB72:
.LBI72:
	.loc 3 28 12 is_stmt 1 view .LVU96
	.loc 3 28 12 is_stmt 0 view .LVU97
.LBE72:
.LBB73:
.LBB70:
	.loc 2 197 31 view .LVU98
	addq	%rdi, %rax
	.loc 2 197 40 view .LVU99
	andl	$2047, %eax
.LBE70:
.LBE73:
	.loc 1 112 45 discriminator 2 view .LVU100
	leaq	(%rax,%rax,4), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movb	%r8b, (%rcx,%rax,2)
	.loc 1 113 13 is_stmt 1 view .LVU101
.LVL24:
.LBB74:
.LBI74:
	.loc 2 195 8 view .LVU102
.LBB75:
	.loc 2 197 24 is_stmt 0 view .LVU103
	movq	327680(%rcx), %rax
.LVL25:
	.loc 2 197 24 view .LVU104
.LBE75:
.LBE74:
.LBB77:
.LBI77:
	.loc 3 28 12 is_stmt 1 view .LVU105
	.loc 3 28 12 is_stmt 0 view .LVU106
.LBE77:
.LBB78:
.LBB76:
	.loc 2 197 31 view .LVU107
	addq	%rdi, %rax
	.loc 2 197 40 view .LVU108
	andl	$2047, %eax
.LBE76:
.LBE78:
	.loc 1 113 40 discriminator 2 view .LVU109
	leaq	(%rax,%rax,4), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movb	%sil, 1(%rcx,%rax,2)
	.loc 1 110 9 is_stmt 1 discriminator 3 view .LVU110
	addq	$1, %rdx
.LVL26:
	.loc 1 110 30 discriminator 1 view .LVU111
	cmpq	$80, %rdx
	jne	.L16
	.loc 1 110 30 is_stmt 0 discriminator 1 view .LVU112
.LBE66:
	.loc 1 115 5 view .LVU113
	ret
	.cfi_endproc
.LFE102:
	.size	_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE, .-_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console10flushToVgaEv
	.type	_ZN6Kernel7Console10flushToVgaEv, @function
_ZN6Kernel7Console10flushToVgaEv:
.LFB103:
	.loc 1 161 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 162 9 view .LVU115
	.loc 1 162 24 is_stmt 0 view .LVU116
	movabsq	$_ZN6Kernel7Console13s_displayLineE, %rdx
	movq	(%rdx), %rax
	.loc 1 163 9 is_stmt 1 view .LVU117
.LVL27:
.LBB79:
.LBI79:
	.loc 2 225 12 view .LVU118
.LBB80:
	.loc 2 227 18 is_stmt 0 view .LVU119
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rcx
	movq	327688(%rcx), %rax
	.loc 2 227 37 view .LVU120
	movq	327680(%rcx), %rcx
.LVL28:
	.loc 2 227 37 view .LVU121
.LBE80:
.LBE79:
	.loc 1 163 48 discriminator 1 view .LVU122
	movq	(%rdx), %rdx
.LBB82:
.LBB81:
	.loc 2 227 35 view .LVU123
	subq	%rcx, %rax
.LBE81:
.LBE82:
	.loc 1 163 46 discriminator 1 view .LVU124
	andl	$2047, %eax
	subq	%rdx, %rax
	.loc 1 163 80 discriminator 1 view .LVU125
	cmpq	$24, %rax
	ja	.L19
.LVL29:
.LBB83:
.LBI83:
	.loc 2 225 12 is_stmt 1 view .LVU126
.LBB84:
	.loc 2 227 18 is_stmt 0 view .LVU127
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rax
	movq	327688(%rax), %r8
	.loc 2 227 37 view .LVU128
	movq	327680(%rax), %rax
	.loc 2 227 35 view .LVU129
	subq	%rax, %r8
	andl	$2047, %r8d
.LVL30:
.L20:
	.loc 2 227 35 view .LVU130
.LBE84:
.LBE83:
	.loc 1 164 9 is_stmt 1 view .LVU131
.LBB85:
	.loc 1 164 25 is_stmt 0 view .LVU132
	movabsq	_ZN6Kernel7Console13s_displayLineE, %rax
.LVL31:
	.loc 1 164 42 is_stmt 1 discriminator 1 view .LVU133
.LBB86:
.LBB87:
.LBB88:
	.loc 2 197 24 is_stmt 0 view .LVU134
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rsi
.LBE88:
.LBE87:
	.loc 1 168 33 discriminator 2 view .LVU135
	movabsq	$_ZN6Kernel7Console13s_displayLineE, %r9
	.loc 1 168 61 discriminator 2 view .LVU136
	movabsq	$-140737487601664, %rdi
.LBE86:
	.loc 1 164 42 discriminator 1 view .LVU137
	cmpq	%r8, %rax
	jnb	.L22
.L21:
.LVL32:
.LBB99:
	.loc 1 166 34 is_stmt 1 discriminator 1 view .LVU138
	.loc 1 166 25 is_stmt 0 view .LVU139
	movl	$0, %edx
.LVL33:
.L23:
	.loc 1 168 17 is_stmt 1 view .LVU140
.LBB91:
.LBI87:
	.loc 2 195 8 view .LVU141
.LBB89:
	.loc 2 197 24 is_stmt 0 view .LVU142
	movq	327680(%rsi), %rcx
.LVL34:
	.loc 2 197 24 view .LVU143
.LBE89:
.LBE91:
.LBB92:
.LBI92:
	.loc 3 28 12 is_stmt 1 view .LVU144
	.loc 3 28 12 is_stmt 0 view .LVU145
.LBE92:
.LBB93:
.LBB90:
	.loc 2 197 31 view .LVU146
	addq	%rax, %rcx
	.loc 2 197 40 view .LVU147
	andl	$2047, %ecx
.LBE90:
.LBE93:
	.loc 1 168 82 discriminator 2 view .LVU148
	leaq	(%rcx,%rcx,4), %rcx
	salq	$4, %rcx
	addq	%rdx, %rcx
	movzbl	(%rsi,%rcx,2), %r10d
	.loc 1 168 33 discriminator 2 view .LVU149
	movq	(%r9), %r11
	.loc 1 168 31 discriminator 2 view .LVU150
	movq	%rax, %rcx
	subq	%r11, %rcx
	.loc 1 168 61 discriminator 2 view .LVU151
	leaq	(%rcx,%rcx,4), %rcx
	salq	$4, %rcx
	addq	%rdx, %rcx
	movb	%r10b, (%rdi,%rcx,2)
	.loc 1 169 17 is_stmt 1 view .LVU152
.LVL35:
.LBB94:
.LBI94:
	.loc 2 195 8 view .LVU153
.LBB95:
	.loc 2 197 24 is_stmt 0 view .LVU154
	movq	327680(%rsi), %rcx
.LVL36:
	.loc 2 197 24 view .LVU155
.LBE95:
.LBE94:
.LBB97:
.LBI97:
	.loc 3 28 12 is_stmt 1 view .LVU156
	.loc 3 28 12 is_stmt 0 view .LVU157
.LBE97:
.LBB98:
.LBB96:
	.loc 2 197 31 view .LVU158
	addq	%rax, %rcx
	.loc 2 197 40 view .LVU159
	andl	$2047, %ecx
.LBE96:
.LBE98:
	.loc 1 169 77 discriminator 2 view .LVU160
	leaq	(%rcx,%rcx,4), %rcx
	salq	$4, %rcx
	addq	%rdx, %rcx
	movzbl	1(%rsi,%rcx,2), %r10d
	.loc 1 169 33 discriminator 2 view .LVU161
	movq	(%r9), %r11
	.loc 1 169 31 discriminator 2 view .LVU162
	movq	%rax, %rcx
	subq	%r11, %rcx
	.loc 1 169 56 discriminator 2 view .LVU163
	leaq	(%rcx,%rcx,4), %rcx
	salq	$4, %rcx
	addq	%rdx, %rcx
	movb	%r10b, 1(%rdi,%rcx,2)
	.loc 1 166 13 is_stmt 1 discriminator 3 view .LVU164
	addq	$1, %rdx
.LVL37:
	.loc 1 166 34 discriminator 1 view .LVU165
	cmpq	$80, %rdx
	jne	.L23
.LBE99:
	.loc 1 164 9 discriminator 2 view .LVU166
	addq	$1, %rax
.LVL38:
	.loc 1 164 42 discriminator 1 view .LVU167
	cmpq	%rax, %r8
	jne	.L21
.LVL39:
.L22:
	.loc 1 164 42 is_stmt 0 discriminator 1 view .LVU168
.LBE85:
	.loc 1 173 9 is_stmt 1 view .LVU169
	.loc 1 173 34 is_stmt 0 view .LVU170
	movabsq	_ZN6Kernel7Console13s_displayLineE, %rax
.LVL40:
	.loc 1 173 34 view .LVU171
	subq	%rax, %r8
.LVL41:
	.loc 1 174 9 is_stmt 1 view .LVU172
.LBB100:
	.loc 1 174 34 discriminator 1 view .LVU173
.LBB101:
	.loc 1 178 45 is_stmt 0 view .LVU174
	movabsq	$-140737487601664, %rcx
.LBE101:
	.loc 1 174 34 discriminator 1 view .LVU175
	cmpq	$24, %r8
	ja	.L31
.LVL42:
.L24:
.LBB102:
	.loc 1 176 34 is_stmt 1 discriminator 1 view .LVU176
	.loc 1 176 25 is_stmt 0 view .LVU177
	movl	$0, %eax
	.loc 1 178 45 view .LVU178
	leaq	(%r8,%r8,4), %rsi
	salq	$4, %rsi
.LVL43:
.L26:
	.loc 1 178 17 is_stmt 1 view .LVU179
	.loc 1 178 45 is_stmt 0 view .LVU180
	leaq	(%rsi,%rax), %rdx
	movb	$0, (%rcx,%rdx,2)
	.loc 1 179 17 is_stmt 1 view .LVU181
	.loc 1 179 40 is_stmt 0 view .LVU182
	movb	$0, 1(%rcx,%rdx,2)
	.loc 1 176 13 is_stmt 1 discriminator 3 view .LVU183
	addq	$1, %rax
.LVL44:
	.loc 1 176 34 discriminator 1 view .LVU184
	cmpq	$80, %rax
	jne	.L26
.LBE102:
	.loc 1 174 9 discriminator 2 view .LVU185
	addq	$1, %r8
.LVL45:
	.loc 1 174 34 discriminator 1 view .LVU186
	cmpq	$25, %r8
	jne	.L24
.LBE100:
	.loc 1 182 5 is_stmt 0 view .LVU187
	ret
.LVL46:
.L19:
	.loc 1 163 104 discriminator 2 view .LVU188
	movabsq	_ZN6Kernel7Console13s_displayLineE, %rax
	.loc 1 163 80 discriminator 2 view .LVU189
	leaq	25(%rax), %r8
	jmp	.L20
.LVL47:
.L31:
	.loc 1 163 80 discriminator 2 view .LVU190
	ret
	.cfi_endproc
.LFE103:
	.size	_ZN6Kernel7Console10flushToVgaEv, .-_ZN6Kernel7Console10flushToVgaEv
	.align 2
	.globl	_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE
	.type	_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE, @function
_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE:
.LVL48:
.LFB105:
	.loc 1 192 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 193 9 view .LVU192
	.loc 1 193 20 is_stmt 0 view .LVU193
	movq	8(%rdi), %rcx
	.loc 1 193 25 view .LVU194
	movabsq	_ZN6Kernel7Console13s_displayLineE, %rax
	.loc 1 193 39 discriminator 4 view .LVU195
	movl	$0, %edx
	.loc 1 193 39 view .LVU196
	cmpq	%rax, %rcx
	jb	.L32
	.loc 1 193 46 discriminator 1 view .LVU197
	movq	8(%rdi), %rdx
	.loc 1 193 50 discriminator 1 view .LVU198
	movabsq	_ZN6Kernel7Console13s_displayLineE, %rax
	.loc 1 193 64 discriminator 1 view .LVU199
	addq	$25, %rax
	.loc 1 193 39 discriminator 1 view .LVU200
	cmpq	%rax, %rdx
	setb	%dl
.L32:
	.loc 1 194 5 view .LVU201
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE105:
	.size	_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE, .-_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE
	.align 2
	.globl	_ZN6Kernel7Console12updateCursorEv
	.type	_ZN6Kernel7Console12updateCursorEv, @function
_ZN6Kernel7Console12updateCursorEv:
.LFB94:
	.loc 1 6 5 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 7 9 view .LVU203
	.loc 1 7 14 is_stmt 0 view .LVU204
	movabsb	_ZN6Kernel7Console15s_cursorEnabledE, %al
	.loc 1 7 30 view .LVU205
	testb	%al, %al
	je	.L36
	.loc 1 7 54 discriminator 2 view .LVU206
	movabsq	$_ZN6Kernel7Console11s_cursorPosE, %rdi
	movabsq	$_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE, %rax
	call	*%rax
.LVL49:
	.loc 1 7 30 discriminator 1 view .LVU207
	testb	%al, %al
	jne	.L37
.L36:
	.loc 1 9 13 is_stmt 1 view .LVU208
	.loc 1 9 26 is_stmt 0 view .LVU209
	movl	$10, %esi
	movl	$980, %edi
	movabsq	$port_out_byte, %rbx
	call	*%rbx
.LVL50:
	.loc 1 10 13 is_stmt 1 view .LVU210
	.loc 1 10 26 is_stmt 0 view .LVU211
	movl	$32, %esi
	movl	$981, %edi
	call	*%rbx
.LVL51:
	.loc 1 11 13 is_stmt 1 view .LVU212
.L35:
	.loc 1 23 5 is_stmt 0 view .LVU213
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.L37:
	.cfi_restore_state
	.loc 1 14 9 is_stmt 1 view .LVU214
	.loc 1 14 22 is_stmt 0 view .LVU215
	movl	$0, %esi
	movl	$981, %edi
	movabsq	$port_out_byte, %r12
	call	*%r12
.LVL52:
	.loc 1 15 9 is_stmt 1 view .LVU216
	.loc 1 15 22 is_stmt 0 view .LVU217
	movl	$15, %esi
	movl	$981, %edi
	call	*%r12
.LVL53:
	.loc 1 17 9 is_stmt 1 view .LVU218
	.loc 1 17 35 is_stmt 0 view .LVU219
	movabsq	$_ZN6Kernel7Console11s_cursorPosE, %rcx
	movq	8(%rcx), %rdx
	.loc 1 17 39 view .LVU220
	movabsq	_ZN6Kernel7Console13s_displayLineE, %rax
	.loc 1 17 85 view .LVU221
	movq	(%rcx), %rcx
	.loc 1 17 37 view .LVU222
	subq	%rax, %rdx
	.loc 1 17 54 view .LVU223
	leaq	(%rdx,%rdx,4), %rbx
	salq	$4, %rbx
	.loc 1 17 85 view .LVU224
	addq	%rcx, %rbx
.LVL54:
	.loc 1 19 9 is_stmt 1 view .LVU225
	.loc 1 19 22 is_stmt 0 view .LVU226
	movl	$15, %esi
	movl	$980, %edi
	call	*%r12
.LVL55:
	.loc 1 20 9 is_stmt 1 view .LVU227
	.loc 1 20 22 is_stmt 0 view .LVU228
	movzbl	%bl, %esi
	movl	$981, %edi
	call	*%r12
.LVL56:
	.loc 1 21 9 is_stmt 1 view .LVU229
	.loc 1 21 22 is_stmt 0 view .LVU230
	movl	$14, %esi
	movl	$980, %edi
	call	*%r12
.LVL57:
	.loc 1 22 9 is_stmt 1 view .LVU231
	.loc 1 22 22 is_stmt 0 view .LVU232
	movzbl	%bh, %esi
	movl	$981, %edi
	call	*%r12
.LVL58:
	jmp	.L35
	.cfi_endproc
.LFE94:
	.size	_ZN6Kernel7Console12updateCursorEv, .-_ZN6Kernel7Console12updateCursorEv
	.align 2
	.globl	_ZN6Kernel7Console12enableCursorEv
	.type	_ZN6Kernel7Console12enableCursorEv, @function
_ZN6Kernel7Console12enableCursorEv:
.LFB95:
	.loc 1 26 5 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 27 9 view .LVU234
	.loc 1 27 25 is_stmt 0 view .LVU235
	movabsq	$_ZN6Kernel7Console15s_cursorEnabledE, %rax
	movb	$1, (%rax)
	.loc 1 28 9 is_stmt 1 view .LVU236
	.loc 1 28 21 is_stmt 0 view .LVU237
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL59:
	.loc 1 29 5 view .LVU238
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	_ZN6Kernel7Console12enableCursorEv, .-_ZN6Kernel7Console12enableCursorEv
	.align 2
	.globl	_ZN6Kernel7Console13disableCursorEv
	.type	_ZN6Kernel7Console13disableCursorEv, @function
_ZN6Kernel7Console13disableCursorEv:
.LFB96:
	.loc 1 32 5 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 33 9 view .LVU240
	.loc 1 33 25 is_stmt 0 view .LVU241
	movabsq	$_ZN6Kernel7Console15s_cursorEnabledE, %rax
	movb	$0, (%rax)
	.loc 1 34 9 is_stmt 1 view .LVU242
	.loc 1 34 21 is_stmt 0 view .LVU243
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL60:
	.loc 1 35 5 view .LVU244
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	_ZN6Kernel7Console13disableCursorEv, .-_ZN6Kernel7Console13disableCursorEv
	.align 2
	.globl	_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.type	_ZN6Kernel7Console9setCursorENS0_9CursorPosE, @function
_ZN6Kernel7Console9setCursorENS0_9CursorPosE:
.LVL61:
.LFB98:
	.loc 1 45 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 45 5 is_stmt 0 view .LVU246
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 46 9 is_stmt 1 view .LVU247
	.loc 1 46 23 is_stmt 0 view .LVU248
	movabsq	$_ZN6Kernel7Console11s_cursorPosE, %rax
	movq	%rdi, (%rax)
	.loc 1 47 9 is_stmt 1 view .LVU249
	.loc 1 47 23 is_stmt 0 view .LVU250
	movq	%rsi, 8(%rax)
	.loc 1 48 9 is_stmt 1 view .LVU251
	.loc 1 48 21 is_stmt 0 view .LVU252
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL62:
	.loc 1 49 5 view .LVU253
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	_ZN6Kernel7Console9setCursorENS0_9CursorPosE, .-_ZN6Kernel7Console9setCursorENS0_9CursorPosE
	.align 2
	.globl	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE
	.type	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE, @function
_ZN6Kernel7Console9clearLineEhNS0_10AttributesE:
.LVL63:
.LFB101:
	.loc 1 100 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 100 5 is_stmt 0 view .LVU255
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movl	%esi, %edx
	.loc 1 101 9 is_stmt 1 view .LVU256
	.loc 1 101 31 is_stmt 0 view .LVU257
	movabsq	$_ZN6Kernel7Console11s_cursorPosE, %rbx
	movq	8(%rbx), %rax
	.loc 1 101 18 view .LVU258
	movzbl	%dil, %esi
.LVL64:
	.loc 1 101 18 view .LVU259
	movq	%rax, %rdi
.LVL65:
	.loc 1 101 18 view .LVU260
	movabsq	$_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE, %rax
	call	*%rax
.LVL66:
	.loc 1 102 9 is_stmt 1 view .LVU261
	.loc 1 102 35 is_stmt 0 view .LVU262
	movq	8(%rbx), %rsi
	.loc 1 102 18 view .LVU263
	movl	$0, %edi
	movabsq	$_ZN6Kernel7Console9setCursorENS0_9CursorPosE, %rax
	call	*%rax
.LVL67:
	.loc 1 103 5 view .LVU264
	movq	-8(%rbp), %rbx
	leave
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	_ZN6Kernel7Console9clearLineEhNS0_10AttributesE, .-_ZN6Kernel7Console9clearLineEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console5clearEhNS0_10AttributesE
	.type	_ZN6Kernel7Console5clearEhNS0_10AttributesE, @function
_ZN6Kernel7Console5clearEhNS0_10AttributesE:
.LVL68:
.LFB100:
	.loc 1 81 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 81 5 is_stmt 0 view .LVU266
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %r8d
	movl	%esi, %edi
.LVL69:
	.loc 1 82 9 is_stmt 1 view .LVU267
.LBB109:
	.loc 1 82 30 discriminator 1 view .LVU268
	.loc 1 82 21 is_stmt 0 view .LVU269
	movl	$0, %r9d
.LBB110:
	.loc 1 86 45 view .LVU270
	movabsq	$-140737487601664, %rcx
.LVL70:
.L49:
	.loc 1 84 34 is_stmt 1 discriminator 1 view .LVU271
	.loc 1 84 25 is_stmt 0 view .LVU272
	movl	$0, %eax
	.loc 1 86 45 view .LVU273
	leaq	(%r9,%r9,4), %rsi
	salq	$4, %rsi
.LVL71:
.L50:
	.loc 1 86 17 is_stmt 1 view .LVU274
	.loc 1 86 45 is_stmt 0 view .LVU275
	leaq	(%rsi,%rax), %rdx
	movb	%r8b, (%rcx,%rdx,2)
	.loc 1 87 17 is_stmt 1 view .LVU276
	.loc 1 87 40 is_stmt 0 view .LVU277
	movb	%dil, 1(%rcx,%rdx,2)
	.loc 1 84 13 is_stmt 1 discriminator 3 view .LVU278
	addq	$1, %rax
.LVL72:
	.loc 1 84 34 discriminator 1 view .LVU279
	cmpq	$80, %rax
	jne	.L50
	.loc 1 84 34 is_stmt 0 discriminator 1 view .LVU280
.LBE110:
	.loc 1 82 9 is_stmt 1 discriminator 2 view .LVU281
	addq	$1, %r9
.LVL73:
	.loc 1 82 30 discriminator 1 view .LVU282
	cmpq	$25, %r9
	jne	.L49
.LBE109:
	.loc 1 90 9 view .LVU283
	.loc 1 90 23 is_stmt 0 view .LVU284
	movabsq	$_ZN6Kernel7Console13s_displayLineE, %rax
.LVL74:
	.loc 1 90 23 view .LVU285
	movq	$0, (%rax)
	.loc 1 91 9 is_stmt 1 view .LVU286
.LVL75:
.LBB111:
.LBI111:
	.loc 2 240 10 view .LVU287
.LBB112:
	.loc 2 242 16 is_stmt 0 view .LVU288
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rdx
	movq	$0, 327680(%rdx)
	.loc 2 243 16 view .LVU289
	movq	$0, 327688(%rdx)
.LVL76:
	.loc 2 243 16 view .LVU290
.LBE112:
.LBE111:
	.loc 1 92 9 is_stmt 1 view .LVU291
.LBB113:
.LBI113:
	.loc 2 141 10 view .LVU292
.LBB114:
	.loc 2 143 16 is_stmt 0 view .LVU293
	movq	327688(%rdx), %rax
	.loc 2 143 9 view .LVU294
	leaq	(%rax,%rax,4), %rsi
	salq	$5, %rsi
	addq	%rdx, %rsi
	movl	$20, %ecx
	movl	$0, %eax
	movq	%rsi, %rdi
.LVL77:
	.loc 2 143 9 view .LVU295
	rep stosq
	.loc 2 144 19 view .LVU296
	movq	327688(%rdx), %rax
	.loc 2 144 26 view .LVU297
	addq	$1, %rax
	.loc 2 144 31 view .LVU298
	andl	$2047, %eax
	.loc 2 144 16 view .LVU299
	movq	%rax, 327688(%rdx)
	.loc 2 145 13 view .LVU300
	movq	327688(%rdx), %rcx
	.loc 2 145 23 view .LVU301
	movq	327680(%rdx), %rax
	.loc 2 145 9 view .LVU302
	cmpq	%rax, %rcx
	je	.L55
.L52:
.LVL78:
	.loc 2 145 9 view .LVU303
.LBE114:
.LBE113:
	.loc 1 93 9 is_stmt 1 view .LVU304
	.loc 1 93 18 is_stmt 0 view .LVU305
	movl	$0, %edi
	movl	$0, %esi
	movabsq	$_ZN6Kernel7Console9setCursorENS0_9CursorPosE, %rax
	call	*%rax
.LVL79:
	.loc 1 94 5 view .LVU306
	popq	%rbp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL80:
.L55:
	.cfi_restore_state
.LBB116:
.LBB115:
	.loc 2 147 23 view .LVU307
	movq	327680(%rdx), %rax
	.loc 2 147 30 view .LVU308
	addq	$1, %rax
	.loc 2 147 35 view .LVU309
	andl	$2047, %eax
	.loc 2 147 20 view .LVU310
	movq	%rax, 327680(%rdx)
	jmp	.L52
.LBE115:
.LBE116:
	.cfi_endproc
.LFE100:
	.size	_ZN6Kernel7Console5clearEhNS0_10AttributesE, .-_ZN6Kernel7Console5clearEhNS0_10AttributesE
	.align 2
	.globl	_ZN6Kernel7Console14setDisplayLineEm
	.type	_ZN6Kernel7Console14setDisplayLineEm, @function
_ZN6Kernel7Console14setDisplayLineEm:
.LVL81:
.LFB104:
	.loc 1 185 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 185 5 is_stmt 0 view .LVU312
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %rax
	.loc 1 186 9 is_stmt 1 view .LVU313
	.loc 1 186 23 is_stmt 0 view .LVU314
	movabsq	%rax, _ZN6Kernel7Console13s_displayLineE
	.loc 1 187 9 is_stmt 1 view .LVU315
	.loc 1 187 19 is_stmt 0 view .LVU316
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL82:
	.loc 1 188 9 is_stmt 1 view .LVU317
	.loc 1 188 21 is_stmt 0 view .LVU318
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL83:
	.loc 1 189 5 view .LVU319
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	_ZN6Kernel7Console14setDisplayLineEm, .-_ZN6Kernel7Console14setDisplayLineEm
	.align 2
	.globl	_ZN6Kernel7Console20clampDisplayToCursorEv
	.type	_ZN6Kernel7Console20clampDisplayToCursorEv, @function
_ZN6Kernel7Console20clampDisplayToCursorEv:
.LFB106:
	.loc 1 197 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 198 9 view .LVU321
	.loc 1 198 37 is_stmt 0 view .LVU322
	movabsq	_ZN6Kernel7Console11s_cursorPosE+8, %rax
	.loc 1 198 57 discriminator 2 view .LVU323
	movl	$0, %edx
	.loc 1 198 57 view .LVU324
	cmpq	$24, %rax
	jbe	.L59
	.loc 1 198 75 discriminator 1 view .LVU325
	movabsq	_ZN6Kernel7Console11s_cursorPosE+8, %rax
	.loc 1 198 57 discriminator 1 view .LVU326
	leaq	-25(%rax), %rdx
.L59:
	.loc 1 198 23 discriminator 4 view .LVU327
	movq	%rdx, %rax
	movabsq	%rax, _ZN6Kernel7Console13s_displayLineE
	.loc 1 199 5 view .LVU328
	ret
	.cfi_endproc
.LFE106:
	.size	_ZN6Kernel7Console20clampDisplayToCursorEv, .-_ZN6Kernel7Console20clampDisplayToCursorEv
	.align 2
	.globl	_ZN6Kernel7Console10scrollDownEm
	.type	_ZN6Kernel7Console10scrollDownEm, @function
_ZN6Kernel7Console10scrollDownEm:
.LVL84:
.LFB107:
	.loc 1 202 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 202 5 is_stmt 0 view .LVU330
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 203 9 is_stmt 1 view .LVU331
	.loc 1 203 23 is_stmt 0 view .LVU332
	movabsq	$_ZN6Kernel7Console13s_displayLineE, %rdx
	movq	(%rdx), %rax
	addq	%rdi, %rax
	movq	%rax, (%rdx)
	.loc 1 204 9 is_stmt 1 view .LVU333
.LVL85:
.LBB117:
.LBI117:
	.loc 2 225 12 view .LVU334
.LBB118:
	.loc 2 227 18 is_stmt 0 view .LVU335
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rcx
	movq	327688(%rcx), %rax
	.loc 2 227 37 view .LVU336
	movq	327680(%rcx), %rcx
.LVL86:
	.loc 2 227 37 view .LVU337
.LBE118:
.LBE117:
	.loc 1 204 13 discriminator 1 view .LVU338
	movq	(%rdx), %rdx
.LBB120:
.LBB119:
	.loc 2 227 35 view .LVU339
	subq	%rcx, %rax
.LBE119:
.LBE120:
	.loc 1 204 49 discriminator 1 view .LVU340
	andl	$2047, %eax
	subq	$25, %rax
	.loc 1 204 9 discriminator 1 view .LVU341
	cmpq	%rdx, %rax
	jnb	.L62
	.loc 1 205 13 is_stmt 1 view .LVU342
.LVL87:
.LBB121:
.LBI121:
	.loc 2 225 12 view .LVU343
.LBB122:
	.loc 2 227 18 is_stmt 0 view .LVU344
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rdx
	movq	327688(%rdx), %rax
	.loc 2 227 37 view .LVU345
	movq	327680(%rdx), %rdx
.LVL88:
	.loc 2 227 35 view .LVU346
	subq	%rdx, %rax
.LBE122:
.LBE121:
	.loc 1 205 49 discriminator 1 view .LVU347
	andl	$2047, %eax
	subq	$25, %rax
	.loc 1 205 27 discriminator 1 view .LVU348
	movabsq	%rax, _ZN6Kernel7Console13s_displayLineE
.L62:
	.loc 1 206 9 is_stmt 1 view .LVU349
	.loc 1 206 21 is_stmt 0 view .LVU350
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL89:
	.loc 1 207 9 is_stmt 1 view .LVU351
	.loc 1 207 19 is_stmt 0 view .LVU352
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL90:
	.loc 1 208 5 view .LVU353
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	_ZN6Kernel7Console10scrollDownEm, .-_ZN6Kernel7Console10scrollDownEm
	.align 2
	.globl	_ZN6Kernel7Console8scrollUpEm
	.type	_ZN6Kernel7Console8scrollUpEm, @function
_ZN6Kernel7Console8scrollUpEm:
.LVL91:
.LFB108:
	.loc 1 211 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 211 5 is_stmt 0 view .LVU355
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 212 9 is_stmt 1 view .LVU356
	.loc 1 212 13 is_stmt 0 view .LVU357
	movabsq	_ZN6Kernel7Console13s_displayLineE, %rax
	.loc 1 212 9 view .LVU358
	cmpq	%rdi, %rax
	jnb	.L65
	.loc 1 213 13 is_stmt 1 view .LVU359
	.loc 1 213 27 is_stmt 0 view .LVU360
	movabsq	$_ZN6Kernel7Console13s_displayLineE, %rax
	movq	$0, (%rax)
.L66:
	.loc 1 216 9 is_stmt 1 view .LVU361
	.loc 1 216 21 is_stmt 0 view .LVU362
	movabsq	$_ZN6Kernel7Console12updateCursorEv, %rax
	call	*%rax
.LVL92:
	.loc 1 217 9 is_stmt 1 view .LVU363
	.loc 1 217 19 is_stmt 0 view .LVU364
	movabsq	$_ZN6Kernel7Console10flushToVgaEv, %rax
	call	*%rax
.LVL93:
	.loc 1 218 5 view .LVU365
	popq	%rbp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL94:
.L65:
	.cfi_restore_state
	.loc 1 215 13 is_stmt 1 view .LVU366
	.loc 1 215 27 is_stmt 0 view .LVU367
	movabsq	$_ZN6Kernel7Console13s_displayLineE, %rdx
	movq	(%rdx), %rax
	subq	%rdi, %rax
	movq	%rax, (%rdx)
	jmp	.L66
	.cfi_endproc
.LFE108:
	.size	_ZN6Kernel7Console8scrollUpEm, .-_ZN6Kernel7Console8scrollUpEm
	.align 2
	.globl	_ZN6Kernel7Console14printInterruptEPKcmmNS0_10AttributesE
	.type	_ZN6Kernel7Console14printInterruptEPKcmmNS0_10AttributesE, @function
_ZN6Kernel7Console14printInterruptEPKcmmNS0_10AttributesE:
.LVL95:
.LFB109:
	.loc 1 222 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 223 9 view .LVU369
	.loc 1 224 9 view .LVU370
.LBB123:
	.loc 1 224 30 discriminator 1 view .LVU371
	testq	%rsi, %rsi
	je	.L68
	movabsq	$-140737487601664, %r8
	leaq	(%r8,%rdx,2), %rax
	addq	%rdx, %rsi
.LVL96:
	.loc 1 224 30 is_stmt 0 discriminator 1 view .LVU372
	leaq	(%r8,%rsi,2), %rsi
.LVL97:
.L70:
	.loc 1 226 13 is_stmt 1 view .LVU373
	.loc 1 226 46 is_stmt 0 view .LVU374
	movzbl	(%rdi), %edx
	.loc 1 226 39 view .LVU375
	movb	%dl, (%rax)
	.loc 1 227 13 is_stmt 1 view .LVU376
	.loc 1 227 34 is_stmt 0 view .LVU377
	movb	%cl, 1(%rax)
	.loc 1 224 9 is_stmt 1 discriminator 3 view .LVU378
.LVL98:
	.loc 1 224 30 discriminator 1 view .LVU379
	addq	$1, %rdi
.LVL99:
	.loc 1 224 30 is_stmt 0 discriminator 1 view .LVU380
	addq	$2, %rax
	cmpq	%rsi, %rax
	jne	.L70
.LVL100:
.L68:
	.loc 1 224 30 discriminator 1 view .LVU381
.LBE123:
	.loc 1 229 5 view .LVU382
	ret
	.cfi_endproc
.LFE109:
	.size	_ZN6Kernel7Console14printInterruptEPKcmmNS0_10AttributesE, .-_ZN6Kernel7Console14printInterruptEPKcmmNS0_10AttributesE
	.type	_GLOBAL__sub_I__ZN6Kernel7Console12updateCursorEv, @function
_GLOBAL__sub_I__ZN6Kernel7Console12updateCursorEv:
.LFB120:
	.loc 1 230 1 is_stmt 1 view -0
	.cfi_startproc
.LBB129:
.LBI129:
	.loc 1 230 1 view .LVU384
.LBB130:
	.file 4 "src/drivers/../../include/drivers/Console.h"
	.loc 4 72 103 is_stmt 0 view .LVU385
	movabsq	$_ZGVN6Kernel7Console12s_charBufferE, %rax
	cmpb	$0, (%rax)
	jne	.L72
	.loc 4 72 103 discriminator 1 view .LVU386
	movb	$1, (%rax)
.LVL101:
.LBB131:
.LBI131:
	.loc 2 135 5 is_stmt 1 view .LVU387
.LBB132:
.LBB133:
	.loc 2 136 5 discriminator 1 view .LVU388
.LBE133:
	.loc 2 135 5 is_stmt 0 view .LVU389
	movl	$2048, %eax
.L74:
.LBB134:
	.loc 2 136 5 is_stmt 1 discriminator 1 view .LVU390
	subq	$1, %rax
	jne	.L74
	.loc 2 136 5 is_stmt 0 discriminator 4 view .LVU391
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rax
	movq	$0, 327680(%rax)
	movq	$0, 327688(%rax)
	.loc 2 137 16 view .LVU392
	movq	$0, 327680(%rax)
	.loc 2 138 16 view .LVU393
	movq	$0, 327688(%rax)
.LVL102:
.L72:
	.loc 2 138 16 view .LVU394
.LBE134:
.LBE132:
.LBE131:
.LBE130:
.LBE129:
	.loc 1 230 1 view .LVU395
	ret
	.cfi_endproc
.LFE120:
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
	.file 5 "src/drivers/../../include/drivers/../utils/Types.h"
	.file 6 "src/drivers/../../include/drivers/../utils/Utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x15c6
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x35
	.long	.LASF607
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x1c
	.long	.LASF441
	.byte	0x5
	.byte	0x17
	.long	0x47
	.uleb128 0x9
	.long	0x32
	.uleb128 0x1a
	.long	0x32
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF439
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF440
	.uleb128 0x1c
	.long	.LASF442
	.byte	0x8
	.byte	0x17
	.long	0x60
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF443
	.uleb128 0x1c
	.long	.LASF444
	.byte	0x9
	.byte	0x18
	.long	0x72
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF445
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF446
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF447
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF448
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF449
	.uleb128 0x36
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF450
	.uleb128 0x37
	.string	"std"
	.byte	0x5
	.byte	0x16
	.byte	0xb
	.long	0xbd
	.uleb128 0x38
	.long	.LASF601
	.byte	0x5
	.byte	0xc5
	.byte	0x17
	.long	0xc4
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.long	.LASF451
	.uleb128 0x9
	.long	0xbd
	.uleb128 0x1a
	.long	0xbd
	.uleb128 0x26
	.long	.LASF452
	.byte	0x4
	.byte	0xa
	.long	0x4a2
	.uleb128 0x39
	.long	.LASF608
	.byte	0x1
	.byte	0x4
	.byte	0xc
	.byte	0xb
	.uleb128 0x3a
	.long	.LASF609
	.byte	0x7
	.byte	0x1
	.long	0x55
	.byte	0x4
	.byte	0xf
	.byte	0x14
	.byte	0x1
	.long	0x1aa
	.uleb128 0x3
	.long	.LASF453
	.byte	0
	.uleb128 0x3
	.long	.LASF454
	.byte	0x1
	.uleb128 0x3
	.long	.LASF455
	.byte	0x2
	.uleb128 0x3
	.long	.LASF456
	.byte	0x3
	.uleb128 0x3
	.long	.LASF457
	.byte	0x4
	.uleb128 0x3
	.long	.LASF458
	.byte	0x5
	.uleb128 0x3
	.long	.LASF459
	.byte	0x6
	.uleb128 0x3
	.long	.LASF460
	.byte	0x7
	.uleb128 0x3
	.long	.LASF461
	.byte	0x8
	.uleb128 0x3
	.long	.LASF462
	.byte	0x9
	.uleb128 0x3
	.long	.LASF463
	.byte	0xa
	.uleb128 0x3
	.long	.LASF464
	.byte	0xb
	.uleb128 0x3
	.long	.LASF465
	.byte	0xc
	.uleb128 0x3
	.long	.LASF466
	.byte	0xd
	.uleb128 0x3
	.long	.LASF467
	.byte	0xe
	.uleb128 0x3
	.long	.LASF468
	.byte	0xf
	.uleb128 0x3
	.long	.LASF469
	.byte	0x10
	.uleb128 0x3
	.long	.LASF470
	.byte	0x1f
	.uleb128 0x3
	.long	.LASF471
	.byte	0x20
	.uleb128 0x3
	.long	.LASF472
	.byte	0x2f
	.uleb128 0x3
	.long	.LASF473
	.byte	0x30
	.uleb128 0x3
	.long	.LASF474
	.byte	0x3f
	.uleb128 0x3
	.long	.LASF475
	.byte	0x40
	.uleb128 0x3
	.long	.LASF476
	.byte	0x4f
	.uleb128 0x3
	.long	.LASF477
	.byte	0x50
	.uleb128 0x3
	.long	.LASF478
	.byte	0x5f
	.uleb128 0x3
	.long	.LASF479
	.byte	0x60
	.uleb128 0x3
	.long	.LASF480
	.byte	0x6f
	.uleb128 0x3
	.long	.LASF481
	.byte	0x70
	.uleb128 0x3
	.long	.LASF482
	.byte	0x7f
	.byte	0
	.uleb128 0x1d
	.long	.LASF483
	.byte	0x10
	.byte	0x31
	.long	0x1c8
	.uleb128 0x27
	.string	"x"
	.byte	0x33
	.long	0x32
	.byte	0
	.uleb128 0x27
	.string	"y"
	.byte	0x34
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	0x1aa
	.uleb128 0x9
	.long	0x1c8
	.uleb128 0x1d
	.long	.LASF484
	.byte	0x10
	.byte	0x37
	.long	0x1f8
	.uleb128 0x15
	.long	.LASF485
	.byte	0x4
	.byte	0x39
	.byte	0x14
	.long	0x32
	.byte	0
	.uleb128 0x15
	.long	.LASF486
	.byte	0x4
	.byte	0x3a
	.byte	0x14
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x1d2
	.uleb128 0x1d
	.long	.LASF487
	.byte	0x2
	.byte	0x3d
	.long	0x223
	.uleb128 0x15
	.long	.LASF488
	.byte	0x4
	.byte	0x3f
	.byte	0x15
	.long	0x55
	.byte	0
	.uleb128 0x15
	.long	.LASF489
	.byte	0x4
	.byte	0x40
	.byte	0x18
	.long	0xe2
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	0x1fd
	.uleb128 0x1a
	.long	0x1fd
	.uleb128 0x3b
	.long	.LASF490
	.byte	0x4
	.byte	0x44
	.byte	0x21
	.long	.LASF492
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
	.uleb128 0x3c
	.long	.LASF610
	.byte	0x4
	.byte	0x46
	.byte	0x2b
	.long	.LASF611
	.long	0x4b8
	.quad	0xffff8000000b8000
	.byte	0x3
	.uleb128 0x28
	.long	.LASF491
	.byte	0x47
	.long	.LASF493
	.long	0x3d
	.value	0x800
	.uleb128 0x18
	.long	.LASF496
	.byte	0x48
	.byte	0x67
	.long	.LASF498
	.long	0x703
	.uleb128 0x28
	.long	.LASF494
	.byte	0x49
	.long	.LASF495
	.long	0x3d
	.value	0x7d0
	.uleb128 0x18
	.long	.LASF497
	.byte	0x4a
	.byte	0x2a
	.long	.LASF499
	.long	0x1c8
	.uleb128 0x18
	.long	.LASF500
	.byte	0x4b
	.byte	0x27
	.long	.LASF501
	.long	0x42
	.uleb128 0x18
	.long	.LASF502
	.byte	0x4c
	.byte	0x25
	.long	.LASF503
	.long	0xc9
	.uleb128 0x18
	.long	.LASF504
	.byte	0x4d
	.byte	0x25
	.long	.LASF505
	.long	0xc9
	.uleb128 0x29
	.long	.LASF506
	.byte	0x50
	.long	.LASF508
	.long	0x2f6
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0x29
	.long	.LASF507
	.byte	0x69
	.long	.LASF509
	.long	0x30f
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0xc
	.long	.LASF510
	.value	0x15f
	.long	.LASF512
	.long	0x329
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0xc
	.long	.LASF511
	.value	0x160
	.long	.LASF513
	.long	0x343
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0xc
	.long	.LASF511
	.value	0x162
	.long	.LASF514
	.long	0x362
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x55
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0xc
	.long	.LASF515
	.value	0x165
	.long	.LASF516
	.long	0x386
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
	.long	.LASF515
	.value	0x168
	.long	.LASF517
	.long	0x3aa
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
	.long	.LASF518
	.value	0x16b
	.long	.LASF519
	.long	0x3bf
	.uleb128 0x1
	.long	0x1aa
	.byte	0
	.uleb128 0x1e
	.long	.LASF520
	.value	0x16c
	.byte	0x2a
	.long	.LASF522
	.long	0x97c
	.uleb128 0x1e
	.long	.LASF521
	.value	0x16d
	.byte	0x1e
	.long	.LASF523
	.long	0x981
	.uleb128 0x1e
	.long	.LASF524
	.value	0x16e
	.byte	0x1e
	.long	.LASF525
	.long	0x986
	.uleb128 0xc
	.long	.LASF526
	.value	0x170
	.long	.LASF527
	.long	0x404
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0xc
	.long	.LASF528
	.value	0x171
	.long	.LASF529
	.long	0x419
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x1f
	.long	.LASF530
	.value	0x173
	.long	.LASF532
	.uleb128 0x1f
	.long	.LASF531
	.value	0x174
	.long	.LASF533
	.uleb128 0xc
	.long	.LASF534
	.value	0x176
	.long	.LASF535
	.long	0x444
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x1f
	.long	.LASF536
	.value	0x178
	.long	.LASF537
	.uleb128 0xc
	.long	.LASF538
	.value	0x17b
	.long	.LASF539
	.long	0x473
	.uleb128 0x1
	.long	0x98b
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0x32
	.uleb128 0x1
	.long	0xe2
	.byte	0
	.uleb128 0x2a
	.long	.LASF540
	.value	0x17e
	.long	.LASF542
	.uleb128 0x2a
	.long	.LASF541
	.value	0x17f
	.long	.LASF543
	.uleb128 0x3d
	.long	.LASF612
	.byte	0x4
	.value	0x180
	.byte	0x15
	.long	.LASF613
	.long	0xbd
	.uleb128 0x1
	.long	0x99c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x1fd
	.long	0x4b8
	.uleb128 0x21
	.long	0x47
	.byte	0x18
	.uleb128 0x21
	.long	0x47
	.byte	0x4f
	.byte	0
	.uleb128 0xd
	.long	0x4a2
	.uleb128 0x26
	.long	.LASF544
	.byte	0x6
	.byte	0x1b
	.long	0x6c0
	.uleb128 0x3e
	.long	.LASF568
	.byte	0xa0
	.byte	0x3
	.byte	0xa
	.byte	0xb
	.long	0x6ba
	.uleb128 0x15
	.long	.LASF545
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.long	0x6c0
	.byte	0
	.uleb128 0x22
	.long	.LASF546
	.byte	0x11
	.long	.LASF547
	.long	0x4f4
	.long	0x4fa
	.uleb128 0x4
	.long	0x6d0
	.byte	0
	.uleb128 0x22
	.long	.LASF546
	.byte	0x13
	.long	.LASF548
	.long	0x50c
	.long	0x517
	.uleb128 0x4
	.long	0x6d0
	.uleb128 0x1
	.long	0x6da
	.byte	0
	.uleb128 0x22
	.long	.LASF546
	.byte	0x14
	.long	.LASF549
	.long	0x529
	.long	0x534
	.uleb128 0x4
	.long	0x6d0
	.uleb128 0x1
	.long	0x6df
	.byte	0
	.uleb128 0x2b
	.long	.LASF550
	.byte	0x16
	.long	.LASF551
	.long	0x6e5
	.long	0x54a
	.long	0x555
	.uleb128 0x4
	.long	0x6d0
	.uleb128 0x1
	.long	0x6da
	.byte	0
	.uleb128 0x2b
	.long	.LASF550
	.byte	0x17
	.long	.LASF552
	.long	0x6e5
	.long	0x56b
	.long	0x576
	.uleb128 0x4
	.long	0x6d0
	.uleb128 0x1
	.long	0x6df
	.byte	0
	.uleb128 0x6
	.long	.LASF553
	.byte	0x3
	.byte	0x19
	.byte	0x1a
	.long	.LASF554
	.long	0x32
	.long	0x58e
	.long	0x594
	.uleb128 0x4
	.long	0x6ea
	.byte	0
	.uleb128 0x6
	.long	.LASF555
	.byte	0x3
	.byte	0x1a
	.byte	0x18
	.long	.LASF556
	.long	0xbd
	.long	0x5ac
	.long	0x5b2
	.uleb128 0x4
	.long	0x6ea
	.byte	0
	.uleb128 0x6
	.long	.LASF557
	.byte	0x3
	.byte	0x1c
	.byte	0xc
	.long	.LASF558
	.long	0x6ef
	.long	0x5ca
	.long	0x5d5
	.uleb128 0x4
	.long	0x6d0
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x6
	.long	.LASF559
	.byte	0x3
	.byte	0x1d
	.byte	0xc
	.long	.LASF560
	.long	0x6f4
	.long	0x5ed
	.long	0x5f3
	.uleb128 0x4
	.long	0x6d0
	.byte	0
	.uleb128 0x6
	.long	.LASF561
	.byte	0x3
	.byte	0x1e
	.byte	0xc
	.long	.LASF562
	.long	0x6f4
	.long	0x60b
	.long	0x611
	.uleb128 0x4
	.long	0x6d0
	.byte	0
	.uleb128 0x2c
	.string	"end"
	.byte	0x1f
	.byte	0xc
	.long	.LASF566
	.long	0x6f4
	.long	0x628
	.long	0x62e
	.uleb128 0x4
	.long	0x6d0
	.byte	0
	.uleb128 0x6
	.long	.LASF557
	.byte	0x3
	.byte	0x21
	.byte	0x12
	.long	.LASF563
	.long	0x6f9
	.long	0x646
	.long	0x651
	.uleb128 0x4
	.long	0x6ea
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x6
	.long	.LASF559
	.byte	0x3
	.byte	0x22
	.byte	0x12
	.long	.LASF564
	.long	0x6fe
	.long	0x669
	.long	0x66f
	.uleb128 0x4
	.long	0x6ea
	.byte	0
	.uleb128 0x6
	.long	.LASF561
	.byte	0x3
	.byte	0x23
	.byte	0x12
	.long	.LASF565
	.long	0x6fe
	.long	0x687
	.long	0x68d
	.uleb128 0x4
	.long	0x6ea
	.byte	0
	.uleb128 0x2c
	.string	"end"
	.byte	0x24
	.byte	0x12
	.long	.LASF567
	.long	0x6fe
	.long	0x6a4
	.long	0x6aa
	.uleb128 0x4
	.long	0x6ea
	.byte	0
	.uleb128 0x2d
	.string	"T"
	.long	0x1fd
	.uleb128 0x3f
	.string	"N"
	.long	0x47
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.long	0x4c8
	.byte	0
	.uleb128 0x20
	.long	0x1fd
	.long	0x6d0
	.uleb128 0x21
	.long	0x47
	.byte	0x4f
	.byte	0
	.uleb128 0x11
	.long	0x4c8
	.uleb128 0x9
	.long	0x6d0
	.uleb128 0xd
	.long	0x6ba
	.uleb128 0x40
	.byte	0x8
	.long	0x4c8
	.uleb128 0xd
	.long	0x4c8
	.uleb128 0x11
	.long	0x6ba
	.uleb128 0xd
	.long	0x1fd
	.uleb128 0x11
	.long	0x1fd
	.uleb128 0xd
	.long	0x223
	.uleb128 0x11
	.long	0x223
	.uleb128 0x41
	.long	.LASF569
	.long	0x50010
	.byte	0x2
	.byte	0x7f
	.byte	0x7
	.long	0x907
	.uleb128 0x15
	.long	.LASF545
	.byte	0x2
	.byte	0x82
	.byte	0x7
	.long	0x90c
	.byte	0
	.uleb128 0x2e
	.long	.LASF570
	.byte	0x83
	.long	0x42
	.long	0x50000
	.uleb128 0x2e
	.long	.LASF571
	.byte	0x84
	.long	0x42
	.long	0x50008
	.uleb128 0x16
	.long	.LASF572
	.byte	0x87
	.byte	0x5
	.long	.LASF574
	.long	0x74f
	.long	0x755
	.uleb128 0x4
	.long	0x91d
	.byte	0
	.uleb128 0x16
	.long	.LASF573
	.byte	0x8d
	.byte	0xa
	.long	.LASF575
	.long	0x768
	.long	0x773
	.uleb128 0x4
	.long	0x91d
	.uleb128 0x1
	.long	0x6da
	.byte	0
	.uleb128 0x16
	.long	.LASF576
	.byte	0x97
	.byte	0xa
	.long	.LASF577
	.long	0x786
	.long	0x78c
	.uleb128 0x4
	.long	0x91d
	.byte	0
	.uleb128 0x16
	.long	.LASF578
	.byte	0xa4
	.byte	0xa
	.long	.LASF579
	.long	0x79f
	.long	0x7aa
	.uleb128 0x4
	.long	0x91d
	.uleb128 0x1
	.long	0x6da
	.byte	0
	.uleb128 0x16
	.long	.LASF580
	.byte	0xbc
	.byte	0xa
	.long	.LASF581
	.long	0x7bd
	.long	0x7c3
	.uleb128 0x4
	.long	0x91d
	.byte	0
	.uleb128 0x6
	.long	.LASF557
	.byte	0x2
	.byte	0xc3
	.byte	0x8
	.long	.LASF582
	.long	0x6e5
	.long	0x7db
	.long	0x7e6
	.uleb128 0x4
	.long	0x91d
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x6
	.long	.LASF583
	.byte	0x2
	.byte	0xc8
	.byte	0x8
	.long	.LASF584
	.long	0x6e5
	.long	0x7fe
	.long	0x804
	.uleb128 0x4
	.long	0x91d
	.byte	0
	.uleb128 0x6
	.long	.LASF585
	.byte	0x2
	.byte	0xcd
	.byte	0x8
	.long	.LASF586
	.long	0x6e5
	.long	0x81c
	.long	0x822
	.uleb128 0x4
	.long	0x91d
	.byte	0
	.uleb128 0x6
	.long	.LASF557
	.byte	0x2
	.byte	0xd2
	.byte	0xe
	.long	.LASF587
	.long	0x6da
	.long	0x83a
	.long	0x845
	.uleb128 0x4
	.long	0x927
	.uleb128 0x1
	.long	0x32
	.byte	0
	.uleb128 0x6
	.long	.LASF583
	.byte	0x2
	.byte	0xd7
	.byte	0xe
	.long	.LASF588
	.long	0x6da
	.long	0x85d
	.long	0x863
	.uleb128 0x4
	.long	0x927
	.byte	0
	.uleb128 0x6
	.long	.LASF585
	.byte	0x2
	.byte	0xdc
	.byte	0xe
	.long	.LASF589
	.long	0x6da
	.long	0x87b
	.long	0x881
	.uleb128 0x4
	.long	0x927
	.byte	0
	.uleb128 0x6
	.long	.LASF553
	.byte	0x2
	.byte	0xe1
	.byte	0xc
	.long	.LASF590
	.long	0x32
	.long	0x899
	.long	0x89f
	.uleb128 0x4
	.long	0x927
	.byte	0
	.uleb128 0x6
	.long	.LASF591
	.byte	0x2
	.byte	0xe6
	.byte	0xc
	.long	.LASF592
	.long	0x32
	.long	0x8b7
	.long	0x8bd
	.uleb128 0x4
	.long	0x927
	.byte	0
	.uleb128 0x6
	.long	.LASF555
	.byte	0x2
	.byte	0xeb
	.byte	0xa
	.long	.LASF593
	.long	0xbd
	.long	0x8d5
	.long	0x8db
	.uleb128 0x4
	.long	0x927
	.byte	0
	.uleb128 0x16
	.long	.LASF510
	.byte	0xf0
	.byte	0xa
	.long	.LASF594
	.long	0x8ee
	.long	0x8f4
	.uleb128 0x4
	.long	0x91d
	.byte	0
	.uleb128 0x2d
	.string	"T"
	.long	0x4c8
	.uleb128 0x42
	.long	.LASF595
	.long	0x47
	.value	0x800
	.byte	0
	.uleb128 0x9
	.long	0x703
	.uleb128 0x20
	.long	0x4c8
	.long	0x91d
	.uleb128 0x43
	.long	0x47
	.value	0x7ff
	.byte	0
	.uleb128 0x11
	.long	0x703
	.uleb128 0x9
	.long	0x91d
	.uleb128 0x11
	.long	0x907
	.uleb128 0x9
	.long	0x927
	.uleb128 0x19
	.long	0x278
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.uleb128 0x19
	.long	0x297
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console11s_cursorPosE
	.uleb128 0x19
	.long	0x2a6
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_displayLineE
	.uleb128 0x19
	.long	0x2b5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console15s_cursorEnabledE
	.uleb128 0x19
	.long	0x2c4
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_shouldFlushE
	.uleb128 0xd
	.long	0x1cd
	.uleb128 0xd
	.long	0x1f8
	.uleb128 0xd
	.long	0x3d
	.uleb128 0x11
	.long	0x997
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF596
	.uleb128 0x9
	.long	0x990
	.uleb128 0xd
	.long	0x1c8
	.uleb128 0x44
	.long	0xaf
	.uleb128 0x45
	.long	.LASF614
	.byte	0x6
	.byte	0x12
	.byte	0x11
	.long	0x9bd
	.uleb128 0x1
	.long	0x67
	.uleb128 0x1
	.long	0x55
	.byte	0
	.uleb128 0x46
	.long	.LASF615
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2a
	.uleb128 0x17
	.long	0xa2a
	.quad	.LBI129
	.byte	.LVU384
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.uleb128 0x17
	.long	0xae0
	.quad	.LBI131
	.byte	.LVU387
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.byte	0x4
	.byte	0x48
	.byte	0x67
	.uleb128 0x2
	.long	0xaee
	.long	.LLST75
	.long	.LVUS75
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	.LASF616
	.byte	0x1
	.uleb128 0x12
	.long	0x881
	.long	0xa3e
	.byte	0x3
	.long	0xa48
	.uleb128 0x13
	.long	.LASF597
	.long	0x92c
	.byte	0
	.uleb128 0x12
	.long	0x8db
	.long	0xa56
	.byte	0x3
	.long	0xa60
	.uleb128 0x13
	.long	.LASF597
	.long	0x922
	.byte	0
	.uleb128 0x12
	.long	0x89f
	.long	0xa6e
	.byte	0x3
	.long	0xa78
	.uleb128 0x13
	.long	.LASF597
	.long	0x92c
	.byte	0
	.uleb128 0x12
	.long	0x755
	.long	0xa86
	.byte	0x3
	.long	0xa9b
	.uleb128 0x13
	.long	.LASF597
	.long	0x922
	.uleb128 0x2f
	.long	.LASF598
	.byte	0x8d
	.byte	0x1c
	.long	0x6da
	.byte	0
	.uleb128 0x12
	.long	0x5b2
	.long	0xaa9
	.byte	0x3
	.long	0xabd
	.uleb128 0x13
	.long	.LASF597
	.long	0x6d5
	.uleb128 0x48
	.string	"i"
	.byte	0x3
	.byte	0x1c
	.byte	0x1e
	.long	0x32
	.byte	0
	.uleb128 0x12
	.long	0x7c3
	.long	0xacb
	.byte	0x3
	.long	0xae0
	.uleb128 0x13
	.long	.LASF597
	.long	0x922
	.uleb128 0x2f
	.long	.LASF599
	.byte	0xc3
	.byte	0x1a
	.long	0x32
	.byte	0
	.uleb128 0x12
	.long	0x73c
	.long	0xaee
	.byte	0x2
	.long	0xaf8
	.uleb128 0x13
	.long	.LASF597
	.long	0x922
	.byte	0
	.uleb128 0x49
	.long	0xae0
	.long	.LASF617
	.long	0xb09
	.long	0xb0f
	.uleb128 0x1b
	.long	0xaee
	.byte	0
	.uleb128 0x8
	.long	0x44f
	.byte	0xdc
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0xba8
	.uleb128 0x23
	.string	"str"
	.byte	0xdc
	.byte	0x2e
	.long	0x98b
	.long	.LLST71
	.long	.LVUS71
	.uleb128 0x7
	.long	.LASF553
	.byte	0xdc
	.byte	0x3a
	.long	0x32
	.long	.LLST72
	.long	.LVUS72
	.uleb128 0x7
	.long	.LASF600
	.byte	0xdc
	.byte	0x47
	.long	0x32
	.long	.LLST73
	.long	.LVUS73
	.uleb128 0x30
	.long	.LASF489
	.byte	0xdc
	.byte	0x5a
	.long	0xe2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4a
	.string	"vga"
	.byte	0x1
	.byte	0xdf
	.byte	0x1b
	.long	0xba8
	.sleb128 -140737487601664
	.uleb128 0x24
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.uleb128 0xe
	.string	"i"
	.byte	0xe0
	.byte	0x15
	.long	0x32
	.long	.LLST74
	.long	.LVUS74
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x228
	.uleb128 0x8
	.long	0x404
	.byte	0xd2
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf7
	.uleb128 0x7
	.long	.LASF602
	.byte	0xd2
	.byte	0x23
	.long	0x32
	.long	.LLST70
	.long	.LVUS70
	.uleb128 0xb
	.quad	.LVL92
	.long	0x1487
	.uleb128 0xb
	.quad	.LVL93
	.long	0xd27
	.byte	0
	.uleb128 0x8
	.long	0x3ef
	.byte	0xc9
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0xc99
	.uleb128 0x7
	.long	.LASF602
	.byte	0xc9
	.byte	0x25
	.long	0x32
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0xf
	.long	0xa30
	.quad	.LBI117
	.byte	.LVU334
	.long	.LLRL67
	.byte	0xcc
	.byte	0x2e
	.long	0xc4c
	.uleb128 0x2
	.long	0xa3e
	.long	.LLST68
	.long	.LVUS68
	.byte	0
	.uleb128 0x14
	.long	0xa30
	.quad	.LBI121
	.byte	.LVU343
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.byte	0xcd
	.byte	0x2e
	.long	0xc7e
	.uleb128 0x2
	.long	0xa3e
	.long	.LLST69
	.long	.LVUS69
	.byte	0
	.uleb128 0xb
	.quad	.LVL89
	.long	0x1487
	.uleb128 0xb
	.quad	.LVL90
	.long	0xd27
	.byte	0
	.uleb128 0x4b
	.long	0x444
	.byte	0x1
	.byte	0xc4
	.byte	0xa
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	0x489
	.byte	0xbf
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0xcdd
	.uleb128 0x31
	.string	"pos"
	.byte	0xbf
	.byte	0x3c
	.long	0x99c
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x8
	.long	0x42f
	.byte	0xb8
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0xd27
	.uleb128 0x7
	.long	.LASF603
	.byte	0xb8
	.byte	0x29
	.long	0x32
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0xb
	.quad	.LVL82
	.long	0xd27
	.uleb128 0xb
	.quad	.LVL83
	.long	0x1487
	.byte	0
	.uleb128 0x8
	.long	0x473
	.byte	0xa0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0xf26
	.uleb128 0x4c
	.long	.LASF599
	.byte	0x1
	.byte	0xa2
	.byte	0x10
	.long	0x32
	.uleb128 0x32
	.long	.LASF604
	.byte	0xa3
	.long	0x32
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x32
	.long	.LASF605
	.byte	0xad
	.long	0x32
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x25
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0xe92
	.uleb128 0xe
	.string	"i"
	.byte	0xa4
	.byte	0x15
	.long	0x32
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x33
	.long	.LLRL38
	.uleb128 0xe
	.string	"j"
	.byte	0xa6
	.byte	0x19
	.long	0x32
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0xf
	.long	0xabd
	.quad	.LBI87
	.byte	.LVU141
	.long	.LLRL40
	.byte	0xa8
	.byte	0x4d
	.long	0xde2
	.uleb128 0x2
	.long	0xad4
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x2
	.long	0xacb
	.long	.LLST42
	.long	.LVUS42
	.byte	0
	.uleb128 0x14
	.long	0xa9b
	.quad	.LBI92
	.byte	.LVU144
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.byte	0xa8
	.byte	0x50
	.long	0xe21
	.uleb128 0x2
	.long	0xab2
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x2
	.long	0xaa9
	.long	.LLST44
	.long	.LVUS44
	.byte	0
	.uleb128 0xf
	.long	0xabd
	.quad	.LBI94
	.byte	.LVU153
	.long	.LLRL45
	.byte	0xa9
	.byte	0x48
	.long	0xe54
	.uleb128 0x2
	.long	0xad4
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x2
	.long	0xacb
	.long	.LLST47
	.long	.LVUS47
	.byte	0
	.uleb128 0x17
	.long	0xa9b
	.quad	.LBI97
	.byte	.LVU156
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.byte	0x1
	.byte	0xa9
	.byte	0x4b
	.uleb128 0x2
	.long	0xab2
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x2
	.long	0xaa9
	.long	.LLST49
	.long	.LVUS49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0xed0
	.uleb128 0xe
	.string	"i"
	.byte	0xae
	.byte	0x15
	.long	0x32
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x33
	.long	.LLRL51
	.uleb128 0xe
	.string	"j"
	.byte	0xb0
	.byte	0x19
	.long	0x32
	.long	.LLST52
	.long	.LVUS52
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xa30
	.quad	.LBI79
	.byte	.LVU118
	.long	.LLRL34
	.byte	0xa3
	.byte	0x2b
	.long	0xef6
	.uleb128 0x2
	.long	0xa3e
	.long	.LLST35
	.long	.LVUS35
	.byte	0
	.uleb128 0x17
	.long	0xa30
	.quad	.LBI83
	.byte	.LVU126
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.byte	0x1
	.byte	0xa3
	.byte	0x63
	.uleb128 0x2
	.long	0xa3e
	.long	.LLST36
	.long	.LVUS36
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x343
	.byte	0x69
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x107a
	.uleb128 0x30
	.long	.LASF603
	.byte	0x69
	.byte	0x24
	.long	0x32
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x7
	.long	.LASF606
	.byte	0x69
	.byte	0x32
	.long	0x55
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x7
	.long	.LASF489
	.byte	0x6b
	.byte	0x28
	.long	0xe2
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x24
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0xe
	.string	"j"
	.byte	0x6e
	.byte	0x15
	.long	0x32
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0xf
	.long	0xabd
	.quad	.LBI67
	.byte	.LVU93
	.long	.LLRL22
	.byte	0x70
	.byte	0x1e
	.long	0xfca
	.uleb128 0x2
	.long	0xad4
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x2
	.long	0xacb
	.long	.LLST24
	.long	.LVUS24
	.byte	0
	.uleb128 0x14
	.long	0xa9b
	.quad	.LBI72
	.byte	.LVU96
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.byte	0x70
	.byte	0x21
	.long	0x1009
	.uleb128 0x2
	.long	0xab2
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x2
	.long	0xaa9
	.long	.LLST26
	.long	.LVUS26
	.byte	0
	.uleb128 0xf
	.long	0xabd
	.quad	.LBI74
	.byte	.LVU102
	.long	.LLRL27
	.byte	0x71
	.byte	0x1e
	.long	0x103c
	.uleb128 0x2
	.long	0xad4
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x2
	.long	0xacb
	.long	.LLST29
	.long	.LVUS29
	.byte	0
	.uleb128 0x17
	.long	0xa9b
	.quad	.LBI77
	.byte	.LVU105
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.byte	0x1
	.byte	0x71
	.byte	0x21
	.uleb128 0x2
	.long	0xab2
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x2
	.long	0xaa9
	.long	.LLST31
	.long	.LVUS31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x329
	.byte	0x60
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x10ed
	.uleb128 0x7
	.long	.LASF606
	.byte	0x60
	.byte	0x25
	.long	0x55
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x7
	.long	.LASF489
	.byte	0x62
	.byte	0x28
	.long	0xe2
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x10
	.quad	.LVL66
	.long	0xf26
	.long	0x10df
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
	.uleb128 0xb
	.quad	.LVL67
	.long	0x12b2
	.byte	0
	.uleb128 0x8
	.long	0x30f
	.byte	0x4c
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e4
	.uleb128 0x7
	.long	.LASF606
	.byte	0x4d
	.byte	0x11
	.long	0x55
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x7
	.long	.LASF489
	.byte	0x4f
	.byte	0x14
	.long	0xe2
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x25
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.long	0x1179
	.uleb128 0xe
	.string	"i"
	.byte	0x52
	.byte	0x15
	.long	0x32
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x24
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.uleb128 0xe
	.string	"j"
	.byte	0x54
	.byte	0x19
	.long	0x32
	.long	.LLST60
	.long	.LVUS60
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xa48
	.quad	.LBI111
	.byte	.LVU287
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.byte	0x5b
	.byte	0x1b
	.long	0x11ab
	.uleb128 0x2
	.long	0xa56
	.long	.LLST61
	.long	.LVUS61
	.byte	0
	.uleb128 0xf
	.long	0xa78
	.quad	.LBI113
	.byte	.LVU292
	.long	.LLRL62
	.byte	0x5c
	.byte	0x1e
	.long	0x11d6
	.uleb128 0x1b
	.long	0xa8f
	.uleb128 0x2
	.long	0xa86
	.long	.LLST64
	.long	.LVUS64
	.byte	0
	.uleb128 0xb
	.quad	.LVL79
	.long	0x12b2
	.byte	0
	.uleb128 0x8
	.long	0x2f6
	.byte	0x33
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x12b2
	.uleb128 0x23
	.string	"c"
	.byte	0x33
	.byte	0x23
	.long	0x55
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x7
	.long	.LASF489
	.byte	0x33
	.byte	0x31
	.long	0xe2
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x14
	.long	0xa78
	.quad	.LBI62
	.byte	.LVU44
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.byte	0x39
	.byte	0x22
	.long	0x125b
	.uleb128 0x1b
	.long	0xa8f
	.uleb128 0x2
	.long	0xa86
	.long	.LLST16
	.long	.LVUS16
	.byte	0
	.uleb128 0x14
	.long	0xa78
	.quad	.LBI64
	.byte	.LVU70
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.byte	0x45
	.byte	0x26
	.long	0x1292
	.uleb128 0x1b
	.long	0xa8f
	.uleb128 0x2
	.long	0xa86
	.long	.LLST18
	.long	.LVUS18
	.byte	0
	.uleb128 0x34
	.quad	.LVL10
	.long	0x12ef
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
	.uleb128 0x8
	.long	0x3aa
	.byte	0x2c
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ef
	.uleb128 0x23
	.string	"pos"
	.byte	0x2c
	.byte	0x27
	.long	0x1aa
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0xb
	.quad	.LVL62
	.long	0x1487
	.byte	0
	.uleb128 0x8
	.long	0x2d3
	.byte	0x25
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x1433
	.uleb128 0x7
	.long	.LASF603
	.byte	0x25
	.byte	0x24
	.long	0x32
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x31
	.string	"pos"
	.byte	0x25
	.byte	0x31
	.long	0x32
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x7
	.long	.LASF488
	.byte	0x25
	.byte	0x3e
	.long	0x55
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x7
	.long	.LASF489
	.byte	0x25
	.byte	0x54
	.long	0xe2
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xf
	.long	0xabd
	.quad	.LBI48
	.byte	.LVU3
	.long	.LLRL3
	.byte	0x28
	.byte	0x1a
	.long	0x1384
	.uleb128 0x2
	.long	0xad4
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2
	.long	0xacb
	.long	.LLST5
	.long	.LVUS5
	.byte	0
	.uleb128 0x14
	.long	0xa9b
	.quad	.LBI51
	.byte	.LVU7
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.byte	0x28
	.byte	0x1f
	.long	0x13c3
	.uleb128 0x2
	.long	0xab2
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x2
	.long	0xaa9
	.long	.LLST7
	.long	.LVUS7
	.byte	0
	.uleb128 0xf
	.long	0xabd
	.quad	.LBI53
	.byte	.LVU13
	.long	.LLRL8
	.byte	0x29
	.byte	0x1a
	.long	0x13f6
	.uleb128 0x2
	.long	0xad4
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x2
	.long	0xacb
	.long	.LLST10
	.long	.LVUS10
	.byte	0
	.uleb128 0x17
	.long	0xa9b
	.quad	.LBI56
	.byte	.LVU16
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.byte	0x1
	.byte	0x29
	.byte	0x1f
	.uleb128 0x2
	.long	0xab2
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x2
	.long	0xaa9
	.long	.LLST12
	.long	.LVUS12
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x424
	.byte	0x1f
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x145d
	.uleb128 0xb
	.quad	.LVL60
	.long	0x1487
	.byte	0
	.uleb128 0x8
	.long	0x419
	.byte	0x19
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x1487
	.uleb128 0xb
	.quad	.LVL59
	.long	0x1487
	.byte	0
	.uleb128 0x4d
	.long	0x47e
	.byte	0x1
	.byte	0x5
	.byte	0xa
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"pos"
	.byte	0x11
	.byte	0x10
	.long	0x32
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x10
	.quad	.LVL49
	.long	0xcb3
	.long	0x14d3
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console11s_cursorPosE
	.byte	0
	.uleb128 0x10
	.quad	.LVL50
	.long	0x9a6
	.long	0x14f1
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
	.quad	.LVL51
	.long	0x9a6
	.long	0x1510
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
	.quad	.LVL52
	.long	0x9a6
	.long	0x152e
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
	.quad	.LVL53
	.long	0x9a6
	.long	0x154c
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
	.quad	.LVL55
	.long	0x9a6
	.long	0x156a
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
	.quad	.LVL56
	.long	0x9a6
	.long	0x158c
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
	.quad	.LVL57
	.long	0x9a6
	.long	0x15aa
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
	.uleb128 0x34
	.quad	.LVL58
	.long	0x9a6
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0xf
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.sleb128 21
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0xb
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x34
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
.LVUS75:
	.uleb128 .LVU387
	.uleb128 .LVU394
.LLST75:
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LVL102-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS71:
	.uleb128 0
	.uleb128 .LVU373
	.uleb128 .LVU373
	.uleb128 0
.LLST71:
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LFE109-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS72:
	.uleb128 0
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 0
.LLST72:
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LFE109-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS73:
	.uleb128 0
	.uleb128 .LVU373
	.uleb128 .LVU373
	.uleb128 0
.LLST73:
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LFE109-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS74:
	.uleb128 .LVU371
	.uleb128 .LVU373
	.uleb128 .LVU373
	.uleb128 .LVU379
	.uleb128 .LVU379
	.uleb128 .LVU380
	.uleb128 .LVU380
	.uleb128 .LVU381
.LLST74:
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LVL98-.Ltext0
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL98-.Ltext0
	.uleb128 .LVL99-.Ltext0
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL100-.Ltext0
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS70:
	.uleb128 0
	.uleb128 .LVU363
	.uleb128 .LVU363
	.uleb128 .LVU366
	.uleb128 .LVU366
	.uleb128 0
.LLST70:
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL92-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL92-1-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LFE108-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS66:
	.uleb128 0
	.uleb128 .LVU351
	.uleb128 .LVU351
	.uleb128 0
.LLST66:
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL89-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL89-1-.Ltext0
	.uleb128 .LFE107-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS68:
	.uleb128 .LVU334
	.uleb128 .LVU337
.LLST68:
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS69:
	.uleb128 .LVU343
	.uleb128 .LVU346
.LLST69:
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LVL88-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS65:
	.uleb128 0
	.uleb128 .LVU317
	.uleb128 .LVU317
	.uleb128 0
.LLST65:
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL82-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL82-1-.Ltext0
	.uleb128 .LFE104-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 .LVU130
	.uleb128 .LVU172
.LLST32:
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS33:
	.uleb128 .LVU172
	.uleb128 .LVU176
	.uleb128 .LVU190
	.uleb128 0
.LLST33:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LFE103-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS37:
	.uleb128 .LVU133
	.uleb128 .LVU171
.LLST37:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS39:
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU168
.LLST39:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS41:
	.uleb128 .LVU141
	.uleb128 .LVU143
.LLST41:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS42:
	.uleb128 .LVU141
	.uleb128 .LVU143
.LLST42:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 .LVU143
	.uleb128 .LVU145
.LLST43:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS44:
	.uleb128 .LVU143
	.uleb128 .LVU145
.LLST44:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x17
	.byte	0x72
	.sleb128 0
	.byte	0x70
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
.LVUS46:
	.uleb128 .LVU153
	.uleb128 .LVU155
.LLST46:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS47:
	.uleb128 .LVU153
	.uleb128 .LVU155
.LLST47:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS48:
	.uleb128 .LVU155
	.uleb128 .LVU157
.LLST48:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS49:
	.uleb128 .LVU155
	.uleb128 .LVU157
.LLST49:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x17
	.byte	0x72
	.sleb128 0
	.byte	0x70
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
.LVUS50:
	.uleb128 .LVU173
	.uleb128 .LVU188
	.uleb128 .LVU190
	.uleb128 0
.LLST50:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LFE103-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS52:
	.uleb128 .LVU176
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU188
.LLST52:
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS35:
	.uleb128 .LVU118
	.uleb128 .LVU121
.LLST35:
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU126
	.uleb128 .LVU130
.LLST36:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE102-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LFE102-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS21:
	.uleb128 .LVU88
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST21:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LFE102-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS23:
	.uleb128 .LVU93
	.uleb128 .LVU95
.LLST23:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS24:
	.uleb128 .LVU93
	.uleb128 .LVU95
.LLST24:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU95
	.uleb128 .LVU97
.LLST25:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS26:
	.uleb128 .LVU95
	.uleb128 .LVU97
.LLST26:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x17
	.byte	0x75
	.sleb128 0
	.byte	0x70
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
.LVUS28:
	.uleb128 .LVU102
	.uleb128 .LVU104
.LLST28:
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS29:
	.uleb128 .LVU102
	.uleb128 .LVU104
.LLST29:
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU104
	.uleb128 .LVU106
.LLST30:
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS31:
	.uleb128 .LVU104
	.uleb128 .LVU106
.LLST31:
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x17
	.byte	0x75
	.sleb128 0
	.byte	0x70
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
.LVUS55:
	.uleb128 0
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 0
.LLST55:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
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
	.uleb128 .LFE101-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS56:
	.uleb128 0
	.uleb128 .LVU259
	.uleb128 .LVU259
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 0
.LLST56:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
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
	.uleb128 .LFE101-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS57:
	.uleb128 0
	.uleb128 .LVU267
	.uleb128 .LVU267
	.uleb128 .LVU306
	.uleb128 .LVU306
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 0
.LLST57:
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LFE100-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS58:
	.uleb128 0
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU295
	.uleb128 .LVU295
	.uleb128 0
.LLST58:
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL77-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LFE100-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 .LVU268
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU306
	.uleb128 .LVU307
	.uleb128 0
.LLST59:
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LFE100-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS60:
	.uleb128 .LVU271
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU285
.LLST60:
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS61:
	.uleb128 .LVU287
	.uleb128 .LVU290
.LLST61:
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS64:
	.uleb128 .LVU292
	.uleb128 .LVU303
	.uleb128 .LVU307
	.uleb128 0
.LLST64:
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LFE100-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST13:
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
	.uleb128 .LFE99-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 0
.LLST14:
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
	.uleb128 .LFE99-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU44
	.uleb128 .LVU60
.LLST16:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU70
	.uleb128 .LVU84
.LLST18:
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS54:
	.uleb128 0
	.uleb128 .LVU253
.LLST54:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-1-.Ltext0
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
	.uleb128 .LVU2
	.uleb128 .LVU2
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LFE97-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE97-.Ltext0
	.uleb128 0x1
	.byte	0x58
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
	.uleb128 .LFE97-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS4:
	.uleb128 .LVU3
	.uleb128 .LVU6
.LLST4:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS5:
	.uleb128 .LVU3
	.uleb128 .LVU6
.LLST5:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU6
	.uleb128 .LVU8
.LLST6:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS7:
	.uleb128 .LVU6
	.uleb128 .LVU8
.LLST7:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x17
	.byte	0x70
	.sleb128 0
	.byte	0x71
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
.LVUS9:
	.uleb128 .LVU13
	.uleb128 .LVU15
.LLST9:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS10:
	.uleb128 .LVU13
	.uleb128 .LVU15
.LLST10:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU15
	.uleb128 .LVU17
.LLST11:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS12:
	.uleb128 .LVU15
	.uleb128 .LVU17
.LLST12:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x17
	.byte	0x70
	.sleb128 0
	.byte	0x71
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
.LVUS53:
	.uleb128 .LVU225
	.uleb128 0
.LLST53:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LFE94-.Ltext0
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
.LLRL3:
	.byte	0x4
	.uleb128 .LBB48-.Ltext0
	.uleb128 .LBE48-.Ltext0
	.byte	0x4
	.uleb128 .LBB52-.Ltext0
	.uleb128 .LBE52-.Ltext0
	.byte	0
.LLRL8:
	.byte	0x4
	.uleb128 .LBB53-.Ltext0
	.uleb128 .LBE53-.Ltext0
	.byte	0x4
	.uleb128 .LBB57-.Ltext0
	.uleb128 .LBE57-.Ltext0
	.byte	0
.LLRL22:
	.byte	0x4
	.uleb128 .LBB67-.Ltext0
	.uleb128 .LBE67-.Ltext0
	.byte	0x4
	.uleb128 .LBB71-.Ltext0
	.uleb128 .LBE71-.Ltext0
	.byte	0x4
	.uleb128 .LBB73-.Ltext0
	.uleb128 .LBE73-.Ltext0
	.byte	0
.LLRL27:
	.byte	0x4
	.uleb128 .LBB74-.Ltext0
	.uleb128 .LBE74-.Ltext0
	.byte	0x4
	.uleb128 .LBB78-.Ltext0
	.uleb128 .LBE78-.Ltext0
	.byte	0
.LLRL34:
	.byte	0x4
	.uleb128 .LBB79-.Ltext0
	.uleb128 .LBE79-.Ltext0
	.byte	0x4
	.uleb128 .LBB82-.Ltext0
	.uleb128 .LBE82-.Ltext0
	.byte	0
.LLRL38:
	.byte	0x4
	.uleb128 .LBB86-.Ltext0
	.uleb128 .LBE86-.Ltext0
	.byte	0x4
	.uleb128 .LBB99-.Ltext0
	.uleb128 .LBE99-.Ltext0
	.byte	0
.LLRL40:
	.byte	0x4
	.uleb128 .LBB87-.Ltext0
	.uleb128 .LBE87-.Ltext0
	.byte	0x4
	.uleb128 .LBB91-.Ltext0
	.uleb128 .LBE91-.Ltext0
	.byte	0x4
	.uleb128 .LBB93-.Ltext0
	.uleb128 .LBE93-.Ltext0
	.byte	0
.LLRL45:
	.byte	0x4
	.uleb128 .LBB94-.Ltext0
	.uleb128 .LBE94-.Ltext0
	.byte	0x4
	.uleb128 .LBB98-.Ltext0
	.uleb128 .LBE98-.Ltext0
	.byte	0
.LLRL51:
	.byte	0x4
	.uleb128 .LBB101-.Ltext0
	.uleb128 .LBE101-.Ltext0
	.byte	0x4
	.uleb128 .LBB102-.Ltext0
	.uleb128 .LBE102-.Ltext0
	.byte	0
.LLRL62:
	.byte	0x4
	.uleb128 .LBB113-.Ltext0
	.uleb128 .LBE113-.Ltext0
	.byte	0x4
	.uleb128 .LBB116-.Ltext0
	.uleb128 .LBE116-.Ltext0
	.byte	0
.LLRL67:
	.byte	0x4
	.uleb128 .LBB117-.Ltext0
	.uleb128 .LBE117-.Ltext0
	.byte	0x4
	.uleb128 .LBB120-.Ltext0
	.uleb128 .LBE120-.Ltext0
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
	.byte	0x5
	.uleb128 0x2
	.long	.LASF436
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x4
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
	.byte	0x5
	.uleb128 0x2
	.long	.LASF438
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x4
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
.LASF278:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF328:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF169:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF316:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF492:
	.string	"_ZN6Kernel7Console8s_extentE"
.LASF273:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF217:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF611:
	.string	"_ZN6Kernel7Console11s_vgaScreenE"
.LASF244:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF510:
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
.LASF498:
	.string	"_ZN6Kernel7Console12s_charBufferE"
.LASF499:
	.string	"_ZN6Kernel7Console11s_cursorPosE"
.LASF193:
	.string	"__UINT8_C(c) c"
.LASF459:
	.string	"BrownOnBlack"
.LASF125:
	.string	"__cpp_consteval 201811L"
.LASF67:
	.string	"__INT_FAST16_TYPE__ int"
.LASF591:
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
.LASF508:
	.string	"_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE"
.LASF220:
	.string	"__FLT_RADIX__ 2"
.LASF121:
	.string	"__cpp_designated_initializers 201707L"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF348:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF551:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSERKS4_"
.LASF264:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF27:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF542:
	.string	"_ZN6Kernel7Console10flushToVgaEv"
.LASF454:
	.string	"BlueOnBlack"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF570:
	.string	"m_tail"
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
.LASF457:
	.string	"RedOnBlack"
.LASF483:
	.string	"CursorPos"
.LASF493:
	.string	"_ZN6Kernel7Console17s_bufferLineCountE"
.LASF610:
	.string	"s_vgaScreen"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF588:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF516:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF467:
	.string	"YellowOnBlack"
.LASF544:
	.string	"Utils"
.LASF101:
	.string	"__cpp_digit_separators 201309L"
.LASF560:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF146:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF458:
	.string	"MagentaOnBlack"
.LASF374:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF271:
	.string	"__FLT16_DIG__ 3"
.LASF51:
	.string	"__INT16_TYPE__ short int"
.LASF285:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF595:
	.string	"s_size"
.LASF17:
	.string	"__OPTIMIZE__ 1"
.LASF254:
	.string	"__LDBL_DIG__ 18"
.LASF354:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF549:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4EOS4_"
.LASF57:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF58:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF64:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF95:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
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
.LASF37:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF606:
	.string	"clearValue"
.LASF303:
	.string	"__FLT64_DIG__ 15"
.LASF338:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF346:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF269:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF197:
	.string	"__UINT32_C(c) c ## U"
.LASF267:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF514:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF347:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF209:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF558:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF486:
	.string	"height"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF470:
	.string	"WhiteOnBlue"
.LASF583:
	.string	"back"
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
.LASF466:
	.string	"LightMagentaOnBlack"
.LASF543:
	.string	"_ZN6Kernel7Console12updateCursorEv"
.LASF32:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF113:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF317:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF204:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF481:
	.string	"BlackOnLightGray"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF352:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF96:
	.string	"__cpp_alias_templates 200704L"
.LASF222:
	.string	"__FLT_DIG__ 6"
.LASF202:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF390:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF294:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF463:
	.string	"LightGreenOnBlack"
.LASF157:
	.string	"__INT_WIDTH__ 32"
.LASF563:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF576:
	.string	"popBack"
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
.LASF455:
	.string	"GreenOnBlack"
.LASF447:
	.string	"long long unsigned int"
.LASF367:
	.string	"__BFLT16_DIG__ 2"
.LASF42:
	.string	"__WCHAR_TYPE__ int"
.LASF172:
	.string	"__INT8_MAX__ 0x7f"
.LASF521:
	.string	"getExtent"
.LASF336:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF265:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF472:
	.string	"WhiteOnGreen"
.LASF602:
	.string	"lines"
.LASF345:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF372:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF608:
	.string	"Console"
.LASF350:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF489:
	.string	"attr"
.LASF251:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF365:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF534:
	.string	"setDisplayLine"
.LASF545:
	.string	"m_data"
.LASF66:
	.string	"__INT_FAST8_TYPE__ int"
.LASF479:
	.string	"BlackOnBrown"
.LASF71:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF132:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF257:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF577:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE7popBackEv"
.LASF74:
	.string	"__INTPTR_TYPE__ long int"
.LASF475:
	.string	"BlackOnRed"
.LASF79:
	.string	"__cpp_binary_literals 201304L"
.LASF423:
	.string	"__MMX__ 1"
.LASF135:
	.string	"__cpp_concepts 202002L"
.LASF191:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF494:
	.string	"s_windowCapacity"
.LASF307:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF31:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF83:
	.string	"__cpp_unicode_literals 200710L"
.LASF565:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
.LASF130:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF76:
	.string	"__GXX_WEAK__ 1"
.LASF52:
	.string	"__INT32_TYPE__ int"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF362:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF413:
	.string	"__x86_64 1"
.LASF594:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5clearEv"
.LASF441:
	.string	"size_t"
.LASF554:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4sizeEv"
.LASF199:
	.string	"__UINT64_C(c) c ## UL"
.LASF485:
	.string	"width"
.LASF613:
	.string	"_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE"
.LASF281:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF600:
	.string	"offset"
.LASF452:
	.string	"Kernel"
.LASF604:
	.string	"endLine"
.LASF487:
	.string	"VgaChar"
.LASF488:
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
.LASF364:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF432:
	.string	"__ELF__ 1"
.LASF373:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF567:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF414:
	.string	"__x86_64__ 1"
.LASF607:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mcmodel=large -mtune=generic -march=x86-64 -g -ggdb3 -O1 -std=c++20 -ffreestanding -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin -fno-stack-protector -fno-rtti -fpermissive"
.LASF272:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF532:
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
.LASF609:
	.string	"Attributes"
.LASF192:
	.string	"__UINT_LEAST8_MAX__ 0xff"
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
.LASF471:
	.string	"BlackOnGreen"
.LASF126:
	.string	"__cpp_constinit 201907L"
.LASF344:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF274:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF138:
	.string	"__cpp_aligned_new 201606L"
.LASF442:
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
.LASF523:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF228:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF584:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF240:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF596:
	.string	"char"
.LASF256:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF295:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF287:
	.string	"__FLT32_DIG__ 6"
.LASF143:
	.string	"__GXX_ABI_VERSION 1018"
.LASF496:
	.string	"s_charBuffer"
.LASF314:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF100:
	.string	"__cpp_variable_templates 201304L"
.LASF593:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5emptyEv"
.LASF88:
	.string	"__cpp_rvalue_reference 200610L"
.LASF568:
	.string	"Array<Kernel::Console::VgaChar, 80>"
.LASF482:
	.string	"WhiteOnLightGray"
.LASF165:
	.string	"__INTMAX_C(c) c ## L"
.LASF70:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF571:
	.string	"m_head"
.LASF357:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF327:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF586:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF205:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF559:
	.string	"data"
.LASF182:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF450:
	.string	"long long int"
.LASF176:
	.string	"__UINT8_MAX__ 0xff"
.LASF177:
	.string	"__UINT16_MAX__ 0xffff"
.LASF69:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF497:
	.string	"s_cursorPos"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF168:
	.string	"__INTMAX_WIDTH__ 64"
.LASF421:
	.string	"__k8__ 1"
.LASF48:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF529:
	.string	"_ZN6Kernel7Console8scrollUpEm"
.LASF153:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF59:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF564:
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
.LASF505:
	.string	"_ZN6Kernel7Console13s_shouldFlushE"
.LASF270:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF86:
	.string	"__cpp_decltype 200707L"
.LASF520:
	.string	"getCursor"
.LASF334:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF292:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF19:
	.string	"_LP64 1"
.LASF108:
	.string	"__cpp_range_based_for 201603L"
.LASF578:
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
.LASF500:
	.string	"s_displayLine"
.LASF575:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8pushBackERKS5_"
.LASF114:
	.string	"__cpp_template_auto 201606L"
.LASF533:
	.string	"_ZN6Kernel7Console13disableCursorEv"
.LASF590:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4sizeEv"
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
.LASF585:
	.string	"front"
.LASF234:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF538:
	.string	"printInterrupt"
.LASF283:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF341:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF2:
	.string	"__STDC__ 1"
.LASF425:
	.string	"__SSE2__ 1"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF580:
	.string	"popFront"
.LASF22:
	.string	"__SIZEOF_LONG__ 8"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF376:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF599:
	.string	"index"
.LASF216:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF89:
	.string	"__cpp_rvalue_references 200610L"
.LASF556:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5emptyEv"
.LASF550:
	.string	"operator="
.LASF173:
	.string	"__INT16_MAX__ 0x7fff"
.LASF553:
	.string	"size"
.LASF98:
	.string	"__cpp_decltype_auto 201304L"
.LASF134:
	.string	"__cpp_using_enum 201907L"
.LASF56:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF26:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF582:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF78:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF276:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF552:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSEOS4_"
.LASF152:
	.string	"__WINT_MIN__ 0U"
.LASF572:
	.string	"RollingWindowVolatile"
.LASF253:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF90:
	.string	"__cpp_variadic_templates 200704L"
.LASF557:
	.string	"operator[]"
.LASF605:
	.string	"start"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF535:
	.string	"_ZN6Kernel7Console14setDisplayLineEm"
.LASF462:
	.string	"LightBlueOnBlack"
.LASF528:
	.string	"scrollUp"
.LASF502:
	.string	"s_cursorEnabled"
.LASF614:
	.string	"port_out_byte"
.LASF461:
	.string	"DarkGrayOnBlack"
.LASF38:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF438:
	.string	"ARRAY_H "
.LASF117:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF311:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF468:
	.string	"WhiteOnBlack"
.LASF321:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF35:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF103:
	.string	"__cpp_static_assert 201411L"
.LASF469:
	.string	"BlackOnBlue"
.LASF474:
	.string	"WhiteOnCyan"
.LASF170:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF128:
	.string	"__cpp_nontype_template_args 201911L"
.LASF436:
	.string	"UTILS_H "
.LASF174:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF566:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF195:
	.string	"__UINT16_C(c) c"
.LASF547:
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
.LASF444:
	.string	"uint16_t"
.LASF45:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF282:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF506:
	.string	"writeChar"
.LASF597:
	.string	"this"
.LASF189:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF105:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF171:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF81:
	.string	"__cpp_runtime_arrays 198712L"
.LASF381:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF460:
	.string	"LightGrayOnBlack"
.LASF145:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF509:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF118:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF33:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF562:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
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
.LASF513:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF382:
	.string	"__REGISTER_PREFIX__ "
.LASF296:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF291:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF612:
	.string	"cursorInScreenBounds"
.LASF449:
	.string	"short int"
.LASF147:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF332:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF111:
	.string	"__cpp_inline_variables 201606L"
.LASF142:
	.string	"__cpp_char8_t 202207L"
.LASF574:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC4Ev"
.LASF337:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF507:
	.string	"putChar"
.LASF440:
	.string	"long int"
.LASF504:
	.string	"s_shouldFlush"
.LASF112:
	.string	"__cpp_aggregate_bases 201603L"
.LASF39:
	.string	"__GNUG__ 13"
.LASF616:
	.string	"__static_initialization_and_destruction_0"
.LASF375:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF355:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF522:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF539:
	.string	"_ZN6Kernel7Console14printInterruptEPKcmmNS0_10AttributesE"
.LASF358:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF541:
	.string	"updateCursor"
.LASF477:
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
.LASF512:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF484:
	.string	"Extent"
.LASF371:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF527:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF237:
	.string	"__DBL_MANT_DIG__ 53"
.LASF210:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF109:
	.string	"__cpp_if_constexpr 201606L"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF519:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF129:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF456:
	.string	"CyanOnBlack"
.LASF540:
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
.LASF310:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF517:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF536:
	.string	"clampDisplayToCursor"
.LASF515:
	.string	"clearSpan"
.LASF369:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF446:
	.string	"unsigned int"
.LASF36:
	.string	"__SIZEOF_POINTER__ 8"
.LASF312:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF335:
	.string	"__FLT32X_DIG__ 15"
.LASF581:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8popFrontEv"
.LASF91:
	.string	"__cpp_initializer_lists 200806L"
.LASF149:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF221:
	.string	"__FLT_MANT_DIG__ 24"
.LASF232:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF524:
	.string	"getWindowCapacity"
.LASF546:
	.string	"Array"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF601:
	.string	"is_integral_v"
.LASF430:
	.string	"__SEG_FS 1"
.LASF511:
	.string	"clearLine"
.LASF380:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF439:
	.string	"long unsigned int"
.LASF615:
	.string	"_GLOBAL__sub_I__ZN6Kernel7Console12updateCursorEv"
.LASF555:
	.string	"empty"
.LASF77:
	.string	"__DEPRECATED 1"
.LASF490:
	.string	"s_extent"
.LASF29:
	.string	"__CHAR_BIT__ 8"
.LASF437:
	.string	"ROLLING_WINDOW_H "
.LASF587:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF163:
	.string	"__SIZE_WIDTH__ 64"
.LASF569:
	.string	"RollingWindowVolatile<Utils::Array<Kernel::Console::VgaChar, 80>, 2048>"
.LASF141:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF104:
	.string	"__cpp_namespace_attributes 201411L"
.LASF284:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF473:
	.string	"BlackOnCyan"
.LASF158:
	.string	"__LONG_WIDTH__ 64"
.LASF179:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF579:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE9pushFrontERKS5_"
.LASF420:
	.string	"__k8 1"
.LASF175:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF62:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF318:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF443:
	.string	"unsigned char"
.LASF53:
	.string	"__INT64_TYPE__ long int"
.LASF230:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF123:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF603:
	.string	"line"
.LASF219:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF525:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF94:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF426:
	.string	"__FXSR__ 1"
.LASF537:
	.string	"_ZN6Kernel7Console20clampDisplayToCursorEv"
.LASF188:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF495:
	.string	"_ZN6Kernel7Console16s_windowCapacityE"
.LASF72:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF353:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF491:
	.string	"s_bufferLineCount"
.LASF304:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF65:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF465:
	.string	"LightRedOnBlack"
.LASF85:
	.string	"__cpp_lambdas 200907L"
.LASF154:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF589:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF252:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF247:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF356:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF140:
	.string	"__cpp_template_template_args 201611L"
.LASF87:
	.string	"__cpp_attributes 200809L"
.LASF531:
	.string	"disableCursor"
.LASF224:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF476:
	.string	"WhiteOnRed"
.LASF218:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF250:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF617:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC2Ev"
.LASF190:
	.string	"__INT64_C(c) c ## L"
.LASF526:
	.string	"scrollDown"
.LASF68:
	.string	"__INT_FAST32_TYPE__ int"
.LASF478:
	.string	"WhiteOnMagenta"
.LASF235:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF21:
	.string	"__SIZEOF_INT__ 4"
.LASF99:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF503:
	.string	"_ZN6Kernel7Console15s_cursorEnabledE"
.LASF92:
	.string	"__cpp_delegating_constructors 200604L"
.LASF530:
	.string	"enableCursor"
.LASF315:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF501:
	.string	"_ZN6Kernel7Console13s_displayLineE"
.LASF84:
	.string	"__cpp_user_defined_literals 200809L"
.LASF422:
	.string	"__code_model_large__ 1"
.LASF448:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF573:
	.string	"pushBack"
.LASF242:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF259:
	.string	"__DECIMAL_DIG__ 21"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF445:
	.string	"short unsigned int"
.LASF561:
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
.LASF518:
	.string	"setCursor"
.LASF331:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF201:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF480:
	.string	"WhiteOnBrown"
.LASF223:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF313:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF379:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF326:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF225:
	.string	"__FLT_MAX_EXP__ 128"
.LASF417:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF453:
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
.LASF548:
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
.LASF451:
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
.LASF598:
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
.LASF464:
	.string	"LightCyanOnBlack"
.LASF592:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8capacityEv"
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
.LASF0:
	.string	"src/drivers/Console.cpp"
.LASF1:
	.string	"/mnt/a/myOsX64"
	.ident	"GCC: (GNU) 13.2.0"
