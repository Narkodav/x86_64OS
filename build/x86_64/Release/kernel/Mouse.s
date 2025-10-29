	.file	"Mouse.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/Mouse.cpp"
	.align 2
	.globl	_ZN6Kernel5Mouse16interruptHandlerERNS_14InterruptFrameE
	.type	_ZN6Kernel5Mouse16interruptHandlerERNS_14InterruptFrameE, @function
_ZN6Kernel5Mouse16interruptHandlerERNS_14InterruptFrameE:
.LVL0:
.LFB77:
	.file 1 "src/kernel/Mouse.cpp"
	.loc 1 15 5 view -0
	.cfi_startproc
	.loc 1 15 5 is_stmt 0 view .LVU1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 16 9 is_stmt 1 view .LVU2
	.loc 1 16 36 is_stmt 0 view .LVU3
	movl	$96, %edi
.LVL1:
	.loc 1 16 36 view .LVU4
	call	port_in_byte
.LVL2:
	.loc 1 19 9 is_stmt 1 view .LVU5
	.loc 1 19 21 is_stmt 0 view .LVU6
	movzbl	_ZN6Kernel5Mouse7s_cycleE(%rip), %edx
	.loc 1 19 9 view .LVU7
	testb	%dl, %dl
	jne	.L2
	.loc 1 19 26 discriminator 1 view .LVU8
	testb	$8, %al
	je	.L1
	.loc 1 24 9 is_stmt 1 view .LVU9
	.loc 1 24 29 is_stmt 0 view .LVU10
	movb	$1, _ZN6Kernel5Mouse7s_cycleE(%rip)
	.loc 1 24 33 view .LVU11
	movb	%al, _ZN6Kernel5Mouse12s_mouseBytesE(%rip)
	.loc 1 26 9 is_stmt 1 view .LVU12
	jmp	.L1
.L2:
	.loc 1 24 9 view .LVU13
	.loc 1 24 29 is_stmt 0 view .LVU14
	leal	1(%rdx), %ecx
	.loc 1 24 33 view .LVU15
	movzbl	%dl, %esi
	movb	%al, _ZN6Kernel5Mouse12s_mouseBytesE(%rsi)
	.loc 1 26 9 is_stmt 1 view .LVU16
.LBB5:
.LBB6:
	.loc 1 37 21 is_stmt 0 view .LVU17
	cmpb	$2, %dl
	movl	$0, %eax
.LVL3:
	.loc 1 37 21 view .LVU18
	cmovne	%ecx, %eax
	movb	%al, _ZN6Kernel5Mouse7s_cycleE(%rip)
.LVL4:
.L1:
	.loc 1 37 21 view .LVU19
.LBE6:
.LBE5:
	.loc 1 39 5 view .LVU20
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	_ZN6Kernel5Mouse16interruptHandlerERNS_14InterruptFrameE, .-_ZN6Kernel5Mouse16interruptHandlerERNS_14InterruptFrameE
	.align 2
	.globl	_ZN6Kernel5Mouse10initialiseEv
	.type	_ZN6Kernel5Mouse10initialiseEv, @function
_ZN6Kernel5Mouse10initialiseEv:
.LFB76:
	.loc 1 5 5 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 6 9 view .LVU22
	.loc 1 6 52 is_stmt 0 view .LVU23
	movq	$_ZN6Kernel5Mouse16interruptHandlerERNS_14InterruptFrameE, %rsi
	movl	$44, %edi
	call	_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE
.LVL5:
	.loc 1 7 9 is_stmt 1 view .LVU24
	.loc 1 7 22 is_stmt 0 view .LVU25
	movl	$168, %esi
	movl	$100, %edi
	call	port_out_byte
.LVL6:
	.loc 1 8 9 is_stmt 1 view .LVU26
	.loc 1 8 22 is_stmt 0 view .LVU27
	movl	$32, %esi
	movl	$100, %edi
	call	port_out_byte
.LVL7:
	.loc 1 9 9 is_stmt 1 view .LVU28
	.loc 1 9 38 is_stmt 0 view .LVU29
	movl	$96, %edi
	call	port_in_byte
.LVL8:
	movl	%eax, %ebx
.LVL9:
	.loc 1 10 9 is_stmt 1 view .LVU30
	.loc 1 10 22 is_stmt 0 view .LVU31
	movl	$96, %esi
	movl	$100, %edi
	call	port_out_byte
.LVL10:
	.loc 1 11 9 is_stmt 1 view .LVU32
	.loc 1 11 36 is_stmt 0 view .LVU33
	orl	$2, %ebx
.LVL11:
	.loc 1 11 22 view .LVU34
	movzbl	%bl, %esi
	movl	$96, %edi
	call	port_out_byte
.LVL12:
	.loc 1 12 5 view .LVU35
	movq	-8(%rbp), %rbx
	leave
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	_ZN6Kernel5Mouse10initialiseEv, .-_ZN6Kernel5Mouse10initialiseEv
	.type	_GLOBAL__sub_I__ZN6Kernel5Mouse10initialiseEv, @function
_GLOBAL__sub_I__ZN6Kernel5Mouse10initialiseEv:
.LFB82:
	.loc 1 40 1 is_stmt 1 view -0
	.cfi_startproc
.LBB12:
.LBI12:
	.loc 1 40 1 view .LVU37
.LBB13:
	.file 2 "src/kernel/../../include/kernel/Console.h"
	.loc 2 72 95 is_stmt 0 view .LVU38
	cmpb	$0, _ZGVN6Kernel7Console12s_charBufferE(%rip)
	jne	.L9
	.loc 2 72 95 discriminator 1 view .LVU39
	movb	$1, _ZGVN6Kernel7Console12s_charBufferE(%rip)
.LVL13:
.LBB14:
.LBI14:
	.file 3 "src/kernel/../../include/kernel/../utils/RollingWindow.h"
	.loc 3 14 5 is_stmt 1 view .LVU40
.LBB15:
.LBB16:
	.loc 3 15 5 discriminator 1 view .LVU41
.LBE16:
	.loc 3 14 5 is_stmt 0 view .LVU42
	movl	$2048, %eax
.L11:
.LBB17:
	.loc 3 15 5 is_stmt 1 discriminator 1 view .LVU43
	subq	$1, %rax
	jne	.L11
	.loc 3 15 5 is_stmt 0 discriminator 4 view .LVU44
	movq	$0, _ZN6Kernel7Console12s_charBufferE+327680(%rip)
	movq	$0, _ZN6Kernel7Console12s_charBufferE+327688(%rip)
.LVL14:
.L9:
	.loc 3 15 5 discriminator 4 view .LVU45
.LBE17:
.LBE15:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 40 1 view .LVU46
	ret
	.cfi_endproc
.LFE82:
	.size	_GLOBAL__sub_I__ZN6Kernel5Mouse10initialiseEv, .-_GLOBAL__sub_I__ZN6Kernel5Mouse10initialiseEv
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__ZN6Kernel5Mouse10initialiseEv
	.weak	_ZGVN6Kernel7Console12s_charBufferE
	.section	.bss._ZGVN6Kernel7Console12s_charBufferE,"awG",@nobits,_ZGVN6Kernel7Console12s_charBufferE,comdat
	.align 8
	.type	_ZGVN6Kernel7Console12s_charBufferE, @object
	.size	_ZGVN6Kernel7Console12s_charBufferE, 8
_ZGVN6Kernel7Console12s_charBufferE:
	.zero	8
	.weak	_ZN6Kernel5Mouse12s_mouseBytesE
	.section	.bss._ZN6Kernel5Mouse12s_mouseBytesE,"awG",@nobits,_ZN6Kernel5Mouse12s_mouseBytesE,comdat
	.type	_ZN6Kernel5Mouse12s_mouseBytesE, @object
	.size	_ZN6Kernel5Mouse12s_mouseBytesE, 3
_ZN6Kernel5Mouse12s_mouseBytesE:
	.zero	3
	.weak	_ZN6Kernel5Mouse7s_cycleE
	.section	.bss._ZN6Kernel5Mouse7s_cycleE,"awG",@nobits,_ZN6Kernel5Mouse7s_cycleE,comdat
	.type	_ZN6Kernel5Mouse7s_cycleE, @object
	.size	_ZN6Kernel5Mouse7s_cycleE, 1
