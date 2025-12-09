	.file	"Timer.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/mnt/a/myOsX64" "src/drivers/Timer.cpp"
	.align 2
	.globl	_ZN6Kernel5Timer16interruptHandlerERNS_14InterruptFrameE
	.type	_ZN6Kernel5Timer16interruptHandlerERNS_14InterruptFrameE, @function
_ZN6Kernel5Timer16interruptHandlerERNS_14InterruptFrameE:
.LVL0:
.LFB104:
	.file 1 "src/drivers/Timer.cpp"
	.loc 1 19 5 view -0
	.cfi_startproc
	.loc 1 20 9 view .LVU1
	movabsq	$_ZN6Kernel5Timer10s_systicksE, %rdx
	movq	(%rdx), %rax
	addq	$1, %rax
	movq	%rax, (%rdx)
	.loc 1 21 5 is_stmt 0 view .LVU2
	ret
	.cfi_endproc
.LFE104:
	.size	_ZN6Kernel5Timer16interruptHandlerERNS_14InterruptFrameE, .-_ZN6Kernel5Timer16interruptHandlerERNS_14InterruptFrameE
	.align 2
	.globl	_ZN6Kernel5Timer10initialiseEv
	.type	_ZN6Kernel5Timer10initialiseEv, @function
_ZN6Kernel5Timer10initialiseEv:
.LFB103:
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
	.loc 1 7 9 view .LVU4
	.loc 1 7 20 is_stmt 0 view .LVU5
	movabsq	$_ZN6Kernel5Timer10s_systicksE, %rax
	movq	$0, (%rax)
	.loc 1 9 9 is_stmt 1 view .LVU6
	.loc 1 9 52 is_stmt 0 view .LVU7
	movabsq	$_ZN6Kernel5Timer16interruptHandlerERNS_14InterruptFrameE, %rsi
	movl	$32, %edi
	movabsq	$_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE, %rax
	call	*%rax
.LVL1:
	.loc 1 12 9 is_stmt 1 view .LVU8
	.loc 1 12 22 is_stmt 0 view .LVU9
	movl	$54, %esi
	movl	$67, %edi
	movabsq	$port_out_byte, %rbx
	call	*%rbx
.LVL2:
	.loc 1 13 9 is_stmt 1 view .LVU10
	.loc 1 14 9 view .LVU11
	.loc 1 14 22 is_stmt 0 view .LVU12
	movl	$169, %esi
	movl	$64, %edi
	call	*%rbx
.LVL3:
	.loc 1 15 9 is_stmt 1 view .LVU13
	.loc 1 15 22 is_stmt 0 view .LVU14
	movl	$4, %esi
	movl	$64, %edi
	call	*%rbx
.LVL4:
	.loc 1 16 5 view .LVU15
	movq	-8(%rbp), %rbx
	leave
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	_ZN6Kernel5Timer10initialiseEv, .-_ZN6Kernel5Timer10initialiseEv
	.type	_GLOBAL__sub_I__ZN6Kernel5Timer10initialiseEv, @function
_GLOBAL__sub_I__ZN6Kernel5Timer10initialiseEv:
.LFB109:
	.loc 1 22 1 is_stmt 1 view -0
	.cfi_startproc
.LBB10:
.LBI10:
	.loc 1 22 1 view .LVU17
.LBB11:
	.file 2 "src/drivers/../../include/drivers/Console.h"
	.loc 2 72 103 is_stmt 0 view .LVU18
	movabsq	$_ZGVN6Kernel7Console12s_charBufferE, %rax
	cmpb	$0, (%rax)
	jne	.L4
	.loc 2 72 103 discriminator 1 view .LVU19
	movb	$1, (%rax)
.LVL5:
.LBB12:
.LBI12:
	.file 3 "src/drivers/../../include/drivers/../utils/RollingWindow.h"
	.loc 3 135 5 is_stmt 1 view .LVU20
.LBB13:
.LBB14:
	.loc 3 136 5 discriminator 1 view .LVU21
.LBE14:
	.loc 3 135 5 is_stmt 0 view .LVU22
	movl	$2048, %eax
.L6:
.LBB15:
	.loc 3 136 5 is_stmt 1 discriminator 1 view .LVU23
	subq	$1, %rax
	jne	.L6
	.loc 3 136 5 is_stmt 0 discriminator 4 view .LVU24
	movabsq	$_ZN6Kernel7Console12s_charBufferE, %rax
	movq	$0, 327680(%rax)
	movq	$0, 327688(%rax)
	.loc 3 137 16 view .LVU25
	movq	$0, 327680(%rax)
	.loc 3 138 16 view .LVU26
	movq	$0, 327688(%rax)
.LVL6:
.L4:
	.loc 3 138 16 view .LVU27
.LBE15:
.LBE13:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 22 1 view .LVU28
	ret
	.cfi_endproc
.LFE109:
	.size	_GLOBAL__sub_I__ZN6Kernel5Timer10initialiseEv, .-_GLOBAL__sub_I__ZN6Kernel5Timer10initialiseEv
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__ZN6Kernel5Timer10initialiseEv
	.weak	_ZGVN6Kernel7Console12s_charBufferE
	.section	.bss._ZGVN6Kernel7Console12s_charBufferE,"awG",@nobits,_ZGVN6Kernel7Console12s_charBufferE,comdat
	.align 8
	.type	_ZGVN6Kernel7Console12s_charBufferE, @object
	.size	_ZGVN6Kernel7Console12s_charBufferE, 8
_ZGVN6Kernel7Console12s_charBufferE:
	.zero	8
	.weak	_ZN6Kernel5Timer10s_systicksE
	.section	.bss._ZN6Kernel5Timer10s_systicksE,"awG",@nobits,_ZN6Kernel5Timer10s_systicksE,comdat
	.align 8
	.type	_ZN6Kernel5Timer10s_systicksE, @object
	.size	_ZN6Kernel5Timer10s_systicksE, 8
