	.file	"KernelData.cpp"
	.text
.Ltext0:
	.file 0 "/mnt/a/myOsX64" "src/kernel/KernelData.cpp"
	.type	_GLOBAL__sub_I__ZN6Kernel12s_kernelHeapE, @function
_GLOBAL__sub_I__ZN6Kernel12s_kernelHeapE:
.LFB111:
	.file 1 "src/kernel/KernelData.cpp"
	.loc 1 6 1 view -0
	.cfi_startproc
.LBB10:
.LBI10:
	.loc 1 6 1 view .LVU1
.LBB11:
	.file 2 "src/kernel/../../include/kernel/../drivers/Console.h"
	.loc 2 72 95 is_stmt 0 view .LVU2
	cmpb	$0, _ZGVN6Kernel7Console12s_charBufferE(%rip)
	jne	.L1
	.loc 2 72 95 discriminator 1 view .LVU3
	movb	$1, _ZGVN6Kernel7Console12s_charBufferE(%rip)
.LVL0:
.LBB12:
.LBI12:
	.file 3 "src/kernel/../../include/kernel/../drivers/../utils/RollingWindow.h"
	.loc 3 14 5 is_stmt 1 view .LVU4
.LBB13:
.LBB14:
	.loc 3 15 5 discriminator 1 view .LVU5
.LBE14:
	.loc 3 14 5 is_stmt 0 view .LVU6
	movl	$2048, %eax
.L3:
.LBB15:
	.loc 3 15 5 is_stmt 1 discriminator 1 view .LVU7
	subq	$1, %rax
	jne	.L3
	.loc 3 15 5 is_stmt 0 discriminator 4 view .LVU8
	movq	$0, _ZN6Kernel7Console12s_charBufferE+327680(%rip)
	movq	$0, _ZN6Kernel7Console12s_charBufferE+327688(%rip)
.LVL1:
.L1:
	.loc 3 15 5 discriminator 4 view .LVU9
.LBE15:
.LBE13:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 6 1 view .LVU10
	ret
	.cfi_endproc
.LFE111:
	.size	_GLOBAL__sub_I__ZN6Kernel12s_kernelHeapE, .-_GLOBAL__sub_I__ZN6Kernel12s_kernelHeapE
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__ZN6Kernel12s_kernelHeapE
	.weak	_ZGVN6Kernel7Console12s_charBufferE
	.section	.bss._ZGVN6Kernel7Console12s_charBufferE,"awG",@nobits,_ZGVN6Kernel7Console12s_charBufferE,comdat
	.align 8
	.type	_ZGVN6Kernel7Console12s_charBufferE, @object
	.size	_ZGVN6Kernel7Console12s_charBufferE, 8
_ZGVN6Kernel7Console12s_charBufferE:
	.zero	8
	.globl	_ZN6Kernel12s_kernelHeapE
	.section	.bss
	.align 32
	.type	_ZN6Kernel12s_kernelHeapE, @object
	.size	_ZN6Kernel12s_kernelHeapE, 48
