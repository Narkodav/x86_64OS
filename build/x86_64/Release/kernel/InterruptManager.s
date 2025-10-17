	.file	"InterruptManager.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/InterruptManager.cpp"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Interrupt: "
	.text
	.align 2
	.globl	_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE
	.type	_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE, @function
_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE:
.LVL0:
.LFB30:
	.file 1 "src/kernel/InterruptManager.cpp"
	.loc 1 179 5 view -0
	.cfi_startproc
	.loc 1 179 5 is_stmt 0 view .LVU1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	.loc 1 180 9 is_stmt 1 view .LVU2
	.loc 1 180 35 is_stmt 0 view .LVU3
	movl	$4, %esi
	movq	$.LC0, %rdi
.LVL1:
	.loc 1 180 35 view .LVU4
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
.LVL2:
	.loc 1 181 9 is_stmt 1 view .LVU5
	.loc 1 181 35 is_stmt 0 view .LVU6
	movq	120(%rbx), %rax
	movq	_ZN6Kernel16InterruptManager19s_exceptionMessagesE(,%rax,8), %rdi
	movl	$4, %esi
	call	_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE
.LVL3:
	.loc 1 182 9 is_stmt 1 view .LVU7
	.loc 1 182 33 is_stmt 0 view .LVU8
	movl	$4, %esi
	movl	$10, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
.LVL4:
	.loc 1 183 9 is_stmt 1 view .LVU9
/APP
# 183 "src/kernel/InterruptManager.cpp" 1
	cli 
 hlt
# 0 "" 2
	.loc 1 184 5 is_stmt 0 view .LVU10
/NO_APP
	movq	-8(%rbp), %rbx
.LVL5:
	.loc 1 184 5 view .LVU11
	leave
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE, .-_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE
	.align 2
	.globl	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.type	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh, @function
_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh:
.LVL6:
.LFB24:
	.loc 1 49 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 49 5 is_stmt 0 view .LVU13
	movl	%edx, %r8d
	.loc 1 50 9 is_stmt 1 view .LVU14
.LVL7:
	.loc 1 51 9 view .LVU15
	.loc 1 51 22 is_stmt 0 view .LVU16
	movzbl	%dil, %edi
	.loc 1 51 22 view .LVU17
	movq	%rdi, %rdx
.LVL8:
	.loc 1 51 22 view .LVU18
	salq	$4, %rdx
	leaq	_ZN6Kernel16InterruptManager12s_idtEntriesE(%rdx), %rax
.LVL9:
	.loc 1 51 22 view .LVU19
	movw	%si, _ZN6Kernel16InterruptManager12s_idtEntriesE(%rdx)
	.loc 1 52 9 is_stmt 1 view .LVU20
	.loc 1 52 24 is_stmt 0 view .LVU21
	movq	$gdt64_code_segment, %rdx
	movw	%dx, 2(%rax)
	.loc 1 53 9 is_stmt 1 view .LVU22
	.loc 1 53 19 is_stmt 0 view .LVU23
	movb	%r8b, 4(%rax)
	.loc 1 54 9 is_stmt 1 view .LVU24
	.loc 1 54 26 is_stmt 0 view .LVU25
	movb	%cl, 5(%rax)
	.loc 1 55 9 is_stmt 1 view .LVU26
	.loc 1 55 77 is_stmt 0 view .LVU27
	movq	%rsi, %rdx
	shrq	$16, %rdx
	.loc 1 55 22 view .LVU28
	movw	%dx, 6(%rax)
	.loc 1 56 9 is_stmt 1 view .LVU29
	.loc 1 56 78 is_stmt 0 view .LVU30
	shrq	$32, %rsi
.LVL10:
	.loc 1 56 23 view .LVU31
	movl	%esi, 8(%rax)
	.loc 1 57 9 is_stmt 1 view .LVU32
	.loc 1 57 24 is_stmt 0 view .LVU33
	movl	$0, 12(%rax)
	.loc 1 58 9 is_stmt 1 view .LVU34
.LVL11:
.LBB10:
.LBI10:
	.loc 1 186 10 view .LVU35
.LBB11:
	.loc 1 188 9 view .LVU36
	.loc 1 188 36 is_stmt 0 view .LVU37
	movq	$_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE, _ZN6Kernel16InterruptManager19s_interruptHandlersE(,%rdi,8)
.LVL12:
	.loc 1 188 36 view .LVU38
.LBE11:
.LBE10:
	.loc 1 59 5 view .LVU39
	ret
	.cfi_endproc
.LFE24:
	.size	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh, .-_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
	.align 2
	.globl	_ZN6Kernel16InterruptManager7loadIdtEv
	.type	_ZN6Kernel16InterruptManager7loadIdtEv, @function
_ZN6Kernel16InterruptManager7loadIdtEv:
.LFB26:
	.loc 1 123 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 124 9 view .LVU41
	.loc 1 124 24 is_stmt 0 view .LVU42
	movw	$4095, _ZN6Kernel16InterruptManager8s_idtPtrE(%rip)
	.loc 1 125 9 is_stmt 1 view .LVU43
	.loc 1 125 23 is_stmt 0 view .LVU44
	movq	$_ZN6Kernel16InterruptManager12s_idtEntriesE, _ZN6Kernel16InterruptManager8s_idtPtrE+2(%rip)
	.loc 1 126 9 is_stmt 1 view .LVU45
/APP
# 126 "src/kernel/InterruptManager.cpp" 1
	lidt _ZN6Kernel16InterruptManager8s_idtPtrE(%rip)
# 0 "" 2
	.loc 1 127 5 is_stmt 0 view .LVU46
/NO_APP
	ret
	.cfi_endproc
.LFE26:
	.size	_ZN6Kernel16InterruptManager7loadIdtEv, .-_ZN6Kernel16InterruptManager7loadIdtEv
	.align 2
	.globl	_ZN6Kernel16InterruptManager8remapPicEv
	.type	_ZN6Kernel16InterruptManager8remapPicEv, @function
_ZN6Kernel16InterruptManager8remapPicEv:
.LFB27:
	.loc 1 130 5 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 132 9 view .LVU48
	.loc 1 132 31 is_stmt 0 view .LVU49
	movl	$33, %edi
	call	_ZN6Kernel6inByteEt
.LVL13:
	.loc 1 133 9 is_stmt 1 view .LVU50
	.loc 1 133 31 is_stmt 0 view .LVU51
	movl	$161, %edi
	call	_ZN6Kernel6inByteEt
.LVL14:
	.loc 1 136 9 is_stmt 1 view .LVU52
	.loc 1 136 16 is_stmt 0 view .LVU53
	movl	$17, %esi
	movl	$32, %edi
	call	_ZN6Kernel7outByteEth
.LVL15:
	.loc 1 137 9 is_stmt 1 view .LVU54
	.loc 1 137 16 is_stmt 0 view .LVU55
	movl	$17, %esi
	movl	$160, %edi
	call	_ZN6Kernel7outByteEth
.LVL16:
	.loc 1 140 9 is_stmt 1 view .LVU56
	.loc 1 140 16 is_stmt 0 view .LVU57
	movl	$32, %esi
	movl	$33, %edi
	call	_ZN6Kernel7outByteEth
.LVL17:
	.loc 1 141 9 is_stmt 1 view .LVU58
	.loc 1 141 16 is_stmt 0 view .LVU59
	movl	$40, %esi
	movl	$161, %edi
	call	_ZN6Kernel7outByteEth
.LVL18:
	.loc 1 144 9 is_stmt 1 view .LVU60
	.loc 1 144 16 is_stmt 0 view .LVU61
	movl	$4, %esi
	movl	$33, %edi
	call	_ZN6Kernel7outByteEth
.LVL19:
	.loc 1 145 9 is_stmt 1 view .LVU62
	.loc 1 145 16 is_stmt 0 view .LVU63
	movl	$2, %esi
	movl	$161, %edi
	call	_ZN6Kernel7outByteEth
.LVL20:
	.loc 1 148 9 is_stmt 1 view .LVU64
	.loc 1 148 16 is_stmt 0 view .LVU65
	movl	$1, %esi
	movl	$33, %edi
	call	_ZN6Kernel7outByteEth
.LVL21:
	.loc 1 149 9 is_stmt 1 view .LVU66
	.loc 1 149 16 is_stmt 0 view .LVU67
	movl	$1, %esi
	movl	$161, %edi
	call	_ZN6Kernel7outByteEth
.LVL22:
	.loc 1 152 9 is_stmt 1 view .LVU68
	.loc 1 152 16 is_stmt 0 view .LVU69
	movl	$0, %esi
	movl	$33, %edi
	call	_ZN6Kernel7outByteEth
.LVL23:
	.loc 1 153 9 is_stmt 1 view .LVU70
	.loc 1 153 16 is_stmt 0 view .LVU71
	movl	$0, %esi
	movl	$161, %edi
	call	_ZN6Kernel7outByteEth
.LVL24:
	.loc 1 154 5 view .LVU72
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	_ZN6Kernel16InterruptManager8remapPicEv, .-_ZN6Kernel16InterruptManager8remapPicEv
	.align 2
	.globl	_ZN6Kernel16InterruptManager8setupIdtEv
	.type	_ZN6Kernel16InterruptManager8setupIdtEv, @function
_ZN6Kernel16InterruptManager8setupIdtEv:
.LFB25:
	.loc 1 62 5 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 63 9 view .LVU74
	.loc 1 63 17 is_stmt 0 view .LVU75
	call	_ZN6Kernel16InterruptManager8remapPicEv
