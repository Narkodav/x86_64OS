	.file	"Heap.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/Heap.cpp"
	.align 2
	.globl	_ZNV6Kernel14HeapLinkedList10initializeEPvS1_
	.type	_ZNV6Kernel14HeapLinkedList10initializeEPvS1_, @function
_ZNV6Kernel14HeapLinkedList10initializeEPvS1_:
.LVL0:
.LFB37:
	.file 1 "src/kernel/Heap.cpp"
	.loc 1 5 5 view -0
	.cfi_startproc
	.loc 1 6 9 view .LVU1
	.loc 1 6 21 is_stmt 0 view .LVU2
	movq	%rsi, 8(%rdi)
	.loc 1 7 9 is_stmt 1 view .LVU3
	.loc 1 7 19 is_stmt 0 view .LVU4
	movq	%rdx, 16(%rdi)
	.loc 1 8 9 is_stmt 1 view .LVU5
	.loc 1 8 20 is_stmt 0 view .LVU6
	movq	$32, 24(%rdi)
	.loc 1 9 9 is_stmt 1 view .LVU7
	.loc 1 9 16 is_stmt 0 view .LVU8
	movq	%rsi, (%rdi)
	.loc 1 10 9 is_stmt 1 view .LVU9
	movq	(%rdi), %rax
.LVL1:
.LBB83:
.LBI83:
	.file 2 "src/kernel/../../include/Heap.h"
	.loc 2 33 18 view .LVU10
	.loc 2 35 17 view .LVU11
.LBB84:
.LBI84:
	.file 3 "src/kernel/../../include/Utils.h"
	.loc 3 45 14 view .LVU12
.LBB85:
	.loc 3 47 21 is_stmt 0 view .LVU13
	andq	$-2, 16(%rax)
.LVL2:
	.loc 3 47 21 view .LVU14
.LBE85:
.LBE84:
.LBE83:
	.loc 1 11 9 is_stmt 1 view .LVU15
	movq	(%rdi), %rax
	.loc 1 11 22 is_stmt 0 view .LVU16
	movq	$0, 8(%rax)
	.loc 1 12 9 is_stmt 1 view .LVU17
	movq	(%rdi), %rax
	.loc 1 12 22 is_stmt 0 view .LVU18
	movq	$0, (%rax)
	.loc 1 14 9 is_stmt 1 view .LVU19
	.loc 1 14 25 is_stmt 0 view .LVU20
	movq	$0, 40(%rdi)
	.loc 1 15 9 is_stmt 1 view .LVU21
	.loc 1 15 64 is_stmt 0 view .LVU22
	subq	%rsi, %rdx
.LVL3:
	.loc 1 15 105 view .LVU23
	subq	$32, %rdx
	.loc 1 15 25 view .LVU24
	movq	%rdx, 32(%rdi)
	.loc 1 16 5 view .LVU25
	ret
	.cfi_endproc
.LFE37:
	.size	_ZNV6Kernel14HeapLinkedList10initializeEPvS1_, .-_ZNV6Kernel14HeapLinkedList10initializeEPvS1_
	.align 2
	.globl	_ZN6Kernel14HeapLinkedList8allocateEm
	.type	_ZN6Kernel14HeapLinkedList8allocateEm, @function
_ZN6Kernel14HeapLinkedList8allocateEm:
.LVL4:
.LFB38:
	.loc 1 19 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 19 5 is_stmt 0 view .LVU27
	movq	%rdi, %r8
	.loc 1 20 9 is_stmt 1 view .LVU28
.LVL5:
.LBB86:
.LBI86:
	.loc 2 101 23 view .LVU29
.LBB87:
	.loc 2 101 44 view .LVU30
	.loc 2 101 57 is_stmt 0 view .LVU31
	addq	$7, %rsi
.LVL6:
	.loc 2 101 65 view .LVU32
	andq	$-8, %rsi
.LVL7:
	.loc 2 101 65 view .LVU33
.LBE87:
.LBE86:
	.loc 1 21 9 is_stmt 1 view .LVU34
	.loc 1 21 13 is_stmt 0 view .LVU35
	movq	32(%rdi), %rax
	.loc 1 21 9 view .LVU36
	cmpq	%rsi, %rax
	jb	.L8
	.loc 1 23 9 is_stmt 1 view .LVU37
	.loc 1 23 16 is_stmt 0 view .LVU38
	movq	(%rdi), %rax
.LVL8:
	.loc 1 25 9 is_stmt 1 view .LVU39
	jmp	.L4
.LVL9:
.L9:
.LBB88:
.LBB89:
	.loc 1 25 9 is_stmt 0 view .LVU40
	movq	%rcx, %rax
.LVL10:
.L4:
	.loc 1 25 9 view .LVU41
.LBE89:
.LBE88:
	.loc 1 25 24 is_stmt 1 view .LVU42
	testq	%rax, %rax
	je	.L10
.LBB109:
	.loc 1 27 13 view .LVU43
.LVL11:
.LBB106:
.LBI106:
	.loc 2 38 20 view .LVU44
.LBB107:
	.loc 2 40 17 view .LVU45
	.loc 2 40 52 is_stmt 0 view .LVU46
	movq	8(%rax), %rcx
	.loc 2 40 58 view .LVU47
	movq	%rcx, %rdx
	subq	%rax, %rdx
	.loc 2 40 108 view .LVU48
	subq	$32, %rdx
.LVL12:
	.loc 2 40 108 view .LVU49
.LBE107:
.LBE106:
	.loc 1 28 13 is_stmt 1 view .LVU50
.LBB108:
.LBB90:
.LBI90:
	.loc 2 28 18 view .LVU51
	.loc 2 28 35 view .LVU52
.LBB91:
.LBI91:
	.loc 3 49 14 view .LVU53
.LBB92:
	.loc 3 51 21 is_stmt 0 view .LVU54
	movq	16(%rax), %rdi
.LVL13:
	.loc 3 51 21 view .LVU55
.LBE92:
.LBE91:
.LBE90:
	.loc 1 28 36 discriminator 1 view .LVU56
	testb	$1, %dil
	jne	.L9
	cmpq	%rsi, %rdx
	jb	.L9
.LBB93:
	.loc 1 30 17 is_stmt 1 view .LVU57
.LVL14:
.LBB94:
.LBI94:
	.loc 2 29 18 view .LVU58
	.loc 2 31 17 view .LVU59
.LBB95:
.LBI95:
	.loc 3 41 14 view .LVU60
.LBB96:
	.loc 3 43 21 is_stmt 0 view .LVU61
	orq	$1, %rdi
	movq	%rdi, 16(%rax)
.LVL15:
	.loc 3 43 21 view .LVU62
.LBE96:
.LBE95:
.LBE94:
	.loc 1 31 17 is_stmt 1 view .LVU63
.LBB97:
	.loc 1 31 48 is_stmt 0 view .LVU64
	addq	$32, %rsi
.LVL16:
	.loc 1 31 17 view .LVU65
	cmpq	%rdx, %rsi
	jnb	.L5
.LBB98:
	.loc 1 33 21 is_stmt 1 view .LVU66
	.loc 1 33 28 is_stmt 0 view .LVU67
	leaq	(%rax,%rsi), %rdx
.LVL17:
	.loc 1 34 21 is_stmt 1 view .LVU68
	.loc 1 34 36 is_stmt 0 view .LVU69
	movq	%rax, (%rdx)
	.loc 1 35 21 is_stmt 1 view .LVU70
	.loc 1 35 47 is_stmt 0 view .LVU71
	movq	8(%rax), %rcx
.LVL18:
	.loc 1 35 36 view .LVU72
	movq	%rcx, 8(%rdx)
	.loc 1 36 21 is_stmt 1 view .LVU73
	.loc 1 36 35 is_stmt 0 view .LVU74
	movq	%rdx, 8(%rax)
	.loc 1 37 21 is_stmt 1 view .LVU75
	.loc 1 37 35 is_stmt 0 view .LVU76
	movq	8(%rdx), %rcx
	.loc 1 37 21 view .LVU77
	testq	%rcx, %rcx
	je	.L6
	.loc 1 38 25 is_stmt 1 view .LVU78
	.loc 1 38 46 is_stmt 0 view .LVU79
	movq	%rdx, (%rcx)
.L6:
	.loc 1 39 21 is_stmt 1 view .LVU80
.LVL19:
.LBB99:
.LBI99:
	.loc 2 33 18 view .LVU81
	.loc 2 35 17 view .LVU82
.LBB100:
.LBI100:
	.loc 3 45 14 view .LVU83
.LBB101:
	.loc 3 47 21 is_stmt 0 view .LVU84
	andq	$-2, 16(%rdx)
.LVL20:
	.loc 3 47 21 view .LVU85
.LBE101:
.LBE100:
.LBE99:
	.loc 1 40 21 is_stmt 1 view .LVU86
	movq	24(%r8), %rdx
.LVL21:
	.loc 1 40 32 is_stmt 0 view .LVU87
	addq	$32, %rdx
	movq	%rdx, 24(%r8)
.LVL22:
.L5:
	.loc 1 40 32 view .LVU88
.LBE98:
.LBE97:
	.loc 1 42 17 is_stmt 1 view .LVU89
.LBB102:
.LBI102:
	.loc 2 38 20 view .LVU90
.LBB103:
	.loc 2 40 17 view .LVU91
	.loc 2 40 58 is_stmt 0 view .LVU92
	movq	8(%rax), %rdx
	subq	%rax, %rdx
	.loc 2 40 108 view .LVU93
	subq	$32, %rdx
.LVL23:
	.loc 2 40 108 view .LVU94