_ZN6Kernel12s_kernelHeapE:
	.zero	48
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
	.file 6 "src/kernel/../../include/kernel/KernelData.h"
	.file 7 "src/kernel/../../include/kernel/../utils/Utils.h"
	.file 8 "src/kernel/../../include/kernel/../drivers/../utils/Array.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10ad
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2b
	.long	.LASF672
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x13
	.long	.LASF442
	.byte	0x5
	.byte	0x17
	.long	0x47
	.uleb128 0xa
	.long	0x32
	.uleb128 0x14
	.long	0x32
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF440
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF441
	.uleb128 0x13
	.long	.LASF443
	.byte	0x8
	.byte	0x17
	.long	0x60
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF444
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF445
	.uleb128 0x13
	.long	.LASF446
	.byte	0xa
	.byte	0x16
	.long	0x79
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF447
	.uleb128 0x13
	.long	.LASF448
	.byte	0xb
	.byte	0x1c
	.long	0x8b
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF449
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF450
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF451
	.uleb128 0x2c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF452
	.uleb128 0x2d
	.byte	0x8
	.uleb128 0x2e
	.string	"std"
	.byte	0x4
	.byte	0x16
	.byte	0xb
	.long	0x1e9
	.uleb128 0x19
	.long	.LASF453
	.long	0x1f0
	.byte	0x1
	.uleb128 0x6
	.long	.LASF454
	.value	0x168
	.long	0x1f0
	.byte	0x1
	.uleb128 0x19
	.long	.LASF453
	.long	0x1f0
	.byte	0
	.uleb128 0x6
	.long	.LASF455
	.value	0x196
	.long	0x1f0
	.byte	0
	.uleb128 0x6
	.long	.LASF456
	.value	0x174
	.long	0x1f0
	.byte	0
	.uleb128 0xe
	.long	.LASF457
	.long	0x1f0
	.uleb128 0x6
	.long	.LASF456
	.value	0x174
	.long	0x1f0
	.byte	0
	.uleb128 0xe
	.long	.LASF457
	.long	0x1f0
	.uleb128 0x6
	.long	.LASF458
	.value	0x16e
	.long	0x1f0
	.byte	0x1
	.uleb128 0x6
	.long	.LASF455
	.value	0x196
	.long	0x1f0
	.byte	0
	.uleb128 0x6
	.long	.LASF456
	.value	0x174
	.long	0x1f0
	.byte	0
	.uleb128 0xe
	.long	.LASF457
	.long	0x1f0
	.uleb128 0x6
	.long	.LASF455
	.value	0x196
	.long	0x1f0
	.byte	0
	.uleb128 0x6
	.long	.LASF456
	.value	0x174
	.long	0x1f0
	.byte	0
	.uleb128 0xe
	.long	.LASF457
	.long	0x1f0
	.uleb128 0x6
	.long	.LASF455
	.value	0x196
	.long	0x1f0
	.byte	0
	.uleb128 0x6
	.long	.LASF456
	.value	0x174
	.long	0x1f0
	.byte	0
	.uleb128 0xe
	.long	.LASF457
	.long	0x1f0
	.uleb128 0x19
	.long	.LASF453
	.long	0x1f0
	.byte	0x1
	.uleb128 0x6
	.long	.LASF455
	.value	0x196
	.long	0x1f0
	.byte	0x1
	.uleb128 0x6
	.long	.LASF456
	.value	0x174
	.long	0x1f0
	.byte	0
	.uleb128 0xe
	.long	.LASF457
	.long	0x1f0
	.uleb128 0x6
	.long	.LASF458
	.value	0x16e
	.long	0x1f0
	.byte	0
	.uleb128 0x6
	.long	.LASF455
	.value	0x196
	.long	0x1f0
	.byte	0
	.uleb128 0x6
	.long	.LASF455
	.value	0x196
	.long	0x1f0
	.byte	0
	.uleb128 0x6
	.long	.LASF455
	.value	0x196
	.long	0x1f0
	.byte	0
	.uleb128 0x6
	.long	.LASF459
	.value	0x1a1
	.long	0x1f0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF460
	.uleb128 0xa
	.long	0x1e9
	.uleb128 0x14
	.long	0x1e9
	.uleb128 0x1f
	.long	.LASF461
	.byte	0x2
	.byte	0xa
	.long	0x8af
	.uleb128 0x1a
	.long	.LASF606
	.byte	0x1
	.byte	0x2
	.byte	0xc
	.long	0x5a2
	.uleb128 0x20
	.long	.LASF551
	.byte	0x1
	.long	0x55
	.byte	0x2
	.long	0x2d5
	.uleb128 0x3
	.long	.LASF462
	.byte	0
	.uleb128 0x3
	.long	.LASF463
	.byte	0x1
	.uleb128 0x3
	.long	.LASF464
	.byte	0x2
	.uleb128 0x3
	.long	.LASF465
	.byte	0x3
	.uleb128 0x3
	.long	.LASF466
	.byte	0x4
	.uleb128 0x3
	.long	.LASF467
	.byte	0x5
	.uleb128 0x3
	.long	.LASF468
	.byte	0x6
	.uleb128 0x3
	.long	.LASF469
	.byte	0x7
	.uleb128 0x3
	.long	.LASF470
	.byte	0x8
	.uleb128 0x3
	.long	.LASF471
	.byte	0x9
	.uleb128 0x3
	.long	.LASF472
	.byte	0xa
	.uleb128 0x3
	.long	.LASF473
	.byte	0xb
	.uleb128 0x3
	.long	.LASF474
	.byte	0xc
	.uleb128 0x3
	.long	.LASF475
	.byte	0xd
	.uleb128 0x3
	.long	.LASF476
	.byte	0xe
	.uleb128 0x3
	.long	.LASF477
	.byte	0xf
	.uleb128 0x3
	.long	.LASF478
	.byte	0x10
	.uleb128 0x3
	.long	.LASF479
	.byte	0x1f
	.uleb128 0x3
	.long	.LASF480
	.byte	0x20
	.uleb128 0x3
	.long	.LASF481
	.byte	0x2f
	.uleb128 0x3
	.long	.LASF482
	.byte	0x30
	.uleb128 0x3
	.long	.LASF483
	.byte	0x3f
	.uleb128 0x3
	.long	.LASF484
	.byte	0x40
	.uleb128 0x3
	.long	.LASF485
	.byte	0x4f
	.uleb128 0x3
	.long	.LASF486
	.byte	0x50
	.uleb128 0x3
	.long	.LASF487
	.byte	0x5f
	.uleb128 0x3
	.long	.LASF488
	.byte	0x60
	.uleb128 0x3
	.long	.LASF489
	.byte	0x6f
	.uleb128 0x3
	.long	.LASF490
	.byte	0x70
	.uleb128 0x3
	.long	.LASF491
	.byte	0x7f
	.byte	0
	.uleb128 0x15
	.long	.LASF492
	.byte	0x10
	.byte	0x2
	.byte	0x31
	.long	0x2f4
	.uleb128 0x21
	.string	"x"
	.byte	0x33
	.long	0x32
	.byte	0
	.uleb128 0x21
	.string	"y"
	.byte	0x34
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	0x2d5
	.uleb128 0xa
	.long	0x2f4
	.uleb128 0x15
	.long	.LASF493
	.byte	0x10
	.byte	0x2
	.byte	0x37
	.long	0x325
	.uleb128 0x8
	.long	.LASF494
	.byte	0x2
	.byte	0x39
	.byte	0x14
	.long	0x32
	.byte	0
	.uleb128 0x8
	.long	.LASF495
	.byte	0x2
	.byte	0x3a
	.byte	0x14
	.long	0x32
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x2fe
	.uleb128 0x15
	.long	.LASF496
	.byte	0x2
	.byte	0x2
	.byte	0x3d
	.long	0x351
	.uleb128 0x8
	.long	.LASF497
	.byte	0x2
	.byte	0x3f
	.byte	0x15
	.long	0x55
	.byte	0
	.uleb128 0x8
	.long	.LASF498
	.byte	0x2
	.byte	0x40
	.byte	0x18
	.long	0x211
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0x32a
	.uleb128 0x2f
	.long	.LASF499
	.byte	0x2
	.byte	0x44
	.byte	0x21
	.long	.LASF501
	.long	0x325
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
	.uleb128 0x30
	.long	.LASF673
	.byte	0x2
	.byte	0x46
	.byte	0x2b
	.long	.LASF674
	.long	0x8c5
	.long	0xb8000
	.byte	0x3
	.uleb128 0x22
	.long	.LASF500
	.byte	0x47
	.long	.LASF502
	.long	0x3d
	.value	0x800
	.uleb128 0x11
	.long	.LASF505
	.byte	0x48
	.byte	0x5f
	.long	.LASF507
	.long	0xcb2
	.uleb128 0x22
	.long	.LASF503
	.byte	0x49
	.long	.LASF504
	.long	0x3d
	.value	0x7d0
	.uleb128 0x11
	.long	.LASF506
	.byte	0x4a
	.byte	0x2a
	.long	.LASF508
	.long	0x2f4
	.uleb128 0x11
	.long	.LASF509
	.byte	0x4b
	.byte	0x27
	.long	.LASF510
	.long	0x42
	.uleb128 0x11
	.long	.LASF511
	.byte	0x4c
	.byte	0x25
	.long	.LASF512
	.long	0x1f5
	.uleb128 0x11
	.long	.LASF513
	.byte	0x4d
	.byte	0x25
	.long	.LASF514
	.long	0x1f5
	.uleb128 0x23
	.long	.LASF515
	.byte	0x50
	.long	.LASF517
	.long	0x41b
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x55
	.uleb128 0x2
	.long	0x211
	.byte	0
	.uleb128 0x23
	.long	.LASF516
	.byte	0x69
	.long	.LASF518
	.long	0x434
	.uleb128 0x2
	.long	0x55
	.uleb128 0x2
	.long	0x211
	.byte	0
	.uleb128 0xd
	.long	.LASF519
	.value	0x15f
	.long	.LASF521
	.long	0x44e
	.uleb128 0x2
	.long	0x55
	.uleb128 0x2
	.long	0x211
	.byte	0
	.uleb128 0xd
	.long	.LASF520
	.value	0x160
	.long	.LASF522
	.long	0x468
	.uleb128 0x2
	.long	0x55
	.uleb128 0x2
	.long	0x211
	.byte	0
	.uleb128 0xd
	.long	.LASF520
	.value	0x162
	.long	.LASF523
	.long	0x487
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x55
	.uleb128 0x2
	.long	0x211
	.byte	0
	.uleb128 0xd
	.long	.LASF524
	.value	0x165
	.long	.LASF525
	.long	0x4ab
	.uleb128 0x2
	.long	0x2d5
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x55
	.uleb128 0x2
	.long	0x211
	.byte	0
	.uleb128 0xd
	.long	.LASF524
	.value	0x168
	.long	.LASF526
	.long	0x4cf
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x32
	.uleb128 0x2
	.long	0x55
	.uleb128 0x2
	.long	0x211
	.byte	0
	.uleb128 0xd
	.long	.LASF527
	.value	0x16b
	.long	.LASF528
	.long	0x4e4
	.uleb128 0x2
	.long	0x2d5
	.byte	0
	.uleb128 0x1b
	.long	.LASF529
	.value	0x16c
	.byte	0x2a
	.long	.LASF531
	.long	0xf2c
	.uleb128 0x1b
	.long	.LASF530
	.value	0x16d
	.byte	0x1e
	.long	.LASF532
	.long	0xf31
	.uleb128 0x1b
	.long	.LASF533
	.value	0x16e
	.byte	0x1e
	.long	.LASF534
	.long	0xf36
	.uleb128 0xd
	.long	.LASF535
	.value	0x170
	.long	.LASF536
	.long	0x529
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0xd
	.long	.LASF537
	.value	0x171
	.long	.LASF538
	.long	0x53e
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x1c
	.long	.LASF539
	.value	0x173
	.long	.LASF541
	.uleb128 0x1c
	.long	.LASF540
	.value	0x174
	.long	.LASF542
	.uleb128 0xd
	.long	.LASF543
	.value	0x176
	.long	.LASF544
	.long	0x569
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x1c
	.long	.LASF545
	.value	0x178
	.long	.LASF546
	.uleb128 0x24
	.long	.LASF547
	.value	0x17b
	.long	.LASF549
	.uleb128 0x24
	.long	.LASF548
	.value	0x17c
	.long	.LASF550
	.uleb128 0x31
	.long	.LASF602
	.byte	0x2
	.value	0x17d
	.byte	0x15
	.long	.LASF675
	.long	0x1e9
	.uleb128 0x2
	.long	0xf3b
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF676
	.byte	0x30
	.byte	0x8
	.byte	0x5
	.byte	0xc
	.byte	0xb
	.long	0x894
	.uleb128 0x20
	.long	.LASF552
	.byte	0x8
	.long	0x80
	.byte	0x5
	.long	0x5c6
	.uleb128 0x3
	.long	.LASF553
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	.LASF554
	.byte	0x20
	.byte	0x5
	.byte	0x14
	.long	0x698
	.uleb128 0x8
	.long	.LASF555
	.byte	0x5
	.byte	0x16
	.byte	0x14
	.long	0xf59
	.byte	0
	.uleb128 0x8
	.long	.LASF556
	.byte	0x5
	.byte	0x17
	.byte	0x14
	.long	0xf59
	.byte	0x8
	.uleb128 0x8
	.long	.LASF557
	.byte	0x5
	.byte	0x18
	.byte	0x32
	.long	0xad4
	.byte	0x10
	.uleb128 0x8
	.long	.LASF558
	.byte	0x5
	.byte	0x19
	.byte	0x16
	.long	0x6e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF559
	.byte	0x5
	.byte	0x1a
	.byte	0x16
	.long	0x6e
	.byte	0x1c
	.uleb128 0x25
	.long	.LASF564
	.byte	0x1c
	.byte	0x12
	.long	.LASF566
	.long	0x1e9
	.long	0x62a
	.long	0x630
	.uleb128 0x1
	.long	0xf5e
	.byte	0
	.uleb128 0x26
	.long	.LASF560
	.byte	0x1d
	.long	.LASF561
	.long	0x642
	.long	0x648
	.uleb128 0x1
	.long	0xf59
	.byte	0
	.uleb128 0x26
	.long	.LASF562
	.byte	0x21
	.long	.LASF563
	.long	0x65a
	.long	0x660
	.uleb128 0x1
	.long	0xf59
	.byte	0
	.uleb128 0x25
	.long	.LASF565
	.byte	0x26
	.byte	0x14
	.long	.LASF567
	.long	0x32
	.long	0x677
	.long	0x67d
	.uleb128 0x1
	.long	0xf59
	.byte	0
	.uleb128 0x33
	.long	.LASF568
	.byte	0x5
	.byte	0x2b
	.byte	0x13
	.long	.LASF569
	.long	0xae
	.long	0x691
	.uleb128 0x1
	.long	0xf59
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x5c6
	.uleb128 0xf
	.long	.LASF570
	.byte	0x32
	.byte	0x10
	.long	0xf59
	.byte	0
	.uleb128 0xf
	.long	.LASF571
	.byte	0x33
	.byte	0xf
	.long	0xae
	.byte	0x8
	.uleb128 0xf
	.long	.LASF572
	.byte	0x34
	.byte	0xf
	.long	0xae
	.byte	0x10
	.uleb128 0xf
	.long	.LASF573
	.byte	0x35
	.byte	0x19
	.long	0x42
	.byte	0x18
	.uleb128 0xf
	.long	.LASF574
	.byte	0x36
	.byte	0x19
	.long	0x42
	.byte	0x20
	.uleb128 0xf
	.long	.LASF575
	.byte	0x37
	.byte	0x19
	.long	0x42
	.byte	0x28
	.uleb128 0x9
	.long	.LASF576
	.byte	0x5
	.byte	0x3a
	.byte	0xe
	.long	.LASF577
	.long	0x6f9
	.long	0x709
	.uleb128 0x1
	.long	0xf63
	.uleb128 0x2
	.long	0xae
	.uleb128 0x2
	.long	0xae
	.byte	0
	.uleb128 0x4
	.long	.LASF578
	.byte	0x5
	.byte	0x50
	.byte	0xf
	.long	.LASF580
	.long	0xae
	.long	0x721
	.long	0x72c
	.uleb128 0x1
	.long	0xf68
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x4
	.long	.LASF579
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	.LASF581
	.long	0xae
	.long	0x744
	.long	0x754
	.uleb128 0x1
	.long	0xf68
	.uleb128 0x2
	.long	0xae
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x9
	.long	.LASF582
	.byte	0x5
	.byte	0x52
	.byte	0xe
	.long	.LASF583
	.long	0x768
	.long	0x773
	.uleb128 0x1
	.long	0xf68
	.uleb128 0x2
	.long	0xae
	.byte	0
	.uleb128 0x9
	.long	.LASF584
	.byte	0x5
	.byte	0x54
	.byte	0xe
	.long	.LASF585
	.long	0x787
	.long	0x78d
	.uleb128 0x1
	.long	0xf6d
	.byte	0
	.uleb128 0x4
	.long	.LASF586
	.byte	0x5
	.byte	0x64
	.byte	0x10
	.long	.LASF587
	.long	0x32
	.long	0x7a5
	.long	0x7ab
	.uleb128 0x1
	.long	0xf6d
	.byte	0
	.uleb128 0x4
	.long	.LASF588
	.byte	0x5
	.byte	0x65
	.byte	0x10
	.long	.LASF589
	.long	0x32
	.long	0x7c3
	.long	0x7c9
	.uleb128 0x1
	.long	0xf6d
	.byte	0
	.uleb128 0x4
	.long	.LASF590
	.byte	0x5
	.byte	0x66
	.byte	0x10
	.long	.LASF591
	.long	0x32
	.long	0x7e1
	.long	0x7e7
	.uleb128 0x1
	.long	0xf6d
	.byte	0
	.uleb128 0x4
	.long	.LASF592
	.byte	0x5
	.byte	0x67
	.byte	0x10
	.long	.LASF593
	.long	0x32
	.long	0x7ff
	.long	0x805
	.uleb128 0x1
	.long	0xf6d
	.byte	0
	.uleb128 0x4
	.long	.LASF594
	.byte	0x5
	.byte	0x68
	.byte	0x10
	.long	.LASF595
	.long	0x32
	.long	0x81d
	.long	0x823
	.uleb128 0x1
	.long	0xf6d
	.byte	0
	.uleb128 0x4
	.long	.LASF596
	.byte	0x5
	.byte	0x69
	.byte	0x10
	.long	.LASF597
	.long	0x32
	.long	0x83b
	.long	0x841
	.uleb128 0x1
	.long	0xf6d
	.byte	0
	.uleb128 0x4
	.long	.LASF598
	.byte	0x5
	.byte	0x6a
	.byte	0x10
	.long	.LASF599
	.long	0x32
	.long	0x859
	.long	0x85f
	.uleb128 0x1
	.long	0xf6d
	.byte	0
	.uleb128 0x4
	.long	.LASF600
	.byte	0x5
	.byte	0x6b
	.byte	0x10
	.long	.LASF601
	.long	0x32
	.long	0x877
	.long	0x87d
	.uleb128 0x1
	.long	0xf6d
	.byte	0
	.uleb128 0x34
	.long	.LASF603
	.byte	0x5
	.byte	0x6e
	.byte	0x17
	.long	.LASF677
	.long	0x32
	.uleb128 0x2
	.long	0x32
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x5a2
	.uleb128 0xa
	.long	0x5a2
	.uleb128 0x35
	.long	.LASF604
	.byte	0x6
	.byte	0x29
	.byte	0x1b
	.long	.LASF678
	.long	0x5a2
	.byte	0
	.uleb128 0x1d
	.long	0x32a
	.long	0x8c5
	.uleb128 0x1e
	.long	0x47
	.byte	0x18
	.uleb128 0x1e
	.long	0x47
	.byte	0x4f
	.byte	0
	.uleb128 0xc
	.long	0x8af
	.uleb128 0x1f
	.long	.LASF605
	.byte	0x7
	.byte	0x1b
	.long	0xc75
	.uleb128 0x1a
	.long	.LASF607
	.byte	0xa0
	.byte	0x8
	.byte	0x7
	.long	0xacf
	.uleb128 0x8
	.long	.LASF608
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.long	0xc75
	.byte	0
	.uleb128 0x10
	.long	.LASF609
	.byte	0x8
	.byte	0xe
	.long	.LASF610
	.long	0x901
	.long	0x907
	.uleb128 0x1
	.long	0xc85
	.byte	0
	.uleb128 0x10
	.long	.LASF609
	.byte	0x8
	.byte	0x10
	.long	.LASF611
	.long	0x91a
	.long	0x925
	.uleb128 0x1
	.long	0xc85
	.uleb128 0x2
	.long	0xc8a
	.byte	0
	.uleb128 0x10
	.long	.LASF609
	.byte	0x8
	.byte	0x11
	.long	.LASF612
	.long	0x938
	.long	0x943
	.uleb128 0x1
	.long	0xc85
	.uleb128 0x2
	.long	0xc8f
	.byte	0
	.uleb128 0x16
	.long	.LASF613
	.byte	0x8
	.byte	0x13
	.byte	0x10
	.long	.LASF614
	.long	0xc94
	.long	0x95b
	.long	0x966
	.uleb128 0x1
	.long	0xc85
	.uleb128 0x2
	.long	0xc8a
	.byte	0
	.uleb128 0x16
	.long	.LASF613
	.byte	0x8
	.byte	0x14
	.byte	0x10
	.long	.LASF615
	.long	0xc94
	.long	0x97e
	.long	0x989
	.uleb128 0x1
	.long	0xc85
	.uleb128 0x2
	.long	0xc8f
	.byte	0
	.uleb128 0x4
	.long	.LASF565
	.byte	0x8
	.byte	0x16
	.byte	0x1a
	.long	.LASF616
	.long	0x32
	.long	0x9a1
	.long	0x9a7
	.uleb128 0x1
	.long	0xc99
	.byte	0
	.uleb128 0x4
	.long	.LASF617
	.byte	0x8
	.byte	0x17
	.byte	0x18
	.long	.LASF618
	.long	0x1e9
	.long	0x9bf
	.long	0x9c5
	.uleb128 0x1
	.long	0xc99
	.byte	0
	.uleb128 0x4
	.long	.LASF619
	.byte	0x8
	.byte	0x19
	.byte	0xc
	.long	.LASF620
	.long	0xc9e
	.long	0x9dd
	.long	0x9e8
	.uleb128 0x1
	.long	0xc85
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x4
	.long	.LASF568
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	.LASF621
	.long	0xca3
	.long	0xa00
	.long	0xa06
	.uleb128 0x1
	.long	0xc85
	.byte	0
	.uleb128 0x4
	.long	.LASF622
	.byte	0x8
	.byte	0x1b
	.byte	0xc
	.long	.LASF623
	.long	0xca3
	.long	0xa1e
	.long	0xa24
	.uleb128 0x1
	.long	0xc85
	.byte	0
	.uleb128 0x17
	.string	"end"
	.byte	0x8
	.byte	0x1c
	.byte	0xc
	.long	.LASF627
	.long	0xca3
	.long	0xa3c
	.long	0xa42
	.uleb128 0x1
	.long	0xc85
	.byte	0
	.uleb128 0x4
	.long	.LASF619
	.byte	0x8
	.byte	0x1e
	.byte	0x12
	.long	.LASF624
	.long	0xca8
	.long	0xa5a
	.long	0xa65
	.uleb128 0x1
	.long	0xc99
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x4
	.long	.LASF568
	.byte	0x8
	.byte	0x1f
	.byte	0x12
	.long	.LASF625
	.long	0xcad
	.long	0xa7d
	.long	0xa83
	.uleb128 0x1
	.long	0xc99
	.byte	0
	.uleb128 0x4
	.long	.LASF622
	.byte	0x8
	.byte	0x20
	.byte	0x12
	.long	.LASF626
	.long	0xcad
	.long	0xa9b
	.long	0xaa1
	.uleb128 0x1
	.long	0xc99
	.byte	0
	.uleb128 0x17
	.string	"end"
	.byte	0x8
	.byte	0x21
	.byte	0x12
	.long	.LASF628
	.long	0xcad
	.long	0xab9
	.long	0xabf
	.uleb128 0x1
	.long	0xc99
	.byte	0
	.uleb128 0x18
	.string	"T"
	.long	0x32a
	.uleb128 0x36
	.string	"N"
	.long	0x47
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.long	0x8d5
	.uleb128 0x1a
	.long	.LASF629
	.byte	0x8
	.byte	0x7
	.byte	0x1e
	.long	0xc6f
	.uleb128 0x8
	.long	.LASF630
	.byte	0x7
	.byte	0x21
	.byte	0xb
	.long	0x8b
	.byte	0
	.uleb128 0x9
	.long	.LASF631
	.byte	0x7
	.byte	0x24
	.byte	0x9
	.long	.LASF632
	.long	0xb01
	.long	0xb07
	.uleb128 0x1
	.long	0xf40
	.byte	0
	.uleb128 0x10
	.long	.LASF633
	.byte	0x7
	.byte	0x25
	.long	.LASF634
	.long	0xb1a
	.long	0xb25
	.uleb128 0x1
	.long	0xf40
	.uleb128 0x1
	.long	0xa0
	.byte	0
	.uleb128 0x9
	.long	.LASF631
	.byte	0x7
	.byte	0x26
	.byte	0x9
	.long	.LASF635
	.long	0xb39
	.long	0xb44
	.uleb128 0x1
	.long	0xf40
	.uleb128 0x2
	.long	0x8b
	.byte	0
	.uleb128 0x10
	.long	.LASF631
	.byte	0x7
	.byte	0x28
	.long	.LASF636
	.long	0xb57
	.long	0xb62
	.uleb128 0x1
	.long	0xf40
	.uleb128 0x2
	.long	0xf45
	.byte	0
	.uleb128 0x16
	.long	.LASF613
	.byte	0x7
	.byte	0x29
	.byte	0x12
	.long	.LASF637
	.long	0xf4a
	.long	0xb7a
	.long	0xb85
	.uleb128 0x1
	.long	0xf40
	.uleb128 0x2
	.long	0xf45
	.byte	0
	.uleb128 0x10
	.long	.LASF631
	.byte	0x7
	.byte	0x2a
	.long	.LASF638
	.long	0xb98
	.long	0xba3
	.uleb128 0x1
	.long	0xf40
	.uleb128 0x2
	.long	0xf4f
	.byte	0
	.uleb128 0x16
	.long	.LASF613
	.byte	0x7
	.byte	0x2b
	.byte	0x12
	.long	.LASF639
	.long	0xf4a
	.long	0xbbb
	.long	0xbc6
	.uleb128 0x1
	.long	0xf40
	.uleb128 0x2
	.long	0xf4f
	.byte	0
	.uleb128 0x27
	.string	"set"
	.byte	0x2d
	.long	.LASF642
	.long	0xbd8
	.long	0xbe3
	.uleb128 0x1
	.long	0xf40
	.uleb128 0x2
	.long	0x5b0
	.byte	0
	.uleb128 0x9
	.long	.LASF519
	.byte	0x7
	.byte	0x31
	.byte	0xe
	.long	.LASF640
	.long	0xbf7
	.long	0xc02
	.uleb128 0x1
	.long	0xf40
	.uleb128 0x2
	.long	0x5b0
	.byte	0
	.uleb128 0x17
	.string	"get"
	.byte	0x7
	.byte	0x35
	.byte	0xe
	.long	.LASF641
	.long	0x1e9
	.long	0xc1a
	.long	0xc25
	.uleb128 0x1
	.long	0xf54
	.uleb128 0x2
	.long	0x5b0
	.byte	0
	.uleb128 0x27
	.string	"set"
	.byte	0x39
	.long	.LASF643
	.long	0xc37
	.long	0xc42
	.uleb128 0x1
	.long	0xf40
	.uleb128 0x2
	.long	0x8b
	.byte	0
	.uleb128 0x17
	.string	"get"
	.byte	0x7
	.byte	0x3d
	.byte	0xb
	.long	.LASF644
	.long	0x8b
	.long	0xc5a
	.long	0xc60
	.uleb128 0x1
	.long	0xf54
	.byte	0
	.uleb128 0x18
	.string	"E"
	.long	0x5b0
	.uleb128 0x18
	.string	"T"
	.long	0x8b
	.byte	0
	.uleb128 0xa
	.long	0xad4
	.byte	0
	.uleb128 0x1d
	.long	0x32a
	.long	0xc85
	.uleb128 0x1e
	.long	0x47
	.byte	0x4f
	.byte	0
	.uleb128 0x7
	.long	0x8d5
	.uleb128 0xc
	.long	0xacf
	.uleb128 0x28
	.long	0x8d5
	.uleb128 0xc
	.long	0x8d5
	.uleb128 0x7
	.long	0xacf
	.uleb128 0xc
	.long	0x32a
	.uleb128 0x7
	.long	0x32a
	.uleb128 0xc
	.long	0x351
	.uleb128 0x7
	.long	0x351
	.uleb128 0x37
	.long	.LASF645
	.long	0x50010
	.byte	0x3
	.byte	0x6
	.byte	0x7
	.long	0xebc
	.uleb128 0x8
	.long	.LASF608
	.byte	0x3
	.byte	0x9
	.byte	0x7
	.long	0xec1
	.byte	0
	.uleb128 0x29
	.long	.LASF646
	.byte	0xa
	.long	0x32
	.long	0x50000
	.uleb128 0x29
	.long	.LASF570
	.byte	0xb
	.long	0x32
	.long	0x50008
	.uleb128 0x9
	.long	.LASF647
	.byte	0x3
	.byte	0xe
	.byte	0x5
	.long	.LASF648
	.long	0xcff
	.long	0xd05
	.uleb128 0x1
	.long	0xed2
	.byte	0
	.uleb128 0x9
	.long	.LASF649
	.byte	0x3
	.byte	0x14
	.byte	0xa
	.long	.LASF650
	.long	0xd19
	.long	0xd24
	.uleb128 0x1
	.long	0xed2
	.uleb128 0x2
	.long	0xc8a
	.byte	0
	.uleb128 0x9
	.long	.LASF651
	.byte	0x3
	.byte	0x1e
	.byte	0xa
	.long	.LASF652
	.long	0xd38
	.long	0xd3e
	.uleb128 0x1
	.long	0xed2
	.byte	0
	.uleb128 0x9
	.long	.LASF653
	.byte	0x3
	.byte	0x2b
	.byte	0xa
	.long	.LASF654
	.long	0xd52
	.long	0xd5d
	.uleb128 0x1
	.long	0xed2
	.uleb128 0x2
	.long	0xc8a
	.byte	0
	.uleb128 0x9
	.long	.LASF655
	.byte	0x3
	.byte	0x43
	.byte	0xa
	.long	.LASF656
	.long	0xd71
	.long	0xd77
	.uleb128 0x1
	.long	0xed2
	.byte	0
	.uleb128 0x4
	.long	.LASF619
	.byte	0x3
	.byte	0x4a
	.byte	0x8
	.long	.LASF657
	.long	0xc94
	.long	0xd8f
	.long	0xd9a
	.uleb128 0x1
	.long	0xed2
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x4
	.long	.LASF658
	.byte	0x3
	.byte	0x4f
	.byte	0x8
	.long	.LASF659
	.long	0xc94
	.long	0xdb2
	.long	0xdb8
	.uleb128 0x1
	.long	0xed2
	.byte	0
	.uleb128 0x4
	.long	.LASF660
	.byte	0x3
	.byte	0x54
	.byte	0x8
	.long	.LASF661
	.long	0xc94
	.long	0xdd0
	.long	0xdd6
	.uleb128 0x1
	.long	0xed2
	.byte	0
	.uleb128 0x4
	.long	.LASF619
	.byte	0x3
	.byte	0x59
	.byte	0xe
	.long	.LASF662
	.long	0xc8a
	.long	0xdee
	.long	0xdf9
	.uleb128 0x1
	.long	0xedc
	.uleb128 0x2
	.long	0x32
	.byte	0
	.uleb128 0x4
	.long	.LASF658
	.byte	0x3
	.byte	0x5e
	.byte	0xe
	.long	.LASF663
	.long	0xc8a
	.long	0xe11
	.long	0xe17
	.uleb128 0x1
	.long	0xedc
	.byte	0
	.uleb128 0x4
	.long	.LASF660
	.byte	0x3
	.byte	0x63
	.byte	0xe
	.long	.LASF664
	.long	0xc8a
	.long	0xe2f
	.long	0xe35
	.uleb128 0x1
	.long	0xedc
	.byte	0
	.uleb128 0x4
	.long	.LASF565
	.byte	0x3
	.byte	0x68
	.byte	0xc
	.long	.LASF665
	.long	0x32
	.long	0xe4d
	.long	0xe53
	.uleb128 0x1
	.long	0xedc
	.byte	0
	.uleb128 0x4
	.long	.LASF666
	.byte	0x3
	.byte	0x6d
	.byte	0xc
	.long	.LASF667
	.long	0x32
	.long	0xe6b
	.long	0xe71
	.uleb128 0x1
	.long	0xedc
	.byte	0
	.uleb128 0x4
	.long	.LASF617
	.byte	0x3
	.byte	0x72
	.byte	0xa
	.long	.LASF668
	.long	0x1e9
	.long	0xe89
	.long	0xe8f
	.uleb128 0x1
	.long	0xedc
	.byte	0
	.uleb128 0x9
	.long	.LASF519
	.byte	0x3
	.byte	0x77
	.byte	0xa
	.long	.LASF669
	.long	0xea3
	.long	0xea9
	.uleb128 0x1
	.long	0xed2
	.byte	0
	.uleb128 0x18
	.string	"T"
	.long	0x8d5
	.uleb128 0x38
	.long	.LASF670
	.long	0x47
	.value	0x800
	.byte	0
	.uleb128 0xa
	.long	0xcb2
	.uleb128 0x1d
	.long	0x8d5
	.long	0xed2
	.uleb128 0x39
	.long	0x47
	.value	0x7ff
	.byte	0
	.uleb128 0x7
	.long	0xcb2
	.uleb128 0xa
	.long	0xed2
	.uleb128 0x7
	.long	0xebc
	.uleb128 0x12
	.long	0x39d
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console12s_charBufferE
	.uleb128 0x12
	.long	0x3bc
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console11s_cursorPosE
	.uleb128 0x12
	.long	0x3cb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_displayLineE
	.uleb128 0x12
	.long	0x3da
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console15s_cursorEnabledE
	.uleb128 0x12
	.long	0x3e9
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel7Console13s_shouldFlushE
	.uleb128 0xc
	.long	0x2f9
	.uleb128 0xc
	.long	0x325
	.uleb128 0xc
	.long	0x3d
	.uleb128 0xc
	.long	0x2f4
	.uleb128 0x7
	.long	0xad4
	.uleb128 0xc
	.long	0xc6f
	.uleb128 0xc
	.long	0xad4
	.uleb128 0x28
	.long	0xad4
	.uleb128 0x7
	.long	0xc6f
	.uleb128 0x7
	.long	0x5c6
	.uleb128 0x7
	.long	0x698
	.uleb128 0x7
	.long	0x894
	.uleb128 0x7
	.long	0x5a2
	.uleb128 0x7
	.long	0x899
	.uleb128 0x3a
	.long	0x89e
	.byte	0x1
	.byte	0x5
	.byte	0x14
	.uleb128 0x9
	.byte	0x3
	.quad	_ZN6Kernel12s_kernelHeapE
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF671
	.uleb128 0x5
	.long	0xbc
	.uleb128 0x5
	.long	0xc6
	.uleb128 0x5
	.long	0xd2
	.uleb128 0x5
	.long	0xdc
	.uleb128 0x5
	.long	0xe8
	.uleb128 0x5
	.long	0xf4
	.uleb128 0x5
	.long	0xfd
	.uleb128 0x5
	.long	0x109
	.uleb128 0x5
	.long	0x112
	.uleb128 0x5
	.long	0x11e
	.uleb128 0x5
	.long	0x12a
	.uleb128 0x5
	.long	0x136
	.uleb128 0x5
	.long	0x13f
	.uleb128 0x5
	.long	0x14b
	.uleb128 0x5
	.long	0x157
	.uleb128 0x5
	.long	0x160
	.uleb128 0x5
	.long	0x16c
	.uleb128 0x5
	.long	0x178
	.uleb128 0x5
	.long	0x181
	.uleb128 0x5
	.long	0x18b
	.uleb128 0x5
	.long	0x197
	.uleb128 0x5
	.long	0x1a3
	.uleb128 0x5
	.long	0x1ac
	.uleb128 0x5
	.long	0x1b8
	.uleb128 0x5
	.long	0x1c4
	.uleb128 0x5
	.long	0x1d0
	.uleb128 0x5
	.long	0x1dc
	.uleb128 0x3b
	.long	.LASF679
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x107f
	.uleb128 0x2a
	.long	0x107f
	.quad	.LBI10
	.byte	.LVU1
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.uleb128 0x2a
	.long	0x1085
	.quad	.LBI12
	.byte	.LVU4
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x2
	.byte	0x48
	.byte	0x5f
	.uleb128 0x3c
	.long	0x1093
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF680
	.byte	0x1
	.uleb128 0x3e
	.long	0xceb
	.long	0x1093
	.byte	0x2
	.long	0x109d
	.uleb128 0x3f
	.long	.LASF681
	.long	0xed7
	.byte	0
	.uleb128 0x40
	.long	0x1085
	.long	.LASF682
	.long	0x10aa
	.uleb128 0x41
	.long	0x1093
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 197
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x20
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
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x6
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
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
	.uleb128 0x35
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 .LVU4
	.uleb128 .LVU9
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
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
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF436
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x3
	.long	.LASF437
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x3
	.long	.LASF438
	.file 9 "src/kernel/../../include/kernel/../drivers/../utils/Types.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x9
	.byte	0x4
	.file 10 "src/kernel/../../include/kernel/../drivers/../utils/Utils.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x2
	.long	.LASF439
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xa
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
.LASF501:
	.string	"_ZN6Kernel7Console8s_extentE"