_ZN6Kernel5Mouse7s_cycleE:
	.zero	1
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
	.file 5 "src/kernel/../../include/kernel/InterruptManager.h"
	.file 6 "src/kernel/../../include/kernel/Mouse.h"
	.file 7 "src/kernel/../../include/kernel/../utils/Utils.h"
	.file 8 "src/kernel/../../include/kernel/../utils/Array.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xfd7
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2c
	.long	.LASF701
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0xd
	.long	.LASF443
	.byte	0x4
	.byte	0x5
	.byte	0x17
	.long	0x48
	.uleb128 0x9
	.long	0x32
	.uleb128 0x16
	.long	0x32
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF441
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF442
	.uleb128 0xd
	.long	.LASF444
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.long	0x67
	.uleb128 0x9
	.long	0x56
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF445
	.uleb128 0xd
	.long	.LASF446
	.byte	0x4
	.byte	0x9
	.byte	0x18
	.long	0x7a
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF447
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF448
	.uleb128 0xd
	.long	.LASF449
	.byte	0x4
	.byte	0xb
	.byte	0x1c
	.long	0x94
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF450
	.uleb128 0xd
	.long	.LASF451
	.byte	0x4
	.byte	0xd
	.byte	0x15
	.long	0xa7
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF452
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF453
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF454
	.uleb128 0x2e
	.string	"std"
	.byte	0x4
	.byte	0x16
	.byte	0xb
	.long	0xdd
	.uleb128 0x2f
	.long	.LASF694
	.byte	0x4
	.byte	0xc5
	.byte	0x17
	.long	0xe4
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.long	.LASF455
	.uleb128 0x9
	.long	0xdd
	.uleb128 0x16
	.long	0xdd
	.uleb128 0x1e
	.long	.LASF456
	.byte	0x2
	.byte	0xa
	.long	0x84c
	.uleb128 0x17
	.long	.LASF549
	.byte	0x1
	.byte	0x2
	.byte	0xc
	.long	0x49e
	.uleb128 0x1f
	.long	.LASF551
	.long	0x56
	.byte	0x2
	.byte	0xf
	.long	0x1c9
	.uleb128 0x1
	.long	.LASF457
	.byte	0
	.uleb128 0x1
	.long	.LASF458
	.byte	0x1
	.uleb128 0x1
	.long	.LASF459
	.byte	0x2
	.uleb128 0x1
	.long	.LASF460
	.byte	0x3
	.uleb128 0x1
	.long	.LASF461
	.byte	0x4
	.uleb128 0x1
	.long	.LASF462
	.byte	0x5
	.uleb128 0x1
	.long	.LASF463
	.byte	0x6
	.uleb128 0x1
	.long	.LASF464
	.byte	0x7
	.uleb128 0x1
	.long	.LASF465
	.byte	0x8
	.uleb128 0x1
	.long	.LASF466
	.byte	0x9
	.uleb128 0x1
	.long	.LASF467
	.byte	0xa
	.uleb128 0x1
	.long	.LASF468
	.byte	0xb
	.uleb128 0x1
	.long	.LASF469
	.byte	0xc
	.uleb128 0x1
	.long	.LASF470
	.byte	0xd
	.uleb128 0x1
	.long	.LASF471
	.byte	0xe
	.uleb128 0x1
	.long	.LASF472
	.byte	0xf
	.uleb128 0x1
	.long	.LASF473
	.byte	0x10
	.uleb128 0x1
	.long	.LASF474
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF475
	.byte	0x20
	.uleb128 0x1
	.long	.LASF476
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF477
	.byte	0x30
	.uleb128 0x1
	.long	.LASF478
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF479
	.byte	0x40
	.uleb128 0x1
	.long	.LASF480
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF481
	.byte	0x50
	.uleb128 0x1
	.long	.LASF482
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF483
	.byte	0x60
	.uleb128 0x1
	.long	.LASF484
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF485
	.byte	0x70
	.uleb128 0x1
	.long	.LASF486
	.byte	0x7f
	.byte	0
	.uleb128 0x18
	.long	.LASF487
	.byte	0x10
	.byte	0x31
	.long	0x1eb
	.uleb128 0x4
	.string	"x"
	.byte	0x2
	.byte	0x33
	.byte	0x14
	.long	0x32
	.byte	0
	.uleb128 0x4
	.string	"y"
	.byte	0x2
	.byte	0x34
	.byte	0x14
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.long	0x1c9
	.uleb128 0x9
	.long	0x1eb
	.uleb128 0x18
	.long	.LASF488
	.byte	0x10
	.byte	0x37
	.long	0x21b
	.uleb128 0xa
	.long	.LASF489
	.byte	0x2
	.byte	0x39
	.byte	0x14
	.long	0x32
	.byte	0
	.uleb128 0xa
	.long	.LASF490
	.byte	0x2
	.byte	0x3a
	.byte	0x14
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x1f5
	.uleb128 0x18
	.long	.LASF491
	.byte	0x2
	.byte	0x3d
	.long	0x246
	.uleb128 0xa
	.long	.LASF492
	.byte	0x2
	.byte	0x3f
	.byte	0x15
	.long	0x56
	.byte	0
	.uleb128 0xa
	.long	.LASF493
	.byte	0x2
	.byte	0x40
	.byte	0x18
	.long	0x105
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	0x220
	.uleb128 0x30
	.long	.LASF494
	.byte	0x2
	.byte	0x44
	.byte	0x21
	.long	.LASF496
	.long	0x21b
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
	.uleb128 0x31
	.long	.LASF601
	.byte	0x2
	.byte	0x46
	.byte	0x2b
	.long	.LASF603
	.long	0x862
	.long	0xb8000
	.byte	0x3
	.uleb128 0x20
	.long	.LASF495
	.byte	0x47
	.long	.LASF497
	.long	0x3e
	.value	0x800
	.uleb128 0xe
	.long	.LASF500
	.byte	0x2
	.byte	0x48
	.byte	0x5f
	.long	.LASF502
	.long	0xaa7
	.uleb128 0x20
	.long	.LASF498
	.byte	0x49
	.long	.LASF499
	.long	0x3e
	.value	0x7d0
	.uleb128 0xe
	.long	.LASF501
	.byte	0x2
	.byte	0x4a
	.byte	0x2a
	.long	.LASF503
	.long	0x1eb
	.uleb128 0xe
	.long	.LASF504
	.byte	0x2
	.byte	0x4b
	.byte	0x27
	.long	.LASF505
	.long	0x43
	.uleb128 0xe
	.long	.LASF506
	.byte	0x2
	.byte	0x4c
	.byte	0x25
	.long	.LASF507
	.long	0xe9
	.uleb128 0xe
	.long	.LASF508
	.byte	0x2
	.byte	0x4d
	.byte	0x25
	.long	.LASF509
	.long	0xe9
	.uleb128 0x13
	.long	.LASF510
	.byte	0x2
	.byte	0x50
	.long	.LASF512
	.long	0x316
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x105
	.byte	0
	.uleb128 0x13
	.long	.LASF511
	.byte	0x2
	.byte	0x69
	.long	.LASF513
	.long	0x330
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x105
	.byte	0
	.uleb128 0xb
	.long	.LASF514
	.value	0x15f
	.long	.LASF516
	.long	0x34a
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x105
	.byte	0
	.uleb128 0xb
	.long	.LASF515
	.value	0x160
	.long	.LASF517
	.long	0x364
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x105
	.byte	0
	.uleb128 0xb
	.long	.LASF515
	.value	0x162
	.long	.LASF518
	.long	0x383
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x105
	.byte	0
	.uleb128 0xb
	.long	.LASF519
	.value	0x165
	.long	.LASF520
	.long	0x3a7
	.uleb128 0x2
	.long	0x1c9
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x105
	.byte	0
	.uleb128 0xb
	.long	.LASF519
	.value	0x168
	.long	.LASF521
	.long	0x3cb
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x105
	.byte	0
	.uleb128 0xb
	.long	.LASF522
	.value	0x16b
	.long	.LASF523
	.long	0x3e0
	.uleb128 0x2
	.long	0x1c9
	.byte	0
	.uleb128 0x19
	.long	.LASF524
	.value	0x16c
	.byte	0x2a
	.long	.LASF526
	.long	0xd1b
	.uleb128 0x19
	.long	.LASF525
	.value	0x16d
	.byte	0x1e
	.long	.LASF527
	.long	0xd20
	.uleb128 0x19
	.long	.LASF528
	.value	0x16e
	.byte	0x1e
	.long	.LASF529
	.long	0xd25
	.uleb128 0xb
	.long	.LASF530
	.value	0x170
	.long	.LASF531
	.long	0x425
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0xb
	.long	.LASF532
	.value	0x171
	.long	.LASF533
	.long	0x43a
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x1a
	.long	.LASF534
	.value	0x173
	.long	.LASF536
	.uleb128 0x1a
	.long	.LASF535
	.value	0x174
	.long	.LASF537
	.uleb128 0xb
	.long	.LASF538
	.value	0x176
	.long	.LASF539
	.long	0x465
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x1a
	.long	.LASF540
	.value	0x178
	.long	.LASF541
	.uleb128 0x21
	.long	.LASF542
	.value	0x17b
	.long	.LASF544
	.uleb128 0x21
	.long	.LASF543
	.value	0x17c
	.long	.LASF545
	.uleb128 0x32
	.long	.LASF615
	.byte	0x2
	.value	0x17d
	.byte	0x15
	.long	.LASF702
	.long	0xdd
	.uleb128 0x2
	.long	0xd2a
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF703
	.byte	0xb0
	.byte	0x5
	.byte	0xa
	.byte	0xc
	.long	0x5c6
	.uleb128 0x4
	.string	"r15"
	.byte	0x5
	.byte	0xd
	.byte	0x12
	.long	0x88
	.byte	0
	.uleb128 0x4
	.string	"r14"
	.byte	0x5
	.byte	0xd
	.byte	0x17
	.long	0x88
	.byte	0x8
	.uleb128 0x4
	.string	"r13"
	.byte	0x5
	.byte	0xd
	.byte	0x1c
	.long	0x88
	.byte	0x10
	.uleb128 0x4
	.string	"r12"
	.byte	0x5
	.byte	0xd
	.byte	0x21
	.long	0x88
	.byte	0x18
	.uleb128 0x4
	.string	"r11"
	.byte	0x5
	.byte	0xd
	.byte	0x26
	.long	0x88
	.byte	0x20
	.uleb128 0x4
	.string	"r10"
	.byte	0x5
	.byte	0xd
	.byte	0x2b
	.long	0x88
	.byte	0x28
	.uleb128 0x4
	.string	"r9"
	.byte	0x5
	.byte	0xd
	.byte	0x30
	.long	0x88
	.byte	0x30
	.uleb128 0x4
	.string	"r8"
	.byte	0x5
	.byte	0xd
	.byte	0x34
	.long	0x88
	.byte	0x38
	.uleb128 0x4
	.string	"rbp"
	.byte	0x5
	.byte	0xe
	.byte	0x12
	.long	0x88
	.byte	0x40
	.uleb128 0x4
	.string	"rdi"
	.byte	0x5
	.byte	0xe
	.byte	0x17
	.long	0x88
	.byte	0x48
	.uleb128 0x4
	.string	"rsi"
	.byte	0x5
	.byte	0xe
	.byte	0x1c
	.long	0x88
	.byte	0x50
	.uleb128 0x4
	.string	"rdx"
	.byte	0x5
	.byte	0xe
	.byte	0x21
	.long	0x88
	.byte	0x58
	.uleb128 0x4
	.string	"rcx"
	.byte	0x5
	.byte	0xe
	.byte	0x26
	.long	0x88
	.byte	0x60
	.uleb128 0x4
	.string	"rbx"
	.byte	0x5
	.byte	0xe
	.byte	0x2b
	.long	0x88
	.byte	0x68
	.uleb128 0x4
	.string	"rax"
	.byte	0x5
	.byte	0xe
	.byte	0x30
	.long	0x88
	.byte	0x70
	.uleb128 0xa
	.long	.LASF546
	.byte	0x5
	.byte	0x11
	.byte	0x12
	.long	0x88
	.byte	0x78
	.uleb128 0xa
	.long	.LASF547
	.byte	0x5
	.byte	0x12
	.byte	0x12
	.long	0x88
	.byte	0x80
	.uleb128 0x4
	.string	"rip"
	.byte	0x5
	.byte	0x15
	.byte	0x12
	.long	0x88
	.byte	0x88
	.uleb128 0x4
	.string	"cs"
	.byte	0x5
	.byte	0x16
	.byte	0x12
	.long	0x88
	.byte	0x90
	.uleb128 0xa
	.long	.LASF548
	.byte	0x5
	.byte	0x17
	.byte	0x12
	.long	0x88
	.byte	0x98
	.uleb128 0x4
	.string	"rsp"
	.byte	0x5
	.byte	0x18
	.byte	0x12
	.long	0x88
	.byte	0xa0
	.uleb128 0x4
	.string	"ss"
	.byte	0x5
	.byte	0x19
	.byte	0x12
	.long	0x88
	.byte	0xa8
	.byte	0
	.uleb128 0x17
	.long	.LASF550
	.byte	0x1
	.byte	0x5
	.byte	0x77
	.long	0x7f9
	.uleb128 0x1f
	.long	.LASF552
	.long	0x56
	.byte	0x5
	.byte	0x7a
	.long	0x702
	.uleb128 0x1
	.long	.LASF553
	.byte	0
	.uleb128 0x1
	.long	.LASF554
	.byte	0x1
	.uleb128 0x1
	.long	.LASF555
	.byte	0x2
	.uleb128 0x1
	.long	.LASF556
	.byte	0x3
	.uleb128 0x1
	.long	.LASF557
	.byte	0x4
	.uleb128 0x1
	.long	.LASF558
	.byte	0x5
	.uleb128 0x1
	.long	.LASF559
	.byte	0x6
	.uleb128 0x1
	.long	.LASF560
	.byte	0x7
	.uleb128 0x1
	.long	.LASF561
	.byte	0x8
	.uleb128 0x1
	.long	.LASF562
	.byte	0x9
	.uleb128 0x1
	.long	.LASF563
	.byte	0xa
	.uleb128 0x1
	.long	.LASF564
	.byte	0xb
	.uleb128 0x1
	.long	.LASF565
	.byte	0xc
	.uleb128 0x1
	.long	.LASF566
	.byte	0xd
	.uleb128 0x1
	.long	.LASF567
	.byte	0xe
	.uleb128 0x1
	.long	.LASF568
	.byte	0xf
	.uleb128 0x1
	.long	.LASF569
	.byte	0x10
	.uleb128 0x1
	.long	.LASF570
	.byte	0x11
	.uleb128 0x1
	.long	.LASF571
	.byte	0x12
	.uleb128 0x1
	.long	.LASF572
	.byte	0x13
	.uleb128 0x1
	.long	.LASF573
	.byte	0x14
	.uleb128 0x1
	.long	.LASF574
	.byte	0x15
	.uleb128 0x1
	.long	.LASF575
	.byte	0x16
	.uleb128 0x1
	.long	.LASF576
	.byte	0x17
	.uleb128 0x1
	.long	.LASF577
	.byte	0x18
	.uleb128 0x1
	.long	.LASF578
	.byte	0x19
	.uleb128 0x1
	.long	.LASF579
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF580
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF581
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF582
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF583
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF584
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF585
	.byte	0x20
	.uleb128 0x1
	.long	.LASF586
	.byte	0x21
	.uleb128 0x1
	.long	.LASF587
	.byte	0x22
	.uleb128 0x1
	.long	.LASF588
	.byte	0x23
	.uleb128 0x1
	.long	.LASF589
	.byte	0x24
	.uleb128 0x1
	.long	.LASF590
	.byte	0x25
	.uleb128 0x1
	.long	.LASF591
	.byte	0x26
	.uleb128 0x1
	.long	.LASF592
	.byte	0x27
	.uleb128 0x1
	.long	.LASF593
	.byte	0x28
	.uleb128 0x1
	.long	.LASF594
	.byte	0x29
	.uleb128 0x1
	.long	.LASF595
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF596
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF597
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF598
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF599
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF600
	.byte	0x2f
	.byte	0
	.uleb128 0x1b
	.long	.LASF602
	.byte	0xb8
	.byte	0x25
	.long	.LASF604
	.long	0x62
	.byte	0x8e
	.uleb128 0x34
	.long	.LASF605
	.byte	0x5
	.byte	0xb9
	.byte	0x24
	.long	.LASF606
	.long	0x3e
	.value	0x100
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF607
	.byte	0xba
	.byte	0x24
	.long	.LASF608
	.long	0x3e
	.byte	0x20
	.uleb128 0x1b
	.long	.LASF609
	.byte	0xbb
	.byte	0x24
	.long	.LASF610
	.long	0x3e
	.byte	0x10
	.uleb128 0x22
	.long	.LASF611
	.byte	0x5
	.byte	0xc5
	.long	.LASF633
	.uleb128 0x13
	.long	.LASF612
	.byte	0x5
	.byte	0xc6
	.long	.LASF613
	.long	0x76a
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x7f9
	.byte	0
	.uleb128 0x13
	.long	.LASF612
	.byte	0x5
	.byte	0xc7
	.long	.LASF614
	.long	0x784
	.uleb128 0x2
	.long	0x5d2
	.uleb128 0x2
	.long	0x7f9
	.byte	0
	.uleb128 0x23
	.long	.LASF616
	.byte	0xca
	.byte	0x15
	.long	.LASF625
	.long	0x7a8
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x7a8
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x56
	.byte	0
	.uleb128 0xd
	.long	.LASF617
	.byte	0x5
	.byte	0xb6
	.byte	0xf
	.long	0xd4b
	.uleb128 0x1c
	.long	.LASF618
	.byte	0xcc
	.long	.LASF620
	.uleb128 0x1c
	.long	.LASF619
	.byte	0xcd
	.long	.LASF621
	.uleb128 0x1c
	.long	.LASF622
	.byte	0xce
	.long	.LASF623
	.uleb128 0x23
	.long	.LASF624
	.byte	0xcf
	.byte	0x1c
	.long	.LASF626
	.long	0x7e7
	.uleb128 0x2
	.long	0xd46
	.byte	0
	.uleb128 0x24
	.long	.LASF635
	.byte	0x5
	.byte	0xd0
	.long	.LASF637
	.uleb128 0x2
	.long	0xd46
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF627
	.byte	0x5
	.byte	0x2d
	.byte	0xb
	.long	0xd36
	.uleb128 0x35
	.long	.LASF704
	.byte	0x1
	.byte	0x6
	.byte	0xb
	.byte	0xb
	.uleb128 0xe
	.long	.LASF628
	.byte	0x6
	.byte	0xe
	.byte	0x1f
	.long	.LASF629
	.long	0x56
	.uleb128 0xe
	.long	.LASF630
	.byte	0x6
	.byte	0xf
	.byte	0x1f
	.long	.LASF631
	.long	0xd51
	.uleb128 0x22
	.long	.LASF632
	.byte	0x6
	.byte	0x12
	.long	.LASF634
	.uleb128 0x24
	.long	.LASF636
	.byte	0x6
	.byte	0x15
	.long	.LASF638
	.uleb128 0x2
	.long	0xd46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x220
	.long	0x862
	.uleb128 0x15
	.long	0x48
	.byte	0x18
	.uleb128 0x15
	.long	0x48
	.byte	0x4f
	.byte	0
	.uleb128 0x8
	.long	0x84c
	.uleb128 0x1e
	.long	.LASF639
	.byte	0x7
	.byte	0x19
	.long	0xa69
	.uleb128 0x17
	.long	.LASF640
	.byte	0xa0
	.byte	0x8
	.byte	0x7
	.long	0xa63
	.uleb128 0xa
	.long	.LASF641
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.long	0xa69
	.byte	0
	.uleb128 0x1d
	.long	.LASF642
	.byte	0xe
	.long	.LASF643
	.long	0x89d
	.long	0x8a3
	.uleb128 0x3
	.long	0xa79
	.byte	0
	.uleb128 0x1d
	.long	.LASF642
	.byte	0x10
	.long	.LASF644
	.long	0x8b5
	.long	0x8c0
	.uleb128 0x3
	.long	0xa79
	.uleb128 0x2
	.long	0xa7e
	.byte	0
	.uleb128 0x1d
	.long	.LASF642
	.byte	0x11
	.long	.LASF645
	.long	0x8d2
	.long	0x8dd
	.uleb128 0x3
	.long	0xa79
	.uleb128 0x2
	.long	0xa83
	.byte	0
	.uleb128 0x25
	.long	.LASF646
	.byte	0x13
	.long	.LASF647
	.long	0xa89
	.long	0x8f3
	.long	0x8fe
	.uleb128 0x3
	.long	0xa79
	.uleb128 0x2
	.long	0xa7e
	.byte	0
	.uleb128 0x25
	.long	.LASF646
	.byte	0x14
	.long	.LASF648
	.long	0xa89
	.long	0x914
	.long	0x91f
	.uleb128 0x3
	.long	0xa79
	.uleb128 0x2
	.long	0xa83
	.byte	0
	.uleb128 0x5
	.long	.LASF649
	.byte	0x8
	.byte	0x16
	.byte	0x1a
	.long	.LASF650
	.long	0x32
	.long	0x937
	.long	0x93d
	.uleb128 0x3
	.long	0xa8e
	.byte	0
	.uleb128 0x5
	.long	.LASF651
	.byte	0x8
	.byte	0x17
	.byte	0x18
	.long	.LASF652
	.long	0xdd
	.long	0x955
	.long	0x95b
	.uleb128 0x3
	.long	0xa8e
	.byte	0
	.uleb128 0x5
	.long	.LASF653
	.byte	0x8
	.byte	0x19
	.byte	0xc
	.long	.LASF654
	.long	0xa93
	.long	0x973
	.long	0x97e
	.uleb128 0x3
	.long	0xa79
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x5
	.long	.LASF655
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	.LASF656
	.long	0xa98
	.long	0x996
	.long	0x99c
	.uleb128 0x3
	.long	0xa79
	.byte	0
	.uleb128 0x5
	.long	.LASF657
	.byte	0x8
	.byte	0x1b
	.byte	0xc
	.long	.LASF658
	.long	0xa98
	.long	0x9b4
	.long	0x9ba
	.uleb128 0x3
	.long	0xa79
	.byte	0
	.uleb128 0x26
	.string	"end"
	.byte	0x1c
	.byte	0xc
	.long	.LASF662
	.long	0xa98
	.long	0x9d1
	.long	0x9d7
	.uleb128 0x3
	.long	0xa79
	.byte	0
	.uleb128 0x5
	.long	.LASF653
	.byte	0x8
	.byte	0x1e
	.byte	0x12
	.long	.LASF659
	.long	0xa9d
	.long	0x9ef
	.long	0x9fa
	.uleb128 0x3
	.long	0xa8e
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x5
	.long	.LASF655
	.byte	0x8
	.byte	0x1f
	.byte	0x12
	.long	.LASF660
	.long	0xaa2
	.long	0xa12
	.long	0xa18
	.uleb128 0x3
	.long	0xa8e
	.byte	0
	.uleb128 0x5
	.long	.LASF657
	.byte	0x8
	.byte	0x20
	.byte	0x12
	.long	.LASF661
	.long	0xaa2
	.long	0xa30
	.long	0xa36
	.uleb128 0x3
	.long	0xa8e
	.byte	0
	.uleb128 0x26
	.string	"end"
	.byte	0x21
	.byte	0x12
	.long	.LASF663
	.long	0xaa2
	.long	0xa4d
	.long	0xa53
	.uleb128 0x3
	.long	0xa8e
	.byte	0
	.uleb128 0x27
	.string	"T"
	.long	0x220
	.uleb128 0x36
	.string	"N"
	.long	0x48
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.long	0x872
	.byte	0
	.uleb128 0x14
	.long	0x220
	.long	0xa79
	.uleb128 0x15
	.long	0x48
	.byte	0x4f
	.byte	0
	.uleb128 0xc
	.long	0x872
	.uleb128 0x8
	.long	0xa63
	.uleb128 0x37
	.byte	0x8
	.long	0x872
	.uleb128 0x8
	.long	0x872
	.uleb128 0xc
	.long	0xa63
	.uleb128 0x8
	.long	0x220
	.uleb128 0xc
	.long	0x220
	.uleb128 0x8
	.long	0x246
	.uleb128 0xc
	.long	0x246
	.uleb128 0x38
	.long	.LASF664
	.long	0x50010
	.byte	0x3
	.byte	0x6
	.byte	0x7
	.long	0xcab
	.uleb128 0xa
	.long	.LASF641
	.byte	0x3
	.byte	0x9
	.byte	0x7
	.long	0xcb0
	.byte	0
	.uleb128 0x28
	.long	.LASF665
	.byte	0xa
	.long	0x32
	.long	0x50000
	.uleb128 0x28
	.long	.LASF666
	.byte	0xb
	.long	0x32
	.long	0x50008
	.uleb128 0x10
	.long	.LASF667
	.byte	0xe
	.byte	0x5
	.long	.LASF669
	.long	0xaf3
	.long	0xaf9
	.uleb128 0x3
	.long	0xcc1
	.byte	0
	.uleb128 0x10
	.long	.LASF668
	.byte	0x14
	.byte	0xa
	.long	.LASF670
	.long	0xb0c
	.long	0xb17
	.uleb128 0x3
	.long	0xcc1
	.uleb128 0x2
	.long	0xa7e
	.byte	0
	.uleb128 0x10
	.long	.LASF671
	.byte	0x1e
	.byte	0xa
	.long	.LASF672
	.long	0xb2a
	.long	0xb30
	.uleb128 0x3
	.long	0xcc1
	.byte	0
	.uleb128 0x10
	.long	.LASF673
	.byte	0x2b
	.byte	0xa
	.long	.LASF674
	.long	0xb43
	.long	0xb4e
	.uleb128 0x3
	.long	0xcc1
	.uleb128 0x2
	.long	0xa7e
	.byte	0
	.uleb128 0x10
	.long	.LASF675
	.byte	0x43
	.byte	0xa
	.long	.LASF676
	.long	0xb61
	.long	0xb67
	.uleb128 0x3
	.long	0xcc1
	.byte	0
	.uleb128 0x5
	.long	.LASF653
	.byte	0x3
	.byte	0x4a
	.byte	0x8
	.long	.LASF677
	.long	0xa89
	.long	0xb7f
	.long	0xb8a
	.uleb128 0x3
	.long	0xcc1
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x5
	.long	.LASF678
	.byte	0x3
	.byte	0x4f
	.byte	0x8
	.long	.LASF679
	.long	0xa89
	.long	0xba2
	.long	0xba8
	.uleb128 0x3
	.long	0xcc1
	.byte	0
	.uleb128 0x5
	.long	.LASF680
	.byte	0x3
	.byte	0x54
	.byte	0x8
	.long	.LASF681
	.long	0xa89
	.long	0xbc0
	.long	0xbc6
	.uleb128 0x3
	.long	0xcc1
	.byte	0
	.uleb128 0x5
	.long	.LASF653
	.byte	0x3
	.byte	0x59
	.byte	0xe
	.long	.LASF682
	.long	0xa7e
	.long	0xbde
	.long	0xbe9
	.uleb128 0x3
	.long	0xccb
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x5
	.long	.LASF678
	.byte	0x3
	.byte	0x5e
	.byte	0xe
	.long	.LASF683
	.long	0xa7e
	.long	0xc01
	.long	0xc07
	.uleb128 0x3
	.long	0xccb
	.byte	0
	.uleb128 0x5
	.long	.LASF680
	.byte	0x3
	.byte	0x63
	.byte	0xe
	.long	.LASF684
	.long	0xa7e
	.long	0xc1f
	.long	0xc25
	.uleb128 0x3
	.long	0xccb
	.byte	0
	.uleb128 0x5
	.long	.LASF649
	.byte	0x3
	.byte	0x68
	.byte	0xc
	.long	.LASF685
	.long	0x32
	.long	0xc3d
	.long	0xc43
	.uleb128 0x3
	.long	0xccb
	.byte	0
	.uleb128 0x5
	.long	.LASF686
	.byte	0x3
	.byte	0x6d
	.byte	0xc
	.long	.LASF687
	.long	0x32
	.long	0xc5b
	.long	0xc61
	.uleb128 0x3
	.long	0xccb
	.byte	0
	.uleb128 0x5
	.long	.LASF651
	.byte	0x3
	.byte	0x72
	.byte	0xa
	.long	.LASF688
	.long	0xdd
	.long	0xc79
	.long	0xc7f
	.uleb128 0x3
	.long	0xccb
	.byte	0
	.uleb128 0x10
	.long	.LASF514
	.byte	0x77
	.byte	0xa
	.long	.LASF689
	.long	0xc92
	.long	0xc98
	.uleb128 0x3
	.long	0xcc1
	.byte	0
	.uleb128 0x27
	.string	"T"
	.long	0x872
	.uleb128 0x39
	.long	.LASF690
	.long	0x48
	.value	0x800
	.byte	0
	.uleb128 0x9
	.long	0xaa7
	.uleb128 0x14
	.long	0x872
	.long	0xcc1
	.uleb128 0x3a
	.long	0x48
	.value	0x7ff
	.byte	0
	.uleb128 0xc
	.long	0xaa7
	.uleb128 0x9
	.long	0xcc1
	.uleb128 0xc
	.long	0xcab
	.uleb128 0xf
	.long	0x292
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.uleb128 0xf
	.long	0x2b2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console11s_cursorPosE
	.uleb128 0xf
	.long	0x2c2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_displayLineE
	.uleb128 0xf
	.long	0x2d2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console15s_cursorEnabledE
	.uleb128 0xf
	.long	0x2e2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_shouldFlushE
	.uleb128 0x8
	.long	0x1f0
	.uleb128 0x8
	.long	0x21b
	.uleb128 0x8
	.long	0x3e
	.uleb128 0x8
	.long	0x1eb
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF691
	.uleb128 0xc
	.long	0xd3b
	.uleb128 0x3b
	.long	0xd46
	.uleb128 0x2
	.long	0xd46
	.byte	0
	.uleb128 0x8
	.long	0x49e
	.uleb128 0xc
	.long	0xd50
	.uleb128 0x3c
	.uleb128 0x14
	.long	0x56
	.long	0xd61
	.uleb128 0x15
	.long	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	0x80e
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel5Mouse7s_cycleE
	.uleb128 0xf
	.long	0x81e
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel5Mouse12s_mouseBytesE
	.uleb128 0x3d
	.long	0xcf
	.uleb128 0x3e
	.long	.LASF692
	.byte	0x7
	.byte	0x11
	.byte	0x14
	.long	0x56
	.long	0xd9a
	.uleb128 0x2
	.long	0x6e
	.byte	0
	.uleb128 0x3f
	.long	.LASF693
	.byte	0x7
	.byte	0x12
	.byte	0x11
	.long	0xdb1
	.uleb128 0x2
	.long	0x6e
	.uleb128 0x2
	.long	0x56
	.byte	0
	.uleb128 0x40
	.long	.LASF705
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0xe1e
	.uleb128 0x29
	.long	0xe1e
	.quad	.LBI12
	.byte	.LVU37
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.uleb128 0x29
	.long	0xe24
	.quad	.LBI14
	.byte	.LVU40
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0x2
	.byte	0x48
	.byte	0x5f
	.uleb128 0x41
	.long	0xe32
	.long	.LLST3
	.long	.LVUS3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF706
	.byte	0x1
	.uleb128 0x43
	.long	0xae0
	.long	0xe32
	.byte	0x2
	.long	0xe3c
	.uleb128 0x44
	.long	.LASF707
	.long	0xcc6
	.byte	0
	.uleb128 0x45
	.long	0xe24
	.long	.LASF708
	.long	0xe4d
	.long	0xe53
	.uleb128 0x46
	.long	0xe32
	.byte	0
	.uleb128 0x47
	.long	0x839
	.byte	0x1
	.byte	0xe
	.byte	0xa
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0xef9
	.uleb128 0x48
	.long	.LASF709
	.byte	0x1
	.byte	0xe
	.byte	0x32
	.long	0xd46
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x2a
	.long	.LASF655
	.byte	0x10
	.long	0x56
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x49
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xee4
	.uleb128 0x11
	.long	.LASF695
	.byte	0x1d
	.byte	0x11
	.long	0xb5
	.uleb128 0x11
	.long	.LASF696
	.byte	0x1e
	.byte	0x11
	.long	0xb5
	.uleb128 0x11
	.long	.LASF697
	.byte	0x1f
	.byte	0x12
	.long	0xdd
	.uleb128 0x11
	.long	.LASF698
	.byte	0x20
	.byte	0x12
	.long	0xdd
	.uleb128 0x11
	.long	.LASF699
	.byte	0x21
	.byte	0x12
	.long	0xdd
	.byte	0
	.uleb128 0x2b
	.quad	.LVL2
	.long	0xd84
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x82e
	.byte	0x1
	.byte	0x4
	.byte	0xa
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF700
	.byte	0x9
	.long	0x56
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x12
	.quad	.LVL5
	.long	0x76a
	.long	0xf4a
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel5Mouse16interruptHandlerERNS_14InterruptFrameE
	.byte	0
	.uleb128 0x12
	.quad	.LVL6
	.long	0xd9a
	.long	0xf68
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0xa8
	.byte	0
	.uleb128 0x12
	.quad	.LVL7
	.long	0xd9a
	.long	0xf86
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.quad	.LVL8
	.long	0xd84
	.long	0xf9e
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.uleb128 0x12
	.quad	.LVL10
	.long	0xd9a
	.long	0xfbc
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.uleb128 0x2b
	.quad	.LVL12
	.long	0xd9a
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.sleb128 21
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.sleb128 8
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
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
	.sleb128 5
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
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x27
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x6
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x49
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
.LVUS3:
	.uleb128 .LVU40
	.uleb128 .LVU45
