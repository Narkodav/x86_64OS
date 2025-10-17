	.file	"Heap.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/Heap.cpp"
	.section	.text._ZNK6Kernel14HeapLinkedList5Block6isUsedEv,"axG",@progbits,_ZNK6Kernel14HeapLinkedList5Block6isUsedEv,comdat
	.align 2
	.weak	_ZNK6Kernel14HeapLinkedList5Block6isUsedEv
	.type	_ZNK6Kernel14HeapLinkedList5Block6isUsedEv, @function
_ZNK6Kernel14HeapLinkedList5Block6isUsedEv:
.LFB16:
	.file 1 "src/kernel/../../include/Heap.h"
	.loc 1 27 18
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 27 54
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_
	.loc 1 27 74
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_ZNK6Kernel14HeapLinkedList5Block6isUsedEv, .-_ZNK6Kernel14HeapLinkedList5Block6isUsedEv
	.section	.text._ZN6Kernel14HeapLinkedList5Block8markUsedEv,"axG",@progbits,_ZN6Kernel14HeapLinkedList5Block8markUsedEv,comdat
	.align 2
	.weak	_ZN6Kernel14HeapLinkedList5Block8markUsedEv
	.type	_ZN6Kernel14HeapLinkedList5Block8markUsedEv, @function
_ZN6Kernel14HeapLinkedList5Block8markUsedEv:
.LFB17:
	.loc 1 28 18
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 30 29
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_
	.loc 1 31 13
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_ZN6Kernel14HeapLinkedList5Block8markUsedEv, .-_ZN6Kernel14HeapLinkedList5Block8markUsedEv
	.section	.text._ZN6Kernel14HeapLinkedList5Block8markFreeEv,"axG",@progbits,_ZN6Kernel14HeapLinkedList5Block8markFreeEv,comdat
	.align 2
	.weak	_ZN6Kernel14HeapLinkedList5Block8markFreeEv
	.type	_ZN6Kernel14HeapLinkedList5Block8markFreeEv, @function
_ZN6Kernel14HeapLinkedList5Block8markFreeEv:
.LFB18:
	.loc 1 32 18
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 34 31
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_
	.loc 1 35 13
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN6Kernel14HeapLinkedList5Block8markFreeEv, .-_ZN6Kernel14HeapLinkedList5Block8markFreeEv
	.section	.text._ZN6Kernel14HeapLinkedList5Block4sizeEv,"axG",@progbits,_ZN6Kernel14HeapLinkedList5Block4sizeEv,comdat
	.align 2
	.weak	_ZN6Kernel14HeapLinkedList5Block4sizeEv
	.type	_ZN6Kernel14HeapLinkedList5Block4sizeEv, @function
_ZN6Kernel14HeapLinkedList5Block4sizeEv:
.LFB19:
	.loc 1 37 20
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 39 52
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 39 58
	subq	-8(%rbp), %rax
	.loc 1 39 108
	subq	$32, %rax
	.loc 1 40 13
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN6Kernel14HeapLinkedList5Block4sizeEv, .-_ZN6Kernel14HeapLinkedList5Block4sizeEv
	.section	.text._ZN6Kernel14HeapLinkedList5Block4dataEv,"axG",@progbits,_ZN6Kernel14HeapLinkedList5Block4dataEv,comdat
	.align 2
	.weak	_ZN6Kernel14HeapLinkedList5Block4dataEv
	.type	_ZN6Kernel14HeapLinkedList5Block4dataEv, @function
_ZN6Kernel14HeapLinkedList5Block4dataEv:
.LFB20:
	.loc 1 42 19
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 44 72
	movq	-8(%rbp), %rax
	addq	$32, %rax
	.loc 1 45 13
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_ZN6Kernel14HeapLinkedList5Block4dataEv, .-_ZN6Kernel14HeapLinkedList5Block4dataEv
	.section	.text._ZN6Kernel14HeapLinkedList5alignEm,"axG",@progbits,_ZN6Kernel14HeapLinkedList5alignEm,comdat
	.weak	_ZN6Kernel14HeapLinkedList5alignEm
	.type	_ZN6Kernel14HeapLinkedList5alignEm, @function
_ZN6Kernel14HeapLinkedList5alignEm:
.LFB23:
	.loc 1 76 23
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 76 57
	movq	-8(%rbp), %rax
	addq	$7, %rax
	.loc 1 76 65
	andq	$-8, %rax
	.loc 1 76 68
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	_ZN6Kernel14HeapLinkedList5alignEm, .-_ZN6Kernel14HeapLinkedList5alignEm
	.text
	.align 2
	.globl	_ZN6Kernel14HeapLinkedList10initializeEPvS1_
	.type	_ZN6Kernel14HeapLinkedList10initializeEPvS1_, @function