.LASF217:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF674:
	.string	"_ZN6Kernel7Console11s_vgaScreenE"
.LASF400:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF590:
	.string	"allocatedSize"
.LASF244:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF104:
	.string	"__cpp_namespace_attributes 201411L"
.LASF598:
	.string	"allocatedPercentage"
.LASF360:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF457:
	.string	"is_same_v"
.LASF166:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF203:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF586:
	.string	"usedSize"
.LASF46:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF41:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF412:
	.string	"__amd64__ 1"
.LASF585:
	.string	"_ZNK6Kernel14HeapLinkedList11printBlocksEv"
.LASF183:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF212:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF286:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF508:
	.string	"_ZN6Kernel7Console11s_cursorPosE"
.LASF127:
	.string	"__cpp_deduction_guides 201907L"
.LASF468:
	.string	"BrownOnBlack"
.LASF629:
	.string	"FlagMap<Kernel::HeapLinkedList::BlockFlags, long long unsigned int>"
.LASF437:
	.string	"HEAP_H "
.LASF482:
	.string	"BlackOnCyan"
.LASF481:
	.string	"WhiteOnGreen"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF179:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF340:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF239:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF159:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF396:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF393:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF517:
	.string	"_ZN6Kernel7Console9writeCharEmmhNS0_10AttributesE"