.LBE103:
.LBE102:
	.loc 1 43 17 is_stmt 1 view .LVU95
	movq	24(%r8), %rcx
	.loc 1 43 28 is_stmt 0 view .LVU96
	addq	%rdx, %rcx
	movq	%rcx, 24(%r8)
	.loc 1 44 17 is_stmt 1 view .LVU97
	movq	40(%r8), %rcx
	.loc 1 44 33 is_stmt 0 view .LVU98
	addq	%rdx, %rcx
	movq	%rcx, 40(%r8)
	.loc 1 45 17 is_stmt 1 view .LVU99
	movq	32(%r8), %rcx
	.loc 1 45 33 is_stmt 0 view .LVU100
	subq	%rdx, %rcx
	movq	%rcx, 32(%r8)
	.loc 1 46 17 is_stmt 1 view .LVU101
.LVL24:
.LBB104:
.LBI104:
	.loc 2 43 19 view .LVU102
.LBB105:
	.loc 2 45 17 view .LVU103
	.loc 2 45 72 is_stmt 0 view .LVU104
	addq	$32, %rax
.LVL25:
	.loc 2 45 72 view .LVU105
.LBE105:
.LBE104:
	.loc 1 46 38 view .LVU106
	ret
.LVL26:
.L10:
	.loc 1 46 38 view .LVU107
	ret
.LVL27:
.L8:
	.loc 1 46 38 view .LVU108
.LBE93:
.LBE108:
.LBE109:
	.loc 1 22 20 view .LVU109
	movl	$0, %eax
	.loc 1 51 5 view .LVU110
	ret
	.cfi_endproc
.LFE38:
	.size	_ZN6Kernel14HeapLinkedList8allocateEm, .-_ZN6Kernel14HeapLinkedList8allocateEm
	.align 2
	.globl	_ZN6Kernel14HeapLinkedList4freeEPv
	.type	_ZN6Kernel14HeapLinkedList4freeEPv, @function
_ZN6Kernel14HeapLinkedList4freeEPv:
.LVL28:
.LFB40:
	.loc 1 112 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 112 5 is_stmt 0 view .LVU112
	movq	%rdi, %rdx
	.loc 1 113 9 is_stmt 1 view .LVU113
.LVL29:
	.loc 1 114 9 view .LVU114
.LBB110:
.LBI110:
	.loc 2 33 18 view .LVU115
	.loc 2 35 17 view .LVU116
.LBB111:
.LBI111:
	.loc 3 45 14 view .LVU117
.LBB112:
	.loc 3 47 21 is_stmt 0 view .LVU118
	andq	$-2, -16(%rsi)
.LVL30:
	.loc 3 47 21 view .LVU119
.LBE112:
.LBE111:
.LBE110:
	.loc 1 115 9 is_stmt 1 view .LVU120
.LBB113:
.LBI113:
	.loc 2 38 20 view .LVU121
.LBB114:
	.loc 2 40 17 view .LVU122
	.loc 2 40 58 is_stmt 0 view .LVU123
	leaq	-32(%rsi), %rax
.LVL31:
	.loc 2 40 108 view .LVU124
	movq	-24(%rsi), %rcx
	subq	%rsi, %rcx
.LVL32:
	.loc 2 40 108 view .LVU125
.LBE114:
.LBE113:
	.loc 1 116 9 is_stmt 1 view .LVU126
	movq	24(%rdi), %rdi
.LVL33:
	.loc 1 116 20 is_stmt 0 view .LVU127
	subq	%rcx, %rdi
	movq	%rdi, 24(%rdx)
	.loc 1 117 9 is_stmt 1 view .LVU128
	movq	40(%rdx), %rdi
	.loc 1 117 25 is_stmt 0 view .LVU129
	subq	%rcx, %rdi
	movq	%rdi, 40(%rdx)
	.loc 1 118 9 is_stmt 1 view .LVU130
	.loc 1 119 9 view .LVU131
	movq	32(%rdx), %rdi
	.loc 1 119 25 is_stmt 0 view .LVU132
	addq	%rdi, %rcx
.LVL34:
	.loc 1 119 25 view .LVU133
	movq	%rcx, 32(%rdx)
	.loc 1 120 9 is_stmt 1 view .LVU134
	.loc 1 121 9 view .LVU135
	.loc 1 121 39 view .LVU136
	.loc 1 121 23 is_stmt 0 view .LVU137
	movq	-32(%rsi), %rcx
	.loc 1 121 39 view .LVU138
	testq	%rcx, %rcx
	je	.L12
.LVL35:
.L16:
.LBB115:
.LBI115:
	.loc 2 28 18 is_stmt 1 view .LVU139
	.loc 2 28 35 view .LVU140
.LBB116:
.LBI116:
	.loc 3 49 14 view .LVU141
	.loc 3 49 14 is_stmt 0 view .LVU142
.LBE116:
.LBE115:
	.loc 1 121 39 discriminator 1 view .LVU143
	testb	$1, 16(%rcx)
	jne	.L12
	.loc 1 123 13 is_stmt 1 view .LVU144
	.loc 1 123 40 is_stmt 0 view .LVU145
	movq	8(%rax), %rsi
	.loc 1 123 31 view .LVU146
	movq	%rsi, 8(%rcx)
	.loc 1 124 13 is_stmt 1 view .LVU147
	.loc 1 124 19 is_stmt 0 view .LVU148
	movq	(%rax), %rax
.LVL36:
	.loc 1 125 13 is_stmt 1 view .LVU149
	movq	24(%rdx), %rcx
	.loc 1 125 24 is_stmt 0 view .LVU150
	subq	$32, %rcx
	movq	%rcx, 24(%rdx)
	.loc 1 121 39 is_stmt 1 view .LVU151
	.loc 1 121 23 is_stmt 0 view .LVU152
	movq	(%rax), %rcx
	.loc 1 121 39 view .LVU153
	testq	%rcx, %rcx
	jne	.L16
.L12:
	.loc 1 127 39 is_stmt 1 view .LVU154
	.loc 1 127 23 is_stmt 0 view .LVU155
	movq	8(%rax), %rcx
	.loc 1 127 39 view .LVU156
	testq	%rcx, %rcx
	je	.L21
.L14:
.LVL37:
.LBB117:
.LBI117:
	.loc 2 28 18 is_stmt 1 view .LVU157
	.loc 2 28 35 view .LVU158
.LBB118:
.LBI118:
	.loc 3 49 14 view .LVU159
	.loc 3 49 14 is_stmt 0 view .LVU160
.LBE118:
.LBE117:
	.loc 1 127 39 discriminator 1 view .LVU161
	testb	$1, 16(%rcx)
	jne	.L11
	.loc 1 129 13 is_stmt 1 view .LVU162
	.loc 1 129 40 is_stmt 0 view .LVU163
	movq	8(%rcx), %rcx
	.loc 1 129 25 view .LVU164
	movq	%rcx, 8(%rax)
	.loc 1 130 13 is_stmt 1 view .LVU165
	movq	24(%rdx), %rcx
	.loc 1 130 24 is_stmt 0 view .LVU166
	subq	$32, %rcx
	movq	%rcx, 24(%rdx)
	.loc 1 127 39 is_stmt 1 view .LVU167
	.loc 1 127 23 is_stmt 0 view .LVU168
	movq	8(%rax), %rcx
	.loc 1 127 39 view .LVU169
	testq	%rcx, %rcx
	jne	.L14
.L11:
	.loc 1 132 5 view .LVU170
	ret
.L21:
	.loc 1 132 5 view .LVU171
	ret
	.cfi_endproc
.LFE40:
	.size	_ZN6Kernel14HeapLinkedList4freeEPv, .-_ZN6Kernel14HeapLinkedList4freeEPv
	.align 2
	.globl	_ZN6Kernel14HeapLinkedList10reallocateEPvm
	.type	_ZN6Kernel14HeapLinkedList10reallocateEPvm, @function
_ZN6Kernel14HeapLinkedList10reallocateEPvm:
.LVL38:
.LFB39:
	.loc 1 54 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 54 5 is_stmt 0 view .LVU173
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
	movq	%rdi, %r12
	.loc 1 55 9 is_stmt 1 view .LVU174
	testq	%rsi, %rsi
	je	.L37
	movq	%rsi, %rbx
	.loc 1 57 9 view .LVU175
.LVL39:
.LBB119:
.LBI119:
	.loc 2 101 23 view .LVU176
.LBB120:
	.loc 2 101 44 view .LVU177
	.loc 2 101 57 is_stmt 0 view .LVU178
	leaq	7(%rdx), %rsi
.LVL40:
	.loc 2 101 65 view .LVU179
	andq	$-8, %rsi
.LVL41:
	.loc 2 101 65 view .LVU180
.LBE120:
.LBE119:
	.loc 1 58 9 is_stmt 1 view .LVU181
	.loc 1 59 9 view .LVU182
.LBB121:
.LBI121:
	.loc 2 38 20 view .LVU183
.LBB122:
	.loc 2 40 17 view .LVU184
	.loc 2 40 52 is_stmt 0 view .LVU185
	movq	-24(%rbx), %rax
	.loc 2 40 58 view .LVU186
	leaq	-32(%rbx), %rdx
.LVL42:
	.loc 2 40 108 view .LVU187
	movq	%rax, %r14
	subq	%rbx, %r14
.LVL43:
	.loc 2 40 108 view .LVU188
.LBE122:
.LBE121:
	.loc 1 60 9 is_stmt 1 view .LVU189
.LBB123:
	cmpq	%rsi, %r14
	jnb	.L38
.LBE123:
	.loc 1 77 9 view .LVU190
.LBB144:
	.loc 1 77 62 is_stmt 0 view .LVU191
	testq	%rax, %rax
	je	.L27
.LVL44:
.LBB145:
.LBI145:
	.loc 2 28 18 is_stmt 1 view .LVU192
	.loc 2 28 35 view .LVU193
.LBB146:
.LBI146:
	.loc 3 49 14 view .LVU194
	.loc 3 49 14 is_stmt 0 view .LVU195