_ZN6Kernel5Timer10s_systicksE:
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
	.file 4 "src/drivers/../../include/drivers/../utils/Types.h"
	.file 5 "src/drivers/../../include/drivers/InterruptManager.h"
	.file 6 "src/drivers/../../include/drivers/Timer.h"
	.file 7 "src/drivers/../../include/drivers/../utils/Utils.h"
	.file 8 "src/drivers/../../include/drivers/../utils/Array.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf6e
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x27
	.long	.LASF701
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0xd
	.long	.LASF444
	.byte	0x4
	.byte	0x5
	.byte	0x17
	.long	0x48
	.uleb128 0x7
	.long	0x32
	.uleb128 0x12
	.long	0x32
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF442
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF443
	.uleb128 0xd
	.long	.LASF445
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.long	0x67
	.uleb128 0x7
	.long	0x56
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF446
	.uleb128 0xd
	.long	.LASF447
	.byte	0x4
	.byte	0x9
	.byte	0x18
	.long	0x7a
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF448
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF449
	.uleb128 0xd
	.long	.LASF450
	.byte	0x4
	.byte	0xb
	.byte	0x1c
	.long	0x99
	.uleb128 0x12
	.long	0x88
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF451
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF452
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF453
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF454
	.uleb128 0x29
	.string	"std"
	.byte	0x4
	.byte	0x16
	.byte	0xb
	.long	0xd6
	.uleb128 0x2a
	.long	.LASF702
	.byte	0x4
	.byte	0xc5
	.byte	0x17
	.long	0xdd
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.long	.LASF455
	.uleb128 0x7
	.long	0xd6
	.uleb128 0x12
	.long	0xd6
	.uleb128 0x1e
	.long	.LASF456
	.byte	0x2
	.byte	0xa
	.long	0x8b9
	.uleb128 0x14
	.long	.LASF551
	.byte	0x1
	.byte	0x2
	.byte	0xc
	.long	0x4c1
	.uleb128 0x1f
	.long	.LASF553
	.long	0x56
	.byte	0x2
	.byte	0xf
	.long	0x1c2
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
	.uleb128 0x15
	.long	.LASF487
	.byte	0x10
	.byte	0x31
	.long	0x1e4
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
	.uleb128 0x12
	.long	0x1c2
	.uleb128 0x7
	.long	0x1e4
	.uleb128 0x15
	.long	.LASF488
	.byte	0x10
	.byte	0x37
	.long	0x214
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
	.uleb128 0x7
	.long	0x1ee
	.uleb128 0x15
	.long	.LASF491
	.byte	0x2
	.byte	0x3d
	.long	0x23f
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
	.long	0xfe
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	0x219
	.uleb128 0x2b
	.long	.LASF494
	.byte	0x2
	.byte	0x44
	.byte	0x21
	.long	.LASF496
	.long	0x214
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
	.uleb128 0x2c
	.long	.LASF603
	.byte	0x2
	.byte	0x46
	.byte	0x2b
	.long	.LASF605
	.long	0x8cf
	.quad	0xffff8000000b8000
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
	.byte	0x67
	.long	.LASF502
	.long	0xb14
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
	.long	0x1e4
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
	.long	0xe2
	.uleb128 0xe
	.long	.LASF508
	.byte	0x2
	.byte	0x4d
	.byte	0x25
	.long	.LASF509
	.long	0xe2
	.uleb128 0x11
	.long	.LASF510
	.byte	0x2
	.byte	0x50
	.long	.LASF512
	.long	0x313
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0xfe
	.byte	0
	.uleb128 0x11
	.long	.LASF511
	.byte	0x2
	.byte	0x69
	.long	.LASF513
	.long	0x32d
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0xfe
	.byte	0
	.uleb128 0x8
	.long	.LASF514
	.value	0x15f
	.long	.LASF516
	.long	0x347
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0xfe
	.byte	0
	.uleb128 0x8
	.long	.LASF515
	.value	0x160
	.long	.LASF517
	.long	0x361
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0xfe
	.byte	0
	.uleb128 0x8
	.long	.LASF515
	.value	0x162
	.long	.LASF518
	.long	0x380
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0xfe
	.byte	0
	.uleb128 0x8
	.long	.LASF519
	.value	0x165
	.long	.LASF520
	.long	0x3a4
	.uleb128 0x2
	.long	0x1c2
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0xfe
	.byte	0
	.uleb128 0x8
	.long	.LASF519
	.value	0x168
	.long	.LASF521
	.long	0x3c8
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0xfe
	.byte	0
	.uleb128 0x8
	.long	.LASF522
	.value	0x16b
	.long	.LASF523
	.long	0x3dd
	.uleb128 0x2
	.long	0x1c2
	.byte	0
	.uleb128 0x16
	.long	.LASF524
	.value	0x16c
	.byte	0x2a
	.long	.LASF526
	.long	0xd88
	.uleb128 0x16
	.long	.LASF525
	.value	0x16d
	.byte	0x1e
	.long	.LASF527
	.long	0xd8d
	.uleb128 0x16
	.long	.LASF528
	.value	0x16e
	.byte	0x1e
	.long	.LASF529
	.long	0xd92
	.uleb128 0x8
	.long	.LASF530
	.value	0x170
	.long	.LASF531
	.long	0x422
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x8
	.long	.LASF532
	.value	0x171
	.long	.LASF533
	.long	0x437
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x17
	.long	.LASF534
	.value	0x173
	.long	.LASF536
	.uleb128 0x17
	.long	.LASF535
	.value	0x174
	.long	.LASF537
	.uleb128 0x8
	.long	.LASF538
	.value	0x176
	.long	.LASF539
	.long	0x462
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x17
	.long	.LASF540
	.value	0x178
	.long	.LASF541
	.uleb128 0x8
	.long	.LASF542
	.value	0x17b
	.long	.LASF543
	.long	0x491
	.uleb128 0x2
	.long	0xd97
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0xfe
	.byte	0
	.uleb128 0x18
	.long	.LASF544
	.byte	0x2
	.value	0x17e
	.long	.LASF546
	.uleb128 0x18
	.long	.LASF545
	.byte	0x2
	.value	0x17f
	.long	.LASF547
	.uleb128 0x2d
	.long	.LASF624
	.byte	0x2
	.value	0x180
	.byte	0x15
	.long	.LASF634
	.long	0xd6
	.uleb128 0x2
	.long	0xda8
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF703
	.byte	0xb0
	.byte	0x5
	.byte	0xa
	.byte	0xc
	.long	0x5e9
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
	.long	.LASF548
	.byte	0x5
	.byte	0x11
	.byte	0x12
	.long	0x88
	.byte	0x78
	.uleb128 0xa
	.long	.LASF549
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
	.long	.LASF550
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
	.uleb128 0x14
	.long	.LASF552
	.byte	0x1
	.byte	0x5
	.byte	0xa5
	.long	0x84e
	.uleb128 0x1f
	.long	.LASF554
	.long	0x56
	.byte	0x5
	.byte	0xa8
	.long	0x725
	.uleb128 0x1
	.long	.LASF555
	.byte	0
	.uleb128 0x1
	.long	.LASF556
	.byte	0x1
	.uleb128 0x1
	.long	.LASF557
	.byte	0x2
	.uleb128 0x1
	.long	.LASF558
	.byte	0x3
	.uleb128 0x1
	.long	.LASF559
	.byte	0x4
	.uleb128 0x1
	.long	.LASF560
	.byte	0x5
	.uleb128 0x1
	.long	.LASF561
	.byte	0x6
	.uleb128 0x1
	.long	.LASF562
	.byte	0x7
	.uleb128 0x1
	.long	.LASF563
	.byte	0x8
	.uleb128 0x1
	.long	.LASF564
	.byte	0x9
	.uleb128 0x1
	.long	.LASF565
	.byte	0xa
	.uleb128 0x1
	.long	.LASF566
	.byte	0xb
	.uleb128 0x1
	.long	.LASF567
	.byte	0xc
	.uleb128 0x1
	.long	.LASF568
	.byte	0xd
	.uleb128 0x1
	.long	.LASF569
	.byte	0xe
	.uleb128 0x1
	.long	.LASF570
	.byte	0xf
	.uleb128 0x1
	.long	.LASF571
	.byte	0x10
	.uleb128 0x1
	.long	.LASF572
	.byte	0x11
	.uleb128 0x1
	.long	.LASF573
	.byte	0x12
	.uleb128 0x1
	.long	.LASF574
	.byte	0x13
	.uleb128 0x1
	.long	.LASF575
	.byte	0x14
	.uleb128 0x1
	.long	.LASF576
	.byte	0x15
	.uleb128 0x1
	.long	.LASF577
	.byte	0x16
	.uleb128 0x1
	.long	.LASF578
	.byte	0x17
	.uleb128 0x1
	.long	.LASF579
	.byte	0x18
	.uleb128 0x1
	.long	.LASF580
	.byte	0x19
	.uleb128 0x1
	.long	.LASF581
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF582
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF583
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF584
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF585
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF586
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF587
	.byte	0x20
	.uleb128 0x1
	.long	.LASF588
	.byte	0x21
	.uleb128 0x1
	.long	.LASF589
	.byte	0x22
	.uleb128 0x1
	.long	.LASF590
	.byte	0x23
	.uleb128 0x1
	.long	.LASF591
	.byte	0x24
	.uleb128 0x1
	.long	.LASF592
	.byte	0x25
	.uleb128 0x1
	.long	.LASF593
	.byte	0x26
	.uleb128 0x1
	.long	.LASF594
	.byte	0x27
	.uleb128 0x1
	.long	.LASF595
	.byte	0x28
	.uleb128 0x1
	.long	.LASF596
	.byte	0x29
	.uleb128 0x1
	.long	.LASF597
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF598
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF599
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF600
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF601
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF602
	.byte	0x2f
	.byte	0
	.uleb128 0x19
	.long	.LASF604
	.byte	0xe6
	.byte	0x25
	.long	.LASF606
	.long	0x62
	.byte	0x8e
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x5
	.byte	0xe7
	.byte	0x24
	.long	.LASF608
	.long	0x3e
	.value	0x100
	.byte	0x3
	.uleb128 0x19
	.long	.LASF609
	.byte	0xe8
	.byte	0x24
	.long	.LASF610
	.long	0x3e
	.byte	0x20
	.uleb128 0x19
	.long	.LASF611
	.byte	0xe9
	.byte	0x24
	.long	.LASF612
	.long	0x3e
	.byte	0x10
	.uleb128 0x13
	.long	.LASF613
	.byte	0x5
	.byte	0xf3
	.long	.LASF620
	.uleb128 0x11
	.long	.LASF614
	.byte	0x5
	.byte	0xf4
	.long	.LASF615
	.long	0x78d
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x84e
	.byte	0
	.uleb128 0x11
	.long	.LASF614
	.byte	0x5
	.byte	0xf5
	.long	.LASF616
	.long	0x7a7
	.uleb128 0x2
	.long	0x5f5
	.uleb128 0x2
	.long	0x84e
	.byte	0
	.uleb128 0x11
	.long	.LASF617
	.byte	0x5
	.byte	0xf7
	.long	.LASF618
	.long	0x7bc
	.uleb128 0x2
	.long	0x5f5
	.byte	0
	.uleb128 0x13
	.long	.LASF619
	.byte	0x5
	.byte	0xf8
	.long	.LASF621
	.uleb128 0x13
	.long	.LASF622
	.byte	0x5
	.byte	0xf9
	.long	.LASF623
	.uleb128 0x30
	.long	.LASF625
	.byte	0x5
	.byte	0xfc
	.byte	0x15
	.long	.LASF704
	.long	0x7f7
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x7f7
	.uleb128 0x2
	.long	0x56
	.uleb128 0x2
	.long	0x56
	.byte	0
	.uleb128 0xd
	.long	.LASF626
	.byte	0x5
	.byte	0xe4
	.byte	0xf
	.long	0xdc2
	.uleb128 0x21
	.long	.LASF627
	.byte	0xfe
	.long	.LASF629
	.uleb128 0x21
	.long	.LASF628
	.byte	0xff
	.long	.LASF630
	.uleb128 0x18
	.long	.LASF631
	.byte	0x5
	.value	0x100
	.long	.LASF632
	.uleb128 0x31
	.long	.LASF633
	.byte	0x5
	.value	0x101
	.byte	0x1c
	.long	.LASF635
	.long	0x83a
	.uleb128 0x2
	.long	0xdbd
	.byte	0
	.uleb128 0x32
	.long	.LASF644
	.byte	0x5
	.value	0x102
	.byte	0x15
	.long	.LASF705
	.uleb128 0x2
	.long	0xdbd
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF636
	.byte	0x5
	.byte	0x2d
	.byte	0xb
	.long	0xdad
	.uleb128 0x33
	.long	.LASF706
	.byte	0x1
	.byte	0x6
	.byte	0xb
	.byte	0xb
	.uleb128 0x34
	.long	.LASF637
	.byte	0x6
	.byte	0xe
	.byte	0x23
	.long	.LASF638
	.long	0xdcf
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0x7a
	.byte	0x44
	.byte	0x3
	.uleb128 0xe
	.long	.LASF639
	.byte	0x6
	.byte	0xf
	.byte	0x29
	.long	.LASF640
	.long	0x94
	.uleb128 0x13
	.long	.LASF641
	.byte	0x6
	.byte	0x12
	.long	.LASF642
	.uleb128 0x35
	.long	.LASF643
	.byte	0x6
	.byte	0x14
	.byte	0x19
	.long	.LASF707
	.long	0x88
	.byte	0x1
	.uleb128 0x36
	.long	.LASF645
	.byte	0x6
	.byte	0x1a
	.byte	0x15
	.long	.LASF708
	.uleb128 0x2
	.long	0xdbd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x219
	.long	0x8cf
	.uleb128 0x1b
	.long	0x48
	.byte	0x18
	.uleb128 0x1b
	.long	0x48
	.byte	0x4f
	.byte	0
	.uleb128 0x9
	.long	0x8b9
	.uleb128 0x1e
	.long	.LASF646
	.byte	0x7
	.byte	0x1b
	.long	0xad6
	.uleb128 0x14
	.long	.LASF647
	.byte	0xa0
	.byte	0x8
	.byte	0xa
	.long	0xad0
	.uleb128 0xa
	.long	.LASF648
	.byte	0x8
	.byte	0xe
	.byte	0xb
	.long	0xad6
	.byte	0
	.uleb128 0x1c
	.long	.LASF649
	.byte	0x11
	.long	.LASF650
	.long	0x90a
	.long	0x910
	.uleb128 0x3
	.long	0xae6
	.byte	0
	.uleb128 0x1c
	.long	.LASF649
	.byte	0x13
	.long	.LASF651
	.long	0x922
	.long	0x92d
	.uleb128 0x3
	.long	0xae6
	.uleb128 0x2
	.long	0xaeb
	.byte	0
	.uleb128 0x1c
	.long	.LASF649
	.byte	0x14
	.long	.LASF652
	.long	0x93f
	.long	0x94a
	.uleb128 0x3
	.long	0xae6
	.uleb128 0x2
	.long	0xaf0
	.byte	0
	.uleb128 0x22
	.long	.LASF653
	.byte	0x16
	.long	.LASF654
	.long	0xaf6
	.long	0x960
	.long	0x96b
	.uleb128 0x3
	.long	0xae6
	.uleb128 0x2
	.long	0xaeb
	.byte	0
	.uleb128 0x22
	.long	.LASF653
	.byte	0x17
	.long	.LASF655
	.long	0xaf6
	.long	0x981
	.long	0x98c
	.uleb128 0x3
	.long	0xae6
	.uleb128 0x2
	.long	0xaf0
	.byte	0
	.uleb128 0x5
	.long	.LASF656
	.byte	0x8
	.byte	0x19
	.byte	0x1a
	.long	.LASF657
	.long	0x32
	.long	0x9a4
	.long	0x9aa
	.uleb128 0x3
	.long	0xafb
	.byte	0
	.uleb128 0x5
	.long	.LASF658
	.byte	0x8
	.byte	0x1a
	.byte	0x18
	.long	.LASF659
	.long	0xd6
	.long	0x9c2
	.long	0x9c8
	.uleb128 0x3
	.long	0xafb
	.byte	0
	.uleb128 0x5
	.long	.LASF660
	.byte	0x8
	.byte	0x1c
	.byte	0xc
	.long	.LASF661
	.long	0xb00
	.long	0x9e0
	.long	0x9eb
	.uleb128 0x3
	.long	0xae6
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x5
	.long	.LASF662
	.byte	0x8
	.byte	0x1d
	.byte	0xc
	.long	.LASF663
	.long	0xb05
	.long	0xa03
	.long	0xa09
	.uleb128 0x3
	.long	0xae6
	.byte	0
	.uleb128 0x5
	.long	.LASF664
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	.LASF665
	.long	0xb05
	.long	0xa21
	.long	0xa27
	.uleb128 0x3
	.long	0xae6
	.byte	0
	.uleb128 0x23
	.string	"end"
	.byte	0x1f
	.byte	0xc
	.long	.LASF669
	.long	0xb05
	.long	0xa3e
	.long	0xa44
	.uleb128 0x3
	.long	0xae6
	.byte	0
	.uleb128 0x5
	.long	.LASF660
	.byte	0x8
	.byte	0x21
	.byte	0x12
	.long	.LASF666
	.long	0xb0a
	.long	0xa5c
	.long	0xa67
	.uleb128 0x3
	.long	0xafb
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x5
	.long	.LASF662
	.byte	0x8
	.byte	0x22
	.byte	0x12
	.long	.LASF667
	.long	0xb0f
	.long	0xa7f
	.long	0xa85
	.uleb128 0x3
	.long	0xafb
	.byte	0
	.uleb128 0x5
	.long	.LASF664
	.byte	0x8
	.byte	0x23
	.byte	0x12
	.long	.LASF668
	.long	0xb0f
	.long	0xa9d
	.long	0xaa3
	.uleb128 0x3
	.long	0xafb
	.byte	0
	.uleb128 0x23
	.string	"end"
	.byte	0x24
	.byte	0x12
	.long	.LASF670
	.long	0xb0f
	.long	0xaba
	.long	0xac0
	.uleb128 0x3
	.long	0xafb
	.byte	0
	.uleb128 0x24
	.string	"T"
	.long	0x219
	.uleb128 0x37
	.string	"N"
	.long	0x48
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	0x8df
	.byte	0
	.uleb128 0x1a
	.long	0x219
	.long	0xae6
	.uleb128 0x1b
	.long	0x48
	.byte	0x4f
	.byte	0
	.uleb128 0xb
	.long	0x8df
	.uleb128 0x9
	.long	0xad0
	.uleb128 0x38
	.byte	0x8
	.long	0x8df
	.uleb128 0x9
	.long	0x8df
	.uleb128 0xb
	.long	0xad0
	.uleb128 0x9
	.long	0x219
	.uleb128 0xb
	.long	0x219
	.uleb128 0x9
	.long	0x23f
	.uleb128 0xb
	.long	0x23f
	.uleb128 0x39
	.long	.LASF671
	.long	0x50010
	.byte	0x3
	.byte	0x7f
	.byte	0x7
	.long	0xd18
	.uleb128 0xa
	.long	.LASF648
	.byte	0x3
	.byte	0x82
	.byte	0x7
	.long	0xd1d
	.byte	0
	.uleb128 0x25
	.long	.LASF672
	.byte	0x83
	.long	0x43
	.long	0x50000
	.uleb128 0x25
	.long	.LASF673
	.byte	0x84
	.long	0x43
	.long	0x50008
	.uleb128 0xf
	.long	.LASF674
	.byte	0x87
	.byte	0x5
	.long	.LASF676
	.long	0xb60
	.long	0xb66
	.uleb128 0x3
	.long	0xd2e
	.byte	0
	.uleb128 0xf
	.long	.LASF675
	.byte	0x8d
	.byte	0xa
	.long	.LASF677
	.long	0xb79
	.long	0xb84
	.uleb128 0x3
	.long	0xd2e
	.uleb128 0x2
	.long	0xaeb
	.byte	0
	.uleb128 0xf
	.long	.LASF678
	.byte	0x97
	.byte	0xa
	.long	.LASF679
	.long	0xb97
	.long	0xb9d
	.uleb128 0x3
	.long	0xd2e
	.byte	0
	.uleb128 0xf
	.long	.LASF680
	.byte	0xa4
	.byte	0xa
	.long	.LASF681
	.long	0xbb0
	.long	0xbbb
	.uleb128 0x3
	.long	0xd2e
	.uleb128 0x2
	.long	0xaeb
	.byte	0
	.uleb128 0xf
	.long	.LASF682
	.byte	0xbc
	.byte	0xa
	.long	.LASF683
	.long	0xbce
	.long	0xbd4
	.uleb128 0x3
	.long	0xd2e
	.byte	0
	.uleb128 0x5
	.long	.LASF660
	.byte	0x3
	.byte	0xc3
	.byte	0x8
	.long	.LASF684
	.long	0xaf6
	.long	0xbec
	.long	0xbf7
	.uleb128 0x3
	.long	0xd2e
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x5
	.long	.LASF685
	.byte	0x3
	.byte	0xc8
	.byte	0x8
	.long	.LASF686
	.long	0xaf6
	.long	0xc0f
	.long	0xc15
	.uleb128 0x3
	.long	0xd2e
	.byte	0
	.uleb128 0x5
	.long	.LASF687
	.byte	0x3
	.byte	0xcd
	.byte	0x8
	.long	.LASF688
	.long	0xaf6
	.long	0xc2d
	.long	0xc33
	.uleb128 0x3
	.long	0xd2e
	.byte	0
	.uleb128 0x5
	.long	.LASF660
	.byte	0x3
	.byte	0xd2
	.byte	0xe
	.long	.LASF689
	.long	0xaeb
	.long	0xc4b
	.long	0xc56
	.uleb128 0x3
	.long	0xd38
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x5
	.long	.LASF685
	.byte	0x3
	.byte	0xd7
	.byte	0xe
	.long	.LASF690
	.long	0xaeb
	.long	0xc6e
	.long	0xc74
	.uleb128 0x3
	.long	0xd38
	.byte	0
	.uleb128 0x5
	.long	.LASF687
	.byte	0x3
	.byte	0xdc
	.byte	0xe
	.long	.LASF691
	.long	0xaeb
	.long	0xc8c
	.long	0xc92
	.uleb128 0x3
	.long	0xd38
	.byte	0
	.uleb128 0x5
	.long	.LASF656
	.byte	0x3
	.byte	0xe1
	.byte	0xc
	.long	.LASF692
	.long	0x32
	.long	0xcaa
	.long	0xcb0
	.uleb128 0x3
	.long	0xd38
	.byte	0
	.uleb128 0x5
	.long	.LASF693
	.byte	0x3
	.byte	0xe6
	.byte	0xc
	.long	.LASF694
	.long	0x32
	.long	0xcc8
	.long	0xcce
	.uleb128 0x3
	.long	0xd38
	.byte	0
	.uleb128 0x5
	.long	.LASF658
	.byte	0x3
	.byte	0xeb
	.byte	0xa
	.long	.LASF695
	.long	0xd6
	.long	0xce6
	.long	0xcec
	.uleb128 0x3
	.long	0xd38
	.byte	0
	.uleb128 0xf
	.long	.LASF514
	.byte	0xf0
	.byte	0xa
	.long	.LASF696
	.long	0xcff
	.long	0xd05
	.uleb128 0x3
	.long	0xd2e
	.byte	0
	.uleb128 0x24
	.string	"T"
	.long	0x8df
	.uleb128 0x3a
	.long	.LASF697
	.long	0x48
	.value	0x800
	.byte	0
	.uleb128 0x7
	.long	0xb14
	.uleb128 0x1a
	.long	0x8df
	.long	0xd2e
	.uleb128 0x3b
	.long	0x48
	.value	0x7ff
	.byte	0
	.uleb128 0xb
	.long	0xb14
	.uleb128 0x7
	.long	0xd2e
	.uleb128 0xb
	.long	0xd18
	.uleb128 0x10
	.long	0x28f
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.uleb128 0x10
	.long	0x2af
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console11s_cursorPosE
	.uleb128 0x10
	.long	0x2bf
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_displayLineE
	.uleb128 0x10
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console15s_cursorEnabledE
	.uleb128 0x10
	.long	0x2df
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_shouldFlushE
	.uleb128 0x9
	.long	0x1e9
	.uleb128 0x9
	.long	0x214
	.uleb128 0x9
	.long	0x3e
	.uleb128 0xb
	.long	0xda3
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF698
	.uleb128 0x7
	.long	0xd9c
	.uleb128 0x9
	.long	0x1e4
	.uleb128 0xb
	.long	0xdb2
	.uleb128 0x3c
	.long	0xdbd
	.uleb128 0x2
	.long	0xdbd
	.byte	0
	.uleb128 0x9
	.long	0x4c1
	.uleb128 0xb
	.long	0xdc7
	.uleb128 0x3d
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.long	.LASF699
	.uleb128 0x7
	.long	0xdc8
	.uleb128 0x10
	.long	0x879
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel5Timer10s_systicksE
	.uleb128 0x3e
	.long	0xc8
	.uleb128 0x3f
	.long	.LASF700
	.byte	0x7
	.byte	0x12
	.byte	0x11
	.long	0xdff
	.uleb128 0x2
	.long	0x6e
	.uleb128 0x2
	.long	0x56
	.byte	0
	.uleb128 0x40
	.long	.LASF709
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0xe6c
	.uleb128 0x26
	.long	0xe6c
	.quad	.LBI10
	.byte	.LVU17
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.uleb128 0x26
	.long	0xe72
	.quad	.LBI12
	.byte	.LVU20
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x2
	.byte	0x48
	.byte	0x67
	.uleb128 0x41
	.long	0xe80
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF710
	.byte	0x1
	.uleb128 0x43
	.long	0xb4d
	.long	0xe80
	.byte	0x2
	.long	0xe8a
	.uleb128 0x44
	.long	.LASF711
	.long	0xd33
	.byte	0
	.uleb128 0x45
	.long	0xe72
	.long	.LASF712
	.long	0xe9b
	.long	0xea1
	.uleb128 0x46
	.long	0xe80
	.byte	0
	.uleb128 0x47
	.long	0x8a5
	.byte	0x1
	.byte	0x12
	.byte	0xa
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0xece
	.uleb128 0x48
	.long	.LASF713
	.byte	0x1
	.byte	0x12
	.byte	0x32
	.long	0xdbd
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x49
	.long	0x889
	.byte	0x1
	.byte	0x5
	.byte	0xa
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4a
	.long	.LASF714
	.byte	0x1
	.byte	0xd
	.byte	0x12
	.long	0x6e
	.value	0x4a9
	.uleb128 0x1d
	.quad	.LVL1
	.long	0x78d
	.long	0xf1b
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel5Timer16interruptHandlerERNS_14InterruptFrameE
	.byte	0
	.uleb128 0x1d
	.quad	.LVL2
	.long	0xde8
	.long	0xf39
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x43
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.byte	0
	.uleb128 0x1d
	.quad	.LVL3
	.long	0xde8
	.long	0xf57
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0xa9
	.byte	0
	.uleb128 0x4b
	.quad	.LVL4
	.long	0xde8
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x9
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1d
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x5
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
	.uleb128 0xa
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
.LVUS0:
	.uleb128 .LVU20
	.uleb128 .LVU27