.LASF631:
	.string	"FlagMap"
.LASF580:
	.string	"_ZN6Kernel14HeapLinkedList8allocateEm"
.LASF152:
	.string	"__WINT_MIN__ 0U"
.LASF121:
	.string	"__cpp_designated_initializers 201707L"
.LASF409:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF348:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF614:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSERKS4_"
.LASF591:
	.string	"_ZNK6Kernel14HeapLinkedList13allocatedSizeEv"
.LASF264:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF561:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markUsedEv"
.LASF27:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF549:
	.string	"_ZN6Kernel7Console10flushToVgaEv"
.LASF192:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF410:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF646:
	.string	"m_tail"
.LASF447:
	.string	"unsigned int"
.LASF124:
	.string	"__cpp_conditional_explicit 201806L"
.LASF556:
	.string	"next"
.LASF301:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF504:
	.string	"_ZN6Kernel7Console16s_windowCapacityE"
.LASF389:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF535:
	.string	"scrollDown"
.LASF47:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF507:
	.string	"_ZN6Kernel7Console12s_charBufferE"
.LASF466:
	.string	"RedOnBlack"
.LASF492:
	.string	"CursorPos"
.LASF200:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF592:
	.string	"totalSize"
.LASF673:
	.string	"s_vgaScreen"