.LBE146:
.LBE145:
	.loc 1 77 36 discriminator 1 view .LVU196
	testb	$1, 16(%rax)
	jne	.L27
.LVL45:
.LBB147:
.LBI147:
	.loc 2 38 20 is_stmt 1 view .LVU197
.LBB148:
	.loc 2 40 17 view .LVU198
	.loc 2 40 52 is_stmt 0 view .LVU199
	movq	8(%rax), %rdi
.LVL46:
	.loc 2 40 58 view .LVU200
	movq	%rdi, %rcx
	subq	%rax, %rcx
	.loc 2 40 108 view .LVU201
	subq	$32, %rcx
.LVL47:
	.loc 2 40 108 view .LVU202
.LBE148:
.LBE147:
	.loc 1 77 85 discriminator 1 view .LVU203
	leaq	(%r14,%rcx), %r8
	.loc 1 77 62 discriminator 1 view .LVU204
	cmpq	%rsi, %r8
	jb	.L27
.LBB149:
	.loc 1 79 13 is_stmt 1 view .LVU205
	.loc 1 79 20 is_stmt 0 view .LVU206
	movq	%rsi, %r8
	subq	%r14, %r8
.LVL48:
	.loc 1 80 13 is_stmt 1 view .LVU207
	.loc 1 82 13 view .LVU208
	.loc 1 82 13 is_stmt 0 discriminator 1 view .LVU209
	cmpq	%rcx, %r8
	je	.L39
	.loc 1 90 13 is_stmt 1 view .LVU210
	.loc 1 90 20 is_stmt 0 view .LVU211
	addq	%r8, %rax
.LVL49:
	.loc 1 91 13 is_stmt 1 view .LVU212
	.loc 1 91 28 is_stmt 0 view .LVU213
	movq	%rdx, (%rax)
	.loc 1 92 13 is_stmt 1 view .LVU214
	.loc 1 92 28 is_stmt 0 view .LVU215
	movq	%rdi, 8(%rax)
	.loc 1 93 13 is_stmt 1 view .LVU216
	.loc 1 93 25 is_stmt 0 view .LVU217
	movq	%rax, -24(%rbx)
	.loc 1 94 13 is_stmt 1 view .LVU218
	testq	%rdi, %rdi
	je	.L31
	.loc 1 95 17 view .LVU219
	.loc 1 95 32 is_stmt 0 view .LVU220
	movq	%rax, (%rdi)
.L31:
	.loc 1 97 13 is_stmt 1 view .LVU221
.LVL50:
.LBB150:
.LBI150:
	.loc 2 33 18 view .LVU222
	.loc 2 35 17 view .LVU223
.LBB151:
.LBI151:
	.loc 3 45 14 view .LVU224
.LBB152:
	.loc 3 47 21 is_stmt 0 view .LVU225
	andq	$-2, 16(%rax)
.LVL51:
	.loc 3 47 21 view .LVU226
.LBE152:
.LBE151:
.LBE150:
	.loc 1 98 13 is_stmt 1 view .LVU227
	movq	24(%r12), %rax
.LVL52:
	.loc 1 98 24 is_stmt 0 view .LVU228
	addq	%r8, %rax
	movq	%rax, 24(%r12)
	.loc 1 99 13 is_stmt 1 view .LVU229
	movq	40(%r12), %rax
	.loc 1 99 29 is_stmt 0 view .LVU230
	addq	%r8, %rax
	movq	%rax, 40(%r12)
	.loc 1 100 13 is_stmt 1 view .LVU231
	movq	32(%r12), %rax
	.loc 1 100 29 is_stmt 0 view .LVU232
	subq	%rsi, %rax
	addq	%r14, %rax
	movq	%rax, 32(%r12)
	.loc 1 101 13 is_stmt 1 view .LVU233
	.loc 1 101 20 is_stmt 0 view .LVU234
	movq	%rbx, %r13
	jmp	.L22
.LVL53:
.L37:
	.loc 1 101 20 view .LVU235
.LBE149:
.LBE144:
	.loc 1 56 13 is_stmt 1 view .LVU236
	.loc 1 56 28 is_stmt 0 view .LVU237
	movq	%rdx, %rsi
.LVL54:
	.loc 1 56 28 view .LVU238
	call	_ZN6Kernel14HeapLinkedList8allocateEm
.LVL55:
	.loc 1 56 28 view .LVU239
	movq	%rax, %r13
	.loc 1 56 33 view .LVU240
	jmp	.L22
.LVL56:
.L38:
.LBB154:
.LBB124:
	.loc 1 62 13 is_stmt 1 view .LVU241
.LBB125:
	.loc 1 62 30 is_stmt 0 view .LVU242
	leaq	32(%rsi), %rcx
.LBE125:
	.loc 1 75 20 view .LVU243
	movq	%rbx, %r13
.LBB142:
	.loc 1 62 13 view .LVU244
	cmpq	%r14, %rcx
	jnb	.L22
.LBB126:
	.loc 1 64 17 is_stmt 1 view .LVU245
.LVL57:
	.loc 1 65 17 view .LVU246
	.loc 1 65 31 is_stmt 0 view .LVU247
	addq	%rdx, %rsi
.LVL58:
	.loc 1 65 29 view .LVU248
	movq	%rsi, -24(%rbx)
	.loc 1 66 17 is_stmt 1 view .LVU249
	.loc 1 66 35 is_stmt 0 view .LVU250
	movq	%rdx, (%rsi)
	.loc 1 67 17 is_stmt 1 view .LVU251
	.loc 1 67 24 is_stmt 0 view .LVU252
	movq	-24(%rbx), %rdx
.LVL59:
	.loc 1 67 35 view .LVU253
	movq	%rax, 8(%rdx)
.LVL60:
	.loc 1 68 17 is_stmt 1 view .LVU254
	testq	%rax, %rax
	je	.L26
	.loc 1 69 21 view .LVU255
	.loc 1 69 45 is_stmt 0 view .LVU256
	movq	-24(%rbx), %rdx
	.loc 1 69 36 view .LVU257
	movq	%rdx, (%rax)
.L26:
	.loc 1 70 17 is_stmt 1 view .LVU258
	.loc 1 70 24 is_stmt 0 view .LVU259
	movq	-24(%rbx), %rax
.LVL61:
.LBB127:
.LBI127:
	.loc 2 33 18 is_stmt 1 view .LVU260
	.loc 2 35 17 view .LVU261
.LBB128:
.LBI128:
	.loc 3 45 14 view .LVU262
.LBB129:
	.loc 3 47 21 is_stmt 0 view .LVU263
	andq	$-2, 16(%rax)
.LVL62:
	.loc 3 47 21 view .LVU264
.LBE129:
.LBE128:
.LBE127:
	.loc 1 71 17 is_stmt 1 view .LVU265
	.loc 1 71 54 is_stmt 0 view .LVU266
	movq	-24(%rbx), %rax
.LVL63:
.LBB130:
.LBI130:
	.loc 2 38 20 is_stmt 1 view .LVU267
.LBB131:
	.loc 2 40 17 view .LVU268
	.loc 2 40 17 is_stmt 0 view .LVU269
.LBE131:
.LBE130:
	.loc 1 71 17 discriminator 1 view .LVU270
	movq	24(%r12), %rdx
.LBB133:
.LBB132:
	.loc 2 40 58 view .LVU271
	subq	8(%rax), %rax
.LBE132:
.LBE133:
	.loc 1 71 28 discriminator 1 view .LVU272
	leaq	64(%rdx,%rax), %rax
	movq	%rax, 24(%r12)
	.loc 1 72 17 is_stmt 1 view .LVU273
	.loc 1 72 59 is_stmt 0 view .LVU274
	movq	-24(%rbx), %rax
.LVL64:
.LBB134:
.LBI134:
	.loc 2 38 20 is_stmt 1 view .LVU275
.LBB135:
	.loc 2 40 17 view .LVU276
	.loc 2 40 17 is_stmt 0 view .LVU277
.LBE135:
.LBE134:
	.loc 1 72 17 discriminator 1 view .LVU278
	movq	40(%r12), %rdx
.LBB137:
.LBB136:
	.loc 2 40 58 view .LVU279
	subq	8(%rax), %rax
.LBE136:
.LBE137:
	.loc 1 72 33 discriminator 1 view .LVU280
	leaq	64(%rdx,%rax), %rax
	movq	%rax, 40(%r12)
	.loc 1 73 17 is_stmt 1 view .LVU281
	.loc 1 73 43 is_stmt 0 view .LVU282
	movq	-24(%rbx), %rdx
.LVL65:
.LBB138:
.LBI138:
	.loc 2 38 20 is_stmt 1 view .LVU283
.LBB139:
	.loc 2 40 17 view .LVU284
	.loc 2 40 17 is_stmt 0 view .LVU285
.LBE139:
.LBE138:
	.loc 1 73 17 discriminator 1 view .LVU286
	movq	32(%r12), %rcx
.LVL66:
.LBB141:
.LBB140:
	.loc 2 40 58 view .LVU287
	movq	8(%rdx), %rax
	subq	%rdx, %rax
.LBE140:
.LBE141:
	.loc 1 73 33 discriminator 1 view .LVU288
	leaq	-32(%rcx,%rax), %rax
	movq	%rax, 32(%r12)
.LBE126:
.LBE142:
	.loc 1 75 20 view .LVU289
	movq	%rbx, %r13
.LBB143:
	jmp	.L22
.LVL67:
.L27:
	.loc 1 75 20 view .LVU290
.LBE143:
.LBE124:
.LBE154:
	.loc 1 103 9 is_stmt 1 view .LVU291
	.loc 1 103 32 is_stmt 0 view .LVU292
	movq	%r12, %rdi
	call	_ZN6Kernel14HeapLinkedList8allocateEm
.LVL68:
	.loc 1 103 32 view .LVU293
	movq	%rax, %r13