.LLST0:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
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
	.file 9 "src/drivers/../../include/drivers/../utils/StateTracker.h"
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
	.uleb128 0x2
	.long	.LASF439
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x3
	.long	.LASF440
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF441
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
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
.LASF496:
	.string	"_ZN6Kernel7Console8s_extentE"
.LASF273:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF605:
	.string	"_ZN6Kernel7Console11s_vgaScreenE"
.LASF244:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF104:
	.string	"__cpp_namespace_attributes 201411L"
.LASF360:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF556:
	.string	"debug"
.LASF203:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF621:
	.string	"_ZN6Kernel16InterruptManager16enableInterruptsEv"
.LASF353:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF411:
	.string	"__amd64 1"
.LASF559:
	.string	"overflow"
.LASF362:
	.string	"__FLT64X_HAS_DENORM__ 1"
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
.LASF477:
	.string	"BlackOnCyan"
.LASF67:
	.string	"__INT_FAST16_TYPE__ int"
.LASF476:
	.string	"WhiteOnGreen"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF340:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF585:
	.string	"securityException"
.LASF239:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF159:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF512:
	.string	"_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE"
.LASF152:
	.string	"__WINT_MIN__ 0U"
.LASF623:
	.string	"_ZN6Kernel16InterruptManager17disableInterruptsEv"