.LLST3:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LFE77-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU5
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
.LLST1:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0xc
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.quad	_ZN6Kernel5Mouse12s_mouseBytesE
	.byte	0x22
	.byte	0
.LVUS2:
	.uleb128 .LVU30
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU34
.LLST2:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL10-1-.Ltext0
	.uleb128 .LVL11-.Ltext0
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
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 9 "src/kernel/../../include/kernel/../utils/StateTracker.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.long	.LASF436
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x2
	.long	.LASF437
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2
	.long	.LASF438
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x3
	.long	.LASF439
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x3
	.long	.LASF440
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
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
.LASF328:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF169:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF316:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF496:
	.string	"_ZN6Kernel7Console8s_extentE"
.LASF149:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF603:
	.string	"_ZN6Kernel7Console11s_vgaScreenE"
.LASF244:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF104:
	.string	"__cpp_namespace_attributes 201411L"
.LASF360:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF554:
	.string	"debug"
.LASF203:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF411:
	.string	"__amd64 1"
.LASF557:
	.string	"overflow"
.LASF286:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF503:
	.string	"_ZN6Kernel7Console11s_cursorPosE"
.LASF127:
	.string	"__cpp_deduction_guides 201907L"
.LASF463:
	.string	"BrownOnBlack"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF345:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF477:
	.string	"BlackOnCyan"