_ZN6Kernel14HeapLinkedList10initializeEPvS1_:
.LFB24:
	.file 2 "src/kernel/Heap.cpp"
	.loc 2 6 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 7 9
/APP
# 7 "src/kernel/Heap.cpp" 1
	nop
# 0 "" 2
	.loc 2 8 21
/NO_APP
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 9 19
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 10 20
	movq	-8(%rbp), %rax
	movq	$32, 24(%rax)
	.loc 2 11 16
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 12 9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 12 25
	movq	%rax, %rdi
	call	_ZN6Kernel14HeapLinkedList5Block8markFreeEv
	.loc 2 13 9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 13 50
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	.loc 2 13 22
	movq	%rdx, 8(%rax)
	.loc 2 14 9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 14 22
	movq	$0, (%rax)
	.loc 2 15 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	_ZN6Kernel14HeapLinkedList10initializeEPvS1_, .-_ZN6Kernel14HeapLinkedList10initializeEPvS1_
	.align 2
	.globl	_ZN6Kernel14HeapLinkedList8allocateEm
	.type	_ZN6Kernel14HeapLinkedList8allocateEm, @function
_ZN6Kernel14HeapLinkedList8allocateEm:
.LFB25:
	.loc 2 18 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 19 36
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel14HeapLinkedList5alignEm
	movq	%rax, -16(%rbp)
	.loc 2 20 13
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 20 9
	cmpq	-16(%rbp), %rax
	jnb	.L13
	.loc 2 21 20
	movl	$0, %eax
	jmp	.L14
.L13:
	.loc 2 22 16
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 23 9
	jmp	.L15
.L20:
.LBB2:
	.loc 2 25 47
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel14HeapLinkedList5Block4sizeEv
	movq	%rax, -24(%rbp)
.LBB3:
	.loc 2 26 33
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6Kernel14HeapLinkedList5Block6isUsedEv
	.loc 2 26 17 discriminator 1
	xorl	$1, %eax
	.loc 2 26 36 discriminator 1
	testb	%al, %al
	je	.L16
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L16
	.loc 2 26 36 is_stmt 0 discriminator 3
	movl	$1, %eax
	.loc 2 26 36
	jmp	.L17
.L16:
	.loc 2 26 36 discriminator 4
	movl	$0, %eax
.L17:
	.loc 2 26 13 is_stmt 1 discriminator 6
	testb	%al, %al
	je	.L18
.LBB4:
	.loc 2 28 34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel14HeapLinkedList5Block8markUsedEv
.LBB5:
	.loc 2 29 48
	movq	-16(%rbp), %rax
	addq	$32, %rax
	.loc 2 29 17
	cmpq	-24(%rbp), %rax
	jnb	.L19
.LBB6:
	.loc 2 31 118
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	.loc 2 31 28
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 32 36
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 33 47
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 33 36
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 34 35
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 35 39
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel14HeapLinkedList5Block8markFreeEv
	.loc 2 36 21
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 36 32
	leaq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
.L19:
.LBE6:
.LBE5:
	.loc 2 38 51
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel14HeapLinkedList5Block4sizeEv
	movq	%rax, -40(%rbp)
	.loc 2 39 17
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 39 28
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 40 17
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 40 33
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 2 41 17
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 41 33
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 2 42 37
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel14HeapLinkedList5Block4dataEv
	.loc 2 42 38
	jmp	.L14
.L18:
.LBE4:
.LBE3:
	.loc 2 44 21
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L15:
.LBE2:
	.loc 2 23 26
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 23 24
	cmpq	%rax, -8(%rbp)
	jb	.L20
	.loc 2 46 16
	movl	$0, %eax
.L14:
	.loc 2 47 5
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN6Kernel14HeapLinkedList8allocateEm, .-_ZN6Kernel14HeapLinkedList8allocateEm
	.align 2
	.globl	_ZN6Kernel14HeapLinkedList4freeEPv
	.type	_ZN6Kernel14HeapLinkedList4freeEPv, @function
_ZN6Kernel14HeapLinkedList4freeEPv:
.LFB26:
	.loc 2 50 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 51 16
	movq	-32(%rbp), %rax
	subq	$32, %rax
	movq	%rax, -8(%rbp)
	.loc 2 52 24
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel14HeapLinkedList5Block8markFreeEv
	.loc 2 53 39
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel14HeapLinkedList5Block4sizeEv
	movq	%rax, -16(%rbp)
	.loc 2 54 9
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 54 20
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 55 9
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 55 25
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 2 56 9
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 56 25
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 2 57 9
	jmp	.L22
.L25:
	.loc 2 59 20
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 59 40
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	.loc 2 59 31
	movq	%rdx, 8(%rax)
	.loc 2 60 19
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 61 13
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 61 24
	leaq	-32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