.LASF324:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF348:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF654:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSERKS4_"
.LASF214:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF264:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF27:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF546:
	.string	"_ZN6Kernel7Console10flushToVgaEv"
.LASF192:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF672:
	.string	"m_tail"
.LASF449:
	.string	"unsigned int"
.LASF124:
	.string	"__cpp_conditional_explicit 201806L"
.LASF156:
	.string	"__SHRT_WIDTH__ 16"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
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
.LASF603:
	.string	"s_vgaScreen"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF690:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF520:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF275:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF75:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF646:
	.string	"Utils"
.LASF212:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF101:
	.string	"__cpp_digit_separators 201309L"
.LASF663:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF97:
	.string	"__cpp_return_type_deduction 201304L"
.LASF462:
	.string	"MagentaOnBlack"
.LASF374:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF271:
	.string	"__FLT16_DIG__ 3"
.LASF565:
	.string	"invalidTss"
.LASF51:
	.string	"__INT16_TYPE__ short int"
.LASF285:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF308:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF697:
	.string	"s_size"
.LASF17:
	.string	"__OPTIMIZE__ 1"
.LASF254:
	.string	"__LDBL_DIG__ 18"
.LASF639:
	.string	"s_systicks"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF652:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4EOS4_"
.LASF24:
	.string	"__SIZEOF_SHORT__ 2"