.LASF402:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF525:
	.string	"_ZN6Kernel7Console9clearSpanENS0_9CursorPosEmhNS0_10AttributesE"
.LASF75:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF605:
	.string	"Utils"
.LASF235:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF101:
	.string	"__cpp_digit_separators 201309L"
.LASF621:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF146:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF467:
	.string	"MagentaOnBlack"
.LASF374:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF271:
	.string	"__FLT16_DIG__ 3"
.LASF634:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyED4Ev"
.LASF285:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF670:
	.string	"s_size"
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
.LASF612:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4EOS4_"
.LASF22:
	.string	"__SIZEOF_LONG__ 8"
.LASF57:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF609:
	.string	"Array"
.LASF64:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF399:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF438:
	.string	"CONSOLE_H "
.LASF622:
	.string	"begin"
.LASF263:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF678:
	.string	"_ZN6Kernel12s_kernelHeapE"
.LASF289:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF249:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF555:
	.string	"prev"
.LASF61:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF150:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF571:
	.string	"m_startAddr"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF62:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF65:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF144:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF337:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF664:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF303:
	.string	"__FLT64_DIG__ 15"
.LASF338:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF24:
	.string	"__SIZEOF_SHORT__ 2"
.LASF346:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF269:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF197:
	.string	"__UINT32_C(c) c ## U"