.L22:
	.loc 2 57 23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 57 39
	testq	%rax, %rax
	je	.L23
	.loc 2 57 50 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 57 62 discriminator 1
	movq	%rax, %rdi
	call	_ZNK6Kernel14HeapLinkedList5Block6isUsedEv
	.loc 2 57 42 discriminator 1
	xorl	$1, %eax
	.loc 2 57 39 discriminator 1
	testb	%al, %al
	je	.L23
	.loc 2 57 39 is_stmt 0 discriminator 3
	movl	$1, %eax
	.loc 2 57 39
	jmp	.L24
.L23:
	.loc 2 57 39 discriminator 4
	movl	$0, %eax
.L24:
	.loc 2 57 39 discriminator 6
	testb	%al, %al
	jne	.L25
	.loc 2 63 9 is_stmt 1
	jmp	.L26
.L29:
	.loc 2 65 34
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 65 40
	movq	8(%rax), %rdx
	.loc 2 65 25
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 66 13
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 66 24
	leaq	-32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
.L26:
	.loc 2 63 23
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 63 31
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 63 41
	cmpq	%rax, %rdx
	je	.L27
	.loc 2 63 52 discriminator 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 63 64 discriminator 1
	movq	%rax, %rdi
	call	_ZNK6Kernel14HeapLinkedList5Block6isUsedEv
	.loc 2 63 44 discriminator 1
	xorl	$1, %eax
	.loc 2 63 41 discriminator 1
	testb	%al, %al
	je	.L27
	.loc 2 63 41 is_stmt 0 discriminator 3
	movl	$1, %eax
	.loc 2 63 41
	jmp	.L28
.L27:
	.loc 2 63 41 discriminator 4
	movl	$0, %eax
.L28:
	.loc 2 63 41 discriminator 6
	testb	%al, %al
	jne	.L29
	.loc 2 68 5 is_stmt 1
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	_ZN6Kernel14HeapLinkedList4freeEPv, .-_ZN6Kernel14HeapLinkedList4freeEPv
	.section	.text._ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_,"axG",@progbits,_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_,comdat
	.align 2
	.weak	_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_
	.type	_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_, @function
_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_:
.LFB27:
	.file 3 "src/kernel/../../include/Utils.h"
	.loc 3 49 14
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 3 51 21
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 51 29
	andq	-16(%rbp), %rax
	.loc 3 51 56
	testq	%rax, %rax
	setne	%al
	.loc 3 52 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_, .-_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_
	.section	.text._ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_,"axG",@progbits,_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_,comdat
	.align 2
	.weak	_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_
	.type	_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_, @function
_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_:
.LFB28:
	.loc 3 41 14
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 3 43 13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 43 21
	orq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 44 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_, .-_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_
	.section	.text._ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_,"axG",@progbits,_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_,comdat
	.align 2
	.weak	_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_
	.type	_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_, @function
_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_:
.LFB29:
	.loc 3 45 14
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 3 47 13
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 3 47 21
	movq	-16(%rbp), %rax
	notq	%rax
	andq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 48 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_, .-_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_
	.section	.rodata
	.type	_ZSt9is_enum_vIN6Kernel14HeapLinkedList10BlockFlagsEE, @object
	.size	_ZSt9is_enum_vIN6Kernel14HeapLinkedList10BlockFlagsEE, 1
_ZSt9is_enum_vIN6Kernel14HeapLinkedList10BlockFlagsEE:
	.byte	1
	.type	_ZSt13is_integral_vIyE, @object
	.size	_ZSt13is_integral_vIyE, 1
_ZSt13is_integral_vIyE:
	.byte	1
	.text
