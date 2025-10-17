	.file	"MemoryMap.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/MemoryMap.cpp"
	.weak	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE
	.section	.rodata._ZN6Kernel9MemoryMap20s_kernelMemoryRegionE,"aG",@progbits,_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE,comdat
	.align 32
	.type	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE, @object
	.size	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE, 112
_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE:
	.quad	__kernel_start
	.quad	__kernel_end
	.quad	__multiboot_header_start
	.quad	__multiboot_header_end
	.quad	__text_start
	.quad	__text_end
	.quad	__data_start
	.quad	__data_end
	.quad	__rodata_start
	.quad	__rodata_end
	.quad	__bss_start
	.quad	__bss_end
	.quad	stack_top
	.quad	stack_bottom
	.weak	_ZN6Kernel9MemoryMap17s_multibootHeaderE
	.section	.bss._ZN6Kernel9MemoryMap17s_multibootHeaderE,"awG",@nobits,_ZN6Kernel9MemoryMap17s_multibootHeaderE,comdat
	.align 8
	.type	_ZN6Kernel9MemoryMap17s_multibootHeaderE, @object
	.size	_ZN6Kernel9MemoryMap17s_multibootHeaderE, 8
_ZN6Kernel9MemoryMap17s_multibootHeaderE:
	.zero	8
	.weak	_ZN6Kernel9MemoryMap18s_multibootMmapTagE
	.section	.bss._ZN6Kernel9MemoryMap18s_multibootMmapTagE,"awG",@nobits,_ZN6Kernel9MemoryMap18s_multibootMmapTagE,comdat
	.align 8
	.type	_ZN6Kernel9MemoryMap18s_multibootMmapTagE, @object
	.size	_ZN6Kernel9MemoryMap18s_multibootMmapTagE, 8
_ZN6Kernel9MemoryMap18s_multibootMmapTagE:
	.zero	8
	.weak	_ZN6Kernel9MemoryMap11s_heapCountE
	.section	.bss._ZN6Kernel9MemoryMap11s_heapCountE,"awG",@nobits,_ZN6Kernel9MemoryMap11s_heapCountE,comdat
	.align 8
	.type	_ZN6Kernel9MemoryMap11s_heapCountE, @object
	.size	_ZN6Kernel9MemoryMap11s_heapCountE, 8
_ZN6Kernel9MemoryMap11s_heapCountE:
	.zero	8
	.weak	_ZN6Kernel9MemoryMap7s_heapsE
	.section	.bss._ZN6Kernel9MemoryMap7s_heapsE,"awG",@nobits,_ZN6Kernel9MemoryMap7s_heapsE,comdat
	.align 8
	.type	_ZN6Kernel9MemoryMap7s_heapsE, @object
	.size	_ZN6Kernel9MemoryMap7s_heapsE, 8
_ZN6Kernel9MemoryMap7s_heapsE:
	.zero	8
	.globl	_ZN6Kernel9MemoryMap19s_multibootTagNamesE
	.section	.rodata
.LC0:
	.string	"End"
.LC1:
	.string	"Cmdline"
.LC2:
	.string	"Bootloader name"
.LC3:
	.string	"Module"
.LC4:
	.string	"Basic memory info"
.LC5:
	.string	"Boot device"
.LC6:
	.string	"Memory map"
.LC7:
	.string	"VBE info"
.LC8:
	.string	"Framebuffer info"
.LC9:
	.string	"EFI memory map"
.LC10:
	.string	"EFI boot services"
.LC11:
	.string	"EFI ACPI table"
.LC12:
	.string	"EFI memory map v2"
.LC13:
	.string	"SMBIOS tables"
.LC14:
	.string	"OEM strings"
.LC15:
	.string	"ACPI old RSDP"
.LC16:
	.string	"ACPI new RSDP"
.LC17:
	.string	"NVRAM"
.LC18:
	.string	"EFI memory map v3"
.LC19:
	.string	"EFI memory map v4"
.LC20:
	.string	"Load base address"
	.data
	.align 32
	.type	_ZN6Kernel9MemoryMap19s_multibootTagNamesE, @object
	.size	_ZN6Kernel9MemoryMap19s_multibootTagNamesE, 168
_ZN6Kernel9MemoryMap19s_multibootTagNamesE:
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
	.quad	.LC20
	.globl	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE
	.section	.rodata
.LC21:
	.string	"Unknown"
.LC22:
	.string	"Available"
.LC23:
	.string	"Reserved"
.LC24:
	.string	"ACPI Reclaim"
.LC25:
	.string	"ACPI NVS"
.LC26:
	.string	"Bad RAM"
	.data
	.align 32
	.type	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE, @object
	.size	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE, 48
_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE:
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.section	.rodata
.LC27:
	.string	"Memory Map : Initialising\n"
.LC28:
	.string	"Kernel memory region:\n"
.LC29:
	.string	"  Start: %x\n"
.LC30:
	.string	"  End:   %x\n"
.LC31:
	.string	"  Size:  %d B\n"
.LC32:
	.string	"Multiboot info address: %x\n"
.LC33:
	.string	"Memory Map : Tag %d (%s)\n"
	.align 8
.LC34:
	.string	"Memory Map : No memory map tag found\n"
	.text
	.align 2
	.globl	_ZN6Kernel9MemoryMap10initialiseEy
	.type	_ZN6Kernel9MemoryMap10initialiseEy, @function
_ZN6Kernel9MemoryMap10initialiseEy:
.LFB32:
	.file 1 "src/kernel/MemoryMap.cpp"
	.loc 1 38 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 39 23
	movq	$.LC27, %rdi
	call	_ZN6Kernel7Console5printIJEEEvPKcDpT_
	.loc 1 41 23
	movq	$.LC28, %rdi
	call	_ZN6Kernel7Console5printIJEEEvPKcDpT_
	.loc 1 42 62
	movq	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE(%rip), %rax
	.loc 1 42 23
	movq	%rax, %rsi
	movq	$.LC29, %rdi
	call	_ZN6Kernel7Console5printIJyEEEvPKcDpT_
	.loc 1 43 62
	movq	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE+8(%rip), %rax
	.loc 1 43 23
	movq	%rax, %rsi
	movq	$.LC30, %rdi
	call	_ZN6Kernel7Console5printIJyEEEvPKcDpT_
	.loc 1 44 64
	movq	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE+8(%rip), %rax
	.loc 1 44 101
	movq	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE(%rip), %rdx
	.loc 1 44 23
	subq	%rdx, %rax
	movq	%rax, %rsi
	movq	$.LC31, %rdi
	call	_ZN6Kernel7Console5printIJyEEEvPKcDpT_
	.loc 1 46 23
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	$.LC32, %rdi
	call	_ZN6Kernel7Console5printIJyEEEvPKcDpT_
	.loc 1 47 27
	movq	-24(%rbp), %rax
	movq	%rax, _ZN6Kernel9MemoryMap17s_multibootHeaderE(%rip)
	.loc 1 48 80
	movq	-24(%rbp), %rax
	addq	$8, %rax
	.loc 1 48 23
	movq	%rax, -8(%rbp)
	.loc 1 50 75
	movq	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE+8(%rip), %rax
	.loc 1 50 17
	movq	%rax, _ZN6Kernel9MemoryMap7s_heapsE(%rip)
	.loc 1 52 9
	jmp	.L2
.L5:
	.loc 1 56 75
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 54 27
	movl	%eax, %eax
	movq	_ZN6Kernel9MemoryMap19s_multibootTagNamesE(,%rax,8), %rdx
	.loc 1 55 55
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 54 27
	movl	%eax, %esi
	movq	$.LC33, %rdi
	call	_ZN6Kernel7Console5printIJjPKcEEEvS3_DpT_
	.loc 1 58 22
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 58 13
	cmpl	$6, %eax
	jne	.L3
	.loc 1 60 36
	movq	-8(%rbp), %rax
	movq	%rax, _ZN6Kernel9MemoryMap18s_multibootMmapTagE(%rip)
	.loc 1 61 34
	call	_ZN6Kernel9MemoryMap17parseMemoryMapTagEv
	.loc 1 62 17
	jmp	.L4
.L3:
	.loc 1 65 94
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 65 99
	addl	$7, %eax
	.loc 1 65 104
	movl	%eax, %eax
	andl	$4294967288, %eax
	.loc 1 65 17
	addq	%rax, -8(%rbp)
.L2:
	.loc 1 52 21
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 52 26
	testl	%eax, %eax
	jne	.L5
.L4:
	.loc 1 67 32
	movq	_ZN6Kernel9MemoryMap18s_multibootMmapTagE(%rip), %rax
	.loc 1 67 9
	testq	%rax, %rax
	jne	.L7
	.loc 1 69 27
	movq	$.LC34, %rdi
	call	_ZN6Kernel7Console5printIJEEEvPKcDpT_
.L7:
	.loc 1 71 5
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	_ZN6Kernel9MemoryMap10initialiseEy, .-_ZN6Kernel9MemoryMap10initialiseEy
	.section	.rodata
	.align 8
.LC35:
	.string	"Memory Map : %d entries, entry size: %d\n"
	.align 8
.LC36:
	.string	"Region %d: %x - %x (%d B) [%s]\n"
	.align 8
.LC37:
	.string	"Region %d: %x - %x (%d KB) [%s]\n"
	.align 8
.LC38:
	.string	"Region %d: %x - %x (%d MB) [%s]\n"
	.align 8
.LC39:
	.string	"Region %d: %x - %x (%d GB) [%s]\n"
.LC40:
	.string	"Memory Map : %d heaps\n"
.LC41:
	.string	"Initilialising heap 0\n"
.LC42:
	.string	"Heap 0 start addr %x\n"
.LC43:
	.string	"Heap 0 end addr %x\n"
.LC44:
	.string	"Initilialising heap %d\n"
.LC45:
	.string	"Heap %d start addr %x\n"
.LC46:
	.string	"Heap %d end addr %x\n"
	.text
	.align 2
	.globl	_ZN6Kernel9MemoryMap17parseMemoryMapTagEv
	.type	_ZN6Kernel9MemoryMap17parseMemoryMapTagEv, @function
_ZN6Kernel9MemoryMap17parseMemoryMapTagEv:
.LFB33:
	.loc 1 74 5
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.loc 1 75 21
	movq	$0, _ZN6Kernel9MemoryMap11s_heapCountE(%rip)
	.loc 1 77 53
	movq	_ZN6Kernel9MemoryMap18s_multibootMmapTagE(%rip), %rax
	movl	4(%rax), %eax
	.loc 1 77 18
	subl	$16, %eax
	movl	%eax, -28(%rbp)
	.loc 1 78 50
	movq	_ZN6Kernel9MemoryMap18s_multibootMmapTagE(%rip), %rax
	.loc 1 78 18
	movl	8(%rax), %eax
	movl	%eax, -32(%rbp)
	.loc 1 79 18
	movl	-28(%rbp), %eax
	movl	$0, %edx
	divl	-32(%rbp)
	movl	%eax, -36(%rbp)
	.loc 1 81 23
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	$.LC35, %rdi
	call	_ZN6Kernel7Console5printIJjjEEEvPKcDpT_
	.loc 1 83 95
	movq	_ZN6Kernel9MemoryMap18s_multibootMmapTagE(%rip), %rax
	.loc 1 83 29
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	.loc 1 84 18
	movl	$0, -12(%rbp)
	.loc 1 85 9
	jmp	.L9
.L15:
	.loc 1 87 24
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 87 13
	cmpl	$1, %eax
	jne	.L10
	.loc 1 89 17
	movq	_ZN6Kernel9MemoryMap11s_heapCountE(%rip), %rax
	addq	$1, %rax
	movq	%rax, _ZN6Kernel9MemoryMap11s_heapCountE(%rip)
.L10:
	.loc 1 91 24
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 91 13
	cmpq	$1023, %rax
	ja	.L11
	.loc 1 95 88
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 92 31
	movl	%eax, %eax
	movq	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE(,%rax,8), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	.loc 1 93 55
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 93 69
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 92 31
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	movq	$.LC36, %rdi
	call	_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_
	jmp	.L12
.L11:
	.loc 1 96 29
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 96 18
	cmpq	$1048575, %rax
	ja	.L13
	.loc 1 100 88
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 97 31
	movl	%eax, %eax
	movq	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE(,%rax,8), %rsi
	.loc 1 99 39
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 97 31
	shrq	$10, %rax
	movq	%rax, %rdi
	.loc 1 98 55
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 98 69
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 97 31
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	%eax, %esi
	movq	$.LC37, %rdi
	call	_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_
	jmp	.L12
.L13:
	.loc 1 101 29
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 101 18
	cmpq	$1073741823, %rax
	ja	.L14
	.loc 1 105 88
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 102 31
	movl	%eax, %eax
	movq	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE(,%rax,8), %rsi
	.loc 1 104 39
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 102 31
	shrq	$20, %rax
	movq	%rax, %rdi
	.loc 1 103 55
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 103 69
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 102 31
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	%eax, %esi
	movq	$.LC38, %rdi
	call	_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_
	jmp	.L12
.L14:
	.loc 1 110 88
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 107 31
	movl	%eax, %eax
	movq	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE(,%rax,8), %rsi
	.loc 1 109 39
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 107 31
	shrq	$30, %rax
	movq	%rax, %rdi
	.loc 1 108 55
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 108 69
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 107 31
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	%eax, %esi
	movq	$.LC39, %rdi
	call	_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_
.L12:
	.loc 1 113 97
	movl	-32(%rbp), %eax
	.loc 1 113 19
	addq	%rax, -8(%rbp)
	.loc 1 85 9
	addl	$1, -12(%rbp)
.L9:
	.loc 1 85 18 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L15
	.loc 1 116 75
	movq	_ZN6Kernel9MemoryMap18s_multibootMmapTagE(%rip), %rax
	.loc 1 116 15
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	.loc 1 117 23
	movq	_ZN6Kernel9MemoryMap11s_heapCountE(%rip), %rax
	movq	%rax, %rsi
	movq	$.LC40, %rdi
	call	_ZN6Kernel7Console5printIJmEEEvPKcDpT_
	.loc 1 118 11
	movl	$0, -12(%rbp)
.LBB2:
	.loc 1 119 9
	jmp	.L16
.L19:
.LBB3:
.LBB4:
	.loc 1 121 24
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 121 13
	cmpl	$1, %eax
	jne	.L17
.LBB5:
	.loc 1 123 31
	movq	$.LC41, %rdi
	call	_ZN6Kernel7Console5printIJEEEvPKcDpT_
	.loc 1 124 84
	movq	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE+8(%rip), %rax
	.loc 1 124 98
	addq	$7, %rax
	.loc 1 124 103
	andq	$-8, %rax
	.loc 1 124 25
	movq	%rax, _ZN6Kernel9MemoryMap7s_heapsE(%rip)
	.loc 1 126 89
	movq	_ZN6Kernel9MemoryMap11s_heapCountE(%rip), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	.loc 1 126 75
	movq	_ZN6Kernel9MemoryMap7s_heapsE(%rip), %rax
	addq	%rdx, %rax
	.loc 1 126 114
	addq	$7, %rax
	.loc 1 126 26
	andq	$-8, %rax
	movq	%rax, -48(%rbp)
	.loc 1 127 43
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 127 57
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 127 26
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 1 129 31
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	$.LC42, %rdi
	call	_ZN6Kernel7Console5printIJyEEEvPKcDpT_
	.loc 1 130 31
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	$.LC43, %rdi
	call	_ZN6Kernel7Console5printIJyEEEvPKcDpT_
	.loc 1 134 38
	movq	_ZN6Kernel9MemoryMap7s_heapsE(%rip), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel14HeapLinkedList10initializeEPvS1_
	.loc 1 137 17
	jmp	.L18
.L17:
.LBE5:
.LBE4:
	.loc 1 140 97
	movl	-32(%rbp), %eax
	.loc 1 140 19
	addq	%rax, -8(%rbp)
.LBE3:
	.loc 1 119 9
	addl	$1, -12(%rbp)
.L16:
	.loc 1 119 18 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L19
.L18:
.LBE2:
	.loc 1 143 93
	movl	-32(%rbp), %eax
	.loc 1 143 15
	addq	%rax, -8(%rbp)
	.loc 1 144 9
	addl	$1, -12(%rbp)
	.loc 1 145 16
	movq	$1, -24(%rbp)
.LBB6:
	.loc 1 147 9
	jmp	.L20
.L22:
.LBB7:
.LBB8:
	.loc 1 149 24
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 149 13
	cmpl	$1, %eax
	jne	.L21
.LBB9:
	.loc 1 151 31
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	$.LC44, %rdi
	call	_ZN6Kernel7Console5printIJmEEEvPKcDpT_
	.loc 1 152 46
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 152 51
	addq	$7, %rax
	.loc 1 152 26
	andq	$-8, %rax
	movq	%rax, -64(%rbp)
	.loc 1 153 43
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 153 57
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 153 26
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 1 154 31
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	$.LC45, %rdi
	call	_ZN6Kernel7Console5printIJmyEEEvPKcDpT_
	.loc 1 155 31
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	$.LC46, %rdi
	call	_ZN6Kernel7Console5printIJmyEEEvPKcDpT_
	.loc 1 156 38
	movq	_ZN6Kernel9MemoryMap7s_heapsE(%rip), %rcx
	.loc 1 156 26
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	.loc 1 156 38
	addq	%rax, %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN6Kernel14HeapLinkedList10initializeEPvS1_
	.loc 1 158 17
	addq	$1, -24(%rbp)
.L21:
.LBE9:
.LBE8:
	.loc 1 161 97
	movl	-32(%rbp), %eax
	.loc 1 161 19
	addq	%rax, -8(%rbp)
.LBE7:
	.loc 1 147 9
	addl	$1, -12(%rbp)
.L20:
	.loc 1 147 18 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L22