.LVL25:
	.loc 1 65 9 is_stmt 1 view .LVU76
	.loc 1 65 19 is_stmt 0 view .LVU77
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr0, %rsi
	movl	$0, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL26:
	.loc 1 66 9 is_stmt 1 view .LVU78
	.loc 1 66 19 is_stmt 0 view .LVU79
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr1, %rsi
	movl	$1, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL27:
	.loc 1 67 9 is_stmt 1 view .LVU80
	.loc 1 67 19 is_stmt 0 view .LVU81
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr2, %rsi
	movl	$2, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL28:
	.loc 1 68 9 is_stmt 1 view .LVU82
	.loc 1 68 19 is_stmt 0 view .LVU83
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr3, %rsi
	movl	$3, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL29:
	.loc 1 69 9 is_stmt 1 view .LVU84
	.loc 1 69 19 is_stmt 0 view .LVU85
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr4, %rsi
	movl	$4, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL30:
	.loc 1 70 9 is_stmt 1 view .LVU86
	.loc 1 70 19 is_stmt 0 view .LVU87
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr5, %rsi
	movl	$5, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL31:
	.loc 1 71 9 is_stmt 1 view .LVU88
	.loc 1 71 19 is_stmt 0 view .LVU89
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr6, %rsi
	movl	$6, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL32:
	.loc 1 72 9 is_stmt 1 view .LVU90
	.loc 1 72 19 is_stmt 0 view .LVU91
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr7, %rsi
	movl	$7, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL33:
	.loc 1 73 9 is_stmt 1 view .LVU92
	.loc 1 73 19 is_stmt 0 view .LVU93
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr8, %rsi
	movl	$8, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL34:
	.loc 1 74 9 is_stmt 1 view .LVU94
	.loc 1 74 19 is_stmt 0 view .LVU95
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr9, %rsi
	movl	$9, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL35:
	.loc 1 76 9 is_stmt 1 view .LVU96
	.loc 1 76 19 is_stmt 0 view .LVU97
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr10, %rsi
	movl	$10, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL36:
	.loc 1 77 9 is_stmt 1 view .LVU98
	.loc 1 77 19 is_stmt 0 view .LVU99
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr11, %rsi
	movl	$11, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL37:
	.loc 1 78 9 is_stmt 1 view .LVU100
	.loc 1 78 19 is_stmt 0 view .LVU101
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr12, %rsi
	movl	$12, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL38:
	.loc 1 79 9 is_stmt 1 view .LVU102
	.loc 1 79 19 is_stmt 0 view .LVU103
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr13, %rsi
	movl	$13, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL39:
	.loc 1 80 9 is_stmt 1 view .LVU104
	.loc 1 80 19 is_stmt 0 view .LVU105
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr14, %rsi
	movl	$14, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL40:
	.loc 1 81 9 is_stmt 1 view .LVU106
	.loc 1 81 19 is_stmt 0 view .LVU107
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr15, %rsi
	movl	$15, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL41:
	.loc 1 82 9 is_stmt 1 view .LVU108
	.loc 1 82 19 is_stmt 0 view .LVU109
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr16, %rsi
	movl	$16, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL42:
	.loc 1 83 9 is_stmt 1 view .LVU110
	.loc 1 83 19 is_stmt 0 view .LVU111
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr17, %rsi
	movl	$17, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL43:
	.loc 1 84 9 is_stmt 1 view .LVU112
	.loc 1 84 19 is_stmt 0 view .LVU113
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr18, %rsi
	movl	$18, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL44:
	.loc 1 85 9 is_stmt 1 view .LVU114
	.loc 1 85 19 is_stmt 0 view .LVU115
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr19, %rsi
	movl	$19, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL45:
	.loc 1 87 9 is_stmt 1 view .LVU116
	.loc 1 87 19 is_stmt 0 view .LVU117
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr20, %rsi
	movl	$20, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL46:
	.loc 1 88 9 is_stmt 1 view .LVU118
	.loc 1 88 19 is_stmt 0 view .LVU119
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr21, %rsi
	movl	$21, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL47:
	.loc 1 89 9 is_stmt 1 view .LVU120
	.loc 1 89 19 is_stmt 0 view .LVU121
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr22, %rsi
	movl	$22, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL48:
	.loc 1 90 9 is_stmt 1 view .LVU122
	.loc 1 90 19 is_stmt 0 view .LVU123
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr23, %rsi
	movl	$23, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL49:
	.loc 1 91 9 is_stmt 1 view .LVU124
	.loc 1 91 19 is_stmt 0 view .LVU125
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr24, %rsi
	movl	$24, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL50:
	.loc 1 92 9 is_stmt 1 view .LVU126
	.loc 1 92 19 is_stmt 0 view .LVU127
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr25, %rsi
	movl	$25, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL51:
	.loc 1 93 9 is_stmt 1 view .LVU128
	.loc 1 93 19 is_stmt 0 view .LVU129
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr26, %rsi
	movl	$26, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL52:
	.loc 1 94 9 is_stmt 1 view .LVU130
	.loc 1 94 19 is_stmt 0 view .LVU131
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr27, %rsi
	movl	$27, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL53:
	.loc 1 95 9 is_stmt 1 view .LVU132
	.loc 1 95 19 is_stmt 0 view .LVU133
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr28, %rsi
	movl	$28, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL54:
	.loc 1 96 9 is_stmt 1 view .LVU134
	.loc 1 96 19 is_stmt 0 view .LVU135
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr29, %rsi
	movl	$29, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL55:
	.loc 1 98 9 is_stmt 1 view .LVU136
	.loc 1 98 19 is_stmt 0 view .LVU137
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr30, %rsi
	movl	$30, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL56:
	.loc 1 99 9 is_stmt 1 view .LVU138
	.loc 1 99 19 is_stmt 0 view .LVU139
	movl	$142, %ecx
	movl	$0, %edx
	movq	$isr31, %rsi
	movl	$31, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL57:
	.loc 1 101 9 is_stmt 1 view .LVU140
	.loc 1 101 19 is_stmt 0 view .LVU141
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq0, %rsi
	movl	$32, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL58:
	.loc 1 102 9 is_stmt 1 view .LVU142
	.loc 1 102 19 is_stmt 0 view .LVU143
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq1, %rsi
	movl	$33, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL59:
	.loc 1 103 9 is_stmt 1 view .LVU144
	.loc 1 103 19 is_stmt 0 view .LVU145
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq2, %rsi
	movl	$34, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL60:
	.loc 1 104 9 is_stmt 1 view .LVU146
	.loc 1 104 19 is_stmt 0 view .LVU147
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq3, %rsi
	movl	$35, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL61:
	.loc 1 105 9 is_stmt 1 view .LVU148
	.loc 1 105 19 is_stmt 0 view .LVU149
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq4, %rsi
	movl	$36, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL62:
	.loc 1 106 9 is_stmt 1 view .LVU150
	.loc 1 106 19 is_stmt 0 view .LVU151
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq5, %rsi
	movl	$37, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL63:
	.loc 1 107 9 is_stmt 1 view .LVU152
	.loc 1 107 19 is_stmt 0 view .LVU153
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq6, %rsi
	movl	$38, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL64:
	.loc 1 108 9 is_stmt 1 view .LVU154
	.loc 1 108 19 is_stmt 0 view .LVU155
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq7, %rsi
	movl	$39, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL65:
	.loc 1 109 9 is_stmt 1 view .LVU156
	.loc 1 109 19 is_stmt 0 view .LVU157
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq8, %rsi
	movl	$40, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL66:
	.loc 1 110 9 is_stmt 1 view .LVU158
	.loc 1 110 19 is_stmt 0 view .LVU159
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq9, %rsi
	movl	$41, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL67:
	.loc 1 111 9 is_stmt 1 view .LVU160
	.loc 1 111 19 is_stmt 0 view .LVU161
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq10, %rsi
	movl	$42, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL68:
	.loc 1 112 9 is_stmt 1 view .LVU162
	.loc 1 112 19 is_stmt 0 view .LVU163
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq11, %rsi
	movl	$43, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL69:
	.loc 1 113 9 is_stmt 1 view .LVU164
	.loc 1 113 19 is_stmt 0 view .LVU165
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq12, %rsi
	movl	$44, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL70:
	.loc 1 114 9 is_stmt 1 view .LVU166
	.loc 1 114 19 is_stmt 0 view .LVU167
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq13, %rsi
	movl	$45, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL71:
	.loc 1 115 9 is_stmt 1 view .LVU168
	.loc 1 115 19 is_stmt 0 view .LVU169
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq14, %rsi
	movl	$46, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL72:
	.loc 1 116 9 is_stmt 1 view .LVU170
	.loc 1 116 19 is_stmt 0 view .LVU171
	movl	$142, %ecx
	movl	$0, %edx
	movq	$irq15, %rsi
	movl	$47, %edi
	call	_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh
.LVL73:
	.loc 1 118 9 is_stmt 1 view .LVU172
	.loc 1 118 16 is_stmt 0 view .LVU173
	call	_ZN6Kernel16InterruptManager7loadIdtEv
.LVL74:
	.loc 1 119 9 is_stmt 1 view .LVU174
/APP
# 119 "src/kernel/InterruptManager.cpp" 1
	sti
# 0 "" 2
	.loc 1 120 5 is_stmt 0 view .LVU175
/NO_APP
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN6Kernel16InterruptManager8setupIdtEv, .-_ZN6Kernel16InterruptManager8setupIdtEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Interrupt Manager : Initialising\n"
	.text
	.align 2
	.globl	_ZN6Kernel16InterruptManager10initializeEv
	.type	_ZN6Kernel16InterruptManager10initializeEv, @function
_ZN6Kernel16InterruptManager10initializeEv:
.LFB28:
	.loc 1 157 5 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 158 9 view .LVU177
.LVL75:
.LBB12:
.LBI12:
	.file 2 "src/kernel/../../include/Console.h"
	.loc 2 276 21 view .LVU178
.LBB13:
	.loc 2 280 26 is_stmt 0 view .LVU179
	movl	$15, %esi
	movq	$.LC1, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
.LVL76:
	.loc 2 280 26 view .LVU180
.LBE13:
.LBE12:
	.loc 1 159 9 is_stmt 1 view .LVU181
	.loc 1 159 17 is_stmt 0 view .LVU182
	call	_ZN6Kernel16InterruptManager8setupIdtEv
.LVL77:
	.loc 1 160 5 view .LVU183
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN6Kernel16InterruptManager10initializeEv, .-_ZN6Kernel16InterruptManager10initializeEv
	.align 2
	.globl	_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE
	.type	_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE, @function
_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE:
.LVL78:
.LFB31:
	.loc 1 187 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 188 9 view .LVU185
	.loc 1 188 36 is_stmt 0 view .LVU186
	movzbl	%dil, %edi
	.loc 1 188 36 view .LVU187
	movq	%rsi, _ZN6Kernel16InterruptManager19s_interruptHandlersE(,%rdi,8)
	.loc 1 189 5 view .LVU188
	ret
	.cfi_endproc
.LFE31:
	.size	_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE, .-_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE
	.align 2
	.globl	_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE
	.type	_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE, @function