.LASF57:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF649:
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
.LASF150:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF62:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF65:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF620:
	.string	"_ZN6Kernel16InterruptManager10initializeEv"
.LASF337:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF231:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF37:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF303:
	.string	"__FLT64_DIG__ 15"
.LASF338:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF694:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8capacityEv"
.LASF589:
	.string	"irqCascade"
.LASF131:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF269:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF197:
	.string	"__UINT32_C(c) c ## U"
.LASF80:
	.string	"__cpp_hex_float 201603L"
.LASF518:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF347:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF569:
	.string	"pageFault"
.LASF206:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF371:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF631:
	.string	"remapPic"
.LASF375:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF474:
	.string	"WhiteOnBlue"
.LASF555:
	.string	"divideByZero"
.LASF685:
	.string	"back"
.LASF181:
	.string	"__INT8_C(c) c"
.LASF325:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF560:
	.string	"boundRangeExceeded"
.LASF670:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF571:
	.string	"x87FloatingPointException"
.LASF241:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF705:
	.string	"_ZN6Kernel16InterruptManager15handleExceptionERNS_14InterruptFrameE"
.LASF470:
	.string	"LightMagentaOnBlack"
.LASF547:
	.string	"_ZN6Kernel7Console12updateCursorEv"
.LASF113:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF305:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF204:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF298:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF627:
	.string	"setupIdt"