.LVL69:
	.loc 1 104 9 is_stmt 1 view .LVU294
	testq	%rax, %rax
	je	.L22
	.loc 1 106 9 view .LVU295
	.loc 1 106 15 is_stmt 0 view .LVU296
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	memcpy
.LVL70:
	.loc 1 107 9 is_stmt 1 view .LVU297
	.loc 1 107 13 is_stmt 0 view .LVU298
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZN6Kernel14HeapLinkedList4freeEPv
.LVL71:
	.loc 1 108 9 is_stmt 1 view .LVU299
.L22:
	.loc 1 109 5 is_stmt 0 view .LVU300
	movq	%r13, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
.LVL72:
	.loc 1 109 5 view .LVU301
	popq	%r13
	.cfi_restore 13
	popq	%r14
	.cfi_restore 14
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
.LVL73:
.L39:
	.cfi_restore_state
.LBB155:
.LBB153:
	.loc 1 84 17 is_stmt 1 view .LVU302
	.loc 1 84 29 is_stmt 0 view .LVU303
	movq	%rdi, -24(%rbx)
	.loc 1 85 17 is_stmt 1 view .LVU304
	.loc 1 87 24 is_stmt 0 view .LVU305
	movq	%rbx, %r13
	.loc 1 85 17 view .LVU306
	testq	%rdi, %rdi
	je	.L22
	.loc 1 86 21 is_stmt 1 view .LVU307
	.loc 1 86 36 is_stmt 0 view .LVU308
	movq	%rdx, (%rdi)
	jmp	.L22
.LBE153:
.LBE155:
	.cfi_endproc
.LFE39:
	.size	_ZN6Kernel14HeapLinkedList10reallocateEPvm, .-_ZN6Kernel14HeapLinkedList10reallocateEPvm