.LASF34:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF476:
	.string	"WhiteOnGreen"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF179:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF340:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF583:
	.string	"securityException"
.LASF225:
	.string	"__FLT_MAX_EXP__ 128"
.LASF159:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF512:
	.string	"_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE"
.LASF273:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF152:
	.string	"__WINT_MIN__ 0U"
.LASF121:
	.string	"__cpp_designated_initializers 201707L"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF348:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF647:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSERKS4_"
.LASF264:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF27:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF544:
	.string	"_ZN6Kernel7Console10flushToVgaEv"
.LASF192:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF665:
	.string	"m_tail"
.LASF448:
	.string	"unsigned int"
.LASF124:
	.string	"__cpp_conditional_explicit 201806L"
.LASF648:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSEOS4_"
.LASF156:
	.string	"__SHRT_WIDTH__ 16"
.LASF301:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF499:
	.string	"_ZN6Kernel7Console16s_windowCapacityE"
.LASF147:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF530:
	.string	"scrollDown"
.LASF47:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF502:
	.string	"_ZN6Kernel7Console12s_charBufferE"
.LASF461:
	.string	"RedOnBlack"
.LASF487:
	.string	"CursorPos"
.LASF200:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF32:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF601:
	.string	"s_vgaScreen"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF520:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF275:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF75:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF639:
	.string	"Utils"