.LASF80:
	.string	"__cpp_hex_float 201603L"
.LASF523:
	.string	"_ZN6Kernel7Console9clearLineEmhNS0_10AttributesE"
.LASF347:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF209:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF206:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF429:
	.string	"__MMX_WITH_SSE__ 1"
.LASF411:
	.string	"__amd64 1"
.LASF407:
	.string	"__SIZEOF_INT128__ 16"
.LASF479:
	.string	"WhiteOnBlue"
.LASF638:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4EOS4_"
.LASF658:
	.string	"back"
.LASF181:
	.string	"__INT8_C(c) c"
.LASF325:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF628:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF60:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF185:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF241:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF627:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE3endEv"
.LASF475:
	.string	"LightMagentaOnBlack"
.LASF446:
	.string	"uint32_t"
.LASF32:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF113:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF317:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF162:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF204:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF298:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF562:
	.string	"markFree"
.LASF386:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF645:
	.string	"RollingWindow<Utils::Array<Kernel::Console::VgaChar, 80>, 2048>"
.LASF352:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF96:
	.string	"__cpp_alias_templates 200704L"
.LASF669:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5clearEv"
.LASF222:
	.string	"__FLT_DIG__ 6"
.LASF202:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF390:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF294:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF633:
	.string	"~FlagMap"
.LASF472:
	.string	"LightGreenOnBlack"
.LASF157:
	.string	"__INT_WIDTH__ 32"
.LASF624:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF651:
	.string	"popBack"
.LASF89:
	.string	"__cpp_rvalue_references 200610L"
.LASF320:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF640:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE5clearES3_"
.LASF300:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF194:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF211:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF262:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF652:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE7popBackEv"
.LASF7:
	.string	"__GNUC__ 13"
.LASF456:
	.string	"is_void_v"
.LASF265:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF449:
	.string	"long long unsigned int"
.LASF367:
	.string	"__BFLT16_DIG__ 2"
.LASF418:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF172:
	.string	"__INT8_MAX__ 0x7f"
.LASF58:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF530:
	.string	"getExtent"
.LASF336:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF560:
	.string	"markUsed"
.LASF322:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF84:
	.string	"__cpp_user_defined_literals 200809L"
.LASF220:
	.string	"__FLT_RADIX__ 2"
.LASF345:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF108:
	.string	"__cpp_range_based_for 201603L"
.LASF606:
	.string	"Console"
.LASF350:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF498:
	.string	"attr"
.LASF251:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF365:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF543:
	.string	"setDisplayLine"
.LASF608:
	.string	"m_data"
.LASF66:
	.string	"__INT_FAST8_TYPE__ int"
.LASF488:
	.string	"BlackOnBrown"
.LASF71:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF87:
	.string	"__cpp_attributes 200809L"
.LASF132:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF257:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF668:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5emptyEv"
.LASF463:
	.string	"BlueOnBlack"
.LASF484:
	.string	"BlackOnRed"
.LASF79:
	.string	"__cpp_binary_literals 201304L"
.LASF597:
	.string	"_ZNK6Kernel14HeapLinkedList19availiblePercentageEv"
.LASF151:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF519:
	.string	"clear"
.LASF191:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF503:
	.string	"s_windowCapacity"
.LASF307:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF31:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF83:
	.string	"__cpp_unicode_literals 200710L"
.LASF502:
	.string	"_ZN6Kernel7Console17s_bufferLineCountE"
.LASF583:
	.string	"_ZN6Kernel14HeapLinkedList4freeEPv"
.LASF135:
	.string	"__cpp_concepts 202002L"
.LASF74:
	.string	"__INTPTR_TYPE__ long int"
.LASF52:
	.string	"__INT32_TYPE__ int"
.LASF435:
	.string	"NULL ((void *)0)"
.LASF599:
	.string	"_ZNK6Kernel14HeapLinkedList19allocatedPercentageEv"