.Letext0:
	.file 4 "src/kernel/../../include/Types.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1008
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x29
	.long	.LASF521
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x13
	.long	.LASF440
	.byte	0x5
	.byte	0x17
	.long	0x42
	.uleb128 0x1a
	.long	0x32
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF438
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF439
	.uleb128 0x13
	.long	.LASF441
	.byte	0x8
	.byte	0x17
	.long	0x5b
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF442
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF443
	.uleb128 0x13
	.long	.LASF444
	.byte	0xa
	.byte	0x16
	.long	0x74
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF445
	.uleb128 0x13
	.long	.LASF446
	.byte	0xb
	.byte	0x1c
	.long	0x86
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF447
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF448
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF449
	.uleb128 0x2a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF450
	.uleb128 0x2b
	.byte	0x8
	.uleb128 0x2c
	.string	"std"
	.byte	0x4
	.byte	0x16
	.byte	0xb
	.long	0x140
	.uleb128 0xc
	.long	.LASF453
	.long	0x147
	.byte	0x1
	.uleb128 0xe
	.long	.LASF451
	.byte	0x49
	.long	0x147
	.byte	0x1
	.uleb128 0xe
	.long	.LASF452
	.byte	0xe3
	.long	0x147
	.byte	0x1
	.uleb128 0xe
	.long	.LASF451
	.byte	0x49
	.long	0x147
	.byte	0
	.uleb128 0xc
	.long	.LASF453
	.long	0x147
	.byte	0
	.uleb128 0xe
	.long	.LASF454
	.byte	0xe9
	.long	0x147
	.byte	0x1
	.uleb128 0xc
	.long	.LASF453
	.long	0x147
	.byte	0
	.uleb128 0xc
	.long	.LASF453
	.long	0x147
	.byte	0
	.uleb128 0xe
	.long	.LASF451
	.byte	0x49
	.long	0x147
	.byte	0x1
	.uleb128 0xc
	.long	.LASF453
	.long	0x147
	.byte	0
	.uleb128 0xe
	.long	.LASF454
	.byte	0xe9
	.long	0x147
	.byte	0
	.uleb128 0xc
	.long	.LASF453
	.long	0x147
	.byte	0
	.uleb128 0xc
	.long	.LASF453
	.long	0x147
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.long	.LASF455
	.uleb128 0x9
	.long	0x140
	.uleb128 0x1b
	.long	.LASF456
	.byte	0x11
	.long	0x365
	.uleb128 0x2d
	.long	.LASF522
	.byte	0x30
	.byte	0x8
	.byte	0x2
	.byte	0xc
	.byte	0xb
	.long	0x35a
	.uleb128 0x2e
	.long	.LASF523
	.byte	0x7
	.byte	0x8
	.long	0x7b
	.byte	0x2
	.byte	0xf
	.byte	0x14
	.byte	0x1
	.long	0x17e
	.uleb128 0x2f
	.long	.LASF524
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.long	.LASF525
	.byte	0x20
	.byte	0x2
	.byte	0x14
	.byte	0x10
	.byte	0x1
	.long	0x252
	.uleb128 0xf
	.long	.LASF457
	.byte	0x2
	.byte	0x16
	.byte	0x14
	.long	0x533
	.byte	0
	.uleb128 0xf
	.long	.LASF458
	.byte	0x2
	.byte	0x17
	.byte	0x14
	.long	0x533
	.byte	0x8
	.uleb128 0xf
	.long	.LASF459
	.byte	0x2
	.byte	0x18
	.byte	0x32
	.long	0x376
	.byte	0x10
	.uleb128 0xf
	.long	.LASF460
	.byte	0x2
	.byte	0x19
	.byte	0x16
	.long	0x69
	.byte	0x18
	.uleb128 0xf
	.long	.LASF461
	.byte	0x2
	.byte	0x1a
	.byte	0x16
	.long	0x69
	.byte	0x1c
	.uleb128 0x1c
	.long	.LASF466
	.byte	0x1c
	.byte	0x12
	.long	.LASF468
	.long	0x140
	.long	0x1e4
	.long	0x1ea
	.uleb128 0x2
	.long	0x53d
	.byte	0
	.uleb128 0x1d
	.long	.LASF462
	.byte	0x1d
	.long	.LASF464
	.long	0x1fc
	.long	0x202
	.uleb128 0x2
	.long	0x533
	.byte	0
	.uleb128 0x1d
	.long	.LASF463
	.byte	0x21
	.long	.LASF465
	.long	0x214
	.long	0x21a
	.uleb128 0x2
	.long	0x533
	.byte	0
	.uleb128 0x1c
	.long	.LASF467
	.byte	0x26
	.byte	0x14
	.long	.LASF469
	.long	0x32
	.long	0x231
	.long	0x237
	.uleb128 0x2
	.long	0x533
	.byte	0
	.uleb128 0x31
	.long	.LASF470
	.byte	0x2
	.byte	0x2b
	.byte	0x13
	.long	.LASF471
	.long	0xa9
	.long	0x24b
	.uleb128 0x2
	.long	0x533
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x17e
	.uleb128 0x10
	.long	.LASF472
	.byte	0x32
	.byte	0x10
	.long	0x533
	.byte	0
	.uleb128 0x10
	.long	.LASF473
	.byte	0x33
	.byte	0xf
	.long	0xa9
	.byte	0x8
	.uleb128 0x10
	.long	.LASF474
	.byte	0x34
	.byte	0xf
	.long	0xa9
	.byte	0x10
	.uleb128 0x10
	.long	.LASF475
	.byte	0x35
	.byte	0x19
	.long	0x3d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF476
	.byte	0x36
	.byte	0x19
	.long	0x3d
	.byte	0x20
	.uleb128 0x10
	.long	.LASF477
	.byte	0x37
	.byte	0x19
	.long	0x3d
	.byte	0x28
	.uleb128 0x11
	.long	.LASF478
	.byte	0x2
	.byte	0x3a
	.byte	0xe
	.long	.LASF479
	.long	0x2b3
	.long	0x2c3
	.uleb128 0x2
	.long	0x547
	.uleb128 0x3
	.long	0xa9
	.uleb128 0x3
	.long	0xa9
	.byte	0
	.uleb128 0x1e
	.long	.LASF480
	.byte	0x50
	.long	.LASF482
	.long	0xa9
	.long	0x2d9
	.long	0x2e4
	.uleb128 0x2
	.long	0x551
	.uleb128 0x3
	.long	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LASF481
	.byte	0x51
	.long	.LASF483
	.long	0xa9
	.long	0x2fa
	.long	0x30a
	.uleb128 0x2
	.long	0x551
	.uleb128 0x3
	.long	0xa9
	.uleb128 0x3
	.long	0x32
	.byte	0
	.uleb128 0x11
	.long	.LASF484
	.byte	0x2
	.byte	0x52
	.byte	0xe
	.long	.LASF485
	.long	0x31e
	.long	0x329
	.uleb128 0x2
	.long	0x551
	.uleb128 0x3
	.long	0xa9
	.byte	0
	.uleb128 0x11
	.long	.LASF486
	.byte	0x2
	.byte	0x54
	.byte	0xe
	.long	.LASF487
	.long	0x33d
	.long	0x343
	.uleb128 0x2
	.long	0x55b
	.byte	0
	.uleb128 0x32
	.long	.LASF507
	.byte	0x2
	.byte	0x65
	.byte	0x17
	.long	.LASF526
	.long	0x32
	.uleb128 0x3
	.long	0x32
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x156
	.uleb128 0x9
	.long	0x156
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF488
	.uleb128 0x1b
	.long	.LASF489
	.byte	0x17
	.long	0x50f
	.uleb128 0x33
	.long	.LASF527
	.byte	0x8
	.byte	0x3
	.byte	0x1a
	.byte	0xb
	.long	0x509
	.uleb128 0xf
	.long	.LASF490
	.byte	0x3
	.byte	0x1d
	.byte	0xb
	.long	0x86
	.byte	0
	.uleb128 0x11
	.long	.LASF491
	.byte	0x3
	.byte	0x20
	.byte	0x9
	.long	.LASF492
	.long	0x3a4
	.long	0x3aa
	.uleb128 0x2
	.long	0x50f
	.byte	0
	.uleb128 0x15
	.long	.LASF493
	.byte	0x21
	.long	.LASF494
	.long	0x3bc
	.long	0x3c7
	.uleb128 0x2
	.long	0x50f
	.uleb128 0x2
	.long	0x9b
	.byte	0
	.uleb128 0x11
	.long	.LASF491
	.byte	0x3
	.byte	0x22
	.byte	0x9
	.long	.LASF495
	.long	0x3db
	.long	0x3e6
	.uleb128 0x2
	.long	0x50f
	.uleb128 0x3
	.long	0x86
	.byte	0
	.uleb128 0x15
	.long	.LASF491
	.byte	0x24
	.long	.LASF496
	.long	0x3f8
	.long	0x403
	.uleb128 0x2
	.long	0x50f
	.uleb128 0x3
	.long	0x519
	.byte	0
	.uleb128 0x1f
	.long	.LASF498
	.byte	0x25
	.long	.LASF499
	.long	0x51e
	.long	0x419
	.long	0x424
	.uleb128 0x2
	.long	0x50f
	.uleb128 0x3
	.long	0x519
	.byte	0
	.uleb128 0x15
	.long	.LASF491
	.byte	0x26
	.long	.LASF497
	.long	0x436
	.long	0x441
	.uleb128 0x2
	.long	0x50f
	.uleb128 0x3
	.long	0x523
	.byte	0
	.uleb128 0x1f
	.long	.LASF498
	.byte	0x27
	.long	.LASF500
	.long	0x51e
	.long	0x457
	.long	0x462
	.uleb128 0x2
	.long	0x50f
	.uleb128 0x3
	.long	0x523
	.byte	0
	.uleb128 0x20
	.string	"set"
	.byte	0x29
	.long	.LASF503
	.long	0x474
	.long	0x47f
	.uleb128 0x2
	.long	0x50f
	.uleb128 0x3
	.long	0x164
	.byte	0
	.uleb128 0x11
	.long	.LASF501
	.byte	0x3
	.byte	0x2d
	.byte	0xe
	.long	.LASF502
	.long	0x493
	.long	0x49e
	.uleb128 0x2
	.long	0x50f
	.uleb128 0x3
	.long	0x164
	.byte	0
	.uleb128 0x21
	.string	"get"
	.byte	0x31
	.byte	0xe
	.long	.LASF505
	.long	0x140
	.long	0x4b5
	.long	0x4c0
	.uleb128 0x2
	.long	0x529
	.uleb128 0x3
	.long	0x164
	.byte	0
	.uleb128 0x20
	.string	"set"
	.byte	0x35
	.long	.LASF504
	.long	0x4d2
	.long	0x4dd
	.uleb128 0x2
	.long	0x50f
	.uleb128 0x3
	.long	0x86
	.byte	0
	.uleb128 0x21
	.string	"get"
	.byte	0x39
	.byte	0xb
	.long	.LASF506
	.long	0x86
	.long	0x4f4
	.long	0x4fa
	.uleb128 0x2
	.long	0x529
	.byte	0
	.uleb128 0x22
	.string	"E"
	.long	0x164
	.uleb128 0x22
	.string	"T"
	.long	0x86
	.byte	0
	.uleb128 0x9
	.long	0x376
	.byte	0
	.uleb128 0xa
	.long	0x376
	.uleb128 0x9
	.long	0x50f
	.uleb128 0x23
	.long	0x509
	.uleb128 0x23
	.long	0x376
	.uleb128 0x34
	.byte	0x8
	.long	0x376
	.uleb128 0xa
	.long	0x509
	.uleb128 0x9
	.long	0x529
	.uleb128 0xa
	.long	0x17e
	.uleb128 0x9
	.long	0x533
	.uleb128 0xa
	.long	0x252
	.uleb128 0x9
	.long	0x53d
	.uleb128 0xa
	.long	0x35a
	.uleb128 0x9
	.long	0x547
	.uleb128 0xa
	.long	0x156
	.uleb128 0x9
	.long	0x551
	.uleb128 0xa
	.long	0x35f
	.uleb128 0x6
	.long	0xb7
	.uleb128 0x6
	.long	0xc1
	.uleb128 0x6
	.long	0xcc
	.uleb128 0x6
	.long	0xd7
	.uleb128 0x6
	.long	0xe2
	.uleb128 0x6
	.long	0xec
	.uleb128 0x6
	.long	0xf7
	.uleb128 0x6
	.long	0x101
	.uleb128 0x6
	.long	0x10b
	.uleb128 0x6
	.long	0x116
	.uleb128 0x6
	.long	0x120
	.uleb128 0x6
	.long	0x12b
	.uleb128 0x6
	.long	0x135
	.uleb128 0x35
	.long	.LASF508
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.long	0xa9
	.long	0x5c1
	.uleb128 0x3
	.long	0xa9
	.uleb128 0x3
	.long	0x5c1
	.uleb128 0x3
	.long	0x32
	.byte	0
	.uleb128 0xa
	.long	0x5c6
	.uleb128 0x36
	.uleb128 0x12
	.long	0x47f
	.long	0x5d4
	.long	0x5ea
	.uleb128 0xb
	.long	.LASF509
	.long	0x514
	.uleb128 0x14
	.long	.LASF510
	.byte	0x3
	.byte	0x2d
	.byte	0x16
	.long	0x164
	.byte	0
	.uleb128 0x12
	.long	0x462
	.long	0x5f7
	.long	0x60d
	.uleb128 0xb
	.long	.LASF509
	.long	0x514
	.uleb128 0x14
	.long	.LASF510
	.byte	0x3
	.byte	0x29
	.byte	0x14
	.long	0x164
	.byte	0
	.uleb128 0x12
	.long	0x49e
	.long	0x61a
	.long	0x630
	.uleb128 0xb
	.long	.LASF509
	.long	0x52e
	.uleb128 0x14
	.long	.LASF510
	.byte	0x3
	.byte	0x31
	.byte	0x14
	.long	0x164
	.byte	0
	.uleb128 0x24
	.long	0x30a
	.byte	0x6f
	.long	0x650
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x814
	.uleb128 0x16
	.long	.LASF509
	.long	0x556
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x25
	.string	"ptr"
	.byte	0x6f
	.byte	0x25
	.long	0xa9
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x5
	.long	.LASF511
	.byte	0x71
	.byte	0x10
	.long	0x533
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x5
	.long	.LASF512
	.byte	0x73
	.byte	0x10
	.long	0x32
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x8
	.long	0xfc9
	.quad	.LBI110
	.byte	.LVU115
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.byte	0x72
	.byte	0x18
	.long	0x708
	.uleb128 0x1
	.long	0xfd6
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x4
	.long	0x5c7
	.quad	.LBI111
	.byte	.LVU117
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.byte	0x2
	.byte	0x23
	.byte	0x1f
	.uleb128 0x1
	.long	0x5dd
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x1
	.long	0x5d4
	.long	.LLST31
	.long	.LVUS31
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xfb2
	.quad	.LBI113
	.byte	.LVU121
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.byte	0x73
	.byte	0x27
	.long	0x73a
	.uleb128 0x1
	.long	0xfbf
	.long	.LLST32
	.long	.LVUS32
	.byte	0
	.uleb128 0x8
	.long	0xff7
	.quad	.LBI115
	.byte	.LVU139
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.byte	0x79
	.byte	0x3e
	.long	0x7a8
	.uleb128 0x1
	.long	0x1001
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x4
	.long	0x60d
	.quad	.LBI116
	.byte	.LVU141
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.byte	0x2
	.byte	0x1c
	.byte	0x36
	.uleb128 0x1
	.long	0x623
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x1
	.long	0x61a
	.long	.LLST35
	.long	.LVUS35
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xff7
	.quad	.LBI117
	.byte	.LVU157
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.byte	0x1
	.byte	0x7f
	.byte	0x3e
	.uleb128 0x1
	.long	0x1001
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x4
	.long	0x60d
	.quad	.LBI118
	.byte	.LVU159
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.byte	0x2
	.byte	0x1c
	.byte	0x36
	.uleb128 0x1
	.long	0x623
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x1
	.long	0x61a
	.long	.LLST38
	.long	.LVUS38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x2e4
	.byte	0x35
	.long	0xa9
	.long	0x838
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0xbe3
	.uleb128 0x16
	.long	.LASF509
	.long	0x556
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x25
	.string	"ptr"
	.byte	0x35
	.byte	0x2c
	.long	0xa9
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x17
	.long	.LASF467
	.byte	0x35
	.byte	0x38
	.long	0x32
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x5
	.long	.LASF513
	.byte	0x39
	.byte	0x10
	.long	0x32
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x5
	.long	.LASF511
	.byte	0x3a
	.byte	0x10
	.long	0x533
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x5
	.long	.LASF512
	.byte	0x3b
	.byte	0x10
	.long	0x32
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x5
	.long	.LASF514
	.byte	0x67
	.byte	0xf
	.long	0xa9
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x18
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.long	0x9c1
	.uleb128 0x5
	.long	.LASF515
	.byte	0x40
	.byte	0x18
	.long	0x533
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x8
	.long	0xfc9
	.quad	.LBI127
	.byte	.LVU260
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.byte	0x46
	.byte	0x26
	.long	0x951
	.uleb128 0x1
	.long	0xfd6
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x4
	.long	0x5c7
	.quad	.LBI128
	.byte	.LVU262
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.byte	0x2
	.byte	0x23
	.byte	0x1f
	.uleb128 0x1
	.long	0x5dd
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x1
	.long	0x5d4
	.long	.LLST51
	.long	.LVUS51
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0xfb2
	.quad	.LBI130
	.byte	.LVU267
	.long	.LLRL52
	.byte	0x47
	.byte	0x40
	.long	0x977
	.uleb128 0x1
	.long	0xfbf
	.long	.LLST53
	.long	.LVUS53
	.byte	0
	.uleb128 0x27
	.long	0xfb2
	.quad	.LBI134
	.byte	.LVU275
	.long	.LLRL54
	.byte	0x48
	.byte	0x45
	.long	0x99d
	.uleb128 0x1
	.long	0xfbf
	.long	.LLST55
	.long	.LVUS55
	.byte	0
	.uleb128 0x37
	.long	0xfb2
	.quad	.LBI138
	.byte	.LVU283
	.long	.LLRL56
	.byte	0x1
	.byte	0x49
	.byte	0x35
	.uleb128 0x1
	.long	0xfbf
	.long	.LLST57
	.long	.LVUS57
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LLRL62
	.long	0xa6f
	.uleb128 0x5
	.long	.LASF516
	.byte	0x4f
	.byte	0x14
	.long	0x32
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x5
	.long	.LASF515
	.byte	0x50
	.byte	0x14
	.long	0x533
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x5
	.long	.LASF517
	.byte	0x5a
	.byte	0x14
	.long	0x533
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x4
	.long	0xfc9
	.quad	.LBI150
	.byte	.LVU222
	.quad	.LBB150
	.quad	.LBE150-.LBB150
	.byte	0x1
	.byte	0x61
	.byte	0x1f
	.uleb128 0x1
	.long	0xfd6
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x4
	.long	0x5c7
	.quad	.LBI151
	.byte	.LVU224
	.quad	.LBB151
	.quad	.LBE151-.LBB151
	.byte	0x2
	.byte	0x23
	.byte	0x1f
	.uleb128 0x1
	.long	0x5dd
	.long	.LLST67
	.long	.LVUS67
	.uleb128 0x1
	.long	0x5d4
	.long	.LLST68
	.long	.LVUS68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xf7f
	.quad	.LBI119
	.byte	.LVU176
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.byte	0x39
	.byte	0x24
	.long	0xaa1
	.uleb128 0x1
	.long	0xf89
	.long	.LLST46
	.long	.LVUS46
	.byte	0
	.uleb128 0x8
	.long	0xfb2
	.quad	.LBI121
	.byte	.LVU183
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.byte	0x3b
	.byte	0x27
	.long	0xad3
	.uleb128 0x1
	.long	0xfbf
	.long	.LLST47
	.long	.LVUS47
	.byte	0
	.uleb128 0x8
	.long	0xff7
	.quad	.LBI145
	.byte	.LVU192
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.byte	0x4d
	.byte	0x3b
	.long	0xb41
	.uleb128 0x1
	.long	0x1001
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x4
	.long	0x60d
	.quad	.LBI146
	.byte	.LVU194
	.quad	.LBB146
	.quad	.LBE146-.LBB146
	.byte	0x2
	.byte	0x1c
	.byte	0x36
	.uleb128 0x1
	.long	0x623
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x1
	.long	0x61a
	.long	.LLST60
	.long	.LVUS60
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xfb2
	.quad	.LBI147
	.byte	.LVU197
	.quad	.LBB147
	.quad	.LBE147-.LBB147
	.byte	0x4d
	.byte	0x52
	.long	0xb73
	.uleb128 0x1
	.long	0xfbf
	.long	.LLST61
	.long	.LVUS61
	.byte	0
	.uleb128 0x19
	.quad	.LVL55
	.long	0xbe3
	.long	0xb8c
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x19
	.quad	.LVL68
	.long	0xbe3
	.long	0xba4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.quad	.LVL70
	.long	0x5a1
	.long	0xbc8
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.quad	.LVL71
	.long	0x630
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x2c3
	.byte	0x12
	.long	0xa9
	.long	0xc07
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0xec7
	.uleb128 0x16
	.long	.LASF509
	.long	0x556
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x17
	.long	.LASF467
	.byte	0x12
	.byte	0x2b
	.long	0x32
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x5
	.long	.LASF513
	.byte	0x14
	.byte	0x10
	.long	0x32
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x5
	.long	.LASF518
	.byte	0x17
	.byte	0x10
	.long	0x533
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x28
	.long	.LLRL9
	.long	0xe97
	.uleb128 0x5
	.long	.LASF519
	.byte	0x1b
	.byte	0x14
	.long	0x32
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x18
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0xdf9
	.uleb128 0x5
	.long	.LASF519
	.byte	0x2a
	.byte	0x18
	.long	0x32
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x18
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0xd29
	.uleb128 0x5
	.long	.LASF517
	.byte	0x21
	.byte	0x1c
	.long	0x533
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x4
	.long	0xfc9
	.quad	.LBI99
	.byte	.LVU81
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.byte	0x1
	.byte	0x27
	.byte	0x27
	.uleb128 0x1
	.long	0xfd6
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x4
	.long	0x5c7
	.quad	.LBI100
	.byte	.LVU83
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.byte	0x2
	.byte	0x23
	.byte	0x1f
	.uleb128 0x1
	.long	0x5dd
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x1
	.long	0x5d4
	.long	.LLST21
	.long	.LVUS21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xfe0
	.quad	.LBI94
	.byte	.LVU58
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.byte	0x1e
	.byte	0x22
	.long	0xd97
	.uleb128 0x1
	.long	0xfed
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x4
	.long	0x5ea
	.quad	.LBI95
	.byte	.LVU60
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.byte	0x2
	.byte	0x1f
	.byte	0x1d
	.uleb128 0x1
	.long	0x600
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1
	.long	0x5f7
	.long	.LLST17
	.long	.LVUS17
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xfb2
	.quad	.LBI102
	.byte	.LVU90
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.byte	0x2a
	.byte	0x33
	.long	0xdc9
	.uleb128 0x1
	.long	0xfbf
	.long	.LLST22
	.long	.LVUS22
	.byte	0
	.uleb128 0x4
	.long	0xf96
	.quad	.LBI104
	.byte	.LVU102
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.byte	0x1
	.byte	0x2e
	.byte	0x25
	.uleb128 0x1
	.long	0xfa8
	.long	.LLST23
	.long	.LVUS23
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xff7
	.quad	.LBI90
	.byte	.LVU51
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.byte	0x1c
	.byte	0x21
	.long	0xe67
	.uleb128 0x1
	.long	0x1001
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x4
	.long	0x60d
	.quad	.LBI91
	.byte	.LVU53
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.byte	0x2
	.byte	0x1c
	.byte	0x36
	.uleb128 0x1
	.long	0x623
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1
	.long	0x61a
	.long	.LLST13
	.long	.LVUS13
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xfb2
	.quad	.LBI106
	.byte	.LVU44
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.byte	0x1
	.byte	0x1b
	.byte	0x2f
	.uleb128 0x1
	.long	0xfbf
	.long	.LLST24
	.long	.LVUS24
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xf7f
	.quad	.LBI86
	.byte	.LVU29
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.byte	0x1
	.byte	0x14
	.byte	0x24
	.uleb128 0x1
	.long	0xf89
	.long	.LLST8
	.long	.LVUS8
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x29f
	.byte	0x4
	.long	0xee7
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0xf7f
	.uleb128 0x39
	.long	.LASF509
	.long	0x54c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3a
	.long	.LASF528
	.byte	0x1
	.byte	0x4
	.byte	0x2b
	.long	0xa9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.long	.LASF520
	.byte	0x4
	.byte	0x3c
	.long	0xa9
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x4
	.long	0xfc9
	.quad	.LBI83
	.byte	.LVU10
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.byte	0x1
	.byte	0xa
	.byte	0x19
	.uleb128 0x1
	.long	0xfd6
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x4
	.long	0x5c7
	.quad	.LBI84
	.byte	.LVU12
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.byte	0x2
	.byte	0x23
	.byte	0x1f
	.uleb128 0x1
	.long	0x5dd
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1
	.long	0x5d4
	.long	.LLST3
	.long	.LVUS3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0x343
	.byte	0x3
	.long	0xf96
	.uleb128 0x14
	.long	.LASF467
	.byte	0x2
	.byte	0x65
	.byte	0x24
	.long	0x32
	.byte	0
	.uleb128 0x3c
	.long	0x237
	.long	0xa9
	.long	0xfa8
	.byte	0x3
	.long	0xfb2
	.uleb128 0xb
	.long	.LASF509
	.long	0x538
	.byte	0
	.uleb128 0x12
	.long	0x21a
	.long	0xfbf
	.long	0xfc9
	.uleb128 0xb
	.long	.LASF509
	.long	0x538
	.byte	0
	.uleb128 0x12
	.long	0x202
	.long	0xfd6
	.long	0xfe0
	.uleb128 0xb
	.long	.LASF509
	.long	0x538
	.byte	0
	.uleb128 0x12
	.long	0x1ea
	.long	0xfed
	.long	0xff7
	.uleb128 0xb
	.long	.LASF509
	.long	0x538
	.byte	0
	.uleb128 0x3d
	.long	0x1cd
	.long	0x1001
	.byte	0x3
	.uleb128 0xb
	.long	.LASF509
	.long	0x542
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 137
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 30
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.sleb128 23
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
.LVUS25:
	.uleb128 0
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 0
.LLST25:
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LFE40-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LFE40-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 .LVU114
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 0
.LLST27:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LFE40-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS28:
	.uleb128 .LVU125
	.uleb128 .LVU133