.Letext0:
	.file 4 "src/kernel/../../include/Types.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7a4
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1c
	.long	.LASF511
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL0
	.quad	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0xc
	.long	.LASF439
	.byte	0x5
	.byte	0x17
	.long	0x39
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF437
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF438
	.uleb128 0xc
	.long	.LASF440
	.byte	0x8
	.byte	0x17
	.long	0x52
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF441
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF442
	.uleb128 0xc
	.long	.LASF443
	.byte	0xa
	.byte	0x16
	.long	0x6b
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF444
	.uleb128 0xc
	.long	.LASF445
	.byte	0xb
	.byte	0x1c
	.long	0x7d
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF446
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF447
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF448
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF449
	.uleb128 0x1e
	.string	"std"
	.byte	0x4
	.byte	0x14
	.byte	0xb
	.long	0xc1
	.uleb128 0x10
	.long	.LASF450
	.byte	0xd5
	.long	0xc8
	.uleb128 0x10
	.long	.LASF451
	.byte	0x47
	.long	0xc8
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF452
	.uleb128 0x5
	.long	0xc1
	.uleb128 0x11
	.long	.LASF453
	.byte	0x11
	.long	0x29b
	.uleb128 0x1f
	.long	.LASF480
	.byte	0x30
	.byte	0x8
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.uleb128 0x20
	.long	.LASF512
	.byte	0x7
	.byte	0x8
	.long	0x72
	.byte	0x1
	.byte	0xe
	.byte	0x14
	.byte	0x1
	.long	0xfb
	.uleb128 0x21
	.long	.LASF513
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.long	.LASF514
	.byte	0x20
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.byte	0x1
	.long	0x1cf
	.uleb128 0x8
	.long	.LASF454
	.byte	0x1
	.byte	0x15
	.byte	0x14
	.long	0x462
	.byte	0
	.uleb128 0x8
	.long	.LASF455
	.byte	0x1
	.byte	0x16
	.byte	0x14
	.long	0x462
	.byte	0x8
	.uleb128 0x8
	.long	.LASF456
	.byte	0x1
	.byte	0x17
	.byte	0x32
	.long	0x2a5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF457
	.byte	0x1
	.byte	0x18
	.byte	0x16
	.long	0x60
	.byte	0x18
	.uleb128 0x8
	.long	.LASF458
	.byte	0x1
	.byte	0x19
	.byte	0x16
	.long	0x60
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF463
	.byte	0x1b
	.byte	0x12
	.long	.LASF465
	.long	0xc1
	.long	0x161
	.long	0x167
	.uleb128 0x1
	.long	0x46c
	.byte	0
	.uleb128 0x13
	.long	.LASF459
	.byte	0x1c
	.long	.LASF461
	.long	0x179
	.long	0x17f
	.uleb128 0x1
	.long	0x462
	.byte	0
	.uleb128 0x13
	.long	.LASF460
	.byte	0x20
	.long	.LASF462
	.long	0x191
	.long	0x197
	.uleb128 0x1
	.long	0x462
	.byte	0
	.uleb128 0x12
	.long	.LASF464
	.byte	0x25
	.byte	0x14
	.long	.LASF466
	.long	0x2e
	.long	0x1ae
	.long	0x1b4
	.uleb128 0x1
	.long	0x462
	.byte	0
	.uleb128 0x23
	.long	.LASF467
	.byte	0x1
	.byte	0x2a
	.byte	0x13
	.long	.LASF468
	.long	0x476
	.long	0x1c8
	.uleb128 0x1
	.long	0x462
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0xfb
	.uleb128 0x9
	.long	.LASF469
	.byte	0x31
	.byte	0x10
	.long	0x462
	.byte	0
	.uleb128 0x9
	.long	.LASF470
	.byte	0x32
	.byte	0xf
	.long	0x476
	.byte	0x8
	.uleb128 0x9
	.long	.LASF471
	.byte	0x33
	.byte	0xf
	.long	0x476
	.byte	0x10
	.uleb128 0x9
	.long	.LASF472
	.byte	0x34
	.byte	0x10
	.long	0x2e
	.byte	0x18
	.uleb128 0x9
	.long	.LASF473
	.byte	0x35
	.byte	0x10
	.long	0x2e
	.byte	0x20
	.uleb128 0x9
	.long	.LASF474
	.byte	0x36
	.byte	0x10
	.long	0x2e
	.byte	0x28
	.uleb128 0xa
	.long	.LASF475
	.byte	0x1
	.byte	0x39
	.byte	0xe
	.long	.LASF476
	.long	0x230
	.long	0x240
	.uleb128 0x1
	.long	0x478
	.uleb128 0x2
	.long	0x476
	.uleb128 0x2
	.long	0x476
	.byte	0
	.uleb128 0x24
	.long	.LASF485
	.byte	0x1
	.byte	0x48
	.byte	0xf
	.long	.LASF487
	.long	0x476
	.byte	0x1
	.long	0x259
	.long	0x264
	.uleb128 0x1
	.long	0x478
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0xa
	.long	.LASF477
	.byte	0x1
	.byte	0x49
	.byte	0xe
	.long	.LASF478
	.long	0x278
	.long	0x283
	.uleb128 0x1
	.long	0x478
	.uleb128 0x2
	.long	0x476
	.byte	0
	.uleb128 0x25
	.long	.LASF515
	.byte	0x1
	.byte	0x4c
	.byte	0x17
	.long	.LASF516
	.long	0x2e
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF479
	.byte	0x17
	.long	0x43e
	.uleb128 0x26
	.long	.LASF481
	.byte	0x8
	.byte	0x3
	.byte	0x1a
	.byte	0xb
	.long	0x438
	.uleb128 0x8
	.long	.LASF482
	.byte	0x3
	.byte	0x1d
	.byte	0xb
	.long	0x7d
	.byte	0
	.uleb128 0xa
	.long	.LASF483
	.byte	0x3
	.byte	0x20
	.byte	0x9
	.long	.LASF484
	.long	0x2d3
	.long	0x2d9
	.uleb128 0x1
	.long	0x43e
	.byte	0
	.uleb128 0xe
	.long	.LASF486
	.byte	0x21
	.long	.LASF488
	.long	0x2eb
	.long	0x2f6
	.uleb128 0x1
	.long	0x43e
	.uleb128 0x1
	.long	0x92
	.byte	0
	.uleb128 0xa
	.long	.LASF483
	.byte	0x3
	.byte	0x22
	.byte	0x9
	.long	.LASF489
	.long	0x30a
	.long	0x315
	.uleb128 0x1
	.long	0x43e
	.uleb128 0x2
	.long	0x7d
	.byte	0
	.uleb128 0xe
	.long	.LASF483
	.byte	0x24
	.long	.LASF490
	.long	0x327
	.long	0x332
	.uleb128 0x1
	.long	0x43e
	.uleb128 0x2
	.long	0x448
	.byte	0
	.uleb128 0x14
	.long	.LASF492
	.byte	0x25
	.long	.LASF493
	.long	0x44d
	.long	0x348
	.long	0x353
	.uleb128 0x1
	.long	0x43e
	.uleb128 0x2
	.long	0x448
	.byte	0
	.uleb128 0xe
	.long	.LASF483
	.byte	0x26
	.long	.LASF491
	.long	0x365
	.long	0x370
	.uleb128 0x1
	.long	0x43e
	.uleb128 0x2
	.long	0x452
	.byte	0
	.uleb128 0x14
	.long	.LASF492
	.byte	0x27
	.long	.LASF494
	.long	0x44d
	.long	0x386
	.long	0x391
	.uleb128 0x1
	.long	0x43e
	.uleb128 0x2
	.long	0x452
	.byte	0
	.uleb128 0x15
	.string	"set"
	.byte	0x29
	.long	.LASF497
	.long	0x3a3
	.long	0x3ae
	.uleb128 0x1
	.long	0x43e
	.uleb128 0x2
	.long	0xe1
	.byte	0
	.uleb128 0xa
	.long	.LASF495
	.byte	0x3
	.byte	0x2d
	.byte	0xe
	.long	.LASF496
	.long	0x3c2
	.long	0x3cd
	.uleb128 0x1
	.long	0x43e
	.uleb128 0x2
	.long	0xe1
	.byte	0
	.uleb128 0x16
	.string	"get"
	.byte	0x31
	.byte	0xe
	.long	.LASF499
	.long	0xc1
	.long	0x3e4
	.long	0x3ef
	.uleb128 0x1
	.long	0x458
	.uleb128 0x2
	.long	0xe1
	.byte	0
	.uleb128 0x15
	.string	"set"
	.byte	0x35
	.long	.LASF498
	.long	0x401
	.long	0x40c
	.uleb128 0x1
	.long	0x43e
	.uleb128 0x2
	.long	0x7d
	.byte	0
	.uleb128 0x16
	.string	"get"
	.byte	0x39
	.byte	0xb
	.long	.LASF500
	.long	0x7d
	.long	0x423
	.long	0x429
	.uleb128 0x1
	.long	0x458
	.byte	0
	.uleb128 0x17
	.string	"E"
	.long	0xe1
	.uleb128 0x17
	.string	"T"
	.long	0x7d
	.byte	0
	.uleb128 0x5
	.long	0x2a5
	.byte	0
	.uleb128 0xb
	.long	0x2a5
	.uleb128 0x5
	.long	0x43e
	.uleb128 0x18
	.long	0x438
	.uleb128 0x18
	.long	0x2a5
	.uleb128 0x27
	.byte	0x8
	.long	0x2a5
	.uleb128 0xb
	.long	0x438
	.uleb128 0x5
	.long	0x458
	.uleb128 0xb
	.long	0xfb
	.uleb128 0x5
	.long	0x462
	.uleb128 0xb
	.long	0x1cf
	.uleb128 0x5
	.long	0x46c
	.uleb128 0x28
	.byte	0x8
	.uleb128 0xb
	.long	0xd7
	.uleb128 0x5
	.long	0x478
	.uleb128 0x19
	.long	0xac
	.uleb128 0x19
	.long	0xb6
	.uleb128 0xd
	.long	0x3ae
	.long	0x4ab
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c7
	.uleb128 0x3
	.long	.LASF501
	.long	0x443
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF502
	.byte	0x3
	.byte	0x2d
	.byte	0x16
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.long	0x391
	.long	0x4e6
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x502
	.uleb128 0x3
	.long	.LASF501
	.long	0x443
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF502
	.byte	0x3
	.byte	0x29
	.byte	0x14
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.long	0x3cd
	.long	0x521
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x53d
	.uleb128 0x3
	.long	.LASF501
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF502
	.byte	0x3
	.byte	0x31
	.byte	0x14
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	0x264
	.byte	0x31
	.long	0x55d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x595
	.uleb128 0x3
	.long	.LASF501
	.long	0x47d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"ptr"
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF503
	.byte	0x33
	.byte	0x10
	.long	0x462
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF504
	.byte	0x35
	.byte	0x10
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	0x240
	.byte	0x2
	.byte	0x11
	.byte	0xb
	.long	0x476
	.long	0x5bb
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x655
	.uleb128 0x3
	.long	.LASF501
	.long	0x47d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.long	.LASF464
	.byte	0x2
	.byte	0x11
	.byte	0x2b
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.long	.LASF505
	.byte	0x13
	.byte	0x10
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF506
	.byte	0x16
	.byte	0x10
	.long	0x462
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x7
	.long	.LASF507
	.byte	0x19
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x7
	.long	.LASF507
	.byte	0x26
	.byte	0x18
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x7
	.long	.LASF508
	.byte	0x1f
	.byte	0x1c
	.long	0x462
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x21c
	.byte	0x5
	.long	0x675
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a0
	.uleb128 0x3
	.long	.LASF501
	.long	0x47d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF509
	.byte	0x2
	.byte	0x5
	.byte	0x2b
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF510
	.byte	0x2
	.byte	0x5
	.byte	0x3c
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.long	0x283
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cb
	.uleb128 0x6
	.long	.LASF464
	.byte	0x1
	.byte	0x4c
	.byte	0x24
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	0x1b4
	.long	0x476
	.long	0x6ee
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fb
	.uleb128 0x3
	.long	.LASF501
	.long	0x467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	0x197
	.long	0x71a
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x727
	.uleb128 0x3
	.long	.LASF501
	.long	0x467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	0x17f
	.long	0x746
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x753
	.uleb128 0x3
	.long	.LASF501
	.long	0x467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	0x167
	.long	0x772
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x77f
	.uleb128 0x3
	.long	.LASF501
	.long	0x467
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	0x14a
	.long	0x79a
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.long	.LASF501
	.long	0x471
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
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
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
	.uleb128 0x88
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x21
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0xbc
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.quad	.LFB29
	.quad	.LFE29-.LFB29
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
	.quad	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.quad	.LFB17
	.uleb128 .LFE17-.LFB17
	.byte	0x7
	.quad	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.quad	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.quad	.LFB20
	.uleb128 .LFE20-.LFB20
	.byte	0x7
	.quad	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.quad	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.quad	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.quad	.LFB29
	.uleb128 .LFE29-.LFB29
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
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1
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
.LASF260:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF216:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF69:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF243:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF103:
	.string	"__cpp_namespace_attributes 201411L"