.LASF212:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF101:
	.string	"__cpp_digit_separators 201309L"
.LASF656:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF97:
	.string	"__cpp_return_type_deduction 201304L"
.LASF462:
	.string	"MagentaOnBlack"
.LASF374:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF271:
	.string	"__FLT16_DIG__ 3"
.LASF563:
	.string	"invalidTss"
.LASF51:
	.string	"__INT16_TYPE__ short int"
.LASF285:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF308:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF690:
	.string	"s_size"
.LASF17:
	.string	"__OPTIMIZE__ 1"
.LASF150:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF254:
	.string	"__LDBL_DIG__ 18"
.LASF354:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF645:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4EOS4_"
.LASF24:
	.string	"__SIZEOF_SHORT__ 2"
.LASF57:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF642:
	.string	"Array"
.LASF376:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF64:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF263:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF289:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF249:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF61:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF630:
	.string	"s_mouseBytes"
.LASF221:
	.string	"__FLT_MANT_DIG__ 24"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF62:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF65:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF633:
	.string	"_ZN6Kernel16InterruptManager10initializeEv"
.LASF337:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF684:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF303:
	.string	"__FLT64_DIG__ 15"
.LASF338:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF587:
	.string	"irqCascade"
.LASF131:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF269:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF197:
	.string	"__UINT32_C(c) c ## U"