.LLST28:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS29:
	.uleb128 .LVU115
	.uleb128 .LVU119
.LLST29:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU117
	.uleb128 .LVU119
.LLST30:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 .LVU117
	.uleb128 .LVU119
.LLST31:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -16
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 .LVU121
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU125
.LLST32:
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS33:
	.uleb128 .LVU139
	.uleb128 .LVU142
.LLST33:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS34:
	.uleb128 .LVU141
	.uleb128 .LVU142
.LLST34:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 .LVU141
	.uleb128 .LVU142
.LLST35:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU157
	.uleb128 .LVU160
.LLST36:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS37:
	.uleb128 .LVU159
	.uleb128 .LVU160
.LLST37:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU159
	.uleb128 .LVU160
.LLST38:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 .LVU302
	.uleb128 .LVU302
	.uleb128 0
.LLST39:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL55-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL55-1-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS40:
	.uleb128 0
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU302
	.uleb128 .LVU302
	.uleb128 0
.LLST40:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS41:
	.uleb128 0
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 0
.LLST41:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL55-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL55-1-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 .LVU180
	.uleb128 .LVU235
	.uleb128 .LVU241
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 .LVU300
	.uleb128 .LVU302
	.uleb128 0
.LLST42:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x7
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL68-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL68-1-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x7
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS43:
	.uleb128 .LVU182
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU235
	.uleb128 .LVU241
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 .LVU300
	.uleb128 .LVU302
	.uleb128 0