.LASF359:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF283:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF202:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF412:
	.string	"__amd64__ 1"
.LASF411:
	.string	"__amd64 1"
.LASF211:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF285:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF192:
	.string	"__UINT8_C(c) c"
.LASF481:
	.string	"FlagMap<Kernel::HeapLinkedList::BlockFlags, long long unsigned int>"
.LASF433:
	.string	"HEAP_H "
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF339:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF238:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF205:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF487:
	.string	"_ZN6Kernel14HeapLinkedList8allocateEm"
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
.LASF461:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markUsedEv"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF293:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF47:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF79:
	.string	"__cpp_hex_float 201603L"
.LASF123:
	.string	"__cpp_conditional_explicit 201806L"
.LASF300:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF158:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF384:
	.string	"__NO_INLINE__ 1"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF46:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF203:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF225:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF199:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF198:
	.string	"__UINT64_C(c) c ## UL"
.LASF236:
	.string	"__DBL_MANT_DIG__ 53"
.LASF234:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF100:
	.string	"__cpp_digit_separators 201309L"
.LASF145:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF235:
	.string	"__FLT_IS_IEC_60559__ 1"
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
.LASF454:
	.string	"prev"
.LASF60:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF149:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF470:
	.string	"m_startAddr"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF182:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF143:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF36:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF302:
	.string	"__FLT64_DIG__ 15"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF268:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF346:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF330:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF61:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF452:
	.string	"bool"