.LASF584:
	.string	"vmmCommunicationException"
.LASF96:
	.string	"__cpp_alias_templates 200704L"
.LASF699:
	.string	"float"
.LASF222:
	.string	"__FLT_DIG__ 6"
.LASF202:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF390:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF294:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF712:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC2Ev"
.LASF467:
	.string	"LightGreenOnBlack"
.LASF352:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF157:
	.string	"__INT_WIDTH__ 32"
.LASF666:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF678:
	.string	"popBack"
.LASF706:
	.string	"Timer"
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
.LASF7:
	.string	"__GNUC__ 13"
.LASF459:
	.string	"GreenOnBlack"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF451:
	.string	"long long unsigned int"
.LASF576:
	.string	"controlProtectionException"
.LASF667:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF172:
	.string	"__INT8_MAX__ 0x7f"
.LASF58:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF525:
	.string	"getExtent"
.LASF626:
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
.LASF345:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF640:
	.string	"_ZN6Kernel5Timer10s_systicksE"
.LASF551:
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
.LASF648:
	.string	"m_data"
.LASF575:
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
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF224:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF590:
	.string	"irqCom2"
.LASF458:
	.string	"BlueOnBlack"
.LASF714:
	.string	"divisor"
.LASF121:
	.string	"__cpp_designated_initializers 201707L"
.LASF479:
	.string	"BlackOnRed"
.LASF79:
	.string	"__cpp_binary_literals 201304L"
.LASF614:
	.string	"registerInterruptCallback"
.LASF514:
	.string	"clear"
.LASF632:
	.string	"_ZN6Kernel16InterruptManager8remapPicEv"
.LASF191:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF498:
	.string	"s_windowCapacity"
.LASF436:
	.string	"STATE_TRACKER_H "
.LASF307:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF617:
	.string	"triggerInterrupt"
.LASF83:
	.string	"__cpp_unicode_literals 200710L"
.LASF497:
	.string	"_ZN6Kernel7Console17s_bufferLineCountE"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF616:
	.string	"_ZN6Kernel16InterruptManager25registerInterruptCallbackENS0_15InterruptVectorEPFvRNS_14InterruptFrameEE"
.LASF235:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF612:
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
.LASF638:
	.string	"_ZN6Kernel5Timer11s_frequencyE"
.LASF413:
	.string	"__x86_64 1"
.LASF696:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5clearEv"
.LASF444:
	.string	"size_t"
.LASF613:
	.string	"initialize"
.LASF199:
	.string	"__UINT64_C(c) c ## UL"
.LASF489:
	.string	"width"
.LASF504:
	.string	"s_displayLine"
.LASF281:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF2:
	.string	"__STDC__ 1"
.LASF704:
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
.LASF31:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF404:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF423:
	.string	"__MMX__ 1"
.LASF323:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF709:
	.string	"_GLOBAL__sub_I__ZN6Kernel5Timer10initialiseEv"
.LASF568:
	.string	"generalProtectionFault"
.LASF290:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF366:
	.string	"__BFLT16_MANT_DIG__ 8"
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
.LASF695:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5emptyEv"
.LASF272:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF536:
	.string	"_ZN6Kernel7Console12enableCursorEv"