.LLST43:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL68-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL68-1-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS44:
	.uleb128 .LVU188
	.uleb128 .LVU235
	.uleb128 .LVU241
	.uleb128 .LVU300
	.uleb128 .LVU302
	.uleb128 0
.LLST44:
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS45:
	.uleb128 .LVU294
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 .LVU300
.LLST45:
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL70-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL70-1-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS48:
	.uleb128 .LVU246
	.uleb128 .LVU260
.LLST48:
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS49:
	.uleb128 .LVU260
	.uleb128 .LVU264
.LLST49:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS50:
	.uleb128 .LVU262
	.uleb128 .LVU264
.LLST50:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 .LVU262
	.uleb128 .LVU264
.LLST51:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.byte	0
.LVUS53:
	.uleb128 .LVU267
	.uleb128 .LVU269
.LLST53:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS55:
	.uleb128 .LVU275
	.uleb128 .LVU277
.LLST55:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS57:
	.uleb128 .LVU283
	.uleb128 .LVU285
.LLST57:
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS63:
	.uleb128 .LVU207
	.uleb128 .LVU235
	.uleb128 .LVU302
	.uleb128 0
.LLST63:
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS64:
	.uleb128 .LVU208
	.uleb128 .LVU235
	.uleb128 .LVU302
	.uleb128 0
.LLST64:
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS65:
	.uleb128 .LVU212
	.uleb128 .LVU228
.LLST65:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS66:
	.uleb128 .LVU222
	.uleb128 .LVU226
.LLST66:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS67:
	.uleb128 .LVU224
	.uleb128 .LVU226
.LLST67:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS68:
	.uleb128 .LVU224
	.uleb128 .LVU226
.LLST68:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.byte	0
.LVUS46:
	.uleb128 .LVU176
	.uleb128 .LVU180
.LLST46:
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS47:
	.uleb128 .LVU183
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU188
.LLST47:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS58:
	.uleb128 .LVU192
	.uleb128 .LVU195
.LLST58:
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS59:
	.uleb128 .LVU194
	.uleb128 .LVU195
.LLST59:
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS60:
	.uleb128 .LVU194
	.uleb128 .LVU195
.LLST60:
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.byte	0
.LVUS61:
	.uleb128 .LVU197
	.uleb128 .LVU202
.LLST61:
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LFE38-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -7
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LFE38-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU33
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LFE38-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS7:
	.uleb128 .LVU39
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU108
.LLST7:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS10:
	.uleb128 .LVU40
	.uleb128 .LVU41
	.uleb128 .LVU49
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU72
.LLST10:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x9
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU94
	.uleb128 .LVU107
.LLST14:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS18:
	.uleb128 .LVU68
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU88
.LLST18:
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x6
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU81
	.uleb128 .LVU85
.LLST19:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS20:
	.uleb128 .LVU83
	.uleb128 .LVU85
.LLST20:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU83
	.uleb128 .LVU85
.LLST21:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x3
	.byte	0x71
	.sleb128 16
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU58
	.uleb128 .LVU62
.LLST15:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS16:
	.uleb128 .LVU60
	.uleb128 .LVU62
.LLST16:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU60
	.uleb128 .LVU62
.LLST17:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU90
	.uleb128 .LVU94
.LLST22:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS23:
	.uleb128 .LVU102
	.uleb128 .LVU105
.LLST23:
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS11:
	.uleb128 .LVU51
	.uleb128 .LVU55
.LLST11:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS12:
	.uleb128 .LVU53
	.uleb128 .LVU55
.LLST12:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU53
	.uleb128 .LVU55
.LLST13:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU44
	.uleb128 .LVU49
.LLST24:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS8:
	.uleb128 .LVU29
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU33
.LLST8:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -7
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE37-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU10
	.uleb128 .LVU14
.LLST1:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS2:
	.uleb128 .LVU12
	.uleb128 .LVU14
.LLST2:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU12
	.uleb128 .LVU14
.LLST3:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
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
.LLRL9:
	.byte	0x4
	.uleb128 .LBB88-.Ltext0
	.uleb128 .LBE88-.Ltext0
	.byte	0x4
	.uleb128 .LBB109-.Ltext0
	.uleb128 .LBE109-.Ltext0
	.byte	0
.LLRL52:
	.byte	0x4
	.uleb128 .LBB130-.Ltext0
	.uleb128 .LBE130-.Ltext0
	.byte	0x4
	.uleb128 .LBB133-.Ltext0
	.uleb128 .LBE133-.Ltext0
	.byte	0
.LLRL54:
	.byte	0x4
	.uleb128 .LBB134-.Ltext0
	.uleb128 .LBE134-.Ltext0
	.byte	0x4
	.uleb128 .LBB137-.Ltext0
	.uleb128 .LBE137-.Ltext0
	.byte	0
.LLRL56:
	.byte	0x4
	.uleb128 .LBB138-.Ltext0
	.uleb128 .LBE138-.Ltext0
	.byte	0x4
	.uleb128 .LBB141-.Ltext0
	.uleb128 .LBE141-.Ltext0
	.byte	0
.LLRL62:
	.byte	0x4
	.uleb128 .LBB149-.Ltext0
	.uleb128 .LBE149-.Ltext0
	.byte	0x4
	.uleb128 .LBB153-.Ltext0
	.uleb128 .LBE153-.Ltext0
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
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x3
	.long	.LASF433
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x3
	.long	.LASF436
	.byte	0x4
	.file 5 "src/kernel/../../include/Console.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x3
	.long	.LASF437
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
.LASF169:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF316:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF261:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF217:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF70:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF244:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF501:
	.string	"clear"
.LASF360:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF453:
	.string	"is_same_v"
.LASF284:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF203:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF412:
	.string	"__amd64__ 1"
.LASF487:
	.string	"_ZNK6Kernel14HeapLinkedList11printBlocksEv"
.LASF411:
	.string	"__amd64 1"
.LASF212:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF286:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF193:
	.string	"__UINT8_C(c) c"
.LASF527:
	.string	"FlagMap<Kernel::HeapLinkedList::BlockFlags, long long unsigned int>"
.LASF433:
	.string	"HEAP_H "
.LASF67:
	.string	"__INT_FAST16_TYPE__ int"
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
.LASF482:
	.string	"_ZN6Kernel14HeapLinkedList8allocateEm"
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
.LASF464:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markUsedEv"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF294:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF437:
	.string	"CONSOLE_H "
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF48:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF80:
	.string	"__cpp_hex_float 201603L"
.LASF124:
	.string	"__cpp_conditional_explicit 201806L"
.LASF458:
	.string	"next"
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
.LASF204:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF200:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF32:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF199:
	.string	"__UINT64_C(c) c ## UL"
.LASF237:
	.string	"__DBL_MANT_DIG__ 53"
.LASF235:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF101:
	.string	"__cpp_digit_separators 201309L"
.LASF146:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF236:
	.string	"__FLT_IS_IEC_60559__ 1"
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
.LASF91:
	.string	"__cpp_initializer_lists 200806L"
.LASF254:
	.string	"__LDBL_DIG__ 18"
.LASF354:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF22:
	.string	"__SIZEOF_LONG__ 8"
.LASF449:
	.string	"short int"
.LASF180:
	.string	"__INT_LEAST8_MAX__ 0x7f"
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
.LASF457:
	.string	"prev"
.LASF61:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF150:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF473:
	.string	"m_startAddr"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF183:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF144:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF37:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF303:
	.string	"__FLT64_DIG__ 15"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF269:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF347:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF209:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF62:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF497:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4EOS4_"
.LASF436:
	.string	"UTILS_H "
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
.LASF444:
	.string	"uint32_t"
.LASF113:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF317:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF298:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF463:
	.string	"markFree"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
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
.LASF493:
	.string	"~FlagMap"
.LASF270:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF49:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF373:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF214:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF447:
	.string	"long long unsigned int"
.LASF89:
	.string	"__cpp_rvalue_references 200610L"
.LASF320:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF502:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_"
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
.LASF380:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF192:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF103:
	.string	"__cpp_static_assert 201411L"
.LASF367:
	.string	"__BFLT16_DIG__ 2"
.LASF42:
	.string	"__WCHAR_TYPE__ int"
.LASF172:
	.string	"__INT8_MAX__ 0x7f"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF462:
	.string	"markUsed"
.LASF322:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF220:
	.string	"__FLT_RADIX__ 2"
.LASF345:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF108:
	.string	"__cpp_range_based_for 201603L"
.LASF350:
	.string	"__FLT64X_MANT_DIG__ 64"
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
.LASF71:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF132:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF257:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF44:
	.string	"__INTMAX_TYPE__ long int"
.LASF74:
	.string	"__INTPTR_TYPE__ long int"
.LASF79:
	.string	"__cpp_binary_literals 201304L"
.LASF423:
	.string	"__MMX__ 1"