.LASF491:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4EOS4_"
.LASF436:
	.string	"UTILS_H "
.LASF180:
	.string	"__INT8_C(c) c"
.LASF324:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF165:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF126:
	.string	"__cpp_deduction_guides 201907L"
.LASF59:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF184:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF443:
	.string	"uint32_t"
.LASF112:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF316:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF297:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF460:
	.string	"markFree"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
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
.LASF486:
	.string	"~FlagMap"
.LASF269:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF372:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF213:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF446:
	.string	"long long unsigned int"
.LASF319:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF496:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_"
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
.LASF379:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF191:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF102:
	.string	"__cpp_static_assert 201411L"
.LASF366:
	.string	"__BFLT16_DIG__ 2"
.LASF41:
	.string	"__WCHAR_TYPE__ int"
.LASF171:
	.string	"__INT8_MAX__ 0x7f"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF459:
	.string	"markUsed"
.LASF321:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF219:
	.string	"__FLT_RADIX__ 2"
.LASF344:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF107:
	.string	"__cpp_range_based_for 201603L"
.LASF349:
	.string	"__FLT64X_MANT_DIG__ 64"
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
.LASF70:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF131:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF256:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF43:
	.string	"__INTMAX_TYPE__ long int"
.LASF510:
	.string	"endAddr"