.LASF629:
	.string	"_ZN6Kernel16InterruptManager8setupIdtEv"
.LASF55:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF319:
	.string	"__FLT128_DIG__ 33"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF160:
	.string	"__WCHAR_WIDTH__ 32"
.LASF134:
	.string	"__cpp_using_enum 201907L"
.LASF378:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF553:
	.string	"Attributes"
.LASF139:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
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
.LASF138:
	.string	"__cpp_aligned_new 201606L"
.LASF334:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF3:
	.string	"__cplusplus 202002L"
.LASF106:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF164:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF383:
	.string	"__USER_LABEL_PREFIX__ "
.LASF108:
	.string	"__cpp_range_based_for 201603L"
.LASF215:
	.string	"__GCC_IEC_559 2"
.LASF351:
	.string	"__FLT64X_DIG__ 18"
.LASF288:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF40:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF261:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF527:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF421:
	.string	"__k8__ 1"
.LASF228:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF686:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF622:
	.string	"disableInterrupts"
.LASF698:
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
.LASF633:
	.string	"handleInterrupt"
.LASF88:
	.string	"__cpp_rvalue_reference 200610L"
.LASF647:
	.string	"Array<Kernel::Console::VgaChar, 80>"
.LASF486:
	.string	"WhiteOnLightGray"
.LASF570:
	.string	"reserved15"
.LASF95:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF70:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF607:
	.string	"s_tableSize"
.LASF587:
	.string	"irqSystemTimer"
.LASF327:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF379:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF688:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF205:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF618:
	.string	"_ZN6Kernel16InterruptManager16triggerInterruptENS0_15InterruptVectorE"
.LASF599:
	.string	"irqPs2Mouse"
.LASF662:
	.string	"data"
.LASF182:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF364:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF176:
	.string	"__UINT8_MAX__ 0xff"
.LASF609:
	.string	"s_exceptionCount"
.LASF445:
	.string	"uint8_t"
.LASF174:
	.string	"__INT32_MAX__ 0x7fffffff"
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
.LASF153:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF59:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF557:
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
.LASF628:
	.string	"loadIdt"
.LASF20:
	.string	"__LP64__ 1"
.LASF509:
	.string	"_ZN6Kernel7Console13s_shouldFlushE"
.LASF270:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF608:
	.string	"_ZN6Kernel16InterruptManager11s_tableSizeE"
.LASF86:
	.string	"__cpp_decltype 200707L"
.LASF524:
	.string	"getCursor"
.LASF292:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF19:
	.string	"_LP64 1"
.LASF577:
	.string	"reserved22"
.LASF578:
	.string	"reserved23"
.LASF579:
	.string	"reserved24"
.LASF580:
	.string	"reserved25"
.LASF454:
	.string	"long long int"
.LASF582:
	.string	"reserved27"
.LASF93:
	.string	"__cpp_nsdmi 200809L"
.LASF141:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF563:
	.string	"doubleFault"
.LASF151:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF668:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
.LASF367:
	.string	"__BFLT16_DIG__ 2"
.LASF18:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF279:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF255:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF309:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF661:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF645:
	.string	"interruptHandler"
.LASF675:
	.string	"pushBack"
.LASF430:
	.string	"__SEG_FS 1"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF679:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE7popBackEv"
.LASF677:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8pushBackERKS5_"
.LASF114:
	.string	"__cpp_template_auto 201606L"
.LASF537:
	.string	"_ZN6Kernel7Console13disableCursorEv"
.LASF692:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4sizeEv"
.LASF343:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF455:
	.string	"bool"
.LASF363:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF184:
	.string	"__INT16_C(c) c"
.LASF183:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF510:
	.string	"writeChar"
.LASF130:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF687:
	.string	"front"
.LASF234:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF60:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF542:
	.string	"printInterrupt"
.LASF283:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF341:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF466:
	.string	"LightBlueOnBlack"
.LASF598:
	.string	"irqAvailable11"
.LASF425:
	.string	"__SSE2__ 1"
.LASF330:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF385:
	.string	"__STRICT_ANSI__ 1"
.LASF682:
	.string	"popFront"
.LASF22:
	.string	"__SIZEOF_LONG__ 8"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF437:
	.string	"ROLLING_WINDOW_H "
.LASF601:
	.string	"irqPrimaryAta"
.LASF637:
	.string	"s_frequency"
.LASF586:
	.string	"reserved31"
.LASF659:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5emptyEv"
.LASF653:
	.string	"operator="
.LASF173:
	.string	"__INT16_MAX__ 0x7fff"
.LASF656:
	.string	"size"
.LASF98:
	.string	"__cpp_decltype_auto 201304L"
.LASF701:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mcmodel=large -mtune=generic -march=x86-64 -g -ggdb3 -O1 -std=c++20 -ffreestanding -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin -fno-stack-protector -fno-rtti -fpermissive"
.LASF56:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF643:
	.string	"getSystemTicks"
.LASF26:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF193:
	.string	"__UINT8_C(c) c"
.LASF684:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF78:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF276:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF625:
	.string	"setIdtGate"
.LASF53:
	.string	"__INT64_TYPE__ long int"
.LASF674:
	.string	"RollingWindowVolatile"
.LASF253:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF591:
	.string	"irqCom1"
.LASF703:
	.string	"InterruptFrame"
.LASF660:
	.string	"operator[]"
.LASF229:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF111:
	.string	"__cpp_inline_variables 201606L"
.LASF490:
	.string	"height"
.LASF583:
	.string	"hypervisorInjectionException"
.LASF532:
	.string	"scrollUp"
.LASF550:
	.string	"rflags"
.LASF506:
	.string	"s_cursorEnabled"
.LASF592:
	.string	"irqLpt2"
.LASF465:
	.string	"DarkGrayOnBlack"
.LASF216:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF441:
	.string	"ARRAY_H "
.LASF117:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF311:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF602:
	.string	"irqSecondaryAta"
.LASF472:
	.string	"WhiteOnBlack"
.LASF321:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF35:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF566:
	.string	"segmentNotPresent"
.LASF266:
	.string	"__LDBL_HAS_DENORM__ 1"
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
.LASF671:
	.string	"RollingWindowVolatile<Utils::Array<Kernel::Console::VgaChar, 80>, 2048>"
.LASF533:
	.string	"_ZN6Kernel7Console8scrollUpEm"
.LASF433:
	.string	"TIMER_H "
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF195:
	.string	"__UINT16_C(c) c"
.LASF175:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF650:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4Ev"
.LASF306:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF594:
	.string	"irqLpt1"
.LASF539:
	.string	"_ZN6Kernel7Console14setDisplayLineEm"
.LASF357:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF107:
	.string	"__cpp_fold_expressions 201603L"