.LASF638:
	.string	"_ZN6Kernel5Mouse16interruptHandlerERNS_14InterruptFrameE"
.LASF518:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF347:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF567:
	.string	"pageFault"
.LASF206:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF622:
	.string	"remapPic"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF474:
	.string	"WhiteOnBlue"
.LASF553:
	.string	"divideByZero"
.LASF678:
	.string	"back"
.LASF181:
	.string	"__INT8_C(c) c"
.LASF325:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF558:
	.string	"boundRangeExceeded"
.LASF663:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF334:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF569:
	.string	"x87FloatingPointException"
.LASF241:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF637:
	.string	"_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE"
.LASF470:
	.string	"LightMagentaOnBlack"
.LASF545:
	.string	"_ZN6Kernel7Console12updateCursorEv"
.LASF451:
	.string	"int8_t"
.LASF113:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF305:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF138:
	.string	"__cpp_aligned_new 201606L"
.LASF204:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF298:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF618:
	.string	"setupIdt"
.LASF664:
	.string	"RollingWindow<Utils::Array<Kernel::Console::VgaChar, 80>, 2048>"
.LASF704:
	.string	"Mouse"
.LASF582:
	.string	"vmmCommunicationException"
.LASF96:
	.string	"__cpp_alias_templates 200704L"
.LASF689:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5clearEv"
.LASF222:
	.string	"__FLT_DIG__ 6"
.LASF202:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF390:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF294:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF467:
	.string	"LightGreenOnBlack"
.LASF352:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF157:
	.string	"__INT_WIDTH__ 32"
.LASF659:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF671:
	.string	"popBack"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF89:
	.string	"__cpp_rvalue_references 200610L"
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
.LASF698:
	.string	"right_btn"
.LASF7:
	.string	"__GNUC__ 13"
.LASF459:
	.string	"GreenOnBlack"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF450:
	.string	"long long unsigned int"
.LASF574:
	.string	"controlProtectionException"
.LASF660:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF172:
	.string	"__INT8_MAX__ 0x7f"
.LASF58:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF525:
	.string	"getExtent"
.LASF617:
	.string	"IsrPtr_t"
.LASF336:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF265:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF322:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF84:
	.string	"__cpp_user_defined_literals 200809L"
.LASF220:
	.string	"__FLT_RADIX__ 2"
.LASF80:
	.string	"__cpp_hex_float 201603L"
.LASF674:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE9pushFrontERKS5_"
.LASF549:
	.string	"Console"
.LASF237:
	.string	"__DBL_MANT_DIG__ 53"
.LASF493:
	.string	"attr"
.LASF251:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF365:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF538:
	.string	"setDisplayLine"
.LASF641:
	.string	"m_data"
.LASF573:
	.string	"virtualizationException"
.LASF483:
	.string	"BlackOnBrown"
.LASF71:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF87:
	.string	"__cpp_attributes 200809L"
.LASF132:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF257:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF139:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF224:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF588:
	.string	"irqCom2"
.LASF458:
	.string	"BlueOnBlack"
.LASF431:
	.string	"__SEG_GS 1"
.LASF479:
	.string	"BlackOnRed"
.LASF79:
	.string	"__cpp_binary_literals 201304L"
.LASF612:
	.string	"registerInterruptCallback"
.LASF514:
	.string	"clear"
.LASF623:
	.string	"_ZN6Kernel16InterruptManager8remapPicEv"
.LASF191:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF498:
	.string	"s_windowCapacity"
.LASF436:
	.string	"STATE_TRACKER_H "