.LASF73:
	.string	"__INTPTR_TYPE__ long int"
.LASF78:
	.string	"__cpp_binary_literals 201304L"
.LASF423:
	.string	"__MMX__ 1"
.LASF134:
	.string	"__cpp_concepts 202002L"
.LASF190:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF500:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getEv"
.LASF306:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF82:
	.string	"__cpp_unicode_literals 200710L"
.LASF478:
	.string	"_ZN6Kernel14HeapLinkedList4freeEPv"
.LASF51:
	.string	"__INT32_TYPE__ int"
.LASF361:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF87:
	.string	"__cpp_rvalue_reference 200610L"
.LASF439:
	.string	"size_t"
.LASF475:
	.string	"initialize"
.LASF280:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF75:
	.string	"__GXX_WEAK__ 1"
.LASF465:
	.string	"_ZNK6Kernel14HeapLinkedList5Block6isUsedEv"
.LASF352:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF244:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF207:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF322:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF504:
	.string	"blockSize"
.LASF304:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF463:
	.string	"isUsed"
.LASF434:
	.string	"TYPES_H "
.LASF477:
	.string	"free"
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
.LASF159:
	.string	"__WCHAR_WIDTH__ 32"
.LASF298:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF377:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF147:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF495:
	.string	"clear"
.LASF62:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF488:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyED4Ev"
.LASF121:
	.string	"__cpp_constexpr 202002L"
.LASF125:
	.string	"__cpp_constinit 201907L"
.LASF343:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF273:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF440:
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
.LASF39:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF67:
	.string	"__INT_FAST32_TYPE__ int"
.LASF208:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF227:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF239:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF287:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF255:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF286:
	.string	"__FLT32_DIG__ 6"
.LASF142:
	.string	"__GXX_ABI_VERSION 1018"
.LASF272:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF313:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF99:
	.string	"__cpp_variable_templates 201304L"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF513:
	.string	"Used"
.LASF345:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF414:
	.string	"__x86_64__ 1"
.LASF94:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF245:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF356:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF326:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF467:
	.string	"data"
.LASF181:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF363:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF175:
	.string	"__UINT8_MAX__ 0xff"
.LASF176:
	.string	"__UINT16_MAX__ 0xffff"
.LASF68:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF278:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
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
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
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
.LASF86:
	.string	"__cpp_attributes 200809L"
.LASF333:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF291:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF18:
	.string	"_LP64 1"
.LASF457:
	.string	"heapId"
.LASF449:
	.string	"long long int"
.LASF511:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF92:
	.string	"__cpp_nsdmi 200809L"
.LASF348:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF365:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF177:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF308:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF114:
	.string	"__cpp_structured_bindings 201606L"
.LASF512:
	.string	"BlockFlags"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF197:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF499:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_"
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
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF129:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF516:
	.string	"_ZN6Kernel14HeapLinkedList5alignEm"
.LASF233:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF484:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ev"
.LASF370:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF489:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ey"
.LASF282:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF2:
	.string	"__STDC__ 1"
.LASF425:
	.string	"__SSE2__ 1"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF240:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF474:
	.string	"m_allocatedSize"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF375:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF204:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF88:
	.string	"__cpp_rvalue_references 200610L"
.LASF483:
	.string	"FlagMap"
.LASF492:
	.string	"operator="
.LASF172:
	.string	"__INT16_MAX__ 0x7fff"
.LASF464:
	.string	"size"
.LASF97:
	.string	"__cpp_decltype_auto 201304L"
.LASF133:
	.string	"__cpp_using_enum 201907L"
.LASF137:
	.string	"__cpp_aligned_new 201606L"
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
.LASF266:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF215:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF116:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF310:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF490:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4ERKS4_"
.LASF320:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF34:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF479:
	.string	"Utils"
.LASF296:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
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
.LASF305:
	.string	"__FLT64_MAX_EXP__ 1024"
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
.LASF501:
	.string	"this"
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
.LASF144:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF117:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF468:
	.string	"_ZN6Kernel14HeapLinkedList5Block4dataEv"
.LASF507:
	.string	"currentSize"