.LASF362:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF88:
	.string	"__cpp_rvalue_reference 200610L"
.LASF442:
	.string	"size_t"
.LASF576:
	.string	"initialize"
.LASF199:
	.string	"__UINT64_C(c) c ## UL"
.LASF494:
	.string	"width"
.LASF509:
	.string	"s_displayLine"
.LASF281:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF314:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF76:
	.string	"__GXX_WEAK__ 1"
.LASF566:
	.string	"_ZNK6Kernel14HeapLinkedList5Block6isUsedEv"
.LASF496:
	.string	"VgaChar"
.LASF497:
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
.LASF377:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF305:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF290:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF564:
	.string	"isUsed"
.LASF434:
	.string	"TYPES_H "
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF656:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8popFrontEv"
.LASF373:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF582:
	.string	"free"
.LASF414:
	.string	"__x86_64__ 1"
.LASF67:
	.string	"__INT_FAST16_TYPE__ int"
.LASF272:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF541:
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
.LASF551:
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
.LASF480:
	.string	"BlackOnGreen"
.LASF126:
	.string	"__cpp_constinit 201907L"
.LASF344:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF274:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF138:
	.string	"__cpp_aligned_new 201606L"
.LASF588:
	.string	"availibleSize"
.LASF165:
	.string	"__INTMAX_C(c) c ## L"
.LASF388:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF3:
	.string	"__cplusplus 202002L"
.LASF106:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF164:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF464:
	.string	"GreenOnBlack"
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
.LASF532:
	.string	"_ZN6Kernel7Console9getExtentEv"
.LASF228:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF240:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF671:
	.string	"char"
.LASF601:
	.string	"_ZNK6Kernel14HeapLinkedList14freePercentageEv"
.LASF256:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF287:
	.string	"__FLT32_DIG__ 6"
.LASF143:
	.string	"__GXX_ABI_VERSION 1018"
.LASF505:
	.string	"s_charBuffer"
.LASF23:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF100:
	.string	"__cpp_variable_templates 201304L"
.LASF422:
	.string	"__code_model_kernel__ 1"
.LASF553:
	.string	"Used"
.LASF607:
	.string	"Array<Kernel::Console::VgaChar, 80>"
.LASF491:
	.string	"WhiteOnLightGray"
.LASF95:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF70:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF357:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF327:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF379:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF205:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF568:
	.string	"data"
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
.LASF443:
	.string	"uint8_t"
.LASF279:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF178:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF168:
	.string	"__INTMAX_WIDTH__ 64"
.LASF421:
	.string	"__k8__ 1"
.LASF48:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF110:
	.string	"__cpp_capture_star_this 201603L"
.LASF153:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF59:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF625:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4dataEv"
.LASF125:
	.string	"__cpp_consteval 201811L"
.LASF391:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
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
.LASF581:
	.string	"_ZN6Kernel14HeapLinkedList10reallocateEPvm"
.LASF514:
	.string	"_ZN6Kernel7Console13s_shouldFlushE"
.LASF270:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF86:
	.string	"__cpp_decltype 200707L"
.LASF529:
	.string	"getCursor"
.LASF334:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF292:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF19:
	.string	"_LP64 1"
.LASF558:
	.string	"heapId"
.LASF595:
	.string	"_ZNK6Kernel14HeapLinkedList14usedPercentageEv"
.LASF452:
	.string	"long long int"
.LASF653:
	.string	"pushFront"
.LASF93:
	.string	"__cpp_nsdmi 200809L"
.LASF636:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4ERKS4_"
.LASF587:
	.string	"_ZNK6Kernel14HeapLinkedList8usedSizeEv"
.LASF626:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
.LASF18:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF600:
	.string	"freePercentage"
.LASF341:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF255:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF309:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF620:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEixEm"
.LASF273:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF552:
	.string	"BlockFlags"
.LASF419:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF198:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF641:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getES3_"
.LASF114:
	.string	"__cpp_template_auto 201606L"
.LASF542:
	.string	"_ZN6Kernel7Console13disableCursorEv"
.LASF432:
	.string	"__ELF__ 1"
.LASF343:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF460:
	.string	"bool"
.LASF363:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF657:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF72:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF515:
	.string	"writeChar"
.LASF130:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF677:
	.string	"_ZN6Kernel14HeapLinkedList5alignEm"
.LASF234:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF632:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ev"
.LASF371:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF635:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEC4Ey"
.LASF283:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF433:
	.string	"KERNEL_DATA_H "
.LASF471:
	.string	"LightBlueOnBlack"
.LASF579:
	.string	"reallocate"
.LASF596:
	.string	"availiblePercentage"
.LASF310:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF655:
	.string	"popFront"
.LASF575:
	.string	"m_allocatedSize"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF439:
	.string	"ROLLING_WINDOW_H "
.LASF376:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF644:
	.string	"_ZNK5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3getEv"
.LASF43:
	.string	"__WINT_TYPE__ unsigned int"
.LASF618:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5emptyEv"
.LASF613:
	.string	"operator="
.LASF173:
	.string	"__INT16_MAX__ 0x7fff"
.LASF565:
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
.LASF193:
	.string	"__UINT8_C(c) c"
.LASF458:
	.string	"is_pointer_v"
.LASF679:
	.string	"_GLOBAL__sub_I__ZN6Kernel12s_kernelHeapE"
.LASF455:
	.string	"is_convertible_v"
.LASF615:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEaSEOS4_"
.LASF53:
	.string	"__INT64_TYPE__ long int"
.LASF253:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF90:
	.string	"__cpp_variadic_templates 200704L"
.LASF619:
	.string	"operator[]"
.LASF229:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF111:
	.string	"__cpp_inline_variables 201606L"
.LASF495:
	.string	"height"
.LASF654:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE9pushFrontERKS5_"
.LASF537:
	.string	"scrollUp"
.LASF511:
	.string	"s_cursorEnabled"
.LASF267:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF470:
	.string	"DarkGrayOnBlack"
.LASF216:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF117:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF311:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF408:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF477:
	.string	"WhiteOnBlack"
.LASF321:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF35:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF387:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF662:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEixEm"
.LASF478:
	.string	"BlackOnBlue"
.LASF483:
	.string	"WhiteOnCyan"
.LASF170:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF128:
	.string	"__cpp_nontype_template_args 201911L"
.LASF436:
	.string	"UTILS_H "
.LASF174:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF538:
	.string	"_ZN6Kernel7Console8scrollUpEm"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF195:
	.string	"__UINT16_C(c) c"
.LASF175:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF610:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4Ev"
.LASF306:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF97:
	.string	"__cpp_return_type_deduction 201304L"
.LASF544:
	.string	"_ZN6Kernel7Console14setDisplayLineEm"
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
.LASF118:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF681:
	.string	"this"
.LASF648:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC4Ev"
.LASF105:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF171:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF81:
	.string	"__cpp_runtime_arrays 198712L"
.LASF381:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF469:
	.string	"LightGrayOnBlack"
.LASF145:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF518:
	.string	"_ZN6Kernel7Console7putCharEhNS0_10AttributesE"
.LASF666:
	.string	"capacity"
.LASF33:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF569:
	.string	"_ZN6Kernel14HeapLinkedList5Block4dataEv"
.LASF623:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE5beginEv"
.LASF474:
	.string	"LightRedOnBlack"
.LASF227:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF563:
	.string	"_ZN6Kernel14HeapLinkedList5Block8markFreeEv"
.LASF236:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF161:
	.string	"__WINT_WIDTH__ 32"
.LASF359:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF557:
	.string	"metadata"
.LASF382:
	.string	"__REGISTER_PREFIX__ "
.LASF296:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF413:
	.string	"__x86_64 1"
.LASF572:
	.string	"m_endAddr"
.LASF602:
	.string	"cursorInScreenBounds"
.LASF451:
	.string	"short int"
.LASF147:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF332:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF380:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF142:
	.string	"__cpp_char8_t 202207L"
.LASF577:
	.string	"_ZNV6Kernel14HeapLinkedList10initializeEPvS1_"
.LASF650:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8pushBackERKS5_"
.LASF516:
	.string	"putChar"
.LASF441:
	.string	"long int"
.LASF513:
	.string	"s_shouldFlush"