.LBE6:
	.loc 1 163 5
	nop
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	_ZN6Kernel9MemoryMap17parseMemoryMapTagEv, .-_ZN6Kernel9MemoryMap17parseMemoryMapTagEv
	.align 2
	.globl	_ZN6Kernel9MemoryMap7getHeapEm
	.type	_ZN6Kernel9MemoryMap7getHeapEm, @function
_ZN6Kernel9MemoryMap7getHeapEm:
.LFB34:
	.loc 1 165 54
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 165 76
	movq	_ZN6Kernel9MemoryMap7s_heapsE(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 165 79
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	_ZN6Kernel9MemoryMap7getHeapEm, .-_ZN6Kernel9MemoryMap7getHeapEm
	.align 2
	.globl	_ZN6Kernel9MemoryMap12getHeapCountEv
	.type	_ZN6Kernel9MemoryMap12getHeapCountEv, @function
_ZN6Kernel9MemoryMap12getHeapCountEv:
.LFB35:
	.loc 1 166 38
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 166 47
	movq	_ZN6Kernel9MemoryMap11s_heapCountE(%rip), %rax
	.loc 1 166 60
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	_ZN6Kernel9MemoryMap12getHeapCountEv, .-_ZN6Kernel9MemoryMap12getHeapCountEv
	.section	.text._ZN6Kernel7Console5printIJEEEvPKcDpT_,"axG",@progbits,_ZN6Kernel7Console5printIJEEEvPKcDpT_,comdat
	.weak	_ZN6Kernel7Console5printIJEEEvPKcDpT_
	.type	_ZN6Kernel7Console5printIJEEEvPKcDpT_, @function
_ZN6Kernel7Console5printIJEEEvPKcDpT_:
.LFB39:
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
.LFE39:
	.size	_ZN6Kernel7Console5printIJEEEvPKcDpT_, .-_ZN6Kernel7Console5printIJEEEvPKcDpT_
	.section	.text._ZN6Kernel7Console5printIJyEEEvPKcDpT_,"axG",@progbits,_ZN6Kernel7Console5printIJyEEEvPKcDpT_,comdat
	.weak	_ZN6Kernel7Console5printIJyEEEvPKcDpT_
	.type	_ZN6Kernel7Console5printIJyEEEvPKcDpT_, @function
_ZN6Kernel7Console5printIJyEEEvPKcDpT_:
.LFB40:
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
	call	_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_
	.loc 2 275 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	_ZN6Kernel7Console5printIJyEEEvPKcDpT_, .-_ZN6Kernel7Console5printIJyEEEvPKcDpT_
	.section	.text._ZN6Kernel7Console5printIJjPKcEEEvS3_DpT_,"axG",@progbits,_ZN6Kernel7Console5printIJjPKcEEEvS3_DpT_,comdat
	.weak	_ZN6Kernel7Console5printIJjPKcEEEvS3_DpT_
	.type	_ZN6Kernel7Console5printIJjPKcEEEvS3_DpT_, @function
_ZN6Kernel7Console5printIJjPKcEEEvS3_DpT_:
.LFB41:
	.loc 2 265 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 273 26
	leaq	-24(%rbp), %rdx
	leaq	-12(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_
	.loc 2 275 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	_ZN6Kernel7Console5printIJjPKcEEEvS3_DpT_, .-_ZN6Kernel7Console5printIJjPKcEEEvS3_DpT_
	.section	.text._ZN6Kernel7Console5printIJjjEEEvPKcDpT_,"axG",@progbits,_ZN6Kernel7Console5printIJjjEEEvPKcDpT_,comdat
	.weak	_ZN6Kernel7Console5printIJjjEEEvPKcDpT_
	.type	_ZN6Kernel7Console5printIJjjEEEvPKcDpT_, @function
_ZN6Kernel7Console5printIJjjEEEvPKcDpT_:
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	.loc 2 273 26
	leaq	-16(%rbp), %rdx
	leaq	-12(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_
	.loc 2 275 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	_ZN6Kernel7Console5printIJjjEEEvPKcDpT_, .-_ZN6Kernel7Console5printIJjjEEEvPKcDpT_
	.section	.text._ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_,"axG",@progbits,_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_,comdat
	.weak	_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_
	.type	_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_, @function
_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_:
.LFB43:
	.loc 2 265 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	.loc 2 273 26
	leaq	-48(%rbp), %r8
	leaq	-40(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-12(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_
	.loc 2 275 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_, .-_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_
	.section	.text._ZN6Kernel7Console5printIJmEEEvPKcDpT_,"axG",@progbits,_ZN6Kernel7Console5printIJmEEEvPKcDpT_,comdat
	.weak	_ZN6Kernel7Console5printIJmEEEvPKcDpT_
	.type	_ZN6Kernel7Console5printIJmEEEvPKcDpT_, @function
_ZN6Kernel7Console5printIJmEEEvPKcDpT_:
.LFB44:
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
	call	_ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_
	.loc 2 275 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	_ZN6Kernel7Console5printIJmEEEvPKcDpT_, .-_ZN6Kernel7Console5printIJmEEEvPKcDpT_
	.section	.text._ZN6Kernel7Console5printIJmyEEEvPKcDpT_,"axG",@progbits,_ZN6Kernel7Console5printIJmyEEEvPKcDpT_,comdat
	.weak	_ZN6Kernel7Console5printIJmyEEEvPKcDpT_
	.type	_ZN6Kernel7Console5printIJmyEEEvPKcDpT_, @function
_ZN6Kernel7Console5printIJmyEEEvPKcDpT_:
.LFB45:
	.loc 2 265 21
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
	.loc 2 273 26
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_
	.loc 2 275 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	_ZN6Kernel7Console5printIJmyEEEvPKcDpT_, .-_ZN6Kernel7Console5printIJmyEEEvPKcDpT_
	.section	.text._ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_:
.LFB46:
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
	.section	.rodata._ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_,comdat
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
	.section	.text._ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_,comdat
.L42:
	.loc 2 190 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE
	.loc 2 197 25
	jmp	.L45
.L44:
	.loc 2 201 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE
	.loc 2 208 25
	jmp	.L45
.L39:
	.loc 2 212 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE
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
.LFE46:
	.size	_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_, .-_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_
	.section	.text._ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_:
.LFB47:
	.loc 2 173 21
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
	.loc 2 175 13
	jmp	.L49
.L61:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L50
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L50
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L51
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L49
.L51:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L52
	movl	%eax, %eax
	movq	.L54(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_,comdat
	.align 8
	.align 4
.L54:
	.quad	.L58
	.quad	.L57
	.quad	.L56
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L55
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L53
	.section	.text._ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_,comdat
.L56:
	.loc 2 190 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE
	.loc 2 197 25
	jmp	.L59
.L58:
	.loc 2 201 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE
	.loc 2 208 25
	jmp	.L59
.L53:
	.loc 2 212 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE
	.loc 2 219 25
	jmp	.L59
.L57:
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
	jmp	.L59
.L55:
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
	jmp	.L59
.L52:
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
	jmp	.L49
.L59:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 250 34
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_
	.loc 2 253 21
	jmp	.L48
.L50:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L49:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L61
.L48:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	_ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_, .-_ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_
	.section	.text._ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_:
.LFB48:
	.loc 2 173 21
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
	.loc 2 175 13
	jmp	.L63
.L75:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L64
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L64
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L65
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L63
.L65:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L66
	movl	%eax, %eax
	movq	.L68(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_,comdat
	.align 8
	.align 4
.L68:
	.quad	.L72
	.quad	.L71
	.quad	.L70
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L69
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L67
	.section	.text._ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_,comdat
.L70:
	.loc 2 190 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE
	.loc 2 197 25
	jmp	.L73
.L72:
	.loc 2 201 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE
	.loc 2 208 25
	jmp	.L73
.L67:
	.loc 2 212 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE
	.loc 2 219 25
	jmp	.L73
.L71:
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
	jmp	.L73
.L69:
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
	jmp	.L73
.L66:
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
	jmp	.L63
.L73:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 250 34
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_
	.loc 2 253 21
	jmp	.L62
.L64:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L63:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L75
.L62:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	_ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_, .-_ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_
	.section	.text._ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_:
.LFB49:
	.loc 2 173 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	.loc 2 175 13
	jmp	.L77
.L89:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L78
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L78
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L79
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L77
.L79:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L80
	movl	%eax, %eax
	movq	.L82(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_,comdat
	.align 8
	.align 4
.L82:
	.quad	.L86
	.quad	.L85
	.quad	.L84
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L83
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L80
	.quad	.L81
	.section	.text._ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_,comdat
.L84:
	.loc 2 190 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE
	.loc 2 197 25
	jmp	.L87
.L86:
	.loc 2 201 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE
	.loc 2 208 25
	jmp	.L87
.L81:
	.loc 2 212 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE
	.loc 2 219 25
	jmp	.L87
.L85:
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
	jmp	.L87
.L83:
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
	jmp	.L87
.L80:
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
	jmp	.L77
.L87:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 250 34
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_
	.loc 2 253 21
	jmp	.L76
.L78:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L77:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L89
.L76:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	_ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_, .-_ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_
	.section	.text._ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_:
.LFB50:
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
	jmp	.L91
.L103:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L92
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L92
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L93
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L91
.L93:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L94
	movl	%eax, %eax
	movq	.L96(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_,comdat
	.align 8
	.align 4
.L96:
	.quad	.L100
	.quad	.L99
	.quad	.L98
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L97
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L94
	.quad	.L95
	.section	.text._ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_,comdat
.L98:
	.loc 2 190 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumDecImEEvT_NS0_10AttributesE
	.loc 2 197 25
	jmp	.L101
.L100:
	.loc 2 201 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumBinImEEvT_NS0_10AttributesE
	.loc 2 208 25
	jmp	.L101
.L95:
	.loc 2 212 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumHexImEEvT_NS0_10AttributesE
	.loc 2 219 25
	jmp	.L101
.L99:
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
	jmp	.L101
.L97:
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
	jmp	.L101
.L94:
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
	jmp	.L91
.L101:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 252 34
	movq	-8(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 253 21
	jmp	.L90
.L92:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L91:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L103
.L90:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	_ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_, .-_ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_
	.section	.text._ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_:
.LFB51:
	.loc 2 173 21
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
	.loc 2 175 13
	jmp	.L105
.L117:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L106
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L106
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L107
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L105
.L107:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L108
	movl	%eax, %eax
	movq	.L110(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_,comdat
	.align 8
	.align 4
.L110:
	.quad	.L114
	.quad	.L113
	.quad	.L112
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L111
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L108
	.quad	.L109
	.section	.text._ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_,comdat
.L112:
	.loc 2 190 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumDecImEEvT_NS0_10AttributesE
	.loc 2 197 25
	jmp	.L115
.L114:
	.loc 2 201 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumBinImEEvT_NS0_10AttributesE
	.loc 2 208 25
	jmp	.L115
.L109:
	.loc 2 212 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumHexImEEvT_NS0_10AttributesE
	.loc 2 219 25
	jmp	.L115
.L113:
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
	jmp	.L115
.L111:
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
	jmp	.L115
.L108:
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
	jmp	.L105
.L115:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 250 34
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_
	.loc 2 253 21
	jmp	.L104
.L106:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L105:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L117
.L104:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	_ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_, .-_ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_
	.section	.text._ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE,"axG",@progbits,_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE,comdat
	.weak	_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE
	.type	_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE, @function
_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE:
.LFB52:
	.loc 2 107 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movb	%al, -44(%rbp)
	.loc 2 109 13
	cmpq	$0, -40(%rbp)
	jne	.L119
	.loc 2 111 24
	movzbl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	$48, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	jmp	.L118
.L119:
	.loc 2 114 38
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rdx
	.loc 2 114 51
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rax
	.loc 2 114 40
	imulq	%rax, %rdx
	.loc 2 114 71
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 2 114 20
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 121 20
	movq	$0, -8(%rbp)
	.loc 2 123 13
	jmp	.L121
.L122:
	.loc 2 125 50
	movq	-40(%rbp), %rcx
	movabsq	$-3689348814741910323, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	.loc 2 125 44
	movl	%edx, %eax
	addl	$48, %eax
	.loc 2 125 26
	movzbl	%al, %eax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movzbl	-44(%rbp), %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 2 126 21
	movq	-40(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -40(%rbp)
	.loc 2 127 17
	addq	$1, -8(%rbp)
.L121:
	.loc 2 123 24
	cmpq	$0, -40(%rbp)
	jne	.L122
.LBB10:
	.loc 2 132 25
	movq	$0, -16(%rbp)
	.loc 2 132 13
	jmp	.L123
.L124:
	.loc 2 134 68
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 134 55
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 134 61
	subq	-16(%rbp), %rdx
	.loc 2 134 68
	addq	%rdx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 134 70
	movzbl	(%rax), %eax
	.loc 2 134 34
	movb	%al, -26(%rbp)
	.loc 2 135 63
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 135 50
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 135 56
	subq	-16(%rbp), %rdx
	.loc 2 135 63
	addq	%rdx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 135 65
	movzbl	1(%rax), %eax
	.loc 2 135 29
	movb	%al, -25(%rbp)
	.loc 2 136 83
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 136 80
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 136 83
	addq	%rdx, %rdx
	addq	%rdx, %rax
	.loc 2 136 49
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	.loc 2 136 36
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 2 136 42
	subq	-16(%rbp), %rcx
	.loc 2 136 49
	addq	%rcx, %rcx
	subq	$2, %rcx
	addq	%rcx, %rdx
	.loc 2 136 85
	movzbl	(%rax), %eax
	.loc 2 136 61
	movb	%al, (%rdx)
	.loc 2 137 78
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 137 75
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 137 78
	addq	%rdx, %rdx
	addq	%rdx, %rax
	.loc 2 137 49
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	.loc 2 137 36
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 2 137 42
	subq	-16(%rbp), %rcx
	.loc 2 137 49
	addq	%rcx, %rcx
	subq	$2, %rcx
	addq	%rcx, %rdx
	.loc 2 137 80
	movzbl	1(%rax), %eax
	.loc 2 137 56
	movb	%al, 1(%rdx)
	.loc 2 138 37
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 138 34
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 138 37
	addq	%rdx, %rdx
	addq	%rax, %rdx
	.loc 2 138 58
	movzbl	-26(%rbp), %eax
	.loc 2 138 49
	movb	%al, (%rdx)
	.loc 2 139 37
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 139 34
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 139 37
	addq	%rdx, %rdx
	addq	%rax, %rdx
	.loc 2 139 53
	movzbl	-25(%rbp), %eax
	.loc 2 139 44
	movb	%al, 1(%rdx)
	.loc 2 132 13 discriminator 3
	addq	$1, -16(%rbp)
.L123:
	.loc 2 132 42 discriminator 1
	movq	-8(%rbp), %rax
	shrq	%rax
	.loc 2 132 34 discriminator 1
	cmpq	%rax, -16(%rbp)
	jb	.L124
.LBE10:
	.loc 2 142 34
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 142 54
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rdi
	.loc 2 142 43
	movl	$0, %edx
	divq	%rdi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	.loc 2 142 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 2 143 34
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 143 54
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rdi
	.loc 2 143 43
	movl	$0, %edx
	divq	%rdi
	.loc 2 143 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 2 144 33
	call	_ZN6Kernel7Console20updateHardwareCursorEv
.L118:
	.loc 2 145 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE, .-_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE
	.section	.rodata
.LC47:
	.string	"0b"
	.section	.text._ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE,"axG",@progbits,_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE,comdat
	.weak	_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE
	.type	_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE, @function
_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE:
.LFB53:
	.loc 2 83 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movb	%al, -44(%rbp)
	.loc 2 85 22
	movzbl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	$.LC47, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 86 24
	movq	$64, -24(%rbp)
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
	jmp	.L126
.L129:
	.loc 2 92 26
	movq	-40(%rbp), %rax
	.loc 2 92 17
	testq	%rax, %rax
	js	.L132
	.loc 2 94 21
	salq	-40(%rbp)
	.loc 2 90 13
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L126:
	.loc 2 90 22 discriminator 1
	cmpq	$63, -8(%rbp)
	jbe	.L129
	jmp	.L130
.L132:
	.loc 2 93 21
	nop
	.loc 2 96 13
	jmp	.L130
.L131:
	.loc 2 98 56
	movq	-40(%rbp), %rax
	shrq	$63, %rax
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
	movzbl	-44(%rbp), %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 2 99 21
	salq	-40(%rbp)
	.loc 2 96 13 discriminator 2
	addq	$1, -8(%rbp)
.L130:
	.loc 2 96 22 discriminator 1
	cmpq	$63, -8(%rbp)
	jbe	.L131
	.loc 2 101 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 101 43
	addq	$64, %rax
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
	addq	$64, %rax
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
.LFE53:
	.size	_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE, .-_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE
	.section	.rodata
.LC48:
	.string	"0x"
.LC49:
	.string	"0123456789ABCDEF"
	.section	.text._ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE,"axG",@progbits,_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE,comdat
	.weak	_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE
	.type	_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE, @function
_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE:
.LFB54:
	.loc 2 148 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movb	%al, -44(%rbp)
	.loc 2 150 22
	movzbl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	$.LC48, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 151 24
	movq	$64, -24(%rbp)
	.loc 2 152 38
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rdx
	.loc 2 152 51
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rax
	.loc 2 152 40
	imulq	%rax, %rdx
	.loc 2 152 71
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 2 152 20
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 153 20
	movq	$0, -8(%rbp)
	.loc 2 154 20
	movq	$0, -16(%rbp)
	.loc 2 155 13
	jmp	.L134
.L137:
	.loc 2 157 26
	movq	-40(%rbp), %rax
	shrq	$60, %rax
	.loc 2 157 17
	testq	%rax, %rax
	jne	.L140
	.loc 2 159 21
	salq	$4, -40(%rbp)
	.loc 2 155 13
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L134:
	.loc 2 155 22 discriminator 1
	cmpq	$15, -8(%rbp)
	jbe	.L137
	jmp	.L138
.L140:
	.loc 2 158 21
	nop
	.loc 2 161 13
	jmp	.L138
.L139:
	.loc 2 163 69
	movq	-40(%rbp), %rax
	shrq	$60, %rax
	.loc 2 163 63
	movzbl	.LC49(%rax), %eax
	.loc 2 163 26
	movzbl	%al, %eax
	.loc 2 163 29
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	subq	-16(%rbp), %rcx
	.loc 2 163 26
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movzbl	-44(%rbp), %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 2 164 21
	salq	$4, -40(%rbp)
	.loc 2 161 13 discriminator 2
	addq	$1, -8(%rbp)
.L138:
	.loc 2 161 22 discriminator 1
	cmpq	$15, -8(%rbp)
	jbe	.L139
	.loc 2 166 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 166 43
	addq	$16, %rax
	.loc 2 166 66
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rsi
	.loc 2 166 55
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	.loc 2 166 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 2 167 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 167 43
	addq	$16, %rax
	.loc 2 167 66
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rdi
	.loc 2 167 55
	movl	$0, %edx
	divq	%rdi
	.loc 2 167 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 2 168 33
	call	_ZN6Kernel7Console20updateHardwareCursorEv
	.loc 2 169 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE, .-_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE
	.section	.text._ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE,"axG",@progbits,_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE,comdat
	.weak	_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE
	.type	_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE, @function
_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE:
.LFB55:
	.loc 2 107 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, %eax
	movb	%al, -40(%rbp)
	.loc 2 109 13
	cmpl	$0, -36(%rbp)
	jne	.L142
	.loc 2 111 24
	movzbl	-40(%rbp), %eax
	movl	%eax, %esi
	movl	$48, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	jmp	.L141
.L142:
	.loc 2 114 38
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rdx
	.loc 2 114 51
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rax
	.loc 2 114 40
	imulq	%rax, %rdx
	.loc 2 114 71
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 2 114 20
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 121 20
	movq	$0, -8(%rbp)
	.loc 2 123 13
	jmp	.L144
.L145:
	.loc 2 125 50
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 2 125 44
	movl	%edx, %eax
	addl	$48, %eax
	.loc 2 125 26
	movzbl	%al, %eax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movzbl	-40(%rbp), %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 2 126 21
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$3, %eax
	movl	%eax, -36(%rbp)
	.loc 2 127 17
	addq	$1, -8(%rbp)
.L144:
	.loc 2 123 24
	cmpl	$0, -36(%rbp)
	jne	.L145
.LBB11:
	.loc 2 132 25
	movq	$0, -16(%rbp)
	.loc 2 132 13
	jmp	.L146
.L147:
	.loc 2 134 68
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 134 55
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 134 61
	subq	-16(%rbp), %rdx
	.loc 2 134 68
	addq	%rdx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 134 70
	movzbl	(%rax), %eax
	.loc 2 134 34
	movb	%al, -26(%rbp)
	.loc 2 135 63
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 135 50
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 135 56
	subq	-16(%rbp), %rdx
	.loc 2 135 63
	addq	%rdx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 135 65
	movzbl	1(%rax), %eax
	.loc 2 135 29
	movb	%al, -25(%rbp)
	.loc 2 136 83
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 136 80
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 136 83
	addq	%rdx, %rdx
	addq	%rdx, %rax
	.loc 2 136 49
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	.loc 2 136 36
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 2 136 42
	subq	-16(%rbp), %rcx
	.loc 2 136 49
	addq	%rcx, %rcx
	subq	$2, %rcx
	addq	%rcx, %rdx
	.loc 2 136 85
	movzbl	(%rax), %eax
	.loc 2 136 61
	movb	%al, (%rdx)
	.loc 2 137 78
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 137 75
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 137 78
	addq	%rdx, %rdx
	addq	%rdx, %rax
	.loc 2 137 49
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	.loc 2 137 36
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 2 137 42
	subq	-16(%rbp), %rcx
	.loc 2 137 49
	addq	%rcx, %rcx
	subq	$2, %rcx
	addq	%rcx, %rdx
	.loc 2 137 80
	movzbl	1(%rax), %eax
	.loc 2 137 56
	movb	%al, 1(%rdx)
	.loc 2 138 37
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 138 34
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 138 37
	addq	%rdx, %rdx
	addq	%rax, %rdx
	.loc 2 138 58
	movzbl	-26(%rbp), %eax
	.loc 2 138 49
	movb	%al, (%rdx)
	.loc 2 139 37
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 139 34
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 139 37
	addq	%rdx, %rdx
	addq	%rax, %rdx
	.loc 2 139 53
	movzbl	-25(%rbp), %eax
	.loc 2 139 44
	movb	%al, 1(%rdx)
	.loc 2 132 13 discriminator 3
	addq	$1, -16(%rbp)
.L146:
	.loc 2 132 42 discriminator 1
	movq	-8(%rbp), %rax
	shrq	%rax
	.loc 2 132 34 discriminator 1
	cmpq	%rax, -16(%rbp)
	jb	.L147
.LBE11:
	.loc 2 142 34
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 142 54
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rdi
	.loc 2 142 43
	movl	$0, %edx
	divq	%rdi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	.loc 2 142 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 2 143 34
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 143 54
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rdi
	.loc 2 143 43
	movl	$0, %edx
	divq	%rdi
	.loc 2 143 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 2 144 33
	call	_ZN6Kernel7Console20updateHardwareCursorEv
.L141:
	.loc 2 145 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE, .-_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE
	.section	.text._ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE,"axG",@progbits,_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE,comdat
	.weak	_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE
	.type	_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE, @function
_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE:
.LFB56:
	.loc 2 83 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, %eax
	movb	%al, -40(%rbp)
	.loc 2 85 22
	movzbl	-40(%rbp), %eax
	movl	%eax, %esi
	movq	$.LC47, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 86 24
	movq	$32, -24(%rbp)
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
	jmp	.L149
.L152:
	.loc 2 92 26
	movl	-36(%rbp), %eax
	.loc 2 92 17
	testl	%eax, %eax
	js	.L155
	.loc 2 94 21
	sall	-36(%rbp)
	.loc 2 90 13
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L149:
	.loc 2 90 22 discriminator 1
	cmpq	$31, -8(%rbp)
	jbe	.L152
	jmp	.L153
.L155:
	.loc 2 93 21
	nop
	.loc 2 96 13
	jmp	.L153
.L154:
	.loc 2 98 56
	movl	-36(%rbp), %eax
	shrl	$31, %eax
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
	sall	-36(%rbp)
	.loc 2 96 13 discriminator 2
	addq	$1, -8(%rbp)
.L153:
	.loc 2 96 22 discriminator 1
	cmpq	$31, -8(%rbp)
	jbe	.L154
	.loc 2 101 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 101 43
	addq	$32, %rax
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
	addq	$32, %rax
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
.LFE56:
	.size	_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE, .-_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE
	.section	.text._ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE,"axG",@progbits,_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE,comdat
	.weak	_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE
	.type	_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE, @function
_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE:
.LFB57:
	.loc 2 148 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, %eax
	movb	%al, -40(%rbp)
	.loc 2 150 22
	movzbl	-40(%rbp), %eax
	movl	%eax, %esi
	movq	$.LC48, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 151 24
	movq	$32, -24(%rbp)
	.loc 2 152 38
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rdx
	.loc 2 152 51
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rax
	.loc 2 152 40
	imulq	%rax, %rdx
	.loc 2 152 71
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 2 152 20
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 153 20
	movq	$0, -8(%rbp)
	.loc 2 154 20
	movq	$0, -16(%rbp)
	.loc 2 155 13
	jmp	.L157
.L160:
	.loc 2 157 26
	movl	-36(%rbp), %eax
	shrl	$28, %eax
	.loc 2 157 17
	testl	%eax, %eax
	jne	.L163
	.loc 2 159 21
	sall	$4, -36(%rbp)
	.loc 2 155 13
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L157:
	.loc 2 155 22 discriminator 1
	cmpq	$7, -8(%rbp)
	jbe	.L160
	jmp	.L161
.L163:
	.loc 2 158 21
	nop
	.loc 2 161 13
	jmp	.L161
.L162:
	.loc 2 163 69
	movl	-36(%rbp), %eax
	shrl	$28, %eax
	.loc 2 163 63
	movl	%eax, %eax
	movzbl	.LC49(%rax), %eax
	.loc 2 163 26
	movzbl	%al, %eax
	.loc 2 163 29
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	subq	-16(%rbp), %rcx
	.loc 2 163 26
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movzbl	-40(%rbp), %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 2 164 21
	sall	$4, -36(%rbp)
	.loc 2 161 13 discriminator 2
	addq	$1, -8(%rbp)
.L161:
	.loc 2 161 22 discriminator 1
	cmpq	$7, -8(%rbp)
	jbe	.L162
	.loc 2 166 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 166 43
	addq	$8, %rax
	.loc 2 166 66
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rsi
	.loc 2 166 55
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	.loc 2 166 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 2 167 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 167 43
	addq	$8, %rax
	.loc 2 167 66
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rdi
	.loc 2 167 55
	movl	$0, %edx
	divq	%rdi
	.loc 2 167 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 2 168 33
	call	_ZN6Kernel7Console20updateHardwareCursorEv
	.loc 2 169 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE, .-_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE
	.section	.text._ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_:
.LFB58:
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
	jmp	.L165
.L177:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L166
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L166
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L167
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L165
.L167:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L168
	movl	%eax, %eax
	movq	.L170(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_,comdat
	.align 8
	.align 4
.L170:
	.quad	.L174
	.quad	.L173
	.quad	.L172
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L171
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L169
	.section	.text._ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_,comdat
.L172:
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
	jmp	.L175
.L174:
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
	jmp	.L175
.L169:
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
	jmp	.L175
.L173:
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
	jmp	.L175
.L171:
	.loc 2 234 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 241 25
	jmp	.L175
.L168:
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
	jmp	.L165
.L175:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 252 34
	movq	-8(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 253 21
	jmp	.L164
.L166:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L165:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L177
.L164:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_, .-_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_
	.section	.text._ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_:
.LFB59:
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
	jmp	.L179
.L191:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L180
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L180
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L181
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L179
.L181:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L182
	movl	%eax, %eax
	movq	.L184(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_,comdat
	.align 8
	.align 4
.L184:
	.quad	.L188
	.quad	.L187
	.quad	.L186
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L185
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L182
	.quad	.L183
	.section	.text._ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_,comdat
.L186:
	.loc 2 190 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE
	.loc 2 197 25
	jmp	.L189
.L188:
	.loc 2 201 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE
	.loc 2 208 25
	jmp	.L189
.L183:
	.loc 2 212 38
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE
	.loc 2 219 25
	jmp	.L189
.L187:
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
	jmp	.L189
.L185:
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
	jmp	.L189
.L182:
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
	jmp	.L179
.L189:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 252 34
	movq	-8(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 253 21
	jmp	.L178
.L180:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L179:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L191
.L178:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	_ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_, .-_ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_
	.section	.text._ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_:
.LFB60:
	.loc 2 173 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	.loc 2 175 13
	jmp	.L193
.L205:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L194
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L194
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L195
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L193
.L195:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L196
	movl	%eax, %eax
	movq	.L198(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_,comdat
	.align 8
	.align 4
.L198:
	.quad	.L202
	.quad	.L201
	.quad	.L200
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L199
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L196
	.quad	.L197
	.section	.text._ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_,comdat
.L200:
	.loc 2 190 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE
	.loc 2 197 25
	jmp	.L203
.L202:
	.loc 2 201 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE
	.loc 2 208 25
	jmp	.L203
.L197:
	.loc 2 212 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE
	.loc 2 219 25
	jmp	.L203
.L201:
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
	jmp	.L203
.L199:
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
	jmp	.L203
.L196:
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
	jmp	.L193
.L203:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 250 34
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_
	.loc 2 253 21
	jmp	.L192
.L194:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L193:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L205
.L192:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	_ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_, .-_ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_
	.section	.text._ZN6Kernel7Console9putNumDecImEEvT_NS0_10AttributesE,"axG",@progbits,_ZN6Kernel7Console9putNumDecImEEvT_NS0_10AttributesE,comdat
	.weak	_ZN6Kernel7Console9putNumDecImEEvT_NS0_10AttributesE
	.type	_ZN6Kernel7Console9putNumDecImEEvT_NS0_10AttributesE, @function
_ZN6Kernel7Console9putNumDecImEEvT_NS0_10AttributesE:
.LFB61:
	.loc 2 107 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movb	%al, -44(%rbp)
	.loc 2 109 13
	cmpq	$0, -40(%rbp)
	jne	.L207
	.loc 2 111 24
	movzbl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	$48, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	jmp	.L206
.L207:
	.loc 2 114 38
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rdx
	.loc 2 114 51
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rax
	.loc 2 114 40
	imulq	%rax, %rdx
	.loc 2 114 71
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 2 114 20
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 121 20
	movq	$0, -8(%rbp)
	.loc 2 123 13
	jmp	.L209
.L210:
	.loc 2 125 50
	movq	-40(%rbp), %rcx
	movabsq	$-3689348814741910323, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	.loc 2 125 44
	movl	%edx, %eax
	addl	$48, %eax
	.loc 2 125 26
	movzbl	%al, %eax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movzbl	-44(%rbp), %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 2 126 21
	movq	-40(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -40(%rbp)
	.loc 2 127 17
	addq	$1, -8(%rbp)
.L209:
	.loc 2 123 24
	cmpq	$0, -40(%rbp)
	jne	.L210
.LBB12:
	.loc 2 132 25
	movq	$0, -16(%rbp)
	.loc 2 132 13
	jmp	.L211
.L212:
	.loc 2 134 68
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 134 55
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 134 61
	subq	-16(%rbp), %rdx
	.loc 2 134 68
	addq	%rdx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 134 70
	movzbl	(%rax), %eax
	.loc 2 134 34
	movb	%al, -26(%rbp)
	.loc 2 135 63
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 135 50
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 135 56
	subq	-16(%rbp), %rdx
	.loc 2 135 63
	addq	%rdx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 135 65
	movzbl	1(%rax), %eax
	.loc 2 135 29
	movb	%al, -25(%rbp)
	.loc 2 136 83
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 136 80
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 136 83
	addq	%rdx, %rdx
	addq	%rdx, %rax
	.loc 2 136 49
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	.loc 2 136 36
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 2 136 42
	subq	-16(%rbp), %rcx
	.loc 2 136 49
	addq	%rcx, %rcx
	subq	$2, %rcx
	addq	%rcx, %rdx
	.loc 2 136 85
	movzbl	(%rax), %eax
	.loc 2 136 61
	movb	%al, (%rdx)
	.loc 2 137 78
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 137 75
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 137 78
	addq	%rdx, %rdx
	addq	%rdx, %rax
	.loc 2 137 49
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rdx
	.loc 2 137 36
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 2 137 42
	subq	-16(%rbp), %rcx
	.loc 2 137 49
	addq	%rcx, %rcx
	subq	$2, %rcx
	addq	%rcx, %rdx
	.loc 2 137 80
	movzbl	1(%rax), %eax
	.loc 2 137 56
	movb	%al, 1(%rdx)
	.loc 2 138 37
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 138 34
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 138 37
	addq	%rdx, %rdx
	addq	%rax, %rdx
	.loc 2 138 58
	movzbl	-26(%rbp), %eax
	.loc 2 138 49
	movb	%al, (%rdx)
	.loc 2 139 37
	movq	_ZN6Kernel7Console12s_vgaAddressE(%rip), %rax
	.loc 2 139 34
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 139 37
	addq	%rdx, %rdx
	addq	%rax, %rdx
	.loc 2 139 53
	movzbl	-25(%rbp), %eax
	.loc 2 139 44
	movb	%al, 1(%rdx)
	.loc 2 132 13 discriminator 3
	addq	$1, -16(%rbp)
.L211:
	.loc 2 132 42 discriminator 1
	movq	-8(%rbp), %rax
	shrq	%rax
	.loc 2 132 34 discriminator 1
	cmpq	%rax, -16(%rbp)
	jb	.L212
.LBE12:
	.loc 2 142 34
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 142 54
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rdi
	.loc 2 142 43
	movl	$0, %edx
	divq	%rdi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	.loc 2 142 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 2 143 34
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 143 54
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rdi
	.loc 2 143 43
	movl	$0, %edx
	divq	%rdi
	.loc 2 143 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 2 144 33
	call	_ZN6Kernel7Console20updateHardwareCursorEv
.L206:
	.loc 2 145 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	_ZN6Kernel7Console9putNumDecImEEvT_NS0_10AttributesE, .-_ZN6Kernel7Console9putNumDecImEEvT_NS0_10AttributesE
	.section	.text._ZN6Kernel7Console9putNumBinImEEvT_NS0_10AttributesE,"axG",@progbits,_ZN6Kernel7Console9putNumBinImEEvT_NS0_10AttributesE,comdat
	.weak	_ZN6Kernel7Console9putNumBinImEEvT_NS0_10AttributesE
	.type	_ZN6Kernel7Console9putNumBinImEEvT_NS0_10AttributesE, @function
_ZN6Kernel7Console9putNumBinImEEvT_NS0_10AttributesE:
.LFB62:
	.loc 2 83 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movb	%al, -44(%rbp)
	.loc 2 85 22
	movzbl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	$.LC47, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 86 24
	movq	$64, -24(%rbp)
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
	jmp	.L214
.L217:
	.loc 2 92 26
	movq	-40(%rbp), %rax
	.loc 2 92 17
	testq	%rax, %rax
	js	.L220
	.loc 2 94 21
	salq	-40(%rbp)
	.loc 2 90 13
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L214:
	.loc 2 90 22 discriminator 1
	cmpq	$63, -8(%rbp)
	jbe	.L217
	jmp	.L218
.L220:
	.loc 2 93 21
	nop
	.loc 2 96 13
	jmp	.L218
.L219:
	.loc 2 98 56
	movq	-40(%rbp), %rax
	shrq	$63, %rax
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
	movzbl	-44(%rbp), %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 2 99 21
	salq	-40(%rbp)
	.loc 2 96 13 discriminator 2
	addq	$1, -8(%rbp)
.L218:
	.loc 2 96 22 discriminator 1
	cmpq	$63, -8(%rbp)
	jbe	.L219
	.loc 2 101 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 101 43
	addq	$64, %rax
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
	addq	$64, %rax
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
.LFE62:
	.size	_ZN6Kernel7Console9putNumBinImEEvT_NS0_10AttributesE, .-_ZN6Kernel7Console9putNumBinImEEvT_NS0_10AttributesE
	.section	.text._ZN6Kernel7Console9putNumHexImEEvT_NS0_10AttributesE,"axG",@progbits,_ZN6Kernel7Console9putNumHexImEEvT_NS0_10AttributesE,comdat
	.weak	_ZN6Kernel7Console9putNumHexImEEvT_NS0_10AttributesE
	.type	_ZN6Kernel7Console9putNumHexImEEvT_NS0_10AttributesE, @function
_ZN6Kernel7Console9putNumHexImEEvT_NS0_10AttributesE:
.LFB63:
	.loc 2 148 21
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movb	%al, -44(%rbp)
	.loc 2 150 22
	movzbl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	$.LC48, %rdi
	call	_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE
	.loc 2 151 24
	movq	$64, -24(%rbp)
	.loc 2 152 38
	movq	_ZN6Kernel7Console11s_cursorPosE+8(%rip), %rdx
	.loc 2 152 51
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rax
	.loc 2 152 40
	imulq	%rax, %rdx
	.loc 2 152 71
	movq	_ZN6Kernel7Console11s_cursorPosE(%rip), %rax
	.loc 2 152 20
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 153 20
	movq	$0, -8(%rbp)
	.loc 2 154 20
	movq	$0, -16(%rbp)
	.loc 2 155 13
	jmp	.L222
.L225:
	.loc 2 157 26
	movq	-40(%rbp), %rax
	shrq	$60, %rax
	.loc 2 157 17
	testq	%rax, %rax
	jne	.L228
	.loc 2 159 21
	salq	$4, -40(%rbp)
	.loc 2 155 13
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L222:
	.loc 2 155 22 discriminator 1
	cmpq	$15, -8(%rbp)
	jbe	.L225
	jmp	.L226
.L228:
	.loc 2 158 21
	nop
	.loc 2 161 13
	jmp	.L226
.L227:
	.loc 2 163 69
	movq	-40(%rbp), %rax
	shrq	$60, %rax
	.loc 2 163 63
	movzbl	.LC49(%rax), %eax
	.loc 2 163 26
	movzbl	%al, %eax
	.loc 2 163 29
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	subq	-16(%rbp), %rcx
	.loc 2 163 26
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movzbl	-44(%rbp), %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE
	.loc 2 164 21
	salq	$4, -40(%rbp)
	.loc 2 161 13 discriminator 2
	addq	$1, -8(%rbp)
.L226:
	.loc 2 161 22 discriminator 1
	cmpq	$15, -8(%rbp)
	jbe	.L227
	.loc 2 166 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 166 43
	addq	$16, %rax
	.loc 2 166 66
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rsi
	.loc 2 166 55
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	.loc 2 166 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE(%rip)
	.loc 2 167 34
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 167 43
	addq	$16, %rax
	.loc 2 167 66
	movq	_ZN6Kernel7Console8s_extentE(%rip), %rdi
	.loc 2 167 55
	movl	$0, %edx
	divq	%rdi
	.loc 2 167 27
	movq	%rax, _ZN6Kernel7Console11s_cursorPosE+8(%rip)
	.loc 2 168 33
	call	_ZN6Kernel7Console20updateHardwareCursorEv
	.loc 2 169 9
	nop
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	_ZN6Kernel7Console9putNumHexImEEvT_NS0_10AttributesE, .-_ZN6Kernel7Console9putNumHexImEEvT_NS0_10AttributesE
	.section	.text._ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_:
.LFB64:
	.loc 2 173 21
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
	movq	%rcx, -32(%rbp)
	.loc 2 175 13
	jmp	.L230
.L242:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L231
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L231
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L232
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L230
.L232:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L233
	movl	%eax, %eax
	movq	.L235(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_,comdat
	.align 8
	.align 4
.L235:
	.quad	.L239
	.quad	.L238
	.quad	.L237
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L236
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L233
	.quad	.L234
	.section	.text._ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_,comdat
.L237:
	.loc 2 190 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE
	.loc 2 197 25
	jmp	.L240
.L239:
	.loc 2 201 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE
	.loc 2 208 25
	jmp	.L240
.L234:
	.loc 2 212 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE
	.loc 2 219 25
	jmp	.L240
.L238:
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
	jmp	.L240
.L236:
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
	jmp	.L240
.L233:
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
	jmp	.L230
.L240:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 250 34
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_
	.loc 2 253 21
	jmp	.L229
.L231:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L230:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L242
.L229:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	_ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_, .-_ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_
	.section	.text._ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_,comdat
	.weak	_ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_
	.type	_ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_, @function
_ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_:
.LFB65:
	.loc 2 173 21
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
	.loc 2 175 13
	jmp	.L244
.L256:
	.loc 2 177 26
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 177 17
	cmpb	$37, %al
	jne	.L245
	.loc 2 177 42 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 177 33 discriminator 1
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L245
	.loc 2 179 34
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	sete	%al
	.loc 2 179 21
	testb	%al, %al
	je	.L246
	.loc 2 181 32
	movl	$15, %esi
	movl	$37, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 182 25
	addq	$1, -8(%rbp)
	.loc 2 183 25
	jmp	.L244
.L246:
	.loc 2 185 21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L247
	movl	%eax, %eax
	movq	.L249(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata._ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_,"aG",@progbits,_ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_,comdat
	.align 8
	.align 4
.L249:
	.quad	.L253
	.quad	.L252
	.quad	.L251
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L250
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L247
	.quad	.L248
	.section	.text._ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_,"axG",@progbits,_ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_,comdat
.L251:
	.loc 2 190 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE
	.loc 2 197 25
	jmp	.L254
.L253:
	.loc 2 201 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE
	.loc 2 208 25
	jmp	.L254
.L248:
	.loc 2 212 38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE
	.loc 2 219 25
	jmp	.L254
.L252:
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
	jmp	.L254
.L250:
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
	jmp	.L254
.L247:
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
	jmp	.L244
.L254:
	.loc 2 248 21
	addq	$1, -8(%rbp)
	.loc 2 250 34
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_
	.loc 2 253 21
	jmp	.L243
.L245:
	.loc 2 257 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	_ZN6Kernel7Console7putCharEhNS0_10AttributesE
	.loc 2 259 17
	addq	$1, -8(%rbp)
.L244:
	.loc 2 175 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L256
.L243:
	.loc 2 261 9
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	_ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_, .-_ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_
	.section	.rodata
	.type	_ZSt9is_enum_vIN6Kernel14HeapLinkedList10BlockFlagsEE, @object
	.size	_ZSt9is_enum_vIN6Kernel14HeapLinkedList10BlockFlagsEE, 1
_ZSt9is_enum_vIN6Kernel14HeapLinkedList10BlockFlagsEE:
	.byte	1
	.type	_ZSt13is_integral_vIyE, @object
	.size	_ZSt13is_integral_vIyE, 1
_ZSt13is_integral_vIyE:
	.byte	1
	.type	_ZSt9is_same_vIycE, @object
	.size	_ZSt9is_same_vIycE, 1
_ZSt9is_same_vIycE:
	.zero	1
	.type	_ZSt9is_same_vIyPKcE, @object
	.size	_ZSt9is_same_vIyPKcE, 1
_ZSt9is_same_vIyPKcE:
	.zero	1
	.type	_ZSt13is_integral_vIjE, @object
	.size	_ZSt13is_integral_vIjE, 1
_ZSt13is_integral_vIjE:
	.byte	1
	.type	_ZSt9is_same_vIjcE, @object
	.size	_ZSt9is_same_vIjcE, 1
_ZSt9is_same_vIjcE:
	.zero	1
	.type	_ZSt9is_same_vIjPKcE, @object
	.size	_ZSt9is_same_vIjPKcE, 1
_ZSt9is_same_vIjPKcE:
	.zero	1
	.type	_ZSt13is_integral_vImE, @object
	.size	_ZSt13is_integral_vImE, 1
_ZSt13is_integral_vImE:
	.byte	1
	.type	_ZSt9is_same_vImcE, @object
	.size	_ZSt9is_same_vImcE, 1
_ZSt9is_same_vImcE:
	.zero	1
	.type	_ZSt9is_same_vImPKcE, @object
	.size	_ZSt9is_same_vImPKcE, 1
_ZSt9is_same_vImPKcE:
	.zero	1
	.type	_ZSt13is_integral_vIPKcE, @object
	.size	_ZSt13is_integral_vIPKcE, 1
_ZSt13is_integral_vIPKcE:
	.zero	1
	.type	_ZSt9is_same_vIPKccE, @object
	.size	_ZSt9is_same_vIPKccE, 1
_ZSt9is_same_vIPKccE:
	.zero	1
	.type	_ZSt9is_same_vIPKcS1_E, @object
	.size	_ZSt9is_same_vIPKcS1_E, 1
_ZSt9is_same_vIPKcS1_E:
	.byte	1
	.text
.Letext0:
	.file 3 "src/kernel/../../include/Types.h"
	.file 4 "src/kernel/../../include/Heap.h"
	.file 5 "src/kernel/../../include/MemoryMap.h"
	.file 6 "src/kernel/../../include/Utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1d27
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x3a
	.long	.LASF733
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL0
	.quad	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x24
	.long	.LASF441
	.byte	0x5
	.byte	0x17
	.long	0x3e
	.uleb128 0x17
	.long	0x2e
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.long	.LASF439
	.uleb128 0x17
	.long	0x3e
	.uleb128 0x12
	.byte	0x8
	.byte	0x5
	.long	.LASF440
	.uleb128 0x24
	.long	.LASF442
	.byte	0x8
	.byte	0x17
	.long	0x5c
	.uleb128 0x12
	.byte	0x1
	.byte	0x8
	.long	.LASF443
	.uleb128 0x12
	.byte	0x2
	.byte	0x7
	.long	.LASF444
	.uleb128 0x24
	.long	.LASF445
	.byte	0xa
	.byte	0x16
	.long	0x75
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.long	.LASF446
	.uleb128 0x24
	.long	.LASF447
	.byte	0xb
	.byte	0x1c
	.long	0x87
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.long	.LASF448
	.uleb128 0x12
	.byte	0x1
	.byte	0x6
	.long	.LASF449
	.uleb128 0x12
	.byte	0x2
	.byte	0x5
	.long	.LASF450
	.uleb128 0x3b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x12
	.byte	0x8
	.byte	0x5
	.long	.LASF451
	.uleb128 0x3c
	.string	"std"
	.byte	0x3
	.byte	0x14
	.byte	0xb
	.long	0x13e
	.uleb128 0x1d
	.long	.LASF452
	.byte	0xd5
	.long	0x145
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF453
	.byte	0x47
	.long	0x145
	.byte	0x1
	.uleb128 0x18
	.long	.LASF454
	.long	0x145
	.byte	0
	.uleb128 0x18
	.long	.LASF454
	.long	0x145
	.byte	0
	.uleb128 0x1d
	.long	.LASF453
	.byte	0x47
	.long	0x145
	.byte	0x1
	.uleb128 0x18
	.long	.LASF454
	.long	0x145
	.byte	0
	.uleb128 0x18
	.long	.LASF454
	.long	0x145
	.byte	0
	.uleb128 0x1d
	.long	.LASF453
	.byte	0x47
	.long	0x145
	.byte	0x1
	.uleb128 0x18
	.long	.LASF454
	.long	0x145
	.byte	0
	.uleb128 0x18
	.long	.LASF454
	.long	0x145
	.byte	0
	.uleb128 0x1d
	.long	.LASF453
	.byte	0x47
	.long	0x145
	.byte	0
	.uleb128 0x18
	.long	.LASF454
	.long	0x145
	.byte	0
	.uleb128 0x18
	.long	.LASF454
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.byte	0x2
	.long	.LASF455
	.uleb128 0x17
	.long	0x13e
	.uleb128 0x2d
	.long	.LASF456
	.byte	0x2
	.byte	0x7
	.long	0xdf5
	.uleb128 0x2e
	.long	.LASF688
	.byte	0x1
	.byte	0x2
	.byte	0x9
	.long	0x924
	.uleb128 0x2f
	.long	.LASF581
	.byte	0x1
	.long	0x51
	.byte	0x2
	.byte	0xc
	.long	0x226
	.uleb128 0x2
	.long	.LASF457
	.byte	0
	.uleb128 0x2
	.long	.LASF458
	.byte	0x1
	.uleb128 0x2
	.long	.LASF459
	.byte	0x2
	.uleb128 0x2
	.long	.LASF460
	.byte	0x3
	.uleb128 0x2
	.long	.LASF461
	.byte	0x4
	.uleb128 0x2
	.long	.LASF462
	.byte	0x5
	.uleb128 0x2
	.long	.LASF463
	.byte	0x6
	.uleb128 0x2
	.long	.LASF464
	.byte	0x7
	.uleb128 0x2
	.long	.LASF465
	.byte	0x8
	.uleb128 0x2
	.long	.LASF466
	.byte	0x9
	.uleb128 0x2
	.long	.LASF467
	.byte	0xa
	.uleb128 0x2
	.long	.LASF468
	.byte	0xb
	.uleb128 0x2
	.long	.LASF469
	.byte	0xc
	.uleb128 0x2
	.long	.LASF470
	.byte	0xd
	.uleb128 0x2
	.long	.LASF471
	.byte	0xe
	.uleb128 0x2
	.long	.LASF472
	.byte	0xf
	.uleb128 0x2
	.long	.LASF473
	.byte	0x10
	.uleb128 0x2
	.long	.LASF474
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF475
	.byte	0x20
	.uleb128 0x2
	.long	.LASF476
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF477
	.byte	0x30
	.uleb128 0x2
	.long	.LASF478
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF479
	.byte	0x40
	.uleb128 0x2
	.long	.LASF480
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF481
	.byte	0x50
	.uleb128 0x2
	.long	.LASF482
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF483
	.byte	0x60
	.uleb128 0x2
	.long	.LASF484
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF485
	.byte	0x70
	.uleb128 0x2
	.long	.LASF486
	.byte	0x7f
	.byte	0
	.uleb128 0x1e
	.long	.LASF487
	.byte	0x10
	.byte	0x2
	.byte	0x2e
	.long	0x249
	.uleb128 0x25
	.string	"x"
	.byte	0x2
	.byte	0x30
	.byte	0x14
	.long	0x2e
	.byte	0
	.uleb128 0x25
	.string	"y"
	.byte	0x2
	.byte	0x31
	.byte	0x14
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x29
	.long	0x226
	.uleb128 0x17
	.long	0x249
	.uleb128 0x1e
	.long	.LASF488
	.byte	0x10
	.byte	0x2
	.byte	0x34
	.long	0x27a
	.uleb128 0x5
	.long	.LASF489
	.byte	0x2
	.byte	0x36
	.byte	0x14
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF490
	.byte	0x2
	.byte	0x37
	.byte	0x14
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.long	0x253
	.uleb128 0x1e
	.long	.LASF491
	.byte	0x2
	.byte	0x2
	.byte	0x3a
	.long	0x2a6
	.uleb128 0x5
	.long	.LASF492
	.byte	0x2
	.byte	0x3c
	.byte	0x15
	.long	0x51
	.byte	0
	.uleb128 0x5
	.long	.LASF493
	.byte	0x2
	.byte	0x3d
	.byte	0x18
	.long	0x161
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.long	0x27f
	.uleb128 0x1f
	.long	.LASF494
	.byte	0x2
	.byte	0x41
	.byte	0x22
	.long	.LASF496
	.long	0xdf5
	.uleb128 0x1f
	.long	.LASF495
	.byte	0x2
	.byte	0x42
	.byte	0x1d
	.long	.LASF497
	.long	0x27a
	.uleb128 0x1f
	.long	.LASF498
	.byte	0x2
	.byte	0x44
	.byte	0x23
	.long	.LASF499
	.long	0x249
	.uleb128 0x30
	.long	.LASF682
	.byte	0x2
	.byte	0x46
	.long	.LASF684
	.uleb128 0xd
	.long	.LASF500
	.byte	0x2
	.byte	0x49
	.long	.LASF502
	.long	0x305
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF501
	.byte	0x2
	.byte	0x4a
	.long	.LASF503
	.long	0x324
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF501
	.byte	0x2
	.byte	0x4b
	.long	.LASF504
	.long	0x343
	.uleb128 0x1
	.long	0xe10
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF505
	.byte	0x2
	.byte	0x4e
	.long	.LASF506
	.long	0x35d
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF507
	.byte	0x2
	.byte	0x4f
	.long	.LASF508
	.long	0x377
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF507
	.byte	0x2
	.byte	0x50
	.long	.LASF509
	.long	0x391
	.uleb128 0x1
	.long	0xe10
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xf
	.long	.LASF510
	.value	0x116
	.long	.LASF512
	.long	0x3ab
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xf
	.long	.LASF511
	.value	0x117
	.long	.LASF513
	.long	0x3c5
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xf
	.long	.LASF511
	.value	0x119
	.long	.LASF514
	.long	0x3e4
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xf
	.long	.LASF515
	.value	0x11c
	.long	.LASF516
	.long	0x408
	.uleb128 0x1
	.long	0x226
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xf
	.long	.LASF515
	.value	0x11f
	.long	.LASF517
	.long	0x42c
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xf
	.long	.LASF518
	.value	0x122
	.long	.LASF519
	.long	0x441
	.uleb128 0x1
	.long	0x226
	.byte	0
	.uleb128 0x2a
	.long	.LASF520
	.value	0x123
	.byte	0x2a
	.long	.LASF522
	.long	0xe15
	.uleb128 0x2a
	.long	.LASF521
	.value	0x124
	.byte	0x1e
	.long	.LASF523
	.long	0xe1a
	.uleb128 0x2a
	.long	.LASF524
	.value	0x125
	.byte	0x1e
	.long	.LASF525
	.long	0xe1f
	.uleb128 0xf
	.long	.LASF526
	.value	0x127
	.long	.LASF527
	.long	0x486
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x13
	.long	.LASF528
	.long	.LASF530
	.long	0x4b8
	.uleb128 0x4
	.string	"T"
	.long	0x1123
	.uleb128 0x8
	.string	"Ts"
	.long	0x4a8
	.uleb128 0x3
	.long	0x1132
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x1132
	.byte	0
	.uleb128 0x13
	.long	.LASF529
	.long	.LASF531
	.long	0x4f4
	.uleb128 0x4
	.string	"T"
	.long	0x1123
	.uleb128 0x8
	.string	"Ts"
	.long	0x4df
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1132
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x1132
	.byte	0
	.uleb128 0xd
	.long	.LASF532
	.byte	0x2
	.byte	0x94
	.long	.LASF533
	.long	0x515
	.uleb128 0x4
	.string	"T"
	.long	0x3e
	.uleb128 0x1
	.long	0x3e
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF534
	.byte	0x2
	.byte	0x53
	.long	.LASF535
	.long	0x536
	.uleb128 0x4
	.string	"T"
	.long	0x3e
	.uleb128 0x1
	.long	0x3e
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF536
	.byte	0x2
	.byte	0x6b
	.long	.LASF537
	.long	0x557
	.uleb128 0x4
	.string	"T"
	.long	0x3e
	.uleb128 0x1
	.long	0x3e
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0x13
	.long	.LASF538
	.long	.LASF539
	.long	0x59d
	.uleb128 0x4
	.string	"T"
	.long	0x1123
	.uleb128 0x8
	.string	"Ts"
	.long	0x583
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1132
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x1132
	.byte	0
	.uleb128 0x13
	.long	.LASF540
	.long	.LASF541
	.long	0x5c0
	.uleb128 0x4
	.string	"T"
	.long	0x1128
	.uleb128 0x15
	.string	"Ts"
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x1128
	.byte	0
	.uleb128 0x13
	.long	.LASF542
	.long	.LASF543
	.long	0x5e3
	.uleb128 0x4
	.string	"T"
	.long	0x1132
	.uleb128 0x15
	.string	"Ts"
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x1132
	.byte	0
	.uleb128 0xd
	.long	.LASF544
	.byte	0x2
	.byte	0x94
	.long	.LASF545
	.long	0x604
	.uleb128 0x4
	.string	"T"
	.long	0x75
	.uleb128 0x1
	.long	0x75
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF546
	.byte	0x2
	.byte	0x53
	.long	.LASF547
	.long	0x625
	.uleb128 0x4
	.string	"T"
	.long	0x75
	.uleb128 0x1
	.long	0x75
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF548
	.byte	0x2
	.byte	0x6b
	.long	.LASF549
	.long	0x646
	.uleb128 0x4
	.string	"T"
	.long	0x75
	.uleb128 0x1
	.long	0x75
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF550
	.byte	0x2
	.byte	0x94
	.long	.LASF551
	.long	0x667
	.uleb128 0x4
	.string	"T"
	.long	0x87
	.uleb128 0x1
	.long	0x87
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF552
	.byte	0x2
	.byte	0x53
	.long	.LASF553
	.long	0x688
	.uleb128 0x4
	.string	"T"
	.long	0x87
	.uleb128 0x1
	.long	0x87
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0xd
	.long	.LASF554
	.byte	0x2
	.byte	0x6b
	.long	.LASF555
	.long	0x6a9
	.uleb128 0x4
	.string	"T"
	.long	0x87
	.uleb128 0x1
	.long	0x87
	.uleb128 0x1
	.long	0x161
	.byte	0
	.uleb128 0x13
	.long	.LASF556
	.long	.LASF557
	.long	0x6db
	.uleb128 0x4
	.string	"T"
	.long	0x112d
	.uleb128 0x8
	.string	"Ts"
	.long	0x6cb
	.uleb128 0x3
	.long	0x1123
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x112d
	.uleb128 0x1
	.long	0x1123
	.byte	0
	.uleb128 0x13
	.long	.LASF558
	.long	.LASF559
	.long	0x6fe
	.uleb128 0x4
	.string	"T"
	.long	0x112d
	.uleb128 0x15
	.string	"Ts"
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x112d
	.byte	0
	.uleb128 0x13
	.long	.LASF560
	.long	.LASF561
	.long	0x74e
	.uleb128 0x4
	.string	"T"
	.long	0x1128
	.uleb128 0x8
	.string	"Ts"
	.long	0x72f
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1132
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x1128
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x1123
	.uleb128 0x1
	.long	0x1132
	.byte	0
	.uleb128 0x13
	.long	.LASF562
	.long	.LASF563
	.long	0x780
	.uleb128 0x4
	.string	"T"
	.long	0x1128
	.uleb128 0x8
	.string	"Ts"
	.long	0x770
	.uleb128 0x3
	.long	0x1128
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x1128
	.uleb128 0x1
	.long	0x1128
	.byte	0
	.uleb128 0x13
	.long	.LASF564
	.long	.LASF565
	.long	0x7b2
	.uleb128 0x4
	.string	"T"
	.long	0x1128
	.uleb128 0x8
	.string	"Ts"
	.long	0x7a2
	.uleb128 0x3
	.long	0x1132
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x1128
	.uleb128 0x1
	.long	0x1132
	.byte	0
	.uleb128 0x13
	.long	.LASF566
	.long	.LASF567
	.long	0x7d5
	.uleb128 0x4
	.string	"T"
	.long	0x1123
	.uleb128 0x15
	.string	"Ts"
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x1123
	.byte	0
	.uleb128 0xf
	.long	.LASF568
	.value	0x109
	.long	.LASF569
	.long	0x807
	.uleb128 0x8
	.string	"Ts"
	.long	0x7f7
	.uleb128 0x3
	.long	0x3e
	.uleb128 0x3
	.long	0x87
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x3e
	.uleb128 0x1
	.long	0x87
	.byte	0
	.uleb128 0xf
	.long	.LASF570
	.value	0x109
	.long	.LASF571
	.long	0x82f
	.uleb128 0x8
	.string	"Ts"
	.long	0x824
	.uleb128 0x3
	.long	0x3e
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x3e
	.byte	0
	.uleb128 0xf
	.long	.LASF572
	.value	0x109
	.long	.LASF573
	.long	0x87f
	.uleb128 0x8
	.string	"Ts"
	.long	0x860
	.uleb128 0x3
	.long	0x75
	.uleb128 0x3
	.long	0x87
	.uleb128 0x3
	.long	0x87
	.uleb128 0x3
	.long	0x87
	.uleb128 0x3
	.long	0xdfa
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x75
	.uleb128 0x1
	.long	0x87
	.uleb128 0x1
	.long	0x87
	.uleb128 0x1
	.long	0x87
	.uleb128 0x1
	.long	0xdfa
	.byte	0
	.uleb128 0xf
	.long	.LASF574
	.value	0x109
	.long	.LASF575
	.long	0x8b1
	.uleb128 0x8
	.string	"Ts"
	.long	0x8a1
	.uleb128 0x3
	.long	0x75
	.uleb128 0x3
	.long	0x75
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x75
	.uleb128 0x1
	.long	0x75
	.byte	0
	.uleb128 0xf
	.long	.LASF576
	.value	0x109
	.long	.LASF577
	.long	0x8e3
	.uleb128 0x8
	.string	"Ts"
	.long	0x8d3
	.uleb128 0x3
	.long	0x75
	.uleb128 0x3
	.long	0xdfa
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x75
	.uleb128 0x1
	.long	0xdfa
	.byte	0
	.uleb128 0xf
	.long	.LASF578
	.value	0x109
	.long	.LASF579
	.long	0x90b
	.uleb128 0x8
	.string	"Ts"
	.long	0x900
	.uleb128 0x3
	.long	0x87
	.byte	0
	.uleb128 0x1
	.long	0xdfa
	.uleb128 0x1
	.long	0x87
	.byte	0
	.uleb128 0x3d
	.long	.LASF580
	.byte	0x2
	.value	0x109
	.byte	0x15
	.long	.LASF734
	.byte	0x1
	.uleb128 0x15
	.string	"Ts"
	.uleb128 0x1
	.long	0xdfa
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LASF735
	.byte	0x30
	.byte	0x8
	.byte	0x4
	.byte	0xb
	.byte	0xb
	.long	0xae6
	.uleb128 0x2f
	.long	.LASF582
	.byte	0x8
	.long	0x7c
	.byte	0x4
	.byte	0xe
	.long	0x949
	.uleb128 0x2
	.long	.LASF583
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.long	.LASF584
	.byte	0x20
	.byte	0x4
	.byte	0x13
	.long	0xa1b
	.uleb128 0x5
	.long	.LASF585
	.byte	0x4
	.byte	0x15
	.byte	0x14
	.long	0xfe1
	.byte	0
	.uleb128 0x5
	.long	.LASF586
	.byte	0x4
	.byte	0x16
	.byte	0x14
	.long	0xfe1
	.byte	0x8
	.uleb128 0x5
	.long	.LASF587
	.byte	0x4
	.byte	0x17
	.byte	0x32
	.long	0xe2f
	.byte	0x10
	.uleb128 0x5
	.long	.LASF588
	.byte	0x4
	.byte	0x18
	.byte	0x16
	.long	0x6a
	.byte	0x18
	.uleb128 0x5
	.long	.LASF589
	.byte	0x4
	.byte	0x19
	.byte	0x16
	.long	0x6a
	.byte	0x1c
	.uleb128 0x31
	.long	.LASF594
	.byte	0x1b
	.byte	0x12
	.long	.LASF596
	.long	0x13e
	.long	0x9ad
	.long	0x9b3
	.uleb128 0xb
	.long	0xfe6
	.byte	0
	.uleb128 0x32
	.long	.LASF590
	.byte	0x1c
	.long	.LASF591
	.long	0x9c5
	.long	0x9cb
	.uleb128 0xb
	.long	0xfe1
	.byte	0
	.uleb128 0x32
	.long	.LASF592
	.byte	0x20
	.long	.LASF593
	.long	0x9dd
	.long	0x9e3
	.uleb128 0xb
	.long	0xfe1
	.byte	0
	.uleb128 0x31
	.long	.LASF595
	.byte	0x25
	.byte	0x14
	.long	.LASF597
	.long	0x2e
	.long	0x9fa
	.long	0xa00
	.uleb128 0xb
	.long	0xfe1
	.byte	0
	.uleb128 0x3f
	.long	.LASF598
	.byte	0x4
	.byte	0x2a
	.byte	0x13
	.long	.LASF599
	.long	0xfeb
	.long	0xa14
	.uleb128 0xb
	.long	0xfe1
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x949
	.uleb128 0x1b
	.long	.LASF600
	.byte	0x31
	.byte	0x10
	.long	0xfe1
	.byte	0
	.uleb128 0x1b
	.long	.LASF601
	.byte	0x32
	.byte	0xf
	.long	0xfeb
	.byte	0x8
	.uleb128 0x1b
	.long	.LASF602
	.byte	0x33
	.byte	0xf
	.long	0xfeb
	.byte	0x10
	.uleb128 0x1b
	.long	.LASF603
	.byte	0x34
	.byte	0x10
	.long	0x2e
	.byte	0x18
	.uleb128 0x1b
	.long	.LASF604
	.byte	0x35
	.byte	0x10
	.long	0x2e
	.byte	0x20
	.uleb128 0x1b
	.long	.LASF605
	.byte	0x36
	.byte	0x10
	.long	0x2e
	.byte	0x28
	.uleb128 0x20
	.long	.LASF606
	.byte	0x4
	.byte	0x39
	.byte	0xe
	.long	.LASF607
	.long	0xa7c
	.long	0xa8c
	.uleb128 0xb
	.long	0xfed
	.uleb128 0x1
	.long	0xfeb
	.uleb128 0x1
	.long	0xfeb
	.byte	0
	.uleb128 0x40
	.long	.LASF693
	.byte	0x4
	.byte	0x48
	.byte	0xf
	.long	.LASF695
	.long	0xfeb
	.byte	0x1
	.long	0xaa5
	.long	0xab0
	.uleb128 0xb
	.long	0xfed
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x20
	.long	.LASF608
	.byte	0x4
	.byte	0x49
	.byte	0xe
	.long	.LASF609
	.long	0xac4
	.long	0xacf
	.uleb128 0xb
	.long	0xfed
	.uleb128 0x1
	.long	0xfeb
	.byte	0
	.uleb128 0x41
	.long	.LASF610
	.byte	0x4
	.byte	0x4c
	.byte	0x17
	.long	.LASF611
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF736
	.byte	0x1
	.byte	0x5
	.byte	0x43
	.byte	0xb
	.uleb128 0x26
	.long	.LASF633
	.byte	0x8
	.byte	0x46
	.long	0xb15
	.uleb128 0x5
	.long	.LASF612
	.byte	0x5
	.byte	0x48
	.byte	0x16
	.long	0x6a
	.byte	0
	.uleb128 0x5
	.long	.LASF613
	.byte	0x5
	.byte	0x49
	.byte	0x16
	.long	0x6a
	.byte	0x4
	.byte	0
	.uleb128 0x33
	.long	.LASF639
	.long	0x6a
	.byte	0x4d
	.long	0xba8
	.uleb128 0x21
	.string	"End"
	.byte	0
	.uleb128 0x2
	.long	.LASF614
	.byte	0x1
	.uleb128 0x2
	.long	.LASF615
	.byte	0x2
	.uleb128 0x2
	.long	.LASF616
	.byte	0x3
	.uleb128 0x2
	.long	.LASF617
	.byte	0x4
	.uleb128 0x2
	.long	.LASF618
	.byte	0x5
	.uleb128 0x2
	.long	.LASF619
	.byte	0x6
	.uleb128 0x21
	.string	"Vbe"
	.byte	0x7
	.uleb128 0x2
	.long	.LASF620
	.byte	0x8
	.uleb128 0x2
	.long	.LASF621
	.byte	0x9
	.uleb128 0x2
	.long	.LASF622
	.byte	0xa
	.uleb128 0x2
	.long	.LASF623
	.byte	0xb
	.uleb128 0x2
	.long	.LASF624
	.byte	0xc
	.uleb128 0x2
	.long	.LASF625
	.byte	0xd
	.uleb128 0x2
	.long	.LASF626
	.byte	0xe
	.uleb128 0x2
	.long	.LASF627
	.byte	0xf
	.uleb128 0x2
	.long	.LASF628
	.byte	0x10
	.uleb128 0x2
	.long	.LASF629
	.byte	0x11
	.uleb128 0x2
	.long	.LASF630
	.byte	0x12
	.uleb128 0x2
	.long	.LASF631
	.byte	0x13
	.uleb128 0x2
	.long	.LASF632
	.byte	0x14
	.uleb128 0x21
	.string	"Num"
	.byte	0x15
	.byte	0
	.uleb128 0x26
	.long	.LASF634
	.byte	0x8
	.byte	0x67
	.long	0xbce
	.uleb128 0x5
	.long	.LASF635
	.byte	0x5
	.byte	0x69
	.byte	0x15
	.long	0xb15
	.byte	0
	.uleb128 0x5
	.long	.LASF595
	.byte	0x5
	.byte	0x6a
	.byte	0x16
	.long	0x6a
	.byte	0x4
	.byte	0
	.uleb128 0x26
	.long	.LASF636
	.byte	0x10
	.byte	0x6d
	.long	0xc01
	.uleb128 0x25
	.string	"tag"
	.byte	0x5
	.byte	0x6f
	.byte	0x1a
	.long	0xba8
	.byte	0
	.uleb128 0x5
	.long	.LASF637
	.byte	0x5
	.byte	0x70
	.byte	0x16
	.long	0x6a
	.byte	0x8
	.uleb128 0x5
	.long	.LASF638
	.byte	0x5
	.byte	0x71
	.byte	0x16
	.long	0x6a
	.byte	0xc
	.byte	0
	.uleb128 0x33
	.long	.LASF640
	.long	0x6a
	.byte	0x74
	.long	0xc34
	.uleb128 0x2
	.long	.LASF641
	.byte	0x1
	.uleb128 0x2
	.long	.LASF642
	.byte	0x2
	.uleb128 0x2
	.long	.LASF643
	.byte	0x3
	.uleb128 0x21
	.string	"Nvs"
	.byte	0x4
	.uleb128 0x2
	.long	.LASF644
	.byte	0x5
	.uleb128 0x21
	.string	"Num"
	.byte	0x6
	.byte	0
	.uleb128 0x26
	.long	.LASF645
	.byte	0x18
	.byte	0x7e
	.long	0xc74
	.uleb128 0x5
	.long	.LASF646
	.byte	0x5
	.byte	0x80
	.byte	0x16
	.long	0x7c
	.byte	0
	.uleb128 0x25
	.string	"len"
	.byte	0x5
	.byte	0x81
	.byte	0x16
	.long	0x7c
	.byte	0x8
	.uleb128 0x5
	.long	.LASF635
	.byte	0x5
	.byte	0x82
	.byte	0x21
	.long	0xc01
	.byte	0x10
	.uleb128 0x5
	.long	.LASF647
	.byte	0x5
	.byte	0x83
	.byte	0x16
	.long	0x6a
	.byte	0x14
	.byte	0
	.uleb128 0x1e
	.long	.LASF648
	.byte	0x70
	.byte	0x5
	.byte	0x8d
	.long	0xd37
	.uleb128 0x5
	.long	.LASF649
	.byte	0x5
	.byte	0x8f
	.byte	0x16
	.long	0x7c
	.byte	0
	.uleb128 0x5
	.long	.LASF650
	.byte	0x5
	.byte	0x90
	.byte	0x16
	.long	0x7c
	.byte	0x8
	.uleb128 0x5
	.long	.LASF651
	.byte	0x5
	.byte	0x92
	.byte	0x16
	.long	0x7c
	.byte	0x10
	.uleb128 0x5
	.long	.LASF652
	.byte	0x5
	.byte	0x93
	.byte	0x16
	.long	0x7c
	.byte	0x18
	.uleb128 0x5
	.long	.LASF653
	.byte	0x5
	.byte	0x95
	.byte	0x16
	.long	0x7c
	.byte	0x20
	.uleb128 0x5
	.long	.LASF654
	.byte	0x5
	.byte	0x96
	.byte	0x16
	.long	0x7c
	.byte	0x28
	.uleb128 0x5
	.long	.LASF655
	.byte	0x5
	.byte	0x98
	.byte	0x16
	.long	0x7c
	.byte	0x30
	.uleb128 0x5
	.long	.LASF656
	.byte	0x5
	.byte	0x99
	.byte	0x16
	.long	0x7c
	.byte	0x38
	.uleb128 0x5
	.long	.LASF657
	.byte	0x5
	.byte	0x9b
	.byte	0x16
	.long	0x7c
	.byte	0x40
	.uleb128 0x5
	.long	.LASF658
	.byte	0x5
	.byte	0x9c
	.byte	0x16
	.long	0x7c
	.byte	0x48
	.uleb128 0x5
	.long	.LASF659
	.byte	0x5
	.byte	0x9e
	.byte	0x16
	.long	0x7c
	.byte	0x50
	.uleb128 0x5
	.long	.LASF660
	.byte	0x5
	.byte	0x9f
	.byte	0x16
	.long	0x7c
	.byte	0x58
	.uleb128 0x5
	.long	.LASF661
	.byte	0x5
	.byte	0xa1
	.byte	0x16
	.long	0x7c
	.byte	0x60
	.uleb128 0x5
	.long	.LASF662
	.byte	0x5
	.byte	0xa2
	.byte	0x16
	.long	0x7c
	.byte	0x68
	.byte	0
	.uleb128 0x17
	.long	0xc74
	.uleb128 0x1f
	.long	.LASF663
	.byte	0x5
	.byte	0xa6
	.byte	0x1c
	.long	.LASF664
	.long	0x1093
	.uleb128 0x1f
	.long	.LASF665
	.byte	0x5
	.byte	0xa7
	.byte	0x1c
	.long	.LASF666
	.long	0x10a3
	.uleb128 0x22
	.long	.LASF667
	.byte	0xa9
	.byte	0x30
	.long	.LASF669
	.long	0xd37
	.uleb128 0x22
	.long	.LASF668
	.byte	0xbf
	.byte	0x28
	.long	.LASF670
	.long	0x1089
	.uleb128 0x22
	.long	.LASF671
	.byte	0xc0
	.byte	0x29
	.long	.LASF672
	.long	0x108e
	.uleb128 0x22
	.long	.LASF673
	.byte	0xc4
	.byte	0x1e
	.long	.LASF674
	.long	0x2e
	.uleb128 0x22
	.long	.LASF675
	.byte	0xc5
	.byte	0x27
	.long	.LASF676
	.long	0xfed
	.uleb128 0xd
	.long	.LASF677
	.byte	0x5
	.byte	0xc8
	.long	.LASF678
	.long	0xdbc
	.uleb128 0x1
	.long	0x7c
	.byte	0
	.uleb128 0x43
	.long	.LASF679
	.byte	0x5
	.byte	0xca
	.byte	0x20
	.long	.LASF680
	.long	0x10fe
	.byte	0x1
	.long	0xdd7
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x44
	.long	.LASF681
	.byte	0x5
	.byte	0xcb
	.byte	0x17
	.long	.LASF737
	.long	0x2e
	.byte	0x1
	.uleb128 0x30
	.long	.LASF683
	.byte	0x5
	.byte	0xce
	.long	.LASF685
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x2a6
	.uleb128 0x11
	.long	0xe06
	.uleb128 0x12
	.byte	0x1
	.byte	0x6
	.long	.LASF686
	.uleb128 0x17
	.long	0xdff
	.uleb128 0x29
	.long	0xe06
	.uleb128 0x11
	.long	0xe0b
	.uleb128 0x16
	.long	0x24e
	.uleb128 0x16
	.long	0x27a
	.uleb128 0x16
	.long	0x39
	.uleb128 0x2d
	.long	.LASF687
	.byte	0x6
	.byte	0x17
	.long	0xfc7
	.uleb128 0x2e
	.long	.LASF689
	.byte	0x8
	.byte	0x6
	.byte	0x1a
	.long	0xfc1
	.uleb128 0x5
	.long	.LASF690
	.byte	0x6
	.byte	0x1d
	.byte	0xb
	.long	0x87
	.byte	0
	.uleb128 0x20
	.long	.LASF691
	.byte	0x6
	.byte	0x20
	.byte	0x9
	.long	.LASF692
	.long	0xe5c
	.long	0xe62
	.uleb128 0xb
	.long	0xfc7
	.byte	0
	.uleb128 0x2b
	.long	.LASF694
	.byte	0x21
	.long	.LASF696
	.long	0xe74
	.long	0xe7f
	.uleb128 0xb
	.long	0xfc7
	.uleb128 0xb
	.long	0x9c
	.byte	0
	.uleb128 0x20
	.long	.LASF691
	.byte	0x6
	.byte	0x22
	.byte	0x9
	.long	.LASF697
	.long	0xe93
	.long	0xe9e
	.uleb128 0xb
	.long	0xfc7
	.uleb128 0x1
	.long	0x87
	.byte	0
	.uleb128 0x2b
	.long	.LASF691
	.byte	0x24
	.long	.LASF698
	.long	0xeb0
	.long	0xebb
	.uleb128 0xb
	.long	0xfc7
	.uleb128 0x1
	.long	0xfcc
	.byte	0
	.uleb128 0x34
	.long	.LASF700
	.byte	0x25
	.long	.LASF701
	.long	0xfd1
	.long	0xed1
	.long	0xedc
	.uleb128 0xb
	.long	0xfc7
	.uleb128 0x1
	.long	0xfcc
	.byte	0
	.uleb128 0x2b
	.long	.LASF691
	.byte	0x26
	.long	.LASF699
	.long	0xeee
	.long	0xef9
	.uleb128 0xb
	.long	0xfc7
	.uleb128 0x1
	.long	0xfd6
	.byte	0
	.uleb128 0x34
	.long	.LASF700
	.byte	0x27
	.long	.LASF702
	.long	0xfd1
	.long	0xf0f
	.long	0xf1a
	.uleb128 0xb
	.long	0xfc7
	.uleb128 0x1
	.long	0xfd6
	.byte	0
	.uleb128 0x35
	.string	"set"
	.byte	0x29
	.long	.LASF704
	.long	0xf2c
	.long	0xf37
	.uleb128 0xb
	.long	0xfc7
	.uleb128 0x1
	.long	0x932
	.byte	0
	.uleb128 0x20
	.long	.LASF510
	.byte	0x6
	.byte	0x2d
	.byte	0xe
	.long	.LASF703
	.long	0xf4b
	.long	0xf56
	.uleb128 0xb
	.long	0xfc7
	.uleb128 0x1
	.long	0x932
	.byte	0
	.uleb128 0x36
	.string	"get"
	.byte	0x31
	.byte	0xe
	.long	.LASF706
	.long	0x13e
	.long	0xf6d
	.long	0xf78
	.uleb128 0xb
	.long	0xfdc
	.uleb128 0x1
	.long	0x932
	.byte	0
	.uleb128 0x35
	.string	"set"
	.byte	0x35
	.long	.LASF705
	.long	0xf8a
	.long	0xf95
	.uleb128 0xb
	.long	0xfc7
	.uleb128 0x1
	.long	0x87
	.byte	0
	.uleb128 0x36
	.string	"get"
	.byte	0x39
	.byte	0xb
	.long	.LASF707
	.long	0x87
	.long	0xfac
	.long	0xfb2
	.uleb128 0xb
	.long	0xfdc
	.byte	0
	.uleb128 0x4
	.string	"E"
	.long	0x932
	.uleb128 0x4
	.string	"T"
	.long	0x87
	.byte	0
	.uleb128 0x17
	.long	0xe2f
	.byte	0
	.uleb128 0x11
	.long	0xe2f
	.uleb128 0x16
	.long	0xfc1
	.uleb128 0x16
	.long	0xe2f
	.uleb128 0x45
	.byte	0x8
	.long	0xe2f
	.uleb128 0x11
	.long	0xfc1
	.uleb128 0x11
	.long	0x949
	.uleb128 0x11
	.long	0xa1b
	.uleb128 0x46
	.byte	0x8
	.uleb128 0x11
	.long	0x924
	.uleb128 0x2c
	.long	0x51
	.long	0xffd
	.uleb128 0x47
	.byte	0
	.uleb128 0xe
	.long	.LASF708
	.byte	0x2a
	.long	0xff2
	.uleb128 0xe
	.long	.LASF709
	.byte	0x2b
	.long	0xff2
	.uleb128 0xe
	.long	.LASF710
	.byte	0x2d
	.long	0xff2
	.uleb128 0xe
	.long	.LASF711
	.byte	0x2e
	.long	0xff2
	.uleb128 0xe
	.long	.LASF712
	.byte	0x30
	.long	0xff2
	.uleb128 0xe
	.long	.LASF713
	.byte	0x31
	.long	0xff2
	.uleb128 0xe
	.long	.LASF714
	.byte	0x33
	.long	0xff2
	.uleb128 0xe
	.long	.LASF715
	.byte	0x34
	.long	0xff2
	.uleb128 0xe
	.long	.LASF716
	.byte	0x36
	.long	0xff2
	.uleb128 0xe
	.long	.LASF717
	.byte	0x37
	.long	0xff2
	.uleb128 0xe
	.long	.LASF718
	.byte	0x39
	.long	0xff2
	.uleb128 0xe
	.long	.LASF719
	.byte	0x3a
	.long	0xff2
	.uleb128 0xe
	.long	.LASF720
	.byte	0x3c
	.long	0xff2
	.uleb128 0xe
	.long	.LASF721
	.byte	0x3d
	.long	0xff2
	.uleb128 0x11
	.long	0xaef
	.uleb128 0x11
	.long	0xbce
	.uleb128 0x2c
	.long	0xdfa
	.long	0x10a3
	.uleb128 0x37
	.long	0x3e
	.byte	0x14
	.byte	0
	.uleb128 0x2c
	.long	0xdfa
	.long	0x10b3
	.uleb128 0x37
	.long	0x3e
	.byte	0x5
	.byte	0
	.uleb128 0x23
	.long	0xd5c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE
	.uleb128 0x23
	.long	0xd6b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap17s_multibootHeaderE
	.uleb128 0x23
	.long	0xd7a
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap18s_multibootMmapTagE
	.uleb128 0x23
	.long	0xd89
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap11s_heapCountE
	.uleb128 0x23
	.long	0xd98
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap7s_heapsE
	.uleb128 0x16
	.long	0x924
	.uleb128 0x38
	.long	0xd3c
	.byte	0x5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap19s_multibootTagNamesE
	.uleb128 0x38
	.long	0xd4c
	.byte	0x1d
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE
	.uleb128 0x16
	.long	0x87
	.uleb128 0x16
	.long	0x75
	.uleb128 0x16
	.long	0x3e
	.uleb128 0x16
	.long	0xdfa
	.uleb128 0x10
	.long	0xb6
	.uleb128 0x10
	.long	0xc1
	.uleb128 0x10
	.long	0xcc
	.uleb128 0x10
	.long	0xd6
	.uleb128 0x10
	.long	0xe0
	.uleb128 0x10
	.long	0xeb
	.uleb128 0x10
	.long	0xf5
	.uleb128 0x10
	.long	0xff
	.uleb128 0x10
	.long	0x10a
	.uleb128 0x10
	.long	0x114
	.uleb128 0x10
	.long	0x11e
	.uleb128 0x10
	.long	0x129
	.uleb128 0x10
	.long	0x133
	.uleb128 0x7
	.long	0x486
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x11cf
	.uleb128 0x4
	.string	"T"
	.long	0x1123
	.uleb128 0x8
	.string	"Ts"
	.long	0x11a8
	.uleb128 0x3
	.long	0x1132
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.uleb128 0x9
	.long	0x1132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x4b8
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x1233
	.uleb128 0x4
	.string	"T"
	.long	0x1123
	.uleb128 0x8
	.string	"Ts"
	.long	0x1204
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1132
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.uleb128 0x9
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	0x1132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x4f4
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ad
	.uleb128 0x4
	.string	"T"
	.long	0x3e
	.uleb128 0x6
	.string	"val"
	.byte	0x94
	.byte	0x21
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF493
	.byte	0x2
	.byte	0x94
	.byte	0x31
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.long	.LASF722
	.byte	0x2
	.byte	0x97
	.byte	0x18
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"pos"
	.byte	0x2
	.byte	0x98
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x99
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF723
	.byte	0x2
	.byte	0x9a
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.long	0x515
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1327
	.uleb128 0x4
	.string	"T"
	.long	0x3e
	.uleb128 0x6
	.string	"val"
	.byte	0x53
	.byte	0x21
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF493
	.byte	0x2
	.byte	0x53
	.byte	0x31
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.long	.LASF722
	.byte	0x2
	.byte	0x56
	.byte	0x18
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"pos"
	.byte	0x2
	.byte	0x57
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x58
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF723
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.long	0x536
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x13b3
	.uleb128 0x4
	.string	"T"
	.long	0x3e
	.uleb128 0x6
	.string	"val"
	.byte	0x6b
	.byte	0x21
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF493
	.byte	0x2
	.byte	0x6b
	.byte	0x31
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"pos"
	.byte	0x2
	.byte	0x72
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF724
	.byte	0x2
	.byte	0x79
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF725
	.byte	0x2
	.byte	0x82
	.byte	0x15
	.long	0x27f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x84
	.byte	0x19
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x557
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1424
	.uleb128 0x4
	.string	"T"
	.long	0x1123
	.uleb128 0x8
	.string	"Ts"
	.long	0x13ed
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1132
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.uleb128 0x9
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	0x1132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x59d
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1468
	.uleb128 0x4
	.string	"T"
	.long	0x1128
	.uleb128 0x15
	.string	"Ts"
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.byte	0
	.uleb128 0x7
	.long	0x5c0
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x14ac
	.uleb128 0x4
	.string	"T"
	.long	0x1132
	.uleb128 0x15
	.string	"Ts"
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x1132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.byte	0
	.uleb128 0x7
	.long	0x5e3
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1526
	.uleb128 0x4
	.string	"T"
	.long	0x75
	.uleb128 0x6
	.string	"val"
	.byte	0x94
	.byte	0x21
	.long	0x75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.long	.LASF493
	.byte	0x2
	.byte	0x94
	.byte	0x31
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.long	.LASF722
	.byte	0x2
	.byte	0x97
	.byte	0x18
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"pos"
	.byte	0x2
	.byte	0x98
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x99
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF723
	.byte	0x2
	.byte	0x9a
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.long	0x604
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x15a0
	.uleb128 0x4
	.string	"T"
	.long	0x75
	.uleb128 0x6
	.string	"val"
	.byte	0x53
	.byte	0x21
	.long	0x75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.long	.LASF493
	.byte	0x2
	.byte	0x53
	.byte	0x31
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.long	.LASF722
	.byte	0x2
	.byte	0x56
	.byte	0x18
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"pos"
	.byte	0x2
	.byte	0x57
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x58
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF723
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.long	0x625
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x162c
	.uleb128 0x4
	.string	"T"
	.long	0x75
	.uleb128 0x6
	.string	"val"
	.byte	0x6b
	.byte	0x21
	.long	0x75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.long	.LASF493
	.byte	0x2
	.byte	0x6b
	.byte	0x31
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"pos"
	.byte	0x2
	.byte	0x72
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF724
	.byte	0x2
	.byte	0x79
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF725
	.byte	0x2
	.byte	0x82
	.byte	0x15
	.long	0x27f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x84
	.byte	0x19
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x646
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x16a6
	.uleb128 0x4
	.string	"T"
	.long	0x87
	.uleb128 0x6
	.string	"val"
	.byte	0x94
	.byte	0x21
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF493
	.byte	0x2
	.byte	0x94
	.byte	0x31
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.long	.LASF722
	.byte	0x2
	.byte	0x97
	.byte	0x18
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"pos"
	.byte	0x2
	.byte	0x98
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x99
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF723
	.byte	0x2
	.byte	0x9a
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.long	0x667
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1720
	.uleb128 0x4
	.string	"T"
	.long	0x87
	.uleb128 0x6
	.string	"val"
	.byte	0x53
	.byte	0x21
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF493
	.byte	0x2
	.byte	0x53
	.byte	0x31
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.long	.LASF722
	.byte	0x2
	.byte	0x56
	.byte	0x18
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"pos"
	.byte	0x2
	.byte	0x57
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x58
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF723
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.long	0x688
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x17ac
	.uleb128 0x4
	.string	"T"
	.long	0x87
	.uleb128 0x6
	.string	"val"
	.byte	0x6b
	.byte	0x21
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF493
	.byte	0x2
	.byte	0x6b
	.byte	0x31
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"pos"
	.byte	0x2
	.byte	0x72
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF724
	.byte	0x2
	.byte	0x79
	.byte	0x14
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF725
	.byte	0x2
	.byte	0x82
	.byte	0x15
	.long	0x27f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x84
	.byte	0x19
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x6a9
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x1803
	.uleb128 0x4
	.string	"T"
	.long	0x112d
	.uleb128 0x8
	.string	"Ts"
	.long	0x17dc
	.uleb128 0x3
	.long	0x1123
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x112d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.uleb128 0x9
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x6db
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x1847
	.uleb128 0x4
	.string	"T"
	.long	0x112d
	.uleb128 0x15
	.string	"Ts"
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x112d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.byte	0
	.uleb128 0x7
	.long	0x6fe
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x18c5
	.uleb128 0x4
	.string	"T"
	.long	0x1128
	.uleb128 0x8
	.string	"Ts"
	.long	0x1886
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1123
	.uleb128 0x3
	.long	0x1132
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.uleb128 0x9
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	0x1132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x74e
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x191c
	.uleb128 0x4
	.string	"T"
	.long	0x1128
	.uleb128 0x8
	.string	"Ts"
	.long	0x18f5
	.uleb128 0x3
	.long	0x1128
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.uleb128 0x9
	.long	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x780
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x1973
	.uleb128 0x4
	.string	"T"
	.long	0x1128
	.uleb128 0x8
	.string	"Ts"
	.long	0x194c
	.uleb128 0x3
	.long	0x1132
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x1128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.uleb128 0x9
	.long	0x1132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x7b2
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x19b7
	.uleb128 0x4
	.string	"T"
	.long	0x1123
	.uleb128 0x15
	.string	"Ts"
	.uleb128 0x6
	.string	"str"
	.byte	0xad
	.byte	0x2b
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"val"
	.byte	0xad
	.byte	0x34
	.long	0x1123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.byte	0
	.uleb128 0x7
	.long	0x7d5
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a04
	.uleb128 0x8
	.string	"Ts"
	.long	0x19e5
	.uleb128 0x3
	.long	0x3e
	.uleb128 0x3
	.long	0x87
	.byte	0
	.uleb128 0x1a
	.string	"str"
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.uleb128 0x9
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x807
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a44
	.uleb128 0x8
	.string	"Ts"
	.long	0x1a2d
	.uleb128 0x3
	.long	0x3e
	.byte	0
	.uleb128 0x1a
	.string	"str"
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.uleb128 0x9
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x82f
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ab8
	.uleb128 0x8
	.string	"Ts"
	.long	0x1a81
	.uleb128 0x3
	.long	0x75
	.uleb128 0x3
	.long	0x87
	.uleb128 0x3
	.long	0x87
	.uleb128 0x3
	.long	0x87
	.uleb128 0x3
	.long	0xdfa
	.byte	0
	.uleb128 0x1a
	.string	"str"
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.uleb128 0x9
	.long	0x75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x87f
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b05
	.uleb128 0x8
	.string	"Ts"
	.long	0x1ae6
	.uleb128 0x3
	.long	0x75
	.uleb128 0x3
	.long	0x75
	.byte	0
	.uleb128 0x1a
	.string	"str"
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.uleb128 0x9
	.long	0x75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.long	0x75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x8b1
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b52
	.uleb128 0x8
	.string	"Ts"
	.long	0x1b33
	.uleb128 0x3
	.long	0x75
	.uleb128 0x3
	.long	0xdfa
	.byte	0
	.uleb128 0x1a
	.string	"str"
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.uleb128 0x9
	.long	0x75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x8e3
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b92
	.uleb128 0x8
	.string	"Ts"
	.long	0x1b7b
	.uleb128 0x3
	.long	0x87
	.byte	0
	.uleb128 0x1a
	.string	"str"
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.uleb128 0x9
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x90b
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bc3
	.uleb128 0x15
	.string	"Ts"
	.uleb128 0x1a
	.string	"str"
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x48
	.byte	0x2
	.value	0x109
	.byte	0x2e
	.byte	0
	.uleb128 0x49
	.long	0xdd7
	.byte	0x1
	.byte	0xa6
	.byte	0xc
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4a
	.long	0xdbc
	.byte	0x1
	.byte	0xa5
	.byte	0x15
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c0b
	.uleb128 0x14
	.long	.LASF726
	.byte	0x1
	.byte	0xa5
	.byte	0x2f
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	0xde8
	.byte	0x49
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ce5
	.uleb128 0xa
	.long	.LASF727
	.byte	0x1
	.byte	0x4d
	.byte	0x12
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.long	.LASF637
	.byte	0x1
	.byte	0x4e
	.byte	0x12
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.long	.LASF728
	.byte	0x1
	.byte	0x4f
	.byte	0x12
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.long	.LASF729
	.byte	0x1
	.byte	0x53
	.byte	0x1d
	.long	0x1ce5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x54
	.byte	0x12
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x91
	.byte	0x10
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1cb2
	.uleb128 0xa
	.long	.LASF730
	.byte	0x1
	.byte	0x7e
	.byte	0x1a
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.long	.LASF731
	.byte	0x1
	.byte	0x7f
	.byte	0x1a
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x27
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0xa
	.long	.LASF730
	.byte	0x1
	.byte	0x98
	.byte	0x1a
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.long	.LASF731
	.byte	0x1
	.byte	0x99
	.byte	0x1a
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0xc34
	.uleb128 0x39
	.long	0xda7
	.byte	0x25
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d25
	.uleb128 0x14
	.long	.LASF732
	.byte	0x1
	.byte	0x25
	.byte	0x29
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"tag"
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.long	0x1d25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	0xba8
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
	.uleb128 0x2f
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x4107
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 173
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4107
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4108
	.byte	0x1
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 173
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 62
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xd
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
	.uleb128 0x88
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
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
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4108
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 173
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 62
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x37
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x32
	.uleb128 0xb
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1dc
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB39
	.quad	.LFE39-.LFB39
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
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.quad	.LFB65
	.quad	.LFE65-.LFB65
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
	.quad	.LFB39
	.uleb128 .LFE39-.LFB39
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
	.byte	0x7
	.quad	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.quad	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.quad	.LFB47
	.uleb128 .LFE47-.LFB47
	.byte	0x7
	.quad	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.quad	.LFB49
	.uleb128 .LFE49-.LFB49
	.byte	0x7
	.quad	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.quad	.LFB51
	.uleb128 .LFE51-.LFB51
	.byte	0x7
	.quad	.LFB52
	.uleb128 .LFE52-.LFB52
	.byte	0x7
	.quad	.LFB53
	.uleb128 .LFE53-.LFB53
	.byte	0x7
	.quad	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.quad	.LFB55
	.uleb128 .LFE55-.LFB55
	.byte	0x7
	.quad	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.quad	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0x7
	.quad	.LFB58
	.uleb128 .LFE58-.LFB58
	.byte	0x7
	.quad	.LFB59
	.uleb128 .LFE59-.LFB59
	.byte	0x7
	.quad	.LFB60
	.uleb128 .LFE60-.LFB60
	.byte	0x7
	.quad	.LFB61
	.uleb128 .LFE61-.LFB61
	.byte	0x7
	.quad	.LFB62
	.uleb128 .LFE62-.LFB62
	.byte	0x7
	.quad	.LFB63
	.uleb128 .LFE63-.LFB63
	.byte	0x7
	.quad	.LFB64
	.uleb128 .LFE64-.LFB64
	.byte	0x7
	.quad	.LFB65
	.uleb128 .LFE65-.LFB65
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
	.uleb128 0x5
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
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF437
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x3
	.long	.LASF438
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
.LASF280:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF168:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF555:
	.string	"_ZN6Kernel7Console9putNumDecIyEEvT_NS0_10AttributesE"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF497:
	.string	"_ZN6Kernel7Console8s_extentE"
.LASF546:
	.string	"putNumBin<unsigned int>"
.LASF216:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF617:
	.string	"BasicMeminfo"
.LASF243:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF103:
	.string	"__cpp_namespace_attributes 201411L"
.LASF639:
	.string	"TagType"
.LASF268:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF454:
	.string	"is_same_v"
.LASF165:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF202:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF71:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF40:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF154:
	.string	"__SCHAR_WIDTH__ 8"
.LASF508:
	.string	"_ZN6Kernel7Console9putStringEPKcNS0_10AttributesE"
.LASF352:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF411:
	.string	"__amd64 1"
.LASF211:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF285:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF686:
	.string	"char"
.LASF499:
	.string	"_ZN6Kernel7Console11s_cursorPosE"
.LASF192:
	.string	"__UINT8_C(c) c"
.LASF463:
	.string	"BrownOnBlack"
.LASF689:
	.string	"FlagMap<Kernel::HeapLinkedList::BlockFlags, long long unsigned int>"
.LASF93:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF477:
	.string	"BlackOnCyan"
.LASF529:
	.string	"printImpl<long long unsigned int&, long long unsigned int&, char const*&>"
.LASF476:
	.string	"WhiteOnGreen"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF360:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF334:
	.string	"__FLT32X_DIG__ 15"
.LASF273:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF339:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF421:
	.string	"__k8__ 1"
.LASF238:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF531:
	.string	"_ZN6Kernel7Console9printImplIRyJS2_RPKcEEEvS4_OT_DpOT0_"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF563:
	.string	"_ZN6Kernel7Console9printImplIRjJS2_EEEvPKcOT_DpOT0_"
.LASF73:
	.string	"__INTPTR_TYPE__ long int"
.LASF569:
	.string	"_ZN6Kernel7Console5printIJmyEEEvPKcDpT_"
.LASF564:
	.string	"printImpl<unsigned int&, char const*&>"
.LASF151:
	.string	"__WINT_MIN__ 0U"
.LASF120:
	.string	"__cpp_designated_initializers 201707L"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF612:
	.string	"totalSize"
.LASF95:
	.string	"__cpp_alias_templates 200704L"
.LASF263:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF591:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markUsedEv"
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF191:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF637:
	.string	"entrySize"
.LASF675:
	.string	"s_heaps"
.LASF47:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF446:
	.string	"unsigned int"
.LASF620:
	.string	"Framebuffer"
.LASF300:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF158:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF526:
	.string	"scrollDown"
.LASF46:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF461:
	.string	"RedOnBlack"
.LASF543:
	.string	"_ZN6Kernel7Console9printImplIRPKcJEEEvS3_OT_DpOT0_"
.LASF487:
	.string	"CursorPos"
.LASF199:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF516:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF687:
	.string	"Utils"
.LASF234:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF100:
	.string	"__cpp_digit_separators 201309L"
.LASF656:
	.string	"dataEndAddr"
.LASF462:
	.string	"MagentaOnBlack"
.LASF373:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF270:
	.string	"__FLT16_DIG__ 3"
.LASF696:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyED4Ev"
.LASF284:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF310:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF640:
	.string	"MultibootMemoryType"
.LASF376:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF90:
	.string	"__cpp_initializer_lists 200806L"
.LASF253:
	.string	"__LDBL_DIG__ 18"
.LASF353:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF657:
	.string	"rodataStartAddr"
.LASF533:
	.string	"_ZN6Kernel7Console9putNumHexImEEvT_NS0_10AttributesE"
.LASF21:
	.string	"__SIZEOF_LONG__ 8"
.LASF289:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF56:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF559:
	.string	"_ZN6Kernel7Console9printImplIRmJEEEvPKcOT_DpOT0_"
.LASF57:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF545:
	.string	"_ZN6Kernel7Console9putNumHexIjEEvT_NS0_10AttributesE"
.LASF709:
	.string	"stack_top"
.LASF552:
	.string	"putNumBin<long long unsigned int>"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF262:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF288:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF248:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF585:
	.string	"prev"
.LASF60:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF149:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF601:
	.string	"m_startAddr"
.LASF548:
	.string	"putNumDec<unsigned int>"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF536:
	.string	"putNumDec<long unsigned int>"
.LASF61:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF64:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF143:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF230:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF737:
	.string	"_ZN6Kernel9MemoryMap12getHeapCountEv"
.LASF302:
	.string	"__FLT64_DIG__ 15"
.LASF337:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF345:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF721:
	.string	"__bss_end"
.LASF683:
	.string	"parseMemoryMapTag"
.LASF79:
	.string	"__cpp_hex_float 201603L"
.LASF514:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF346:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF655:
	.string	"dataStartAddr"
.LASF728:
	.string	"entryCount"
.LASF714:
	.string	"__text_start"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF587:
	.string	"metadata"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF474:
	.string	"WhiteOnBlue"
.LASF699:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4EOS4_"
.LASF236:
	.string	"__DBL_MANT_DIG__ 53"
.LASF180:
	.string	"__INT8_C(c) c"
.LASF324:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF717:
	.string	"__data_end"
.LASF126:
	.string	"__cpp_deduction_guides 201907L"
.LASF378:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF653:
	.string	"textStartAddr"
.LASF184:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF240:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF715:
	.string	"__text_end"
.LASF470:
	.string	"LightMagentaOnBlack"
.LASF445:
	.string	"uint32_t"
.LASF92:
	.string	"__cpp_nsdmi 200809L"
.LASF254:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF82:
	.string	"__cpp_unicode_literals 200710L"
.LASF112:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF316:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF161:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF297:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF592:
	.string	"markFree"
.LASF347:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF160:
	.string	"__WINT_WIDTH__ 32"
.LASF351:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF87:
	.string	"__cpp_rvalue_reference 200610L"
.LASF632:
	.string	"LoadbaseAddr"
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
.LASF694:
	.string	"~FlagMap"
.LASF467:
	.string	"LightGreenOnBlack"
.LASF156:
	.string	"__INT_WIDTH__ 32"
.LASF724:
	.string	"count"
.LASF726:
	.string	"index"
.LASF213:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF88:
	.string	"__cpp_rvalue_references 200610L"
.LASF319:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF703:
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
.LASF459:
	.string	"GreenOnBlack"
.LASF379:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF448:
	.string	"long long unsigned int"
.LASF642:
	.string	"Reserved"
.LASF650:
	.string	"kernelEndAddr"
.LASF41:
	.string	"__WCHAR_TYPE__ int"
.LASF571:
	.string	"_ZN6Kernel7Console5printIJmEEEvPKcDpT_"
.LASF521:
	.string	"getExtent"
.LASF732:
	.string	"multibootInfoAddr"
.LASF494:
	.string	"s_vgaAddress"
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
.LASF688:
	.string	"Console"
.LASF673:
	.string	"s_heapCount"
.LASF493:
	.string	"attr"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF364:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF363:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF539:
	.string	"_ZN6Kernel7Console9printImplIRyJS2_S2_RPKcEEEvS4_OT_DpOT0_"
.LASF264:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF65:
	.string	"__INT_FAST8_TYPE__ int"
.LASF483:
	.string	"BlackOnBrown"
.LASF70:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF716:
	.string	"__data_start"
.LASF602:
	.string	"m_endAddr"
.LASF220:
	.string	"__FLT_MANT_DIG__ 24"
.LASF590:
	.string	"markUsed"
.LASF172:
	.string	"__INT16_MAX__ 0x7fff"
.LASF458:
	.string	"BlueOnBlack"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF479:
	.string	"BlackOnRed"
.LASF78:
	.string	"__cpp_binary_literals 201304L"
.LASF222:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF614:
	.string	"Cmdline"
.LASF654:
	.string	"textEndAddr"
.LASF510:
	.string	"clear"
.LASF190:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF504:
	.string	"_ZN6Kernel7Console11writeStringEPVKcmNS0_10AttributesE"
.LASF496:
	.string	"_ZN6Kernel7Console12s_vgaAddressE"
.LASF644:
	.string	"BadRam"
.LASF609:
	.string	"_ZN6Kernel14HeapLinkedList4freeEPv"
.LASF371:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF578:
	.string	"print<long long unsigned int>"
.LASF250:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF51:
	.string	"__INT32_TYPE__ int"
.LASF361:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF575:
	.string	"_ZN6Kernel7Console5printIJjjEEEvPKcDpT_"
.LASF542:
	.string	"printImpl<char const*&>"
.LASF441:
	.string	"size_t"
.LASF606:
	.string	"initialize"
.LASF649:
	.string	"kernelStartAddr"
.LASF489:
	.string	"width"
.LASF671:
	.string	"s_multibootMmapTag"
.LASF723:
	.string	"offset"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF75:
	.string	"__GXX_WEAK__ 1"
.LASF596:
	.string	"_ZNK6Kernel14HeapLinkedList5Block6isUsedEv"
.LASF491:
	.string	"VgaChar"
.LASF492:
	.string	"character"
.LASF244:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF200:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF625:
	.string	"Smbios"
.LASF207:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF720:
	.string	"__bss_start"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF557:
	.string	"_ZN6Kernel7Console9printImplIRmJRyEEEvPKcOT_DpOT0_"
.LASF322:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF329:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF304:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF622:
	.string	"EfiBootServices"
.LASF594:
	.string	"isUsed"
.LASF672:
	.string	"_ZN6Kernel9MemoryMap18s_multibootMmapTagE"
.LASF145:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF412:
	.string	"__amd64__ 1"
.LASF287:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF608:
	.string	"free"
.LASF414:
	.string	"__x86_64__ 1"
.LASF731:
	.string	"endAddr"
.LASF271:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF196:
	.string	"__UINT32_C(c) c ## U"
.LASF318:
	.string	"__FLT128_DIG__ 33"
.LASF54:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF623:
	.string	"EfiAcpi"
.LASF269:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF159:
	.string	"__WCHAR_WIDTH__ 32"
.LASF298:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF554:
	.string	"putNumDec<long long unsigned int>"
.LASF581:
	.string	"Attributes"
.LASF313:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF147:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF502:
	.string	"_ZN6Kernel7Console9writeCharEmhNS0_10AttributesE"
.LASF62:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF225:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF121:
	.string	"__cpp_constexpr 202002L"
.LASF475:
	.string	"BlackOnGreen"
.LASF125:
	.string	"__cpp_constinit 201907L"
.LASF343:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF137:
	.string	"__cpp_aligned_new 201606L"
.LASF152:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF315:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF501:
	.string	"writeString"
.LASF384:
	.string	"__NO_INLINE__ 1"
.LASF359:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF3:
	.string	"__cplusplus 202002L"
.LASF535:
	.string	"_ZN6Kernel7Console9putNumBinImEEvT_NS0_10AttributesE"
.LASF163:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF382:
	.string	"__USER_LABEL_PREFIX__ "
.LASF307:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF547:
	.string	"_ZN6Kernel7Console9putNumBinIjEEvT_NS0_10AttributesE"
.LASF551:
	.string	"_ZN6Kernel7Console9putNumHexIyEEvT_NS0_10AttributesE"
.LASF66:
	.string	"__INT_FAST16_TYPE__ int"
.LASF39:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF260:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF712:
	.string	"__multiboot_header_start"
.LASF523:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF503:
	.string	"_ZN6Kernel7Console11writeStringEPKcmNS0_10AttributesE"
.LASF626:
	.string	"OemStrings"
.LASF668:
	.string	"s_multibootHeader"
.LASF579:
	.string	"_ZN6Kernel7Console5printIJyEEEvPKcDpT_"
.LASF428:
	.string	"__SSE2_MATH__ 1"
.LASF255:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF286:
	.string	"__FLT32_DIG__ 6"
.LASF129:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF272:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF509:
	.string	"_ZN6Kernel7Console9putStringEPVKcNS0_10AttributesE"
.LASF99:
	.string	"__cpp_variable_templates 201304L"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF645:
	.string	"MultibootMmapEntry"
.LASF205:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF486:
	.string	"WhiteOnLightGray"
.LASF666:
	.string	"_ZN6Kernel9MemoryMap26s_multibootMemoryTypeNamesE"
.LASF94:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF69:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF356:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF326:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF633:
	.string	"MultibootHeader"
.LASF249:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF204:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF295:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF598:
	.string	"data"
.LASF181:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF175:
	.string	"__UINT8_MAX__ 0xff"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF176:
	.string	"__UINT16_MAX__ 0xffff"
.LASF680:
	.string	"_ZN6Kernel9MemoryMap7getHeapEm"
.LASF442:
	.string	"uint8_t"
.LASF278:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF682:
	.string	"updateHardwareCursor"
.LASF167:
	.string	"__INTMAX_WIDTH__ 64"
.LASF231:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF251:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF109:
	.string	"__cpp_capture_star_this 201603L"
.LASF702:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSEOS4_"
.LASF58:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF621:
	.string	"EfiMemmap"
.LASF138:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF259:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF247:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF638:
	.string	"entryVersion"
.LASF237:
	.string	"__DBL_DIG__ 15"
.LASF556:
	.string	"printImpl<long unsigned int&, long long unsigned int&>"
.LASF179:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF574:
	.string	"print<unsigned int, unsigned int>"
.LASF695:
	.string	"_ZN6Kernel14HeapLinkedList8allocateEm"
.LASF130:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF19:
	.string	"__LP64__ 1"
.LASF722:
	.string	"bits"
.LASF734:
	.string	"_ZN6Kernel7Console5printIJEEEvPKcDpT_"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF85:
	.string	"__cpp_decltype 200707L"
.LASF520:
	.string	"getCursor"
.LASF333:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF291:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF18:
	.string	"_LP64 1"
.LASF588:
	.string	"heapId"
.LASF451:
	.string	"long long int"
.LASF733:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O0 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF647:
	.string	"zero"
.LASF698:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4ERKS4_"
.LASF81:
	.string	"__cpp_raw_strings 200710L"
.LASF665:
	.string	"s_multibootMemoryTypeNames"
.LASF150:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF177:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF366:
	.string	"__BFLT16_DIG__ 2"
.LASF700:
	.string	"operator="
.LASF350:
	.string	"__FLT64X_DIG__ 18"
.LASF433:
	.string	"MEMORY_MAP_H "
.LASF641:
	.string	"Available"
.LASF308:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF114:
	.string	"__cpp_structured_bindings 201606L"
.LASF718:
	.string	"__rodata_start"
.LASF618:
	.string	"Bootdev"
.LASF215:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF430:
	.string	"__SEG_FS 1"
.LASF582:
	.string	"BlockFlags"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF197:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF706:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_"
.LASF113:
	.string	"__cpp_template_auto 201606L"
.LASF432:
	.string	"__ELF__ 1"
.LASF171:
	.string	"__INT8_MAX__ 0x7f"
.LASF455:
	.string	"bool"
.LASF362:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF183:
	.string	"__INT16_C(c) c"
.LASF182:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF500:
	.string	"writeChar"
.LASF643:
	.string	"AcpiReclaimable"
.LASF710:
	.string	"__kernel_start"
.LASF611:
	.string	"_ZN6Kernel14HeapLinkedList5alignEm"
.LASF233:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF692:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ev"
.LASF370:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF420:
	.string	"__k8 1"
.LASF697:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ey"
.LASF629:
	.string	"Nvram"
.LASF282:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF327:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF340:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF466:
	.string	"LightBlueOnBlack"
.LASF425:
	.string	"__SSE2__ 1"
.LASF309:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF560:
	.string	"printImpl<unsigned int&, long long unsigned int&, long long unsigned int&, long long unsigned int&, char const*&>"
.LASF605:
	.string	"m_allocatedSize"
.LASF558:
	.string	"printImpl<long unsigned int&>"
.LASF725:
	.string	"buffer"
.LASF375:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF707:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getEv"
.LASF258:
	.string	"__DECIMAL_DIG__ 21"
.LASF661:
	.string	"stackTopAddr"
.LASF691:
	.string	"FlagMap"
.LASF678:
	.string	"_ZN6Kernel9MemoryMap10initialiseEy"
.LASF532:
	.string	"putNumHex<long unsigned int>"
.LASF595:
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
.LASF52:
	.string	"__INT64_TYPE__ long int"
.LASF652:
	.string	"multibootHeaderEndAddr"
.LASF252:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF562:
	.string	"printImpl<unsigned int&, unsigned int&>"
.LASF89:
	.string	"__cpp_variadic_templates 200704L"
.LASF607:
	.string	"_ZN6Kernel14HeapLinkedList10initializeEPvS1_"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF110:
	.string	"__cpp_inline_variables 201606L"
.LASF528:
	.string	"printImpl<long long unsigned int&, char const*&>"
.LASF490:
	.string	"height"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF266:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF465:
	.string	"DarkGrayOnBlack"
.LASF37:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF256:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF116:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF664:
	.string	"_ZN6Kernel9MemoryMap19s_multibootTagNamesE"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF472:
	.string	"WhiteOnBlack"
.LASF320:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF34:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF292:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF473:
	.string	"BlackOnBlue"
.LASF478:
	.string	"WhiteOnCyan"
.LASF169:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF127:
	.string	"__cpp_nontype_template_args 201911L"
.LASF670:
	.string	"_ZN6Kernel9MemoryMap17s_multibootHeaderE"
.LASF173:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF372:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
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
.LASF123:
	.string	"__cpp_conditional_explicit 201806L"
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
.LASF561:
	.string	"_ZN6Kernel7Console9printImplIRjJRyS3_S3_RPKcEEEvS5_OT_DpOT0_"
.LASF134:
	.string	"__cpp_concepts 202002L"
.LASF188:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF104:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF170:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF713:
	.string	"__multiboot_header_end"
.LASF380:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF464:
	.string	"LightGrayOnBlack"
.LASF144:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF506:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF117:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF599:
	.string	"_ZN6Kernel14HeapLinkedList5Block4dataEv"
.LASF438:
	.string	"UTILS_H "
.LASF469:
	.string	"LightRedOnBlack"
.LASF226:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF593:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markFreeEv"
.LASF306:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF235:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF67:
	.string	"__INT_FAST32_TYPE__ int"
.LASF553:
	.string	"_ZN6Kernel7Console9putNumBinIyEEvT_NS0_10AttributesE"
.LASF358:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF570:
	.string	"print<long unsigned int>"
.LASF436:
	.string	"CONSOLE_H "
.LASF540:
	.string	"printImpl<unsigned int&>"
.LASF185:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF413:
	.string	"__x86_64 1"
.LASF534:
	.string	"putNumBin<long unsigned int>"
.LASF730:
	.string	"startAddr"
.LASF450:
	.string	"short int"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF146:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF331:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF142:
	.string	"__GXX_ABI_VERSION 1018"
.LASF141:
	.string	"__cpp_char8_t 202207L"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF336:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF505:
	.string	"putChar"
.LASF440:
	.string	"long int"
.LASF330:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF111:
	.string	"__cpp_aggregate_bases 201603L"
.LASF166:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF498:
	.string	"s_cursorPos"
.LASF374:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF354:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF522:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF705:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setEy"
.LASF357:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF335:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF481:
	.string	"BlackOnMagenta"
.LASF212:
	.string	"__INTPTR_WIDTH__ 64"
.LASF619:
	.string	"Mmap"
.LASF342:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF586:
	.string	"next"
.LASF186:
	.string	"__INT32_C(c) c"
.LASF296:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF267:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF49:
	.string	"__INT8_TYPE__ signed char"
.LASF530:
	.string	"_ZN6Kernel7Console9printImplIRyJRPKcEEEvS4_OT_DpOT0_"
.LASF45:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF684:
	.string	"_ZN6Kernel7Console20updateHardwareCursorEv"
.LASF662:
	.string	"stackBottomAddr"
.LASF667:
	.string	"s_kernelMemoryRegion"
.LASF565:
	.string	"_ZN6Kernel7Console9printImplIRjJRPKcEEEvS4_OT_DpOT0_"
.LASF679:
	.string	"getHeap"
.LASF314:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF512:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF488:
	.string	"Extent"
.LASF447:
	.string	"uint64_t"
.LASF527:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF616:
	.string	"Module"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF209:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF105:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF676:
	.string	"_ZN6Kernel9MemoryMap7s_heapsE"
.LASF519:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF627:
	.string	"AcpiOld"
.LASF460:
	.string	"CyanOnBlack"
.LASF549:
	.string	"_ZN6Kernel7Console9putNumDecIjEEvT_NS0_10AttributesE"
.LASF279:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF53:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF155:
	.string	"__SHRT_WIDTH__ 16"
.LASF648:
	.string	"KernelMemoryRegion"
.LASF685:
	.string	"_ZN6Kernel9MemoryMap17parseMemoryMapTagEv"
.LASF573:
	.string	"_ZN6Kernel7Console5printIJjyyyPKcEEEvS3_DpT_"
.LASF517:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF164:
	.string	"__INTMAX_C(c) c ## L"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF646:
	.string	"addr"
.LASF515:
	.string	"clearSpan"
.LASF452:
	.string	"is_enum_v"
.LASF80:
	.string	"__cpp_runtime_arrays 198712L"
.LASF195:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF368:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF349:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF541:
	.string	"_ZN6Kernel7Console9printImplIRjJEEEvPKcOT_DpOT0_"
.LASF311:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF203:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF550:
	.string	"putNumHex<long long unsigned int>"
.LASF589:
	.string	"magic"
.LASF38:
	.string	"__GNUG__ 13"
.LASF148:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF636:
	.string	"MultibootTagMmap"
.LASF198:
	.string	"__UINT64_C(c) c ## UL"
.LASF471:
	.string	"YellowOnBlack"
.LASF482:
	.string	"WhiteOnMagenta"
.LASF245:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF453:
	.string	"is_integral_v"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF108:
	.string	"__cpp_if_constexpr 201606L"
.LASF50:
	.string	"__INT16_TYPE__ short int"
.LASF128:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF511:
	.string	"clearLine"
.LASF369:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF735:
	.string	"HeapLinkedList"
.LASF439:
	.string	"long unsigned int"
.LASF631:
	.string	"EfiMemmap4"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF76:
	.string	"__DEPRECATED 1"
.LASF663:
	.string	"s_multibootTagNames"
.LASF677:
	.string	"initialise"
.LASF580:
	.string	"print<>"
.LASF495:
	.string	"s_extent"
.LASF28:
	.string	"__CHAR_BIT__ 8"
.LASF567:
	.string	"_ZN6Kernel7Console9printImplIRyJEEEvPKcOT_DpOT0_"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF634:
	.string	"MultibootTag"
.LASF162:
	.string	"__SIZE_WIDTH__ 64"
.LASF140:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF406:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF283:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF701:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSERKS4_"
.LASF157:
	.string	"__LONG_WIDTH__ 64"
.LASF178:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF437:
	.string	"HEAP_H "
.LASF729:
	.string	"entry"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF124:
	.string	"__cpp_consteval 201811L"
.LASF224:
	.string	"__FLT_MAX_EXP__ 128"
.LASF635:
	.string	"type"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF317:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF443:
	.string	"unsigned char"
.LASF568:
	.string	"print<long unsigned int, long long unsigned int>"
.LASF615:
	.string	"BootLoaderName"
.LASF690:
	.string	"m_flags"
.LASF229:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF122:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF294:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF603:
	.string	"m_usedSize"
.LASF218:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF525:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF572:
	.string	"print<unsigned int, long long unsigned int, long long unsigned int, long long unsigned int, char const*>"
.LASF426:
	.string	"__FXSR__ 1"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF187:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF507:
	.string	"putString"
.LASF711:
	.string	"__kernel_end"
.LASF423:
	.string	"__MMX__ 1"
.LASF377:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF708:
	.string	"stack_bottom"
.LASF513:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF84:
	.string	"__cpp_lambdas 200907L"
.LASF434:
	.string	"TYPES_H "
.LASF693:
	.string	"allocate"
.LASF153:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF658:
	.string	"rodataEndAddr"
.LASF303:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF365:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF524:
	.string	"getWindowCapacity"
.LASF246:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF355:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF59:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF139:
	.string	"__cpp_template_template_args 201611L"
.LASF63:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF86:
	.string	"__cpp_attributes 200809L"
.LASF348:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF223:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF480:
	.string	"WhiteOnRed"
.LASF669:
	.string	"_ZN6Kernel9MemoryMap20s_kernelMemoryRegionE"
.LASF217:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF736:
	.string	"MemoryMap"
.LASF456:
	.string	"Kernel"
.LASF189:
	.string	"__INT64_C(c) c ## L"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF584:
	.string	"Block"
.LASF227:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF604:
	.string	"m_availibleSize"
.LASF628:
	.string	"AcpiNew"
.LASF98:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF576:
	.string	"print<unsigned int, char const*>"
.LASF91:
	.string	"__cpp_delegating_constructors 200604L"
.LASF727:
	.string	"dataSize"
.LASF68:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF485:
	.string	"BlackOnLightGray"
.LASF624:
	.string	"EfiMemmap2"
.LASF630:
	.string	"EfiMemmap3"
.LASF449:
	.string	"signed char"
.LASF566:
	.string	"printImpl<long long unsigned int&>"
.LASF135:
	.string	"__cpp_impl_coroutine 201902L"
.LASF241:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF674:
	.string	"_ZN6Kernel9MemoryMap11s_heapCountE"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF444:
	.string	"short unsigned int"
.LASF131:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF600:
	.string	"m_head"
.LASF383:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF101:
	.string	"__cpp_unicode_characters 201411L"
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF704:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_"
.LASF328:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF518:
	.string	"setCursor"
.LASF719:
	.string	"__rodata_end"
.LASF484:
	.string	"WhiteOnBrown"
.LASF613:
	.string	"reserved"
.LASF312:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF2:
	.string	"__STDC__ 1"
.LASF325:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF208:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF381:
	.string	"__REGISTER_PREFIX__ "
.LASF457:
	.string	"BlackOnBlack"
.LASF276:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF242:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF583:
	.string	"Used"
.LASF338:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF43:
	.string	"__INTMAX_TYPE__ long int"
.LASF274:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF36:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF341:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF228:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF660:
	.string	"bssdataEndAddr"
.LASF681:
	.string	"getHeapCount"
.LASF597:
	.string	"_ZN6Kernel14HeapLinkedList5Block4sizeEv"
.LASF290:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF323:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF367:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF102:
	.string	"__cpp_static_assert 201411L"
.LASF537:
	.string	"_ZN6Kernel7Console9putNumDecImEEvT_NS0_10AttributesE"
.LASF610:
	.string	"align"
.LASF72:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF538:
	.string	"printImpl<long long unsigned int&, long long unsigned int&, long long unsigned int&, char const*&>"
.LASF257:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF74:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF118:
	.string	"__cpp_init_captures 201803L"
.LASF659:
	.string	"bssStartAddr"
.LASF651:
	.string	"multibootHeaderStartAddr"
.LASF577:
	.string	"_ZN6Kernel7Console5printIJjPKcEEEvS3_DpT_"
.LASF48:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF544:
	.string	"putNumHex<unsigned int>"
.LASF132:
	.string	"__cpp_aggregate_paren_init 201902L"
.LASF136:
	.string	"__cpp_sized_deallocation 201309L"
.LASF239:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF115:
	.string	"__cpp_variadic_using 201611L"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF332:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF42:
	.string	"__WINT_TYPE__ unsigned int"
.LASF265:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF468:
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
.LASF1:
	.string	"/mnt/a/myOsX64"
.LASF0:
	.string	"src/kernel/MemoryMap.cpp"
	.ident	"GCC: (GNU) 13.2.0"