.LASF135:
	.string	"__cpp_concepts 202002L"
.LASF191:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF506:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getEv"
.LASF307:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF31:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF83:
	.string	"__cpp_unicode_literals 200710L"
.LASF485:
	.string	"_ZN6Kernel14HeapLinkedList4freeEPv"
.LASF52:
	.string	"__INT32_TYPE__ int"
.LASF362:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF413:
	.string	"__x86_64 1"
.LASF440:
	.string	"size_t"
.LASF478:
	.string	"initialize"
.LASF281:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF76:
	.string	"__GXX_WEAK__ 1"
.LASF468:
	.string	"_ZNK6Kernel14HeapLinkedList5Block6isUsedEv"
.LASF38:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF245:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF208:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF323:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF277:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF512:
	.string	"blockSize"
.LASF305:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF466:
	.string	"isUsed"
.LASF434:
	.string	"TYPES_H "
.LASF484:
	.string	"free"
.LASF520:
	.string	"endAddr"
.LASF272:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF197:
	.string	"__UINT32_C(c) c ## U"
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
.LASF148:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF63:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF494:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyED4Ev"
.LASF122:
	.string	"__cpp_constexpr 202002L"
.LASF126:
	.string	"__cpp_constinit 201907L"
.LASF344:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF274:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF441:
	.string	"uint8_t"
.LASF3:
	.string	"__cplusplus 202002L"
.LASF106:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF164:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
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
.LASF68:
	.string	"__INT_FAST32_TYPE__ int"
.LASF219:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF228:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF240:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF488:
	.string	"char"
.LASF256:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF287:
	.string	"__FLT32_DIG__ 6"
.LASF143:
	.string	"__GXX_ABI_VERSION 1018"
.LASF273:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF314:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF100:
	.string	"__cpp_variable_templates 201304L"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF88:
	.string	"__cpp_rvalue_reference 200610L"
.LASF346:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF414:
	.string	"__x86_64__ 1"
.LASF95:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF246:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF357:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF327:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF379:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF470:
	.string	"data"
.LASF182:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF364:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF176:
	.string	"__UINT8_MAX__ 0xff"
.LASF177:
	.string	"__UINT16_MAX__ 0xffff"
.LASF69:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF279:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
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
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF238:
	.string	"__DBL_DIG__ 15"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF383:
	.string	"__USER_LABEL_PREFIX__ "
.LASF131:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF20:
	.string	"__LP64__ 1"
.LASF483:
	.string	"_ZN6Kernel14HeapLinkedList10reallocateEPvm"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF335:
	.string	"__FLT32X_DIG__ 15"
.LASF86:
	.string	"__cpp_decltype 200707L"
.LASF87:
	.string	"__cpp_attributes 200809L"
.LASF334:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF292:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF19:
	.string	"_LP64 1"
.LASF460:
	.string	"heapId"
.LASF450:
	.string	"long long int"
.LASF29:
	.string	"__CHAR_BIT__ 8"
.LASF93:
	.string	"__cpp_nsdmi 200809L"
.LASF349:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF366:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF178:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF498:
	.string	"operator="
.LASF309:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF115:
	.string	"__cpp_structured_bindings 201606L"
.LASF523:
	.string	"BlockFlags"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF198:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF505:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_"
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
.LASF377:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF25:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF130:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF526:
	.string	"_ZN6Kernel14HeapLinkedList5alignEm"
.LASF234:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF492:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ev"
.LASF371:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF495:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ey"
.LASF283:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF2:
	.string	"__STDC__ 1"
.LASF425:
	.string	"__SSE2__ 1"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF241:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF477:
	.string	"m_allocatedSize"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF376:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF205:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF43:
	.string	"__WINT_TYPE__ unsigned int"
.LASF226:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF491:
	.string	"FlagMap"
.LASF173:
	.string	"__INT16_MAX__ 0x7fff"
.LASF467:
	.string	"size"
.LASF98:
	.string	"__cpp_decltype_auto 201304L"
.LASF134:
	.string	"__cpp_using_enum 201907L"
.LASF138:
	.string	"__cpp_aligned_new 201606L"
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
.LASF267:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF216:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF117:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF311:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF496:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4ERKS4_"
.LASF321:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF35:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF489:
	.string	"Utils"
.LASF297:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
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
.LASF45:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF282:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF509:
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
.LASF145:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF118:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF33:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF481:
	.string	"reallocate"
.LASF519:
	.string	"currentSize"
.LASF133:
	.string	"__cpp_aggregate_paren_init 201902L"
.LASF227:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF465:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markFreeEv"
.LASF255:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF161:
	.string	"__WINT_WIDTH__ 32"
.LASF359:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF459:
	.string	"metadata"
.LASF21:
	.string	"__SIZEOF_INT__ 4"
.LASF296:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF291:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF474:
	.string	"m_endAddr"
.LASF528:
	.string	"startAddr"
.LASF454:
	.string	"is_ptr_v"
.LASF147:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF332:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF111:
	.string	"__cpp_inline_variables 201606L"
.LASF142:
	.string	"__cpp_char8_t 202207L"
.LASF479:
	.string	"_ZNV6Kernel14HeapLinkedList10initializeEPvS1_"
.LASF337:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF439:
	.string	"long int"
.LASF112:
	.string	"__cpp_aggregate_bases 201603L"
.LASF167:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF471:
	.string	"_ZN6Kernel14HeapLinkedList5Block4dataEv"
.LASF39:
	.string	"__GNUG__ 13"
.LASF375:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF355:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF504:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setEy"
.LASF358:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF336:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF213:
	.string	"__INTPTR_WIDTH__ 64"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF370:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF187:
	.string	"__INT32_C(c) c"
.LASF268:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF50:
	.string	"__INT8_TYPE__ signed char"
.LASF151:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF46:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF155:
	.string	"__SCHAR_WIDTH__ 8"
.LASF521:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O1 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF510:
	.string	"flag"
.LASF446:
	.string	"uint64_t"
.LASF56:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF517:
	.string	"newBlock"
.LASF210:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF109:
	.string	"__cpp_if_constexpr 201606L"
.LASF129:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF511:
	.string	"block"
.LASF500:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSEOS4_"
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
.LASF165:
	.string	"__INTMAX_C(c) c ## L"
.LASF116:
	.string	"__cpp_variadic_using 201611L"
.LASF452:
	.string	"is_enum_v"
.LASF369:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF445:
	.string	"unsigned int"
.LASF36:
	.string	"__SIZEOF_POINTER__ 8"
.LASF312:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF461:
	.string	"magic"
.LASF149:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF221:
	.string	"__FLT_MANT_DIG__ 24"
.LASF232:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF157:
	.string	"__INT_WIDTH__ 32"
.LASF260:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF451:
	.string	"is_integral_v"
.LASF430:
	.string	"__SEG_FS 1"
.LASF522:
	.string	"HeapLinkedList"
.LASF438:
	.string	"long unsigned int"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF77:
	.string	"__DEPRECATED 1"
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
.LASF499:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSERKS4_"
.LASF158:
	.string	"__LONG_WIDTH__ 64"
.LASF179:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF420:
	.string	"__k8 1"
.LASF18:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF125:
	.string	"__cpp_consteval 201811L"
.LASF225:
	.string	"__FLT_MAX_EXP__ 128"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF318:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF442:
	.string	"unsigned char"
.LASF490:
	.string	"m_flags"
.LASF53:
	.string	"__INT64_TYPE__ long int"
.LASF230:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF123:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF295:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF475:
	.string	"m_usedSize"
.LASF94:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF426:
	.string	"__FXSR__ 1"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF188:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF166:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF72:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF353:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF65:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF85:
	.string	"__cpp_lambdas 200907L"
.LASF480:
	.string	"allocate"
.LASF154:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF247:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF356:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF140:
	.string	"__cpp_template_template_args 201611L"
.LASF372:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF224:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF304:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF218:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF250:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF456:
	.string	"Kernel"
.LASF190:
	.string	"__INT64_C(c) c ## L"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF525:
	.string	"Block"
.LASF476:
	.string	"m_availibleSize"
.LASF41:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF99:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF524:
	.string	"Used"
.LASF92:
	.string	"__cpp_delegating_constructors 200604L"
.LASF315:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF84:
	.string	"__cpp_user_defined_literals 200809L"
.LASF448:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF136:
	.string	"__cpp_impl_coroutine 201902L"
.LASF242:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF259:
	.string	"__DECIMAL_DIG__ 21"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF443:
	.string	"short unsigned int"
.LASF472:
	.string	"m_head"
.LASF384:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF424:
	.string	"__SSE__ 1"
.LASF102:
	.string	"__cpp_unicode_characters 201411L"
.LASF508:
	.string	"memcpy"
.LASF30:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF503:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_"
.LASF329:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF331:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF201:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF518:
	.string	"current"
.LASF223:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF515:
	.string	"nextNext"
.LASF516:
	.string	"restSize"
.LASF326:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF382:
	.string	"__REGISTER_PREFIX__ "
.LASF514:
	.string	"newPtr"
.LASF313:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF196:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF339:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF249:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF275:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF342:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF513:
	.string	"allignedSize"
.LASF82:
	.string	"__cpp_raw_strings 200710L"
.LASF248:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF469:
	.string	"_ZN6Kernel14HeapLinkedList5Block4sizeEv"
.LASF455:
	.string	"bool"
.LASF486:
	.string	"printBlocks"
.LASF324:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF368:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF162:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF186:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF507:
	.string	"align"
.LASF73:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF258:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF293:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF406:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF57:
	.string	"__UINT64_TYPE__ long unsigned int"
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
.LASF120:
	.string	"__cpp_generic_lambdas 201707L"
.LASF302:
	.string	"__FLT64_MANT_DIG__ 53"
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
	.string	"src/kernel/Heap.cpp"
	.ident	"GCC: (GNU) 13.2.0"