.LASF112:
	.string	"__cpp_aggregate_bases 201603L"
.LASF167:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF506:
	.string	"s_cursorPos"
.LASF680:
	.string	"__static_initialization_and_destruction_0"
.LASF375:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF355:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF531:
	.string	"_ZN6Kernel7Console9getCursorEv"
.LASF643:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setEy"
.LASF358:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF548:
	.string	"updateCursor"
.LASF486:
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
.LASF50:
	.string	"__INT8_TYPE__ signed char"
.LASF42:
	.string	"__WCHAR_TYPE__ int"
.LASF593:
	.string	"_ZNK6Kernel14HeapLinkedList9totalSizeEv"
.LASF155:
	.string	"__SCHAR_WIDTH__ 8"
.LASF184:
	.string	"__INT16_C(c) c"
.LASF521:
	.string	"_ZN6Kernel7Console5clearEhNS0_10AttributesE"
.LASF493:
	.string	"Extent"
.LASF448:
	.string	"uint64_t"
.LASF536:
	.string	"_ZN6Kernel7Console10scrollDownEm"
.LASF237:
	.string	"__DBL_MANT_DIG__ 53"
.LASF210:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF109:
	.string	"__cpp_if_constexpr 201606L"
.LASF78:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF528:
	.string	"_ZN6Kernel7Console9setCursorENS0_9CursorPosE"
.LASF129:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF465:
	.string	"CyanOnBlack"
.LASF547:
	.string	"flushToVga"
.LASF639:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSEOS4_"
.LASF280:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF54:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF156:
	.string	"__SHRT_WIDTH__ 16"
.LASF428:
	.string	"__SSE2_MATH__ 1"
.LASF667:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE8capacityEv"
.LASF526:
	.string	"_ZN6Kernel7Console9clearSpanEmmhNS0_10AttributesE"
.LASF604:
	.string	"s_kernelHeap"
.LASF545:
	.string	"clampDisplayToCursor"
.LASF37:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF394:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF524:
	.string	"clearSpan"
.LASF454:
	.string	"is_enum_v"
.LASF196:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF369:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF36:
	.string	"__SIZEOF_POINTER__ 8"
.LASF312:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF335:
	.string	"__FLT32X_DIG__ 15"
.LASF559:
	.string	"magic"
.LASF39:
	.string	"__GNUG__ 13"
.LASF663:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF221:
	.string	"__FLT_MANT_DIG__ 24"
.LASF232:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF34:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF476:
	.string	"YellowOnBlack"
.LASF487:
	.string	"WhiteOnMagenta"
.LASF246:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF333:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF453:
	.string	"is_integral_v"
.LASF430:
	.string	"__SEG_FS 1"
.LASF51:
	.string	"__INT16_TYPE__ short int"
.LASF520:
	.string	"clearLine"
.LASF676:
	.string	"HeapLinkedList"
.LASF440:
	.string	"long unsigned int"
.LASF550:
	.string	"_ZN6Kernel7Console12updateCursorEv"
.LASF617:
	.string	"empty"
.LASF77:
	.string	"__DEPRECATED 1"
.LASF499:
	.string	"s_extent"
.LASF29:
	.string	"__CHAR_BIT__ 8"
.LASF459:
	.string	"is_signed_v"
.LASF392:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 2"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF425:
	.string	"__SSE2__ 1"
.LASF163:
	.string	"__SIZE_WIDTH__ 64"
.LASF141:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF406:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF284:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF637:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyEaSERKS4_"
.LASF158:
	.string	"__LONG_WIDTH__ 64"
.LASF647:
	.string	"RollingWindow"
.LASF115:
	.string	"__cpp_structured_bindings 201606L"
.LASF420:
	.string	"__k8 1"
.LASF672:
	.string	"GNU C++20 13.2.0 -mno-red-zone -mcmodel=kernel -mtune=generic -march=x86-64 -g -ggdb3 -O1 -std=c++20 -ffreestanding -fno-exceptions -fno-rtti -fno-builtin -fno-stack-protector -fpermissive"
.LASF659:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4backEv"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF318:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF444:
	.string	"unsigned char"
.LASF630:
	.string	"m_flags"
.LASF230:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF189:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF123:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF295:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF573:
	.string	"m_usedSize"
.LASF219:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF534:
	.string	"_ZN6Kernel7Console17getWindowCapacityEv"
.LASF682:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EEC2Ev"
.LASF426:
	.string	"__FXSR__ 1"
.LASF546:
	.string	"_ZN6Kernel7Console20clampDisplayToCursorEv"
.LASF188:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF665:
	.string	"_ZNK13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE4sizeEv"
.LASF38:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF594:
	.string	"usedPercentage"
.LASF353:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF500:
	.string	"s_bufferLineCount"
.LASF395:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF522:
	.string	"_ZN6Kernel7Console9clearLineEhNS0_10AttributesE"
.LASF403:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF85:
	.string	"__cpp_lambdas 200907L"
.LASF578:
	.string	"allocate"
.LASF154:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF616:
	.string	"_ZNK5Utils5ArrayIN6Kernel7Console7VgaCharELm80EE4sizeEv"
.LASF304:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF252:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF533:
	.string	"getWindowCapacity"
.LASF247:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF356:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF140:
	.string	"__cpp_template_template_args 201611L"
.LASF372:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF540:
	.string	"disableCursor"
.LASF349:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF224:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF485:
	.string	"WhiteOnRed"
.LASF218:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF250:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF461:
	.string	"Kernel"
.LASF190:
	.string	"__INT64_C(c) c ## L"
.LASF405:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF554:
	.string	"Block"
.LASF574:
	.string	"m_availibleSize"
.LASF21:
	.string	"__SIZEOF_INT__ 4"
.LASF99:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF660:
	.string	"front"
.LASF512:
	.string	"_ZN6Kernel7Console15s_cursorEnabledE"
.LASF92:
	.string	"__cpp_delegating_constructors 200604L"
.LASF539:
	.string	"enableCursor"
.LASF315:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF510:
	.string	"_ZN6Kernel7Console13s_displayLineE"
.LASF69:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF490:
	.string	"BlackOnLightGray"
.LASF366:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF94:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF450:
	.string	"signed char"
.LASF415:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF649:
	.string	"pushBack"
.LASF242:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF259:
	.string	"__DECIMAL_DIG__ 21"
.LASF397:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF445:
	.string	"short unsigned int"
.LASF570:
	.string	"m_head"
.LASF384:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF25:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF589:
	.string	"_ZNK6Kernel14HeapLinkedList13availibleSizeEv"
.LASF30:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF642:
	.string	"_ZN5Utils7FlagMapIN6Kernel14HeapLinkedList10BlockFlagsEyE3setES3_"
.LASF329:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF308:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF527:
	.string	"setCursor"
.LASF331:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF201:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF489:
	.string	"WhiteOnBrown"
.LASF223:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF416:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF2:
	.string	"__STDC__ 1"
.LASF326:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF225:
	.string	"__FLT_MAX_EXP__ 128"
.LASF417:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF276:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF462:
	.string	"BlackOnBlack"
.LASF102:
	.string	"__cpp_unicode_characters 201411L"
.LASF277:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF313:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF675:
	.string	"_ZN6Kernel7Console20cursorInScreenBoundsERVNS0_9CursorPosE"
.LASF28:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF339:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF44:
	.string	"__INTMAX_TYPE__ long int"
.LASF275:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF611:
	.string	"_ZN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEC4ERKS4_"
.LASF342:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF82:
	.string	"__cpp_raw_strings 200710L"
.LASF248:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF567:
	.string	"_ZN6Kernel14HeapLinkedList5Block4sizeEv"
.LASF291:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF584:
	.string	"printBlocks"
.LASF324:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF368:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF103:
	.string	"__cpp_static_assert 201411L"
.LASF186:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF603:
	.string	"align"
.LASF73:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF258:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF119:
	.string	"__cpp_init_captures 201803L"
.LASF293:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF149:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF398:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
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
.LASF661:
	.string	"_ZN13RollingWindowIN5Utils5ArrayIN6Kernel7Console7VgaCharELm80EEELm2048EE5frontEv"
.LASF243:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF266:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF473:
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
	.string	"src/kernel/KernelData.cpp"
	.ident	"GCC: (GNU) 13.2.0"