.LASF307:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF31:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF83:
	.string	"__cpp_unicode_literals 200710L"
.LASF497:
	.string	"_ZN6Kernel7Console17s_bufferLineCountE"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF614:
	.string	"_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE"
.LASF235:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF610:
	.string	"_ZN6Kernel16InterruptManager16s_interruptCountE"
.LASF135:
	.string	"__cpp_concepts 202002L"
.LASF74:
	.string	"__INTPTR_TYPE__ long int"
.LASF52:
	.string	"__INT32_TYPE__ int"
.LASF326:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF25:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF362:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF413:
	.string	"__x86_64 1"
.LASF628:
	.string	"s_cycle"
.LASF443:
	.string	"size_t"
.LASF611:
	.string	"initialize"
.LASF199:
	.string	"__UINT64_C(c) c ## UL"
.LASF489:
	.string	"width"
.LASF504:
	.string	"s_displayLine"
.LASF281:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF314:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF2:
	.string	"__STDC__ 1"
.LASF625:
	.string	"_ZN6Kernel16InterruptManager10setIdtGateEhPFvvEhh"
.LASF76:
	.string	"__GXX_WEAK__ 1"
.LASF491:
	.string	"VgaChar"
.LASF492:
	.string	"character"
.LASF245:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF260:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF208:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF423:
	.string	"__MMX__ 1"
.LASF323:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF378:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF377:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF566:
	.string	"generalProtectionFault"
.LASF290:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF366:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF434:
	.string	"TYPES_H "
.LASF676:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8popFrontEv"
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
.LASF536:
	.string	"_ZN6Kernel7Console12enableCursorEv"
.LASF620:
	.string	"_ZN6Kernel16InterruptManager8setupIdtEv"
.LASF55:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF319:
	.string	"__FLT128_DIG__ 33"
.LASF160:
	.string	"__WCHAR_WIDTH__ 32"
.LASF134:
	.string	"__cpp_using_enum 201907L"
.LASF692:
	.string	"port_in_byte"
.LASF551:
	.string	"Attributes"
.LASF30:
	.string	"__BIGGEST_ALIGNMENT__ 16"
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
.LASF475:
	.string	"BlackOnGreen"
.LASF126:
	.string	"__cpp_constinit 201907L"
.LASF344:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF274:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF670:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8pushBackERKS5_"
.LASF239:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
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
.LASF68:
	.string	"__INT_FAST32_TYPE__ int"
.LASF527:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF421:
	.string	"__k8__ 1"
.LASF228:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF438:
	.string	"INTERRUPT_MANAGER_H "
.LASF240:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF691:
	.string	"char"
.LASF256:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF287:
	.string	"__FLT32_DIG__ 6"
.LASF143:
	.string	"__GXX_ABI_VERSION 1018"
.LASF500:
	.string	"s_charBuffer"
.LASF100:
	.string	"__cpp_variable_templates 201304L"
.LASF624:
	.string	"handleInterrupt"
.LASF88:
	.string	"__cpp_rvalue_reference 200610L"
.LASF640:
	.string	"Array<Kernel::Console::VgaChar, 80>"
.LASF486:
	.string	"WhiteOnLightGray"
.LASF568:
	.string	"reserved15"
.LASF95:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF70:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF605:
	.string	"s_tableSize"
.LASF585:
	.string	"irqSystemTimer"
.LASF327:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF379:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF205:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF597:
	.string	"irqPs2Mouse"
.LASF655:
	.string	"data"
.LASF182:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF364:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF176:
	.string	"__UINT8_MAX__ 0xff"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF607:
	.string	"s_exceptionCount"
.LASF444:
	.string	"uint8_t"
.LASF700:
	.string	"status"
.LASF178:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF168:
	.string	"__INTMAX_WIDTH__ 64"
.LASF232:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF48:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF110:
	.string	"__cpp_capture_star_this 201603L"
.LASF696:
	.string	"y_delta"
.LASF59:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF555:
	.string	"nonMaskableInterrupt"
.LASF125:
	.string	"__cpp_consteval 201811L"
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF238:
	.string	"__DBL_DIG__ 15"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF180:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF267:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF619:
	.string	"loadIdt"
.LASF20:
	.string	"__LP64__ 1"
.LASF509:
	.string	"_ZN6Kernel7Console13s_shouldFlushE"
.LASF270:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF606:
	.string	"_ZN6Kernel16InterruptManager11s_tableSizeE"
.LASF86:
	.string	"__cpp_decltype 200707L"
.LASF524:
	.string	"getCursor"
.LASF292:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF19:
	.string	"_LP64 1"
.LASF575:
	.string	"reserved22"
.LASF576:
	.string	"reserved23"
.LASF577:
	.string	"reserved24"
.LASF578:
	.string	"reserved25"
.LASF454:
	.string	"long long int"
.LASF580:
	.string	"reserved27"
.LASF93:
	.string	"__cpp_nsdmi 200809L"
.LASF141:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF561:
	.string	"doubleFault"
.LASF151:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF661:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
.LASF367:
	.string	"__BFLT16_DIG__ 2"
.LASF18:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF705:
	.string	"_GLOBAL__sub_I__ZN6Kernel5Mouse10initialiseEv"
.LASF341:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF255:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF309:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF654:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF636:
	.string	"interruptHandler"
.LASF668:
	.string	"pushBack"
.LASF430:
	.string	"__SEG_FS 1"
.LASF162:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF198:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF114:
	.string	"__cpp_template_auto 201606L"
.LASF537:
	.string	"_ZN6Kernel7Console13disableCursorEv"
.LASF166:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF343:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF455:
	.string	"bool"
.LASF363:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF677:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF183:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF510:
	.string	"writeChar"
.LASF130:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF680:
	.string	"front"
.LASF234:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF60:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF371:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF283:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF466:
	.string	"LightBlueOnBlack"
.LASF596:
	.string	"irqAvailable11"
.LASF425:
	.string	"__SSE2__ 1"
.LASF310:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF675:
	.string	"popFront"
.LASF22:
	.string	"__SIZEOF_LONG__ 8"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF437:
	.string	"ROLLING_WINDOW_H "
.LASF599:
	.string	"irqPrimaryAta"
.LASF216:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF584:
	.string	"reserved31"
.LASF652:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5emptyEv"
.LASF646:
	.string	"operator="
.LASF173:
	.string	"__INT16_MAX__ 0x7fff"
.LASF649:
	.string	"size"
.LASF98:
	.string	"__cpp_decltype_auto 201304L"
.LASF108:
	.string	"__cpp_range_based_for 201603L"
.LASF56:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF433:
	.string	"MOUSE_H "
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
.LASF616:
	.string	"setIdtGate"
.LASF53:
	.string	"__INT64_TYPE__ long int"
.LASF253:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF589:
	.string	"irqCom1"
.LASF703:
	.string	"InterruptFrame"
.LASF653:
	.string	"operator[]"
.LASF229:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF111:
	.string	"__cpp_inline_variables 201606L"
.LASF490:
	.string	"height"
.LASF581:
	.string	"hypervisorInjectionException"
.LASF532:
	.string	"scrollUp"
.LASF548:
	.string	"rflags"
.LASF506:
	.string	"s_cursorEnabled"
.LASF590:
	.string	"irqLpt2"
.LASF465:
	.string	"DarkGrayOnBlack"
.LASF697:
	.string	"left_btn"
.LASF117:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF311:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF279:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF600:
	.string	"irqSecondaryAta"
.LASF472:
	.string	"WhiteOnBlack"
.LASF321:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF35:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF564:
	.string	"segmentNotPresent"
.LASF266:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF432:
	.string	"__ELF__ 1"
.LASF473:
	.string	"BlackOnBlue"
.LASF478:
	.string	"WhiteOnCyan"
.LASF170:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF128:
	.string	"__cpp_nontype_template_args 201911L"
.LASF439:
	.string	"UTILS_H "
.LASF174:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF533:
	.string	"_ZN6Kernel7Console8scrollUpEm"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF195:
	.string	"__UINT16_C(c) c"
.LASF175:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF643:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4Ev"
.LASF306:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF592:
	.string	"irqLpt1"
.LASF539:
	.string	"_ZN6Kernel7Console14setDisplayLineEm"
.LASF357:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF107:
	.string	"__cpp_fold_expressions 201603L"
.LASF427:
	.string	"__SSE_MATH__ 1"
.LASF446:
	.string	"uint16_t"
