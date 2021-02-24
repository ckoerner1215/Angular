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
	.ascii	"unformatted"
.LC5:
	.ascii	"read"
.LC6:
	.ascii	"ck001-out.txt"
.LC7:
	.ascii	"write"
.LC8:
	.ascii	"ck001-out.bin"
.LC9:
	.ascii	"sequential"
.LC10:
	.ascii	"Values of lat lon height"
	.align 8
.LC12:
	.string	"Loop variable has been modified"
.LC13:
	.string	"At line 31 of file ck001.f"
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
	subq	$520, %rsp
	.cfi_offset 3, -24
	.loc 1 16 0
	movl	is_recursive.0.1885(%rip), %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 16 0 is_stmt 0 discriminator 1
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L2:
	.loc 1 16 0 discriminator 2
	movl	$1, is_recursive.0.1885(%rip)
.LBB2:
	.loc 1 23 0 is_stmt 1 discriminator 2
	movq	$.LC2, -520(%rbp)
	movl	$23, -512(%rbp)
	movl	$128, -528(%rbp)
	movl	$5, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-24(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real
	leaq	-28(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real
	leaq	-32(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.LBE2:
.LBB3:
	.loc 1 24 0 discriminator 2
	movq	$.LC2, -520(%rbp)
	movl	$24, -512(%rbp)
	movl	$128, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-528(%rbp), %rax
	movl	$8, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-24(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-28(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-32(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE3:
.LBB4:
	.loc 1 26 0 discriminator 2
	movq	$.LC2, -520(%rbp)
	movl	$26, -512(%rbp)
	movq	$.LC4, -448(%rbp)
	movl	$11, -440(%rbp)
	movq	$.LC5, -408(%rbp)
	movl	$4, -412(%rbp)
	movl	$18432, -528(%rbp)
	movl	$9, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open
.LBE4:
.LBB5:
	.loc 1 27 0 discriminator 2
	movq	$.LC2, -520(%rbp)
	movl	$27, -512(%rbp)
	movq	$.LC6, -480(%rbp)
	movl	$13, -484(%rbp)
	movq	$.LC7, -408(%rbp)
	movl	$5, -412(%rbp)
	movl	$16640, -528(%rbp)
	movl	$10, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open
.LBE5:
.LBB6:
	.loc 1 29 0 discriminator 2
	movq	$.LC2, -520(%rbp)
	movl	$29, -512(%rbp)
	movq	$.LC8, -480(%rbp)
	movl	$13, -484(%rbp)
	movq	$.LC9, -456(%rbp)
	movl	$10, -460(%rbp)
	movq	$.LC4, -448(%rbp)
	movl	$11, -440(%rbp)
	movq	$.LC7, -408(%rbp)
	movl	$5, -412(%rbp)
	movl	$19712, -528(%rbp)
	movl	$11, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open
.LBE6:
.LBB7:
	.loc 1 30 0 discriminator 2
	movq	$.LC2, -520(%rbp)
	movl	$30, -512(%rbp)
	movl	$128, -528(%rbp)
	movl	$10, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-528(%rbp), %rax
	movl	$24, %edx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE7:
.LBB8:
	.loc 1 31 0 discriminator 2
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %ebx
	cmpl	$10, -20(%rbp)
	jg	.L3
.L5:
.LBB9:
.LBB10:
	.loc 1 32 0
	movq	$.LC2, -520(%rbp)
	movl	$32, -512(%rbp)
	movl	$0, -528(%rbp)
	movl	$9, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-40(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real
	leaq	-44(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real
	leaq	-36(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.LBE10:
	.loc 1 33 0
	movss	-24(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	.loc 1 34 0
	movss	-28(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 1 35 0
	movss	-32(%rbp), %xmm1
	movss	.LC11(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
.LBB11:
	.loc 1 36 0
	movq	$.LC2, -520(%rbp)
	movl	$36, -512(%rbp)
	movl	$128, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-24(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-28(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-32(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-40(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-44(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-36(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE11:
.LBB12:
	.loc 1 37 0
	movq	$.LC2, -520(%rbp)
	movl	$37, -512(%rbp)
	movl	$128, -528(%rbp)
	movl	$10, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-40(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-44(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-36(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE12:
.LBB13:
	.loc 1 38 0
	movq	$.LC2, -520(%rbp)
	movl	$38, -512(%rbp)
	movl	$0, -528(%rbp)
	movl	$11, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-24(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-28(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-32(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE13:
	.loc 1 31 0
	cmpl	%ebx, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 38 0
	movl	%eax, %eax
	.loc 1 31 0
	andl	$1, %eax
	testl	%eax, %eax
	je	.L4
	.loc 1 31 0 is_stmt 0 discriminator 1
	movl	$.LC12, %esi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L4:
	.loc 1 31 0 discriminator 2
	cmpl	$10, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %ebx
	testl	%eax, %eax
	jne	.L3
.LBE9:
	.loc 1 31 0 discriminator 3
	jmp	.L5
.L3:
.LBE8:
.LBB14:
	.loc 1 40 0 is_stmt 1
	movq	$.LC2, -520(%rbp)
	movl	$40, -512(%rbp)
	movl	$0, -528(%rbp)
	movl	$9, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close
.LBE14:
.LBB15:
	.loc 1 41 0
	movq	$.LC2, -520(%rbp)
	movl	$41, -512(%rbp)
	movl	$0, -528(%rbp)
	movl	$10, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close
.LBE15:
	.loc 1 42 0
	movl	$0, is_recursive.0.1885(%rip)
	addq	$520, %rsp
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
	.loc 1 42 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 42 0
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args
	movl	$options.14.1906, %esi
	movl	$7, %edi
	call	_gfortran_set_options
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	is_recursive.0.1885
	.comm	is_recursive.0.1885,4,4
	.section	.rodata
	.align 16
	.type	options.14.1906, @object
	.size	options.14.1906, 28
options.14.1906:
	.long	68
	.long	1023
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.align 4
.LC11:
	.long	1065353216
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1f7
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
	.byte	0x10
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0x2
	.long	0x19b
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x13
	.long	0x19b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x13
	.long	0x19b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0x13
	.long	0x19b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.long	.LASF0
	.byte	0x1
	.byte	0x14
	.long	0x19b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"i"
	.byte	0x1
	.byte	0x15
	.long	0x1a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"lat"
	.byte	0x1
	.byte	0x14
	.long	0x19b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"lon"
	.byte	0x1
	.byte	0x14
	.long	0x19b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x5
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x5
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x5
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x5
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x5
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x6
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x178
	.uleb128 0x7
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x5
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x5
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x5
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x5
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x5
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.long	.LASF1
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.long	.LASF2
	.uleb128 0x9
	.long	.LASF10
	.byte	0x1
	.byte	0x2a
	.long	0x1a2
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e8
	.uleb128 0xa
	.long	.LASF3
	.byte	0x1
	.byte	0x2a
	.long	0x1e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.long	.LASF4
	.byte	0x1
	.byte	0x2a
	.long	0x1ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x1a2
	.uleb128 0xc
	.byte	0x8
	.long	0x1f3
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x6a
	.uleb128 0x19
	.uleb128 0x36
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF2:
	.string	"integer(kind=4)"
.LASF8:
	.string	"/apps/carolyn/prod/ck001/sccs"
.LASF1:
	.string	"real(kind=4)"
.LASF5:
	.string	"character(kind=1)"
.LASF10:
	.string	"main"
.LASF0:
	.string	"height"
.LASF9:
	.string	"ck001"
.LASF7:
	.string	"ck001.f"
.LASF3:
	.string	"argc"
.LASF6:
	.string	"GNU Fortran 4.8.5 20150623 (Red Hat 4.8.5-39) -ffixed-form -mtune=generic -march=x86-64 -g -fcheck=all -fintrinsic-modules-path /usr/lib/gcc/x86_64-redhat-linux/4.8.5/finclude"
.LASF4:
	.string	"argv"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-39)"
	.section	.note.GNU-stack,"",@progbits