_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE:
.LVL79:
.LFB32:
	.loc 1 192 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 193 9 view .LVU190
	.loc 1 193 62 is_stmt 0 view .LVU191
	movzbl	%dil, %edi
	.loc 1 193 62 view .LVU192
	movq	%rsi, _ZN6Kernel16InterruptManager19s_interruptHandlersE(,%rdi,8)
	.loc 1 194 5 view .LVU193
	ret
	.cfi_endproc
.LFE32:
	.size	_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE, .-_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE
	.globl	isr_handler
	.type	isr_handler, @function
isr_handler:
.LVL80:
.LFB33:
	.loc 1 199 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 199 1 is_stmt 0 view .LVU195
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 200 5 is_stmt 1 view .LVU196
.LVL81:
.LBB14:
.LBI14:
	.loc 1 162 17 view .LVU197
.LBB15:
	.loc 1 164 9 view .LVU198
	.loc 1 164 35 is_stmt 0 view .LVU199
	movq	120(%rdi), %rax
	.loc 1 164 51 view .LVU200
	movq	_ZN6Kernel16InterruptManager19s_interruptHandlersE(,%rax,8), %rax
	.loc 1 164 52 view .LVU201
	call	*%rax
.LVL82:
	.loc 1 164 52 view .LVU202
.LBE15:
.LBE14:
	.loc 1 201 1 view .LVU203
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	isr_handler, .-isr_handler
	.globl	irq_handler
	.type	irq_handler, @function
irq_handler:
.LVL83:
.LFB34:
	.loc 1 204 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 204 1 is_stmt 0 view .LVU205
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	.loc 1 205 5 is_stmt 1 view .LVU206
.LVL84:
.LBB16:
.LBI16:
	.loc 1 162 17 view .LVU207
.LBB17:
	.loc 1 164 9 view .LVU208
	.loc 1 164 35 is_stmt 0 view .LVU209
	movq	120(%rdi), %rax
	.loc 1 164 51 view .LVU210
	movq	_ZN6Kernel16InterruptManager19s_interruptHandlersE(,%rax,8), %rax
	.loc 1 164 52 view .LVU211
	call	*%rax
.LVL85:
	.loc 1 164 52 view .LVU212
.LBE17:
.LBE16:
	.loc 1 206 5 is_stmt 1 view .LVU213
	cmpq	$39, 120(%rbx)
	ja	.L18
.L16:
	.loc 1 210 5 view .LVU214
	.loc 1 210 20 is_stmt 0 view .LVU215
	movl	$32, %esi
	movl	$32, %edi
	call	_ZN6Kernel7outByteEth
.LVL86:
	.loc 1 211 1 view .LVU216
	movq	-8(%rbp), %rbx
.LVL87:
	.loc 1 211 1 view .LVU217
	leave
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
.LVL88:
.L18:
	.cfi_restore_state
	.loc 1 208 9 is_stmt 1 view .LVU218
	.loc 1 208 24 is_stmt 0 view .LVU219
	movl	$32, %esi
	movl	$160, %edi
	call	_ZN6Kernel7outByteEth
.LVL89:
	jmp	.L16
	.cfi_endproc
.LFE34:
	.size	irq_handler, .-irq_handler
	.globl	_ZN6Kernel16InterruptManager19s_interruptHandlersE
	.section	.bss
	.align 32
	.type	_ZN6Kernel16InterruptManager19s_interruptHandlersE, @object
	.size	_ZN6Kernel16InterruptManager19s_interruptHandlersE, 2048
_ZN6Kernel16InterruptManager19s_interruptHandlersE:
	.zero	2048
	.globl	_ZN6Kernel16InterruptManager8s_idtPtrE
	.align 8
	.type	_ZN6Kernel16InterruptManager8s_idtPtrE, @object
	.size	_ZN6Kernel16InterruptManager8s_idtPtrE, 10
_ZN6Kernel16InterruptManager8s_idtPtrE:
	.zero	10
	.globl	_ZN6Kernel16InterruptManager12s_idtEntriesE
	.align 16
	.type	_ZN6Kernel16InterruptManager12s_idtEntriesE, @object
	.size	_ZN6Kernel16InterruptManager12s_idtEntriesE, 4096
_ZN6Kernel16InterruptManager12s_idtEntriesE:
	.zero	4096
	.globl	_ZN6Kernel16InterruptManager19s_exceptionMessagesE
	.section	.rodata.str1.1
.LC2:
	.string	"Division By Zero"
.LC3:
	.string	"Debug"
.LC4:
	.string	"Non Maskable Interrupt"
.LC5:
	.string	"Breakpoint"
.LC6:
	.string	"Into Detected Overflow"
.LC7:
	.string	"Out of Bounds"
.LC8:
	.string	"Invalid Opcode"
.LC9:
	.string	"No Coprocessor"
.LC10:
	.string	"Double Fault"
.LC11:
	.string	"Coprocessor Segment Overrun"
.LC12:
	.string	"Bad TSS"
.LC13:
	.string	"Segment Not Present"
.LC14:
	.string	"Stack Fault"
.LC15:
	.string	"General Protection Fault"
.LC16:
	.string	"Page Fault"
.LC17:
	.string	"Unknown Interrupt"
.LC18:
	.string	"Coprocessor Fault"
.LC19:
	.string	"Alignment Check"
.LC20:
	.string	"Machine Check"
.LC21:
	.string	"Reserved"
	.data
	.align 32
	.type	_ZN6Kernel16InterruptManager19s_exceptionMessagesE, @object
	.size	_ZN6Kernel16InterruptManager19s_exceptionMessagesE, 256
_ZN6Kernel16InterruptManager19s_exceptionMessagesE:
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
	.quad	.LC20
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.quad	.LC21
	.text