.LASF45:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF282:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF90:
	.string	"__cpp_variadic_templates 200704L"
.LASF609:
	.string	"s_interruptCount"
.LASF118:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF707:
	.string	"this"
.LASF669:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC4Ev"
.LASF105:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF171:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF81:
	.string	"__cpp_runtime_arrays 198712L"
.LASF381:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF464:
	.string	"LightGrayOnBlack"
.LASF145:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF513:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF686:
	.string	"capacity"
.LASF33:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF658:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
.LASF469:
	.string	"LightRedOnBlack"
.LASF217:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF236:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF161:
	.string	"__WINT_WIDTH__ 32"
.LASF359:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF317:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF440:
	.string	"CONSOLE_H "
.LASF382:
	.string	"__REGISTER_PREFIX__ "
.LASF296:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF562:
	.string	"coprocessorSegmentOverrun"
.LASF615:
	.string	"cursorInScreenBounds"
.LASF453:
	.string	"short int"
.LASF608:
	.string	"_ZN6Kernel16InterruptManager16s_exceptionCountE"
.LASF332:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF142:
	.string	"__cpp_char8_t 202207L"
.LASF353:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF627:
	.string	"InterruptHandler"
.LASF511:
	.string	"putChar"
.LASF442:
	.string	"long int"
.LASF508:
	.string	"s_shouldFlush"
.LASF112:
	.string	"__cpp_aggregate_bases 201603L"
.LASF167:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF501:
	.string	"s_cursorPos"
.LASF706:
	.string	"__static_initialization_and_destruction_0"
.LASF375:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF355:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF526:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF358:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF543:
	.string	"updateCursor"
.LASF481:
	.string	"BlackOnMagenta"
.LASF213:
	.string	"__INTPTR_WIDTH__ 64"
.LASF401:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF370:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF187:
	.string	"__INT32_C(c) c"
.LASF177:
	.string	"__UINT16_MAX__ 0xffff"
.LASF268:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF50:
	.string	"__INT8_TYPE__ signed char"
.LASF42:
	.string	"__WCHAR_TYPE__ int"
.LASF46:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF613:
	.string	"_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE"
.LASF155:
	.string	"__SCHAR_WIDTH__ 8"
.LASF426:
	.string	"__FXSR__ 1"
.LASF184:
	.string	"__INT16_C(c) c"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF516:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF488:
	.string	"Extent"
.LASF449:
	.string	"uint64_t"
.LASF531:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF565:
	.string	"stackSegmentFault"
.LASF210:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF109:
	.string	"__cpp_if_constexpr 201606L"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF523:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF129:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF460:
	.string	"CyanOnBlack"
.LASF542:
	.string	"flushToVga"
.LASF246:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF280:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF54:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF598:
	.string	"irqFpu"
.LASF428:
	.string	"__SSE2_MATH__ 1"
.LASF693:
	.string	"port_out_byte"
.LASF621:
	.string	"_ZN6Kernel16InterruptManager7loadIdtEv"
.LASF687:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8capacityEv"
.LASF521:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF165:
	.string	"__INTMAX_C(c) c ## L"
.LASF540:
	.string	"clampDisplayToCursor"
.LASF37:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF519:
	.string	"clearSpan"
.LASF196:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF369:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF350:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF36:
	.string	"__SIZEOF_POINTER__ 8"
.LASF312:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF335:
	.string	"__FLT32X_DIG__ 15"
.LASF91:
	.string	"__cpp_initializer_lists 200806L"
.LASF631:
	.string	"_ZN6Kernel5Mouse12s_mouseBytesE"
.LASF683:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF153:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF556:
	.string	"breakpoint"
.LASF662:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF695:
	.string	"x_delta"
.LASF471:
	.string	"YellowOnBlack"
.LASF482:
	.string	"WhiteOnMagenta"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF333:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF694:
	.string	"is_integral_v"
.LASF23:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF515:
	.string	"clearLine"
.LASF380:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF441:
	.string	"long unsigned int"
.LASF550:
	.string	"InterruptManager"
.LASF651:
	.string	"empty"
.LASF77:
	.string	"__DEPRECATED 1"
.LASF604:
	.string	"_ZN6Kernel16InterruptManager12s_entryFlagsE"
.LASF632:
	.string	"initialise"
.LASF494:
	.string	"s_extent"
.LASF29:
	.string	"__CHAR_BIT__ 8"
.LASF579:
	.string	"reserved26"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF297:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF163:
	.string	"__SIZE_WIDTH__ 64"
.LASF572:
	.string	"simdFloatingPointException"
.LASF299:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF284:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF346:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF291:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF158:
	.string	"__LONG_WIDTH__ 64"
.LASF667:
	.string	"RollingWindow"
.LASF115:
	.string	"__cpp_structured_bindings 201606L"
.LASF420:
	.string	"__k8 1"
.LASF304:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF701:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O1 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF679:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF318:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF445:
	.string	"unsigned char"
.LASF602:
	.string	"s_entryFlags"
.LASF559:
	.string	"invalidOpcode"
.LASF230:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF189:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF123:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF295:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF672:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE7popBackEv"
.LASF219:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF39:
	.string	"__GNUG__ 13"
.LASF529:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF708:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC2Ev"
.LASF185:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF541:
	.string	"_ZN6Kernel7Console20clampDisplayToCursorEv"
.LASF188:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF685:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4sizeEv"
.LASF38:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF72:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF146:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF586:
	.string	"irqKeyboard"
.LASF495:
	.string	"s_bufferLineCount"
.LASF699:
	.string	"middle_btn"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF673:
	.string	"pushFront"
.LASF517:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF85:
	.string	"__cpp_lambdas 200907L"
.LASF154:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF650:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4sizeEv"
.LASF560:
	.string	"deviceNotAvailable"
.LASF252:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF528:
	.string	"getWindowCapacity"
.LASF247:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF356:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF140:
	.string	"__cpp_template_template_args 201611L"
.LASF372:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF535:
	.string	"disableCursor"
.LASF349:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF547:
	.string	"error_code"
.LASF480:
	.string	"WhiteOnRed"
.LASF570:
	.string	"alignmentCheck"
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
.LASF634:
	.string	"_ZN6Kernel5Mouse10initialiseEv"
.LASF682:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF21:
	.string	"__SIZEOF_INT__ 4"
.LASF99:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF709:
	.string	"frame"
.LASF507:
	.string	"_ZN6Kernel7Console15s_cursorEnabledE"
.LASF92:
	.string	"__cpp_delegating_constructors 200604L"
.LASF534:
	.string	"enableCursor"
.LASF315:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF505:
	.string	"_ZN6Kernel7Console13s_displayLineE"
.LASF69:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF485:
	.string	"BlackOnLightGray"
.LASF144:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF94:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF452:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF635:
	.string	"handleException"
.LASF242:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF594:
	.string	"irqAcpi"
.LASF259:
	.string	"__DECIMAL_DIG__ 21"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF447:
	.string	"short unsigned int"
.LASF657:
	.string	"begin"
.LASF384:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF595:
	.string	"irqAvailable10"
.LASF102:
	.string	"__cpp_unicode_characters 201411L"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF329:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF593:
	.string	"irqRealTimeClock"
.LASF522:
	.string	"setCursor"
.LASF331:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF201:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF484:
	.string	"WhiteOnBrown"
.LASF223:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF313:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF571:
	.string	"machineCheck"
.LASF629:
	.string	"_ZN6Kernel5Mouse7s_cycleE"
.LASF546:
	.string	"interrupt_number"
.LASF209:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF417:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF457:
	.string	"BlackOnBlack"
.LASF626:
	.string	"_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE"
.LASF277:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF666:
	.string	"m_head"
.LASF702:
	.string	"_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE"
.LASF28:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF339:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF44:
	.string	"__INTMAX_TYPE__ long int"
.LASF591:
	.string	"irqFloppyDisk"
.LASF644:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4ERKS4_"
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
.LASF552:
	.string	"InterruptVector"
.LASF688:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5emptyEv"
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
.LASF681:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF43:
	.string	"__WINT_TYPE__ unsigned int"
.LASF66:
	.string	"__INT_FAST8_TYPE__ int"
.LASF468:
	.string	"LightCyanOnBlack"
.LASF227:
	.string	"__FLT_DECIMAL_DIG__ 9"
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
	.string	"src/kernel/Mouse.cpp"
	.ident	"GCC: (GNU) 13.2.0"
