	.file	"ck001.f"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"Recursive call to nonrecursive procedure 'ck001'"
.LC1:
	.string	"At line 16 of file ck001.f"
.LC2:
	.string	"ck001.f"
.LC3:
	.ascii	"a b c   "
.LC4:
	.ascii	"Running ck001........"
.LC5:
	.ascii	"unformatted"
.LC6:
	.ascii	"read"
.LC7:
	.ascii	"ck001-out.txt"
.LC8:
	.ascii	"write"
.LC9:
	.ascii	"ck001-out.bin"
.LC10:
	.ascii	"sequential"
.LC11:
	.ascii	"Values of lat lon height"
.LC12:
	.string	"Loop iterates infinitely"
.LC13:
	.string	"At line 33 of file ck001.f"
	.align 8
.LC15:
	.string	"Loop variable has been modified"
.LC16:
	.ascii	"Done with ck001"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.file 1 "ck001.f"
	.loc 1 16 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	.loc 1 16 0
	movl	is_recursive.0.3879(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2
	.loc 1 16 0 is_stmt 0 discriminator 1
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L2:
	.loc 1 16 0 discriminator 2
	movl	$1, is_recursive.0.3879(%rip)
.LBB2:
	.loc 1 24 0 is_stmt 1 discriminator 2
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$24, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$5, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-24(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-28(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-32(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
.LBE2:
.LBB3:
	.loc 1 25 0 discriminator 2
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$25, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$8, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.LBE3:
.LBB4:
	.loc 1 26 0 discriminator 2
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$26, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$21, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.LBE4:
.LBB5:
	.loc 1 28 0 discriminator 2
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$28, -560(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -472(%rbp)
	movq	$11, -464(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -416(%rbp)
	movq	$4, -424(%rbp)
	movl	$0, -272(%rbp)
	movl	$16795648, -576(%rbp)
	movl	$9, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open@PLT
.LBE5:
.LBB6:
	.loc 1 29 0 discriminator 2
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$29, -560(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$13, -520(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -416(%rbp)
	movq	$5, -424(%rbp)
	movl	$0, -272(%rbp)
	movl	$16793856, -576(%rbp)
	movl	$10, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open@PLT
.LBE6:
.LBB7:
	.loc 1 31 0 discriminator 2
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$31, -560(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$13, -520(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$10, -488(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -472(%rbp)
	movq	$11, -464(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -416(%rbp)
	movq	$5, -424(%rbp)
	movl	$0, -272(%rbp)
	movl	$16796928, -576(%rbp)
	movl	$11, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open@PLT
.LBE7:
.LBB8:
	.loc 1 32 0 discriminator 2
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$32, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$10, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$24, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.LBE8:
.LBB9:
	.loc 1 33 0 discriminator 2
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %ebx
.L6:
.LBB10:
	.loc 1 33 0 is_stmt 0 discriminator 6
	cmpl	$10, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L7
	.loc 1 33 0 discriminator 2
	cmpl	$2147483647, -20(%rbp)
	jne	.L4
	.loc 1 33 0 discriminator 3
	leaq	.LC12(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L4:
.LBB11:
	.loc 1 34 0 is_stmt 1
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$34, -560(%rbp)
	movl	$0, -576(%rbp)
	movl	$9, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-40(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-44(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-36(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
.LBE11:
	.loc 1 35 0
	movss	-24(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	.loc 1 36 0
	movss	-28(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 1 37 0
	movss	-32(%rbp), %xmm1
	movss	.LC14(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
.LBB12:
	.loc 1 38 0
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$38, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-40(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-44(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-36(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.LBE12:
.LBB13:
	.loc 1 39 0
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$39, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$10, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-40(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-44(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-36(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.LBE13:
.LBB14:
	.loc 1 40 0
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$40, -560(%rbp)
	movl	$0, -576(%rbp)
	movl	$11, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.LBE14:
	.loc 1 33 0
	cmpl	%ebx, -20(%rbp)
	je	.L5
	.loc 1 33 0 is_stmt 0 discriminator 4
	leaq	.LC15(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L5:
	.loc 1 33 0 discriminator 5
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %ebx
.LBE10:
	jmp	.L6
.L7:
	.loc 1 40 0 is_stmt 1
	nop
.LBE9:
.LBB15:
	.loc 1 42 0
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$42, -560(%rbp)
	movl	$0, -576(%rbp)
	movl	$9, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close@PLT
.LBE15:
.LBB16:
	.loc 1 43 0
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$43, -560(%rbp)
	movl	$0, -576(%rbp)
	movl	$10, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close@PLT
.LBE16:
.LBB17:
	.loc 1 44 0
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$44, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$15, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.LBE17:
	.loc 1 45 0
	movl	$0, is_recursive.0.3879(%rip)
	addq	$568, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 45 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 45 0
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.16.3902(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	is_recursive.0.3879
	.comm	is_recursive.0.3879,4,4
	.section	.rodata
	.align 16
	.type	options.16.3902, @object
	.size	options.16.3902, 28
options.16.3902:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	1
	.long	31
	.align 4
.LC14:
	.long	1065353216
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x103
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF6
	.byte	0xe
	.byte	0x2
	.long	.LASF7
	.long	.LASF8
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF9
	.byte	0x1
	.byte	0x2d
	.long	0x6d
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x2d
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0x2d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.long	0x6d
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x7
	.long	.LASF10
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xff
	.uleb128 0x8
	.string	"a"
	.byte	0x1
	.byte	0x13
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"b"
	.byte	0x1
	.byte	0x13
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x14
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF4
	.byte	0x1
	.byte	0x15
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x16
	.long	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"lat"
	.byte	0x1
	.byte	0x15
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"lon"
	.byte	0x1
	.byte	0x15
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF5
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x42
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6a
	.uleb128 0x19
	.uleb128 0x36
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"ck001"
.LASF3:
	.string	"character(kind=1)"
.LASF0:
	.string	"argc"
.LASF9:
	.string	"main"
.LASF4:
	.string	"height"
.LASF2:
	.string	"integer(kind=4)"
.LASF8:
	.string	"/home/carolyn/Angular/ck001/sccs"
.LASF6:
	.string	"GNU Fortran2008 9.3.0 -ffixed-form -mtune=generic -march=x86-64 -g -fcheck=all -fintrinsic-modules-path /usr/lib/gcc/x86_64-linux-gnu/9/finclude -fpre-include=/usr/include/finclude/math-vector-fortran.h"
.LASF7:
	.string	"ck001.f"
.LASF5:
	.string	"real(kind=4)"
.LASF1:
	.string	"argv"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