.Letext0:
	.file 3 "src/kernel/../../include/Types.h"
	.file 4 "src/kernel/../../include/InterruptManager.h"
	.file 5 "src/kernel/../../include/Utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1604
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2b
	.long	.LASF681
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0xa
	.long	.LASF440
	.byte	0x3
	.byte	0x5
	.byte	0x17
	.long	0x43
	.uleb128 0xb
	.long	0x32
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF438
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF439
	.uleb128 0xa
	.long	.LASF441
	.byte	0x3
	.byte	0x8
	.byte	0x17
	.long	0x62
	.uleb128 0xb
	.long	0x51
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.long	.LASF442
	.uleb128 0xa
	.long	.LASF443
	.byte	0x3
	.byte	0x9
	.byte	0x18
	.long	0x7a
	.uleb128 0xb
	.long	0x69
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.long	.LASF444
	.uleb128 0xa
	.long	.LASF445
	.byte	0x3
	.byte	0xa
	.byte	0x16
	.long	0x8d
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.long	.LASF446
	.uleb128 0xa
	.long	.LASF447
	.byte	0x3
	.byte	0xb
	.byte	0x1c
	.long	0xa0
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF448
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF449
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.long	.LASF450
	.uleb128 0x2c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF451
	.uleb128 0x2d
	.string	"std"
	.byte	0x3
	.byte	0x16
	.byte	0xb
	.long	0xdd
	.uleb128 0x2e
	.long	.LASF619
	.byte	0x3
	.byte	0x49
	.byte	0x17
	.long	0xe4
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.long	.LASF452
	.uleb128 0xb
	.long	0xdd
	.uleb128 0x2f
	.long	.LASF453
	.byte	0x2
	.byte	0x7
	.byte	0xb
	.long	0x84b
	.uleb128 0x20
	.long	.LASF530
	.byte	0x2
	.byte	0x9
	.long	0x3dd
	.uleb128 0x21
	.long	.LASF532
	.long	0x51
	.byte	0x2
	.byte	0xc
	.long	0x1c4
	.uleb128 0x2
	.long	.LASF454
	.byte	0
	.uleb128 0x2
	.long	.LASF455
	.byte	0x1
	.uleb128 0x2
	.long	.LASF456
	.byte	0x2
	.uleb128 0x2
	.long	.LASF457
	.byte	0x3
	.uleb128 0x2
	.long	.LASF458
	.byte	0x4
	.uleb128 0x2
	.long	.LASF459
	.byte	0x5
	.uleb128 0x2
	.long	.LASF460
	.byte	0x6
	.uleb128 0x2
	.long	.LASF461
	.byte	0x7
	.uleb128 0x2
	.long	.LASF462
	.byte	0x8
	.uleb128 0x2
	.long	.LASF463
	.byte	0x9
	.uleb128 0x2
	.long	.LASF464
	.byte	0xa
	.uleb128 0x2
	.long	.LASF465
	.byte	0xb
	.uleb128 0x2
	.long	.LASF466
	.byte	0xc
	.uleb128 0x2
	.long	.LASF467
	.byte	0xd
	.uleb128 0x2
	.long	.LASF468
	.byte	0xe
	.uleb128 0x2
	.long	.LASF469
	.byte	0xf
	.uleb128 0x2
	.long	.LASF470
	.byte	0x10
	.uleb128 0x2
	.long	.LASF471
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF472
	.byte	0x20
	.uleb128 0x2
	.long	.LASF473
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF474
	.byte	0x30
	.uleb128 0x2
	.long	.LASF475
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF476
	.byte	0x40
	.uleb128 0x2
	.long	.LASF477
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF478
	.byte	0x50
	.uleb128 0x2
	.long	.LASF479
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF480
	.byte	0x60
	.uleb128 0x2
	.long	.LASF481
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF482
	.byte	0x70
	.uleb128 0x2
	.long	.LASF483
	.byte	0x7f
	.byte	0
	.uleb128 0x22
	.long	.LASF484
	.byte	0x2e
	.long	0x1e5
	.uleb128 0x6
	.string	"x"
	.byte	0x2
	.byte	0x30
	.byte	0x14
	.long	0x32
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0x2
	.byte	0x31
	.byte	0x14
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	0x1c4
	.uleb128 0xb
	.long	0x1e5
	.uleb128 0x22
	.long	.LASF485
	.byte	0x34
	.long	0x214
	.uleb128 0x7
	.long	.LASF486
	.byte	0x2
	.byte	0x36
	.byte	0x14
	.long	0x32
	.byte	0
	.uleb128 0x7
	.long	.LASF487
	.byte	0x2
	.byte	0x37
	.byte	0x14
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x1ef
	.uleb128 0x13
	.long	.LASF602
	.byte	0x2
	.byte	0x46
	.long	.LASF604
	.uleb128 0x9
	.long	.LASF488
	.byte	0x2
	.byte	0x49
	.long	.LASF490
	.long	0x243
	.uleb128 0x5
	.long	0x32
	.uleb128 0x5
	.long	0x51
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0x9
	.long	.LASF489
	.byte	0x2
	.byte	0x4a
	.long	.LASF491
	.long	0x262
	.uleb128 0x5
	.long	0x84b
	.uleb128 0x5
	.long	0x32
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0x9
	.long	.LASF489
	.byte	0x2
	.byte	0x4b
	.long	.LASF492
	.long	0x281
	.uleb128 0x5
	.long	0x861
	.uleb128 0x5
	.long	0x32
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0x9
	.long	.LASF493
	.byte	0x2
	.byte	0x4e
	.long	.LASF494
	.long	0x29b
	.uleb128 0x5
	.long	0x51
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0x9
	.long	.LASF495
	.byte	0x2
	.byte	0x4f
	.long	.LASF496
	.long	0x2b5
	.uleb128 0x5
	.long	0x84b
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0x9
	.long	.LASF495
	.byte	0x2
	.byte	0x50
	.long	.LASF497
	.long	0x2cf
	.uleb128 0x5
	.long	0x861
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0xc
	.long	.LASF498
	.value	0x121
	.long	.LASF500
	.long	0x2e9
	.uleb128 0x5
	.long	0x51
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0xc
	.long	.LASF499
	.value	0x122
	.long	.LASF501
	.long	0x303
	.uleb128 0x5
	.long	0x51
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0xc
	.long	.LASF499
	.value	0x124
	.long	.LASF502
	.long	0x322
	.uleb128 0x5
	.long	0x32
	.uleb128 0x5
	.long	0x51
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0xc
	.long	.LASF503
	.value	0x127
	.long	.LASF504
	.long	0x346
	.uleb128 0x5
	.long	0x1c4
	.uleb128 0x5
	.long	0x32
	.uleb128 0x5
	.long	0x51
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0xc
	.long	.LASF503
	.value	0x12a
	.long	.LASF505
	.long	0x36a
	.uleb128 0x5
	.long	0x32
	.uleb128 0x5
	.long	0x32
	.uleb128 0x5
	.long	0x51
	.uleb128 0x5
	.long	0x100
	.byte	0
	.uleb128 0xc
	.long	.LASF506
	.value	0x12d
	.long	.LASF507
	.long	0x37f
	.uleb128 0x5
	.long	0x1c4
	.byte	0
	.uleb128 0x17
	.long	.LASF508
	.value	0x12e
	.byte	0x2a
	.long	.LASF510
	.long	0x866
	.uleb128 0x17
	.long	.LASF509
	.value	0x12f
	.byte	0x1e
	.long	.LASF511
	.long	0x86b
	.uleb128 0x17
	.long	.LASF512
	.value	0x130
	.byte	0x1e
	.long	.LASF513
	.long	0x870
	.uleb128 0xc
	.long	.LASF514
	.value	0x132
	.long	.LASF515
	.long	0x3c4
	.uleb128 0x5
	.long	0x32
	.byte	0
	.uleb128 0x30
	.long	.LASF599
	.byte	0x2
	.value	0x114
	.byte	0x15
	.long	.LASF682
	.byte	0x1
	.uleb128 0x23
	.string	"Ts"
	.uleb128 0x5
	.long	0x84b
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF519
	.byte	0xb0
	.byte	0xa
	.long	0x503
	.uleb128 0x6
	.string	"r15"
	.byte	0x4
	.byte	0xd
	.byte	0x12
	.long	0x94
	.byte	0
	.uleb128 0x6
	.string	"r14"
	.byte	0x4
	.byte	0xd
	.byte	0x17
	.long	0x94
	.byte	0x8
	.uleb128 0x6
	.string	"r13"
	.byte	0x4
	.byte	0xd
	.byte	0x1c
	.long	0x94
	.byte	0x10
	.uleb128 0x6
	.string	"r12"
	.byte	0x4
	.byte	0xd
	.byte	0x21
	.long	0x94
	.byte	0x18
	.uleb128 0x6
	.string	"r11"
	.byte	0x4
	.byte	0xd
	.byte	0x26
	.long	0x94
	.byte	0x20
	.uleb128 0x6
	.string	"r10"
	.byte	0x4
	.byte	0xd
	.byte	0x2b
	.long	0x94
	.byte	0x28
	.uleb128 0x6
	.string	"r9"
	.byte	0x4
	.byte	0xd
	.byte	0x30
	.long	0x94
	.byte	0x30
	.uleb128 0x6
	.string	"r8"
	.byte	0x4
	.byte	0xd
	.byte	0x34
	.long	0x94
	.byte	0x38
	.uleb128 0x6
	.string	"rbp"
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.long	0x94
	.byte	0x40
	.uleb128 0x6
	.string	"rdi"
	.byte	0x4
	.byte	0xe
	.byte	0x17
	.long	0x94
	.byte	0x48
	.uleb128 0x6
	.string	"rsi"
	.byte	0x4
	.byte	0xe
	.byte	0x1c
	.long	0x94
	.byte	0x50
	.uleb128 0x6
	.string	"rdx"
	.byte	0x4
	.byte	0xe
	.byte	0x21
	.long	0x94
	.byte	0x58
	.uleb128 0x6
	.string	"rcx"
	.byte	0x4
	.byte	0xe
	.byte	0x26
	.long	0x94
	.byte	0x60
	.uleb128 0x6
	.string	"rbx"
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x94
	.byte	0x68
	.uleb128 0x6
	.string	"rax"
	.byte	0x4
	.byte	0xe
	.byte	0x30
	.long	0x94
	.byte	0x70
	.uleb128 0x7
	.long	.LASF516
	.byte	0x4
	.byte	0x11
	.byte	0x12
	.long	0x94
	.byte	0x78
	.uleb128 0x7
	.long	.LASF517
	.byte	0x4
	.byte	0x12
	.byte	0x12
	.long	0x94
	.byte	0x80
	.uleb128 0x6
	.string	"rip"
	.byte	0x4
	.byte	0x15
	.byte	0x12
	.long	0x94
	.byte	0x88
	.uleb128 0x6
	.string	"cs"
	.byte	0x4
	.byte	0x16
	.byte	0x12
	.long	0x94
	.byte	0x90
	.uleb128 0x7
	.long	.LASF518
	.byte	0x4
	.byte	0x17
	.byte	0x12
	.long	0x94
	.byte	0x98
	.uleb128 0x6
	.string	"rsp"
	.byte	0x4
	.byte	0x18
	.byte	0x12
	.long	0x94
	.byte	0xa0
	.uleb128 0x6
	.string	"ss"
	.byte	0x4
	.byte	0x19
	.byte	0x12
	.long	0x94
	.byte	0xa8
	.byte	0
	.uleb128 0x18
	.long	.LASF520
	.byte	0x10
	.byte	0x1c
	.long	0x56a
	.uleb128 0x7
	.long	.LASF521
	.byte	0x4
	.byte	0x1e
	.byte	0x12
	.long	0x69
	.byte	0
	.uleb128 0x7
	.long	.LASF522
	.byte	0x4
	.byte	0x1f
	.byte	0x12
	.long	0x69
	.byte	0x2
	.uleb128 0x6
	.string	"ist"
	.byte	0x4
	.byte	0x20
	.byte	0x11
	.long	0x51
	.byte	0x4
	.uleb128 0x7
	.long	.LASF523
	.byte	0x4
	.byte	0x21
	.byte	0x11
	.long	0x51
	.byte	0x5
	.uleb128 0x7
	.long	.LASF524
	.byte	0x4
	.byte	0x22
	.byte	0x12
	.long	0x69
	.byte	0x6
	.uleb128 0x7
	.long	.LASF525
	.byte	0x4
	.byte	0x23
	.byte	0x12
	.long	0x81
	.byte	0x8
	.uleb128 0x7
	.long	.LASF526
	.byte	0x4
	.byte	0x24
	.byte	0x12
	.long	0x81
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.long	.LASF527
	.byte	0xa
	.byte	0x27
	.long	0x590
	.uleb128 0x7
	.long	.LASF528
	.byte	0x4
	.byte	0x29
	.byte	0x12
	.long	0x69
	.byte	0
	.uleb128 0x7
	.long	.LASF529
	.byte	0x4
	.byte	0x2a
	.byte	0x12
	.long	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.long	.LASF531
	.byte	0x4
	.byte	0x72
	.long	0x808
	.uleb128 0x21
	.long	.LASF533
	.long	0x51
	.byte	0x4
	.byte	0x75
	.long	0x6cb
	.uleb128 0x2
	.long	.LASF534
	.byte	0
	.uleb128 0x2
	.long	.LASF535
	.byte	0x1
	.uleb128 0x2
	.long	.LASF536
	.byte	0x2
	.uleb128 0x2
	.long	.LASF537
	.byte	0x3
	.uleb128 0x2
	.long	.LASF538
	.byte	0x4
	.uleb128 0x2
	.long	.LASF539
	.byte	0x5
	.uleb128 0x2
	.long	.LASF540
	.byte	0x6
	.uleb128 0x2
	.long	.LASF541
	.byte	0x7
	.uleb128 0x2
	.long	.LASF542
	.byte	0x8
	.uleb128 0x2
	.long	.LASF543
	.byte	0x9
	.uleb128 0x2
	.long	.LASF544
	.byte	0xa
	.uleb128 0x2
	.long	.LASF545
	.byte	0xb
	.uleb128 0x2
	.long	.LASF546
	.byte	0xc
	.uleb128 0x2
	.long	.LASF547
	.byte	0xd
	.uleb128 0x2
	.long	.LASF548
	.byte	0xe
	.uleb128 0x2
	.long	.LASF549
	.byte	0xf
	.uleb128 0x2
	.long	.LASF550
	.byte	0x10
	.uleb128 0x2
	.long	.LASF551
	.byte	0x11
	.uleb128 0x2
	.long	.LASF552
	.byte	0x12
	.uleb128 0x2
	.long	.LASF553
	.byte	0x13
	.uleb128 0x2
	.long	.LASF554
	.byte	0x14
	.uleb128 0x2
	.long	.LASF555
	.byte	0x15
	.uleb128 0x2
	.long	.LASF556
	.byte	0x16
	.uleb128 0x2
	.long	.LASF557
	.byte	0x17
	.uleb128 0x2
	.long	.LASF558
	.byte	0x18
	.uleb128 0x2
	.long	.LASF559
	.byte	0x19
	.uleb128 0x2
	.long	.LASF560
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF561
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF562
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF563
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF564
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF565
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF566
	.byte	0x20
	.uleb128 0x2
	.long	.LASF567
	.byte	0x21
	.uleb128 0x2
	.long	.LASF568
	.byte	0x22
	.uleb128 0x2
	.long	.LASF569
	.byte	0x23
	.uleb128 0x2
	.long	.LASF570
	.byte	0x24
	.uleb128 0x2
	.long	.LASF571
	.byte	0x25
	.uleb128 0x2
	.long	.LASF572
	.byte	0x26
	.uleb128 0x2
	.long	.LASF573
	.byte	0x27
	.uleb128 0x2
	.long	.LASF574
	.byte	0x28
	.uleb128 0x2
	.long	.LASF575
	.byte	0x29
	.uleb128 0x2
	.long	.LASF576
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF577
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF578
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF579
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF580
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF581
	.byte	0x2f
	.byte	0
	.uleb128 0x19
	.long	.LASF582
	.byte	0xb2
	.byte	0x25
	.long	.LASF584
	.long	0x5d
	.byte	0x8e
	.uleb128 0x31
	.long	.LASF583
	.byte	0x4
	.byte	0xb3
	.byte	0x24
	.long	.LASF585
	.long	0x3e
	.value	0x100
	.byte	0x3
	.uleb128 0x19
	.long	.LASF586
	.byte	0xb4
	.byte	0x24
	.long	.LASF587
	.long	0x3e
	.byte	0x20
	.uleb128 0x19
	.long	.LASF588
	.byte	0xb5
	.byte	0x24
	.long	.LASF589
	.long	0x3e
	.byte	0x10
	.uleb128 0x1a
	.long	.LASF590
	.byte	0xb7
	.byte	0x25
	.long	.LASF592
	.long	0x881
	.uleb128 0x32
	.long	.LASF683
	.byte	0x4
	.byte	0xb9
	.byte	0x38
	.long	.LASF684
	.long	0x891
	.byte	0x10
	.uleb128 0x1a
	.long	.LASF591
	.byte	0xba
	.byte	0x17
	.long	.LASF593
	.long	0x56a
	.uleb128 0x1a
	.long	.LASF594
	.byte	0xbc
	.byte	0x2a
	.long	.LASF595
	.long	0x8b1
	.uleb128 0x33
	.long	.LASF685
	.byte	0x4
	.byte	0xbf
	.byte	0x15
	.long	.LASF686
	.byte	0x1
	.uleb128 0x9
	.long	.LASF596
	.byte	0x4
	.byte	0xc0
	.long	.LASF597
	.long	0x773
	.uleb128 0x5
	.long	0x51
	.uleb128 0x5
	.long	0x808
	.byte	0
	.uleb128 0x9
	.long	.LASF596
	.byte	0x4
	.byte	0xc1
	.long	.LASF598
	.long	0x78d
	.uleb128 0x5
	.long	0x59b
	.uleb128 0x5
	.long	0x808
	.byte	0
	.uleb128 0x1b
	.long	.LASF600
	.byte	0x4
	.byte	0xc4
	.byte	0x15
	.long	.LASF611
	.long	0x7b2
	.uleb128 0x5
	.long	0x51
	.uleb128 0x5
	.long	0x7b2
	.uleb128 0x5
	.long	0x51
	.uleb128 0x5
	.long	0x51
	.byte	0
	.uleb128 0xa
	.long	.LASF601
	.byte	0x4
	.byte	0xb0
	.byte	0xf
	.long	0x8cb
	.uleb128 0x13
	.long	.LASF603
	.byte	0x4
	.byte	0xc6
	.long	.LASF605
	.uleb128 0x13
	.long	.LASF606
	.byte	0x4
	.byte	0xc7
	.long	.LASF607
	.uleb128 0x13
	.long	.LASF608
	.byte	0x4
	.byte	0xc8
	.long	.LASF609
	.uleb128 0x1b
	.long	.LASF610
	.byte	0x4
	.byte	0xc9
	.byte	0x1c
	.long	.LASF612
	.long	0x7f5
	.uleb128 0x5
	.long	0x8c6
	.byte	0
	.uleb128 0x34
	.long	.LASF687
	.byte	0x4
	.byte	0xca
	.byte	0x15
	.long	.LASF688
	.uleb128 0x5
	.long	0x8c6
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF613
	.byte	0x4
	.byte	0x2d
	.byte	0xb
	.long	0x8b6
	.uleb128 0x12
	.long	0x808
	.uleb128 0x1b
	.long	.LASF614
	.byte	0x5
	.byte	0x13
	.byte	0xa
	.long	.LASF615
	.long	0x834
	.uleb128 0x5
	.long	0x69
	.uleb128 0x5
	.long	0x51
	.byte	0
	.uleb128 0x35
	.long	.LASF616
	.byte	0x5
	.byte	0x14
	.byte	0xd
	.long	.LASF617
	.long	0x51
	.uleb128 0x5
	.long	0x69
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x857
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF618
	.uleb128 0xb
	.long	0x850
	.uleb128 0x12
	.long	0x857
	.uleb128 0xe
	.long	0x85c
	.uleb128 0xf
	.long	0x1ea
	.uleb128 0xf
	.long	0x214
	.uleb128 0xf
	.long	0x3e
	.uleb128 0x36
	.long	.LASF620
	.byte	0x4
	.byte	0x6d
	.byte	0x1b
	.long	0x75
	.uleb128 0x1c
	.long	0x861
	.long	0x891
	.uleb128 0x1d
	.long	0x43
	.byte	0x1f
	.byte	0
	.uleb128 0x1c
	.long	0x503
	.long	0x8a1
	.uleb128 0x1d
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x1c
	.long	0x814
	.long	0x8b1
	.uleb128 0x1d
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x12
	.long	0x8a1
	.uleb128 0xe
	.long	0x8bb
	.uleb128 0x37
	.long	0x8c6
	.uleb128 0x5
	.long	0x8c6
	.byte	0
	.uleb128 0xf
	.long	0x3dd
	.uleb128 0xe
	.long	0x8d0
	.uleb128 0x38
	.uleb128 0x14
	.long	0x70e
	.byte	0x6
	.byte	0x1a
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel16InterruptManager19s_exceptionMessagesE
	.uleb128 0x14
	.long	0x71d
	.byte	0x2b
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel16InterruptManager12s_idtEntriesE
	.uleb128 0x14
	.long	0x72e
	.byte	0x2c
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel16InterruptManager8s_idtPtrE
	.uleb128 0x14
	.long	0x73d
	.byte	0x2d
	.byte	0x1f
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel16InterruptManager19s_interruptHandlersE
	.uleb128 0x39
	.long	0xcf
	.uleb128 0x4
	.long	.LASF621
	.byte	0x6b
	.uleb128 0x4
	.long	.LASF622
	.byte	0x6a
	.uleb128 0x4
	.long	.LASF623
	.byte	0x69
	.uleb128 0x4
	.long	.LASF624
	.byte	0x68
	.uleb128 0x4
	.long	.LASF625
	.byte	0x67
	.uleb128 0x4
	.long	.LASF626
	.byte	0x66
	.uleb128 0x4
	.long	.LASF627
	.byte	0x65
	.uleb128 0x4
	.long	.LASF628
	.byte	0x64
	.uleb128 0x4
	.long	.LASF629
	.byte	0x63
	.uleb128 0x4
	.long	.LASF630
	.byte	0x62
	.uleb128 0x4
	.long	.LASF631
	.byte	0x61
	.uleb128 0x4
	.long	.LASF632
	.byte	0x60
	.uleb128 0x4
	.long	.LASF633
	.byte	0x5f
	.uleb128 0x4
	.long	.LASF634
	.byte	0x5e
	.uleb128 0x4
	.long	.LASF635
	.byte	0x5d
	.uleb128 0x4
	.long	.LASF636
	.byte	0x5c
	.uleb128 0x4
	.long	.LASF637
	.byte	0x59
	.uleb128 0x4
	.long	.LASF638
	.byte	0x58
	.uleb128 0x4
	.long	.LASF639
	.byte	0x57
	.uleb128 0x4
	.long	.LASF640
	.byte	0x56
	.uleb128 0x4
	.long	.LASF641
	.byte	0x55
	.uleb128 0x4
	.long	.LASF642
	.byte	0x54
	.uleb128 0x4
	.long	.LASF643
	.byte	0x53
	.uleb128 0x4
	.long	.LASF644
	.byte	0x52
	.uleb128 0x4
	.long	.LASF645
	.byte	0x51
	.uleb128 0x4
	.long	.LASF646
	.byte	0x50
	.uleb128 0x4
	.long	.LASF647
	.byte	0x4f
	.uleb128 0x4
	.long	.LASF648
	.byte	0x4e
	.uleb128 0x4
	.long	.LASF649
	.byte	0x4d
	.uleb128 0x4
	.long	.LASF650
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF651
	.byte	0x4b
	.uleb128 0x4
	.long	.LASF652
	.byte	0x4a
	.uleb128 0x4
	.long	.LASF653
	.byte	0x49
	.uleb128 0x4
	.long	.LASF654
	.byte	0x48
	.uleb128 0x4
	.long	.LASF655
	.byte	0x47
	.uleb128 0x4
	.long	.LASF656
	.byte	0x46
	.uleb128 0x4
	.long	.LASF657
	.byte	0x45
	.uleb128 0x4
	.long	.LASF658
	.byte	0x44
	.uleb128 0x4
	.long	.LASF659
	.byte	0x43
	.uleb128 0x4
	.long	.LASF660
	.byte	0x42
	.uleb128 0x4
	.long	.LASF661
	.byte	0x41
	.uleb128 0x4
	.long	.LASF662
	.byte	0x40
	.uleb128 0x4
	.long	.LASF663
	.byte	0x3f
	.uleb128 0x4
	.long	.LASF664
	.byte	0x3e
	.uleb128 0x4
	.long	.LASF665
	.byte	0x3d
	.uleb128 0x4
	.long	.LASF666
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF667
	.byte	0x3b
	.uleb128 0x4
	.long	.LASF668
	.byte	0x3a
	.uleb128 0x3a
	.long	0x3c4
	.byte	0x3
	.long	0xa5b
	.uleb128 0x23
	.string	"Ts"
	.uleb128 0x3b
	.string	"str"
	.byte	0x2
	.value	0x114
	.byte	0x27
	.long	0x84b
	.uleb128 0x3c
	.byte	0x2
	.value	0x114
	.byte	0x2e
	.byte	0
	.uleb128 0x24
	.long	.LASF669
	.byte	0xcb
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xb05
	.uleb128 0x10
	.long	.LASF671
	.byte	0xcb
	.byte	0x35
	.long	0xb05
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x25
	.long	0xc56
	.quad	.LBI16
	.byte	.LVU207
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0xcd
	.byte	0x2e
	.long	0xacc
	.uleb128 0x11
	.long	0xc62
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x26
	.quad	.LVL85
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL86
	.long	0x819
	.long	0xaea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.quad	.LVL89
	.long	0x819
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x3dd
	.uleb128 0x24
	.long	.LASF670
	.byte	0xc6
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xb79
	.uleb128 0x10
	.long	.LASF671
	.byte	0xc6
	.byte	0x35
	.long	0xb05
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x27
	.long	0xc56
	.quad	.LBI14
	.byte	.LVU197
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0xc8
	.byte	0x2e
	.uleb128 0x11
	.long	0xc62
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x26
	.quad	.LVL82
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x773
	.byte	0xbf
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb0
	.uleb128 0x16
	.long	.LASF672
	.byte	0xbf
	.byte	0x46
	.long	0x59b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF673
	.byte	0xbf
	.byte	0x62
	.long	0x808
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x28
	.long	0x759
	.byte	0xba
	.byte	0xa
	.byte	0x1
	.long	0xbd3
	.uleb128 0x1e
	.long	.LASF674
	.byte	0xba
	.byte	0x3e
	.long	0x51
	.uleb128 0x1e
	.long	.LASF673
	.byte	0xba
	.byte	0x56
	.long	0x808
	.byte	0
	.uleb128 0xd
	.long	0x7f5
	.byte	0xb2
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xc56
	.uleb128 0x10
	.long	.LASF671
	.byte	0xb2
	.byte	0x3c
	.long	0x8c6
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x3
	.quad	.LVL2
	.long	0x29b
	.long	0xc26
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x3
	.quad	.LVL3
	.long	0x2b5
	.long	0xc3d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x15
	.quad	.LVL4
	.long	0x281
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0x7df
	.byte	0xa2
	.byte	0x11
	.byte	0x3
	.long	0xc6e
	.uleb128 0x1e
	.long	.LASF671
	.byte	0xa2
	.byte	0x43
	.long	0x8c6
	.byte	0
	.uleb128 0xd
	.long	0x74c
	.byte	0x9c
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xcea
	.uleb128 0x25
	.long	0xa3a
	.quad	.LBI12
	.byte	.LVU178
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x9e
	.byte	0x17
	.long	0xcdc
	.uleb128 0x11
	.long	0xa48
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x15
	.quad	.LVL76
	.long	0x29b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL77
	.long	0xe85
	.byte	0
	.uleb128 0xd
	.long	0x7d4
	.byte	0x81
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xe6b
	.uleb128 0x29
	.long	.LASF675
	.byte	0x84
	.long	0x51
	.uleb128 0x29
	.long	.LASF676
	.byte	0x85
	.long	0x51
	.uleb128 0x3
	.quad	.LVL13
	.long	0x834
	.long	0xd32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x3
	.quad	.LVL14
	.long	0x834
	.long	0xd4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.byte	0
	.uleb128 0x3
	.quad	.LVL15
	.long	0x819
	.long	0xd67
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.uleb128 0x3
	.quad	.LVL16
	.long	0x819
	.long	0xd84
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.uleb128 0x3
	.quad	.LVL17
	.long	0x819
	.long	0xda2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.quad	.LVL18
	.long	0x819
	.long	0xdc0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.quad	.LVL19
	.long	0x819
	.long	0xddd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x3
	.quad	.LVL20
	.long	0x819
	.long	0xdfa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3
	.quad	.LVL21
	.long	0x819
	.long	0xe17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3
	.quad	.LVL22
	.long	0x819
	.long	0xe34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3
	.quad	.LVL23
	.long	0x819
	.long	0xe51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.quad	.LVL24
	.long	0x819
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	0x7c9
	.byte	0x1
	.byte	0x7a
	.byte	0xa
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.long	0x7be
	.byte	0x3d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x152c
	.uleb128 0x1f
	.quad	.LVL25
	.long	0xcea
	.uleb128 0x3
	.quad	.LVL26
	.long	0x152c
	.long	0xed0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL27
	.long	0x152c
	.long	0xef2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL28
	.long	0x152c
	.long	0xf14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL29
	.long	0x152c
	.long	0xf36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL30
	.long	0x152c
	.long	0xf58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL31
	.long	0x152c
	.long	0xf7a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL32
	.long	0x152c
	.long	0xf9c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL33
	.long	0x152c
	.long	0xfbe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL34
	.long	0x152c
	.long	0xfe0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL35
	.long	0x152c
	.long	0x1002
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL36
	.long	0x152c
	.long	0x1024
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL37
	.long	0x152c
	.long	0x1046
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL38
	.long	0x152c
	.long	0x1068
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL39
	.long	0x152c
	.long	0x108a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL40
	.long	0x152c
	.long	0x10ac
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL41
	.long	0x152c
	.long	0x10ce
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL42
	.long	0x152c
	.long	0x10f0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL43
	.long	0x152c
	.long	0x1112
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL44
	.long	0x152c
	.long	0x1134
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL45
	.long	0x152c
	.long	0x1156
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL46
	.long	0x152c
	.long	0x1178
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL47
	.long	0x152c
	.long	0x119a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL48
	.long	0x152c
	.long	0x11bc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL49
	.long	0x152c
	.long	0x11de
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL50
	.long	0x152c
	.long	0x1200
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL51
	.long	0x152c
	.long	0x1222
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL52
	.long	0x152c
	.long	0x1244
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL53
	.long	0x152c
	.long	0x1266
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x4b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL54
	.long	0x152c
	.long	0x1288
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x4c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL55
	.long	0x152c
	.long	0x12aa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x4d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL56
	.long	0x152c
	.long	0x12cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x4e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL57
	.long	0x152c
	.long	0x12ee
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL58
	.long	0x152c
	.long	0x1311
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL59
	.long	0x152c
	.long	0x1334
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL60
	.long	0x152c
	.long	0x1357
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL61
	.long	0x152c
	.long	0x137a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL62
	.long	0x152c
	.long	0x139d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL63
	.long	0x152c
	.long	0x13c0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL64
	.long	0x152c
	.long	0x13e3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL65
	.long	0x152c
	.long	0x1406
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x27
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL66
	.long	0x152c
	.long	0x1429
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL67
	.long	0x152c
	.long	0x144c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x29
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL68
	.long	0x152c
	.long	0x146f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL69
	.long	0x152c
	.long	0x1492
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL70
	.long	0x152c
	.long	0x14b5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL71
	.long	0x152c
	.long	0x14d8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL72
	.long	0x152c
	.long	0x14fb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x3
	.quad	.LVL73
	.long	0x152c
	.long	0x151e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.uleb128 0x1f
	.quad	.LVL74
	.long	0xe6b
	.byte	0
	.uleb128 0xd
	.long	0x78d
	.byte	0x2f
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d8
	.uleb128 0x16
	.long	.LASF674
	.byte	0x2f
	.byte	0x2f
	.long	0x51
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.long	.LASF677
	.byte	0x2f
	.byte	0x3f
	.long	0x7b2
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x10
	.long	.LASF678
	.byte	0x30
	.byte	0x2f
	.long	0x51
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x16
	.long	.LASF679
	.byte	0x30
	.byte	0x4c
	.long	0x51
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3e
	.long	.LASF680
	.byte	0x1
	.byte	0x32
	.byte	0xf
	.long	0x15d8
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x27
	.long	0xbb0
	.quad	.LBI10
	.byte	.LVU35
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0x3a
	.byte	0x22
	.uleb128 0x11
	.long	0xbc7
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x11
	.long	0xbbc
	.long	.LLST5
	.long	.LVUS5
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x503
	.uleb128 0x3f
	.long	0xbb0
	.long	.LASF597
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	0xbbc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.long	0xbc7
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4107
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
.LVUS9:
	.uleb128 0
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL85-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL85-1-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LVL88-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LFE34-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS10:
	.uleb128 .LVU207
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU212
.LLST10:
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL85-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL85-1-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL82-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL82-1-.Ltext0
	.uleb128 .LFE33-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU197
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU202
.LLST8:
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL82-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL82-1-.Ltext0
	.uleb128 .LVL82-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE30-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU178
	.uleb128 .LVU180