.LASF132:
	.string	"__cpp_aggregate_paren_init 201902L"
.LASF226:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF462:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markFreeEv"
.LASF254:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF160:
	.string	"__WINT_WIDTH__ 32"
.LASF358:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF456:
	.string	"metadata"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF295:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF413:
	.string	"__x86_64 1"
.LASF471:
	.string	"m_endAddr"
.LASF509:
	.string	"startAddr"
.LASF448:
	.string	"short int"
.LASF146:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF331:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF110:
	.string	"__cpp_inline_variables 201606L"
.LASF141:
	.string	"__cpp_char8_t 202207L"
.LASF336:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF438:
	.string	"long int"
.LASF111:
	.string	"__cpp_aggregate_bases 201603L"
.LASF166:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF38:
	.string	"__GNUG__ 13"
.LASF374:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF354:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF498:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setEy"
.LASF357:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF335:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF212:
	.string	"__INTPTR_WIDTH__ 64"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF455:
	.string	"next"
.LASF186:
	.string	"__INT32_C(c) c"
.LASF267:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF49:
	.string	"__INT8_TYPE__ signed char"
.LASF150:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF45:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF154:
	.string	"__SCHAR_WIDTH__ 8"
.LASF502:
	.string	"flag"
.LASF445:
	.string	"uint64_t"
.LASF55:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF508:
	.string	"newBlock"
.LASF209:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF108:
	.string	"__cpp_if_constexpr 201606L"
.LASF128:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF503:
	.string	"block"
.LASF494:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSEOS4_"
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
.LASF164:
	.string	"__INTMAX_C(c) c ## L"
.LASF115:
	.string	"__cpp_variadic_using 201611L"
.LASF450:
	.string	"is_enum_v"
.LASF368:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF444:
	.string	"unsigned int"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF311:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF458:
	.string	"magic"
.LASF148:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF220:
	.string	"__FLT_MANT_DIG__ 24"
.LASF231:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF156:
	.string	"__INT_WIDTH__ 32"
.LASF259:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF451:
	.string	"is_integral_v"
.LASF430:
	.string	"__SEG_FS 1"
.LASF369:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF480:
	.string	"HeapLinkedList"
.LASF437:
	.string	"long unsigned int"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF76:
	.string	"__DEPRECATED 1"
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
.LASF493:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSERKS4_"
.LASF157:
	.string	"__LONG_WIDTH__ 64"
.LASF178:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
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
.LASF441:
	.string	"unsigned char"
.LASF505:
	.string	"allignedSize"
.LASF482:
	.string	"m_flags"
.LASF52:
	.string	"__INT64_TYPE__ long int"
.LASF229:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF122:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF294:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF472:
	.string	"m_usedSize"
.LASF218:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF93:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF426:
	.string	"__FXSR__ 1"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF187:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF37:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF71:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF64:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF84:
	.string	"__cpp_lambdas 200907L"
.LASF485:
	.string	"allocate"
.LASF153:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF246:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF355:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF139:
	.string	"__cpp_template_template_args 201611L"
.LASF371:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF223:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF303:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF217:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF249:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF453:
	.string	"Kernel"
.LASF189:
	.string	"__INT64_C(c) c ## L"
.LASF514:
	.string	"Block"
.LASF473:
	.string	"m_availibleSize"
.LASF40:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF98:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF476:
	.string	"_ZN6Kernel14HeapLinkedList10initializeEPvS1_"
.LASF91:
	.string	"__cpp_delegating_constructors 200604L"
.LASF314:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF83:
	.string	"__cpp_user_defined_literals 200809L"
.LASF447:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF135:
	.string	"__cpp_impl_coroutine 201902L"
.LASF241:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF258:
	.string	"__DECIMAL_DIG__ 21"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF442:
	.string	"short unsigned int"
.LASF469:
	.string	"m_head"
.LASF383:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF424:
	.string	"__SSE__ 1"
.LASF101:
	.string	"__cpp_unicode_characters 201411L"
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF497:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_"
.LASF328:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF200:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF506:
	.string	"current"
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
.LASF276:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF312:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF195:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF338:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF248:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF274:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF341:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF242:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF81:
	.string	"__cpp_raw_strings 200710L"
.LASF247:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF466:
	.string	"_ZN6Kernel14HeapLinkedList5Block4sizeEv"
.LASF290:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF323:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF367:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF161:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF185:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF515:
	.string	"align"
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
.LASF42:
	.string	"__WINT_TYPE__ unsigned int"
.LASF265:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF119:
	.string	"__cpp_generic_lambdas 201707L"
.LASF301:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF232:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF206:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF214:
	.string	"__GCC_IEC_559 2"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/mnt/a/myOsX64"
.LASF0:
	.string	"src/kernel/Heap.cpp"
	.ident	"GCC: (GNU) 13.2.0"