.LASF427:
	.string	"__SSE_MATH__ 1"
.LASF447:
	.string	"uint16_t"
.LASF45:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF282:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF90:
	.string	"__cpp_variadic_templates 200704L"
.LASF611:
	.string	"s_interruptCount"
.LASF118:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF711:
	.string	"this"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
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
.LASF693:
	.string	"capacity"
.LASF33:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF665:
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
.LASF564:
	.string	"coprocessorSegmentOverrun"
.LASF624:
	.string	"cursorInScreenBounds"
.LASF453:
	.string	"short int"
.LASF610:
	.string	"_ZN6Kernel16InterruptManager16s_exceptionCountE"
.LASF332:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF142:
	.string	"__cpp_char8_t 202207L"
.LASF676:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC4Ev"
.LASF636:
	.string	"InterruptHandler"
.LASF511:
	.string	"putChar"
.LASF443:
	.string	"long int"
.LASF508:
	.string	"s_shouldFlush"
.LASF112:
	.string	"__cpp_aggregate_bases 201603L"
.LASF167:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF166:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF501:
	.string	"s_cursorPos"
.LASF710:
	.string	"__static_initialization_and_destruction_0"
.LASF708:
	.string	"_ZN6Kernel5Timer16interruptHandlerERNS_14InterruptFrameE"
.LASF355:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF526:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF543:
	.string	"_ZN6Kernel7Console14printInterruptEPKcmmNS0_10AttributesE"
.LASF358:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF545:
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
.LASF615:
	.string	"_ZN6Kernel16InterruptManager25registerInterruptCallbackEhPFvRNS_14InterruptFrameEE"
.LASF198:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF155:
	.string	"__SCHAR_WIDTH__ 8"
.LASF426:
	.string	"__FXSR__ 1"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF516:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF488:
	.string	"Extent"
.LASF450:
	.string	"uint64_t"
.LASF531:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF567:
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
.LASF544:
	.string	"flushToVga"
.LASF354:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF246:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF280:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF54:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF600:
	.string	"irqFpu"
.LASF428:
	.string	"__SSE2_MATH__ 1"
.LASF700:
	.string	"port_out_byte"
.LASF630:
	.string	"_ZN6Kernel16InterruptManager7loadIdtEv"
.LASF310:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF521:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF165:
	.string	"__INTMAX_C(c) c ## L"
.LASF540:
	.string	"clampDisplayToCursor"
.LASF438:
	.string	"INTERRUPT_MANAGER_H "
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
.LASF683:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8popFrontEv"
.LASF91:
	.string	"__cpp_initializer_lists 200806L"
.LASF39:
	.string	"__GNUG__ 13"
.LASF149:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF221:
	.string	"__FLT_MANT_DIG__ 24"
.LASF558:
	.string	"breakpoint"
.LASF669:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF34:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF471:
	.string	"YellowOnBlack"
.LASF482:
	.string	"WhiteOnMagenta"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF702:
	.string	"is_integral_v"
.LASF23:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF515:
	.string	"clearLine"
.LASF380:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF442:
	.string	"long unsigned int"
.LASF552:
	.string	"InterruptManager"
.LASF658:
	.string	"empty"
.LASF77:
	.string	"__DEPRECATED 1"
.LASF606:
	.string	"_ZN6Kernel16InterruptManager12s_entryFlagsE"
.LASF641:
	.string	"initialise"
.LASF494:
	.string	"s_extent"
.LASF29:
	.string	"__CHAR_BIT__ 8"
.LASF581:
	.string	"reserved26"
.LASF689:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF297:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF163:
	.string	"__SIZE_WIDTH__ 64"
.LASF574:
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
.LASF179:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF115:
	.string	"__cpp_structured_bindings 201606L"
.LASF681:
	.string	"_ZN21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE9pushFrontERKS5_"
.LASF420:
	.string	"__k8 1"
.LASF655:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSEOS4_"
.LASF225:
	.string	"__FLT_MAX_EXP__ 128"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF318:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF446:
	.string	"unsigned char"
.LASF604:
	.string	"s_entryFlags"
.LASF561:
	.string	"invalidOpcode"
.LASF230:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF189:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF123:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF295:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF219:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF529:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF94:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF185:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF541:
	.string	"_ZN6Kernel7Console20clampDisplayToCursorEv"
.LASF188:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF314:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF38:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF72:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF146:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF588:
	.string	"irqKeyboard"
.LASF495:
	.string	"s_bufferLineCount"
.LASF304:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF680:
	.string	"pushFront"
.LASF517:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF691:
	.string	"_ZNK21RollingWindowVolatileIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF85:
	.string	"__cpp_lambdas 200907L"
.LASF154:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF657:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4sizeEv"
.LASF562:
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
.LASF549:
	.string	"error_code"
.LASF480:
	.string	"WhiteOnRed"
.LASF572:
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
.LASF68:
	.string	"__INT_FAST32_TYPE__ int"
.LASF162:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF21:
	.string	"__SIZEOF_INT__ 4"
.LASF99:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF713:
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
.LASF422:
	.string	"__code_model_large__ 1"
.LASF452:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF644:
	.string	"handleException"
.LASF242:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF596:
	.string	"irqAcpi"
.LASF259:
	.string	"__DECIMAL_DIG__ 21"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF448:
	.string	"short unsigned int"
.LASF664:
	.string	"begin"
.LASF384:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF597:
	.string	"irqAvailable10"
.LASF102:
	.string	"__cpp_unicode_characters 201411L"
.LASF30:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF329:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF595:
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
.LASF573:
	.string	"machineCheck"
.LASF548:
	.string	"interrupt_number"
.LASF209:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF417:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF457:
	.string	"BlackOnBlack"
.LASF635:
	.string	"_ZN6Kernel16InterruptManager15handleInterruptERNS_14InterruptFrameE"
.LASF277:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF431:
	.string	"__SEG_GS 1"
.LASF673:
	.string	"m_head"
.LASF634:
	.string	"_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE"
.LASF28:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF339:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF44:
	.string	"__INTMAX_TYPE__ long int"
.LASF593:
	.string	"irqFloppyDisk"
.LASF651:
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
.LASF554:
	.string	"InterruptVector"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF642:
	.string	"_ZN6Kernel5Timer10initialiseEv"
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
.LASF707:
	.string	"_ZN6Kernel5Timer14getSystemTicksEv"
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
.LASF240:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF116:
	.string	"__cpp_variadic_using 201611L"
.LASF333:
	.string	"__FLT128_IS_IEC_60559__ 1"
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
.LASF377:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF302:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF424:
	.string	"__SSE__ 1"
.LASF233:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF207:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF619:
	.string	"enableInterrupts"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/mnt/a/myOsX64"
.LASF0:
	.string	"src/drivers/Timer.cpp"
	.ident	"GCC: (GNU) 13.2.0"