.LLST6:
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LFE24-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LFE24-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS3:
	.uleb128 .LVU15
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x12
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.quad	_ZN6Kernel16InterruptManager12s_idtEntriesE
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LFE24-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS4:
	.uleb128 .LVU35
	.uleb128 .LVU38
.LLST4:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU35
	.uleb128 .LVU38
.LLST5:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x55
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
.LASF273:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF244:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF104:
	.string	"__cpp_namespace_attributes 201411L"
.LASF360:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF535:
	.string	"debug"
.LASF203:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF651:
	.string	"isr17"
.LASF650:
	.string	"isr18"
.LASF357:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF496:
	.string	"_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE"
.LASF411:
	.string	"__amd64 1"
.LASF538:
	.string	"overflow"
.LASF268:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF286:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF127:
	.string	"__cpp_deduction_guides 201907L"
.LASF460:
	.string	"BrownOnBlack"
.LASF254:
	.string	"__LDBL_DIG__ 18"
.LASF474:
	.string	"BlackOnCyan"
.LASF473:
	.string	"WhiteOnGreen"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF335:
	.string	"__FLT32X_DIG__ 15"
.LASF340:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF564:
	.string	"securityException"
.LASF225:
	.string	"__FLT_MAX_EXP__ 128"
.LASF206:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF617:
	.string	"_ZN6Kernel6inByteEt"
.LASF679:
	.string	"flags"
.LASF341:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF121:
	.string	"__cpp_designated_initializers 201707L"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF348:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF214:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF96:
	.string	"__cpp_alias_templates 200704L"
.LASF264:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF152:
	.string	"__WINT_MIN__ 0U"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF455:
	.string	"BlueOnBlack"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF157:
	.string	"__INT_WIDTH__ 32"
.LASF80:
	.string	"__cpp_hex_float 201603L"
.LASF124:
	.string	"__cpp_conditional_explicit 201806L"
.LASF593:
	.string	"_ZN6Kernel16InterruptManager8s_idtPtrE"
.LASF156:
	.string	"__SHRT_WIDTH__ 16"
.LASF301:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF159:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF147:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF24:
	.string	"__SIZEOF_SHORT__ 2"
.LASF47:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF28:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF458:
	.string	"RedOnBlack"
.LASF334:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF484:
	.string	"CursorPos"
.LASF200:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF32:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF318:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF504:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF275:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF199:
	.string	"__UINT64_C(c) c ## UL"
.LASF468:
	.string	"YellowOnBlack"
.LASF582:
	.string	"s_entryFlags"
.LASF212:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF101:
	.string	"__cpp_digit_separators 201309L"
.LASF146:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF459:
	.string	"MagentaOnBlack"
.LASF374:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF271:
	.string	"__FLT16_DIG__ 3"
.LASF544:
	.string	"invalidTss"
.LASF51:
	.string	"__INT16_TYPE__ short int"
.LASF285:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF338:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF17:
	.string	"__OPTIMIZE__ 1"
.LASF673:
	.string	"handler"
.LASF354:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF450:
	.string	"short int"
.LASF528:
	.string	"limit"
.LASF58:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF302:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF595:
	.string	"_ZN6Kernel16InterruptManager19s_interruptHandlersE"
.LASF64:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF572:
	.string	"irqFloppyDisk"
.LASF34:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF263:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF647:
	.string	"isr21"
.LASF289:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF249:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF97:
	.string	"__cpp_return_type_deduction 201304L"
.LASF150:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF644:
	.string	"isr24"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF672:
	.string	"intVector"
.LASF62:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF65:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF686:
	.string	"_ZN6Kernel16InterruptManager10initializeEv"
.LASF337:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF37:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF185:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF568:
	.string	"irqCascade"
.LASF131:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF269:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF267:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF502:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF347:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF548:
	.string	"pageFault"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF471:
	.string	"WhiteOnBlue"
.LASF534:
	.string	"divideByZero"
.LASF237:
	.string	"__DBL_MANT_DIG__ 53"
.LASF658:
	.string	"isr10"
.LASF657:
	.string	"isr11"
.LASF656:
	.string	"isr12"
.LASF655:
	.string	"isr13"
.LASF654:
	.string	"isr14"
.LASF653:
	.string	"isr15"
.LASF652:
	.string	"isr16"
.LASF550:
	.string	"x87FloatingPointException"
.LASF649:
	.string	"isr19"
.LASF688:
	.string	"_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE"
.LASF467:
	.string	"LightMagentaOnBlack"
.LASF445:
	.string	"uint32_t"
.LASF321:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF113:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF317:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF223:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF298:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF603:
	.string	"setupIdt"
.LASF626:
	.string	"irq10"
.LASF625:
	.string	"irq11"
.LASF624:
	.string	"irq12"
.LASF623:
	.string	"irq13"
.LASF622:
	.string	"irq14"
.LASF621:
	.string	"irq15"
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
.LASF464:
	.string	"LightGreenOnBlack"
.LASF352:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF529:
	.string	"base"
.LASF674:
	.string	"index"
.LASF100:
	.string	"__cpp_variable_templates 201304L"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF305:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
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
.LASF456:
	.string	"GreenOnBlack"
.LASF265:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF448:
	.string	"long long unsigned int"
.LASF555:
	.string	"controlProtectionException"
.LASF524:
	.string	"isrMid"
.LASF648:
	.string	"isr20"
.LASF669:
	.string	"irq_handler"
.LASF646:
	.string	"isr22"
.LASF645:
	.string	"isr23"
.LASF509:
	.string	"getExtent"
.LASF521:
	.string	"isrLow"
.LASF642:
	.string	"isr26"
.LASF641:
	.string	"isr27"
.LASF640:
	.string	"isr28"
.LASF639:
	.string	"isr29"
.LASF220:
	.string	"__FLT_RADIX__ 2"
.LASF345:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF108:
	.string	"__cpp_range_based_for 201603L"
.LASF530:
	.string	"Console"
.LASF350:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF27:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF251:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF365:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF601:
	.string	"IsrPtr_t"
.LASF66:
	.string	"__INT_FAST8_TYPE__ int"
.LASF480:
	.string	"BlackOnBrown"
.LASF71:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF61:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF596:
	.string	"registerInterruptCallback"
.LASF132:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF591:
	.string	"s_idtPtr"
.LASF569:
	.string	"irqCom2"
.LASF74:
	.string	"__INTPTR_TYPE__ long int"
.LASF668:
	.string	"isr0"
.LASF476:
	.string	"BlackOnRed"
.LASF666:
	.string	"isr2"
.LASF665:
	.string	"isr3"
.LASF664:
	.string	"isr4"
.LASF663:
	.string	"isr5"
.LASF662:
	.string	"isr6"
.LASF661:
	.string	"isr7"
.LASF660:
	.string	"isr8"
.LASF609:
	.string	"_ZN6Kernel16InterruptManager8remapPicEv"
.LASF191:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF307:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF31:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF83:
	.string	"__cpp_unicode_literals 200710L"
.LASF546:
	.string	"stackSegmentFault"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF598:
	.string	"_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE"
.LASF235:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF589:
	.string	"_ZN6Kernel16InterruptManager16s_interruptCountE"
.LASF52:
	.string	"__INT32_TYPE__ int"
.LASF326:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF638:
	.string	"isr30"
.LASF637:
	.string	"isr31"
.LASF362:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF303:
	.string	"__FLT64_DIG__ 15"
.LASF440:
	.string	"size_t"
.LASF685:
	.string	"initialize"
.LASF19:
	.string	"_LP64 1"
.LASF486:
	.string	"width"
.LASF281:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF2:
	.string	"__STDC__ 1"
.LASF611:
	.string	"_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh"
.LASF76:
	.string	"__GXX_WEAK__ 1"
.LASF353:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF245:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF590:
	.string	"s_exceptionMessages"
.LASF208:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF423:
	.string	"__MMX__ 1"
.LASF323:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF377:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF547:
	.string	"generalProtectionFault"
.LASF290:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF667:
	.string	"isr1"
.LASF434:
	.string	"TYPES_H "
.LASF432:
	.string	"__ELF__ 1"
.LASF373:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF412:
	.string	"__amd64__ 1"
.LASF414:
	.string	"__x86_64__ 1"
.LASF67:
	.string	"__INT_FAST16_TYPE__ int"
.LASF620:
	.string	"gdt64_code_segment"
.LASF272:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF197:
	.string	"__UINT32_C(c) c ## U"
.LASF605:
	.string	"_ZN6Kernel16InterruptManager8setupIdtEv"
.LASF55:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF319:
	.string	"__FLT128_DIG__ 33"
.LASF659:
	.string	"isr9"
.LASF160:
	.string	"__WCHAR_WIDTH__ 32"
.LASF299:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF378:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF532:
	.string	"Attributes"
.LASF139:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF136:
	.string	"__cpp_impl_coroutine 201902L"
.LASF148:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF490:
	.string	"_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE"
.LASF63:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF226:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF122:
	.string	"__cpp_constexpr 202002L"
.LASF472:
	.string	"BlackOnGreen"
.LASF126:
	.string	"__cpp_constinit 201907L"
.LASF205:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF274:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF138:
	.string	"__cpp_aligned_new 201606L"
.LASF489:
	.string	"writeString"
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
.LASF511:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF492:
	.string	"_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE"
.LASF592:
	.string	"_ZN6Kernel16InterruptManager19s_exceptionMessagesE"
.LASF433:
	.string	"INTERRUPT_MANAGER_H "
.LASF240:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF618:
	.string	"char"
.LASF224:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF57:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF519:
	.string	"InterruptFrame"
.LASF676:
	.string	"mask2"
.LASF497:
	.string	"_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE"
.LASF441:
	.string	"uint8_t"
.LASF610:
	.string	"handleInterrupt"
.LASF88:
	.string	"__cpp_rvalue_reference 200610L"
.LASF346:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF483:
	.string	"WhiteOnLightGray"
.LASF549:
	.string	"reserved15"
.LASF95:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF70:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF312:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF583:
	.string	"s_tableSize"
.LASF566:
	.string	"irqSystemTimer"
.LASF327:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF379:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF204:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF481:
	.string	"WhiteOnBrown"
.LASF182:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF176:
	.string	"__UINT8_MAX__ 0xff"
.LASF586:
	.string	"s_exceptionCount"
.LASF69:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF279:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF602:
	.string	"updateHardwareCursor"
.LASF168:
	.string	"__INTMAX_WIDTH__ 64"
.LASF421:
	.string	"__k8__ 1"
.LASF252:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF540:
	.string	"invalidOpcode"
.LASF153:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF604:
	.string	"_ZN6Kernel7Console20updateHardwareCursorEv"
.LASF59:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF536:
	.string	"nonMaskableInterrupt"
.LASF125:
	.string	"__cpp_consteval 201811L"
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF239:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF181:
	.string	"__INT8_C(c) c"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF180:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF606:
	.string	"loadIdt"
.LASF20:
	.string	"__LP64__ 1"
.LASF442:
	.string	"unsigned char"
.LASF682:
	.string	"_ZN6Kernel7Console5printIJEEEvPKcDpT_"
.LASF322:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF270:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF585:
	.string	"_ZN6Kernel16InterruptManager11s_tableSizeE"
.LASF86:
	.string	"__cpp_decltype 200707L"
.LASF508:
	.string	"getCursor"
.LASF292:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF77:
	.string	"__DEPRECATED 1"
.LASF556:
	.string	"reserved22"
.LASF557:
	.string	"reserved23"
.LASF558:
	.string	"reserved24"
.LASF559:
	.string	"reserved25"
.LASF451:
	.string	"long long int"
.LASF561:
	.string	"reserved27"
.LASF93:
	.string	"__cpp_nsdmi 200809L"
.LASF349:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF542:
	.string	"doubleFault"
.LASF616:
	.string	"inByte"
.LASF178:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF367:
	.string	"__BFLT16_DIG__ 2"
.LASF18:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF255:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF309:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF115:
	.string	"__cpp_structured_bindings 201606L"
.LASF431:
	.string	"__SEG_GS 1"
.LASF241:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF198:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF114:
	.string	"__cpp_template_auto 201606L"
.LASF614:
	.string	"outByte"
.LASF166:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF172:
	.string	"__INT8_MAX__ 0x7f"
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
.LASF420:
	.string	"__k8 1"
.LASF283:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF436:
	.string	"CONSOLE_H "
.LASF576:
	.string	"irqAvailable10"
.LASF577:
	.string	"irqAvailable11"
.LASF425:
	.string	"__SSE2__ 1"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF192:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF22:
	.string	"__SIZEOF_LONG__ 8"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF580:
	.string	"irqPrimaryAta"
.LASF216:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF89:
	.string	"__cpp_rvalue_references 200610L"
.LASF482:
	.string	"BlackOnLightGray"
.LASF173:
	.string	"__INT16_MAX__ 0x7fff"
.LASF683:
	.string	"s_idtEntries"
.LASF98:
	.string	"__cpp_decltype_auto 201304L"
.LASF134:
	.string	"__cpp_using_enum 201907L"
.LASF56:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF287:
	.string	"__FLT32_DIG__ 6"
.LASF26:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF193:
	.string	"__UINT8_C(c) c"
.LASF78:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF276:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF600:
	.string	"setIdtGate"
.LASF53:
	.string	"__INT64_TYPE__ long int"
.LASF253:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF570:
	.string	"irqCom1"
.LASF90:
	.string	"__cpp_variadic_templates 200704L"
.LASF229:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF111:
	.string	"__cpp_inline_variables 201606L"
.LASF426:
	.string	"__FXSR__ 1"
.LASF487:
	.string	"height"
.LASF562:
	.string	"hypervisorInjectionException"
.LASF518:
	.string	"rflags"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF584:
	.string	"_ZN6Kernel16InterruptManager12s_entryFlagsE"
.LASF462:
	.string	"DarkGrayOnBlack"
.LASF38:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF257:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF117:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF311:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF581:
	.string	"irqSecondaryAta"
.LASF469:
	.string	"WhiteOnBlack"
.LASF635:
	.string	"irq1"
.LASF35:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF545:
	.string	"segmentNotPresent"
.LASF675:
	.string	"mask1"
.LASF470:
	.string	"BlackOnBlue"
.LASF475:
	.string	"WhiteOnCyan"
.LASF170:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF128:
	.string	"__cpp_nontype_template_args 201911L"
.LASF437:
	.string	"UTILS_H "
.LASF174:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF533:
	.string	"InterruptVector"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF195:
	.string	"__UINT16_C(c) c"
.LASF344:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF175:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF306:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF573:
	.string	"irqLpt1"
.LASF571:
	.string	"irqLpt2"
.LASF527:
	.string	"IDTPtr"
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
.LASF463:
	.string	"LightBlueOnBlack"
.LASF563:
	.string	"vmmCommunicationException"
.LASF608:
	.string	"remapPic"
.LASF135:
	.string	"__cpp_concepts 202002L"
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
.LASF461:
	.string	"LightGrayOnBlack"
.LASF145:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF494:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF118:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF33:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF141:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF498:
	.string	"clear"
.LASF217:
	.string	"__FLT_EVAL_METHOD__ 0"
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
.LASF413:
	.string	"__x86_64 1"
.LASF543:
	.string	"coprocessorSegmentOverrun"
.LASF677:
	.string	"interruptServiceRoutine"
.LASF587:
	.string	"_ZN6Kernel16InterruptManager16s_exceptionCountE"
.LASF332:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF143:
	.string	"__GXX_ABI_VERSION 1018"
.LASF142:
	.string	"__cpp_char8_t 202207L"
.LASF613:
	.string	"InterruptHandler"
.LASF493:
	.string	"putChar"
.LASF439:
	.string	"long int"
.LASF112:
	.string	"__cpp_aggregate_bases 201603L"
.LASF167:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF48:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF375:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF355:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF510:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF358:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF336:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF478:
	.string	"BlackOnMagenta"
.LASF213:
	.string	"__INTPTR_WIDTH__ 64"
.LASF343:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF370:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF187:
	.string	"__INT32_C(c) c"
.LASF177:
	.string	"__UINT16_MAX__ 0xffff"
.LASF594:
	.string	"s_interruptHandlers"
.LASF50:
	.string	"__INT8_TYPE__ signed char"
.LASF42:
	.string	"__WCHAR_TYPE__ int"
.LASF46:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF597:
	.string	"_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE"
.LASF155:
	.string	"__SCHAR_WIDTH__ 8"
.LASF684:
	.string	"_ZN6Kernel16InterruptManager12s_idtEntriesE"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF315:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF500:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF485:
	.string	"Extent"
.LASF447:
	.string	"uint64_t"
.LASF515:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF554:
	.string	"virtualizationException"
.LASF368:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF210:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF109:
	.string	"__cpp_if_constexpr 201606L"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF507:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF129:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF457:
	.string	"CyanOnBlack"
.LASF246:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF23:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF280:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF54:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF579:
	.string	"irqFpu"
.LASF428:
	.string	"__SSE2_MATH__ 1"
.LASF488:
	.string	"writeChar"
.LASF607:
	.string	"_ZN6Kernel16InterruptManager7loadIdtEv"
.LASF310:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF505:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF165:
	.string	"__INTMAX_C(c) c ## L"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF503:
	.string	"clearSpan"
.LASF369:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF446:
	.string	"unsigned int"
.LASF36:
	.string	"__SIZEOF_POINTER__ 8"
.LASF520:
	.string	"IDTEntry"
.LASF670:
	.string	"isr_handler"
.LASF91:
	.string	"__cpp_initializer_lists 200806L"
.LASF39:
	.string	"__GNUG__ 13"
.LASF149:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF565:
	.string	"reserved31"
.LASF221:
	.string	"__FLT_MANT_DIG__ 24"
.LASF537:
	.string	"breakpoint"
.LASF232:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF512:
	.string	"getWindowCapacity"
.LASF479:
	.string	"WhiteOnMagenta"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF619:
	.string	"is_integral_v"
.LASF430:
	.string	"__SEG_FS 1"
.LASF499:
	.string	"clearLine"
.LASF380:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF438:
	.string	"long unsigned int"
.LASF531:
	.string	"InterruptManager"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF599:
	.string	"print<>"
.LASF29:
	.string	"__CHAR_BIT__ 8"
.LASF560:
	.string	"reserved26"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF297:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF163:
	.string	"__SIZE_WIDTH__ 64"
.LASF553:
	.string	"simdFloatingPointException"
.LASF284:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF291:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF158:
	.string	"__LONG_WIDTH__ 64"
.LASF179:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF680:
	.string	"entry"
.LASF636:
	.string	"irq0"
.LASF681:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O1 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF634:
	.string	"irq2"
.LASF633:
	.string	"irq3"
.LASF632:
	.string	"irq4"
.LASF631:
	.string	"irq5"
.LASF630:
	.string	"irq6"
.LASF629:
	.string	"irq7"
.LASF628:
	.string	"irq8"
.LASF627:
	.string	"irq9"
.LASF578:
	.string	"irqPs2Mouse"
.LASF230:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF123:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF295:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF219:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF513:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF615:
	.string	"_ZN6Kernel7outByteEth"
.LASF94:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF678:
	.string	"interruptStackTable"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF188:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF314:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF495:
	.string	"putString"
.LASF72:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF523:
	.string	"attributes"
.LASF256:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF567:
	.string	"irqKeyboard"
.LASF304:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF60:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF501:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF466:
	.string	"LightRedOnBlack"
.LASF85:
	.string	"__cpp_lambdas 200907L"
.LASF154:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF541:
	.string	"deviceNotAvailable"
.LASF151:
	.string	"__WINT_MAX__ 0xffffffffU"
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
.LASF517:
	.string	"error_code"
.LASF477:
	.string	"WhiteOnRed"
.LASF551:
	.string	"alignmentCheck"
.LASF218:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF250:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF453:
	.string	"Kernel"
.LASF190:
	.string	"__INT64_C(c) c ## L"
.LASF514:
	.string	"scrollDown"
.LASF68:
	.string	"__INT_FAST32_TYPE__ int"
.LASF228:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF162:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF21:
	.string	"__SIZEOF_INT__ 4"
.LASF99:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF671:
	.string	"frame"
.LASF92:
	.string	"__cpp_delegating_constructors 200604L"
.LASF588:
	.string	"s_interruptCount"
.LASF260:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF79:
	.string	"__cpp_binary_literals 201304L"
.LASF84:
	.string	"__cpp_user_defined_literals 200809L"
.LASF144:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF366:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF449:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF687:
	.string	"handleException"
.LASF242:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF575:
	.string	"irqAcpi"
.LASF259:
	.string	"__DECIMAL_DIG__ 21"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF444:
	.string	"short unsigned int"
.LASF376:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF384:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF110:
	.string	"__cpp_capture_star_this 201603L"
.LASF102:
	.string	"__cpp_unicode_characters 201411L"
.LASF30:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF525:
	.string	"isrHigh"
.LASF329:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF574:
	.string	"irqRealTimeClock"
.LASF506:
	.string	"setCursor"
.LASF331:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF201:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF325:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF491:
	.string	"_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE"
.LASF526:
	.string	"reserved"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF552:
	.string	"machineCheck"
.LASF516:
	.string	"interrupt_number"
.LASF209:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF643:
	.string	"isr25"
.LASF454:
	.string	"BlackOnBlack"
.LASF612:
	.string	"_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE"
.LASF277:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF313:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF196:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF539:
	.string	"boundRangeExceeded"
.LASF339:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF44:
	.string	"__INTMAX_TYPE__ long int"
.LASF522:
	.string	"kernelCs"
.LASF342:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF243:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF82:
	.string	"__cpp_raw_strings 200710L"
.LASF248:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF41:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF452:
	.string	"bool"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF324:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF103:
	.string	"__cpp_static_assert 201411L"
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
.LASF49:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF361:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF133:
	.string	"__cpp_aggregate_paren_init 201902L"
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
.LASF465:
	.string	"LightCyanOnBlack"
.LASF227:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF120:
	.string	"__cpp_generic_lambdas 201707L"
.LASF238:
	.string	"__DBL_DIG__ 15"
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
	.string	"src/kernel/InterruptManager.cpp"
.LASF1:
	.string	"/mnt/a/myOsX64"
	.ident	"GCC: (GNU) 13.2.0"
