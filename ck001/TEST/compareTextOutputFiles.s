	.file	"compareTextOutputFiles.f"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"Recursive call to nonrecursive procedure 'comparetextoutputfiles'"
	.align 8
.LC1:
	.string	"At line 1 of file compareTextOutputFiles.f"
.LC2:
	.string	"compareTextOutputFiles.f"
.LC3:
	.ascii	"   "
.LC4:
	.ascii	"Files: "
.LC5:
	.ascii	"formatted"
	.align 8
.LC6:
	.string	"Integer overflow when calculating the amount of memory to allocate"
.LC7:
	.string	"block1"
	.align 8
.LC8:
	.string	"Attempting to allocate already allocated variable '%s'"
	.align 8
.LC9:
	.string	"At line 25 of file compareTextOutputFiles.f"
	.align 8
.LC10:
	.string	"Allocation would exceed memory limit"
.LC11:
	.string	"block2"
	.align 8
.LC12:
	.string	"At line 26 of file compareTextOutputFiles.f"
	.align 8
.LC13:
	.string	"Index '%ld' of dimension 1 of array 'block1' below lower bound of %ld"
	.align 8
.LC14:
	.string	"At line 47 of file compareTextOutputFiles.f"
	.align 8
.LC15:
	.string	"Index '%ld' of dimension 1 of array 'block1' above upper bound of %ld"
	.align 8
.LC16:
	.string	"Index '%ld' of dimension 1 of array 'block2' below lower bound of %ld"
	.align 8
.LC17:
	.string	"Index '%ld' of dimension 1 of array 'block2' above upper bound of %ld"
	.align 8
.LC18:
	.ascii	"Test Failed: Files differ on record "
	.align 8
.LC19:
	.string	"At line 49 of file compareTextOutputFiles.f"
	.align 8
.LC20:
	.string	"At line 50 of file compareTextOutputFiles.f"
	.align 8
.LC21:
	.string	"Loop variable has been modified"
	.align 8
.LC22:
	.string	"At line 46 of file compareTextOutputFiles.f"
.LC23:
	.ascii	"Done reading "
.LC24:
	.ascii	" records in the file."
.LC25:
	.ascii	"Test Success: Files match"
	.align 4
.LC26:
	.long	0
	.align 8
.LC27:
	.ascii	"Test Failed: Files do not match"
	.align 4
.LC28:
	.long	1
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.file 1 "compareTextOutputFiles.f"
	.loc 1 1 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$992, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 1 0
	movl	is_recursive.0.1909(%rip), %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 1 0 is_stmt 0 discriminator 1
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L2:
	.loc 1 1 0 discriminator 2
	movl	$1, is_recursive.0.1909(%rip)
	.loc 1 8 0 is_stmt 1 discriminator 2
	movq	$0, -80(%rbp)
	.loc 1 9 0 discriminator 2
	movq	$0, -128(%rbp)
.LBB2:
	.loc 1 14 0 discriminator 2
	movl	$12, -24(%rbp)
	.loc 1 15 0 discriminator 2
	movl	$13, -28(%rbp)
.LBB3:
	.loc 1 16 0 discriminator 2
	movq	$.LC2, -1000(%rbp)
	movl	$16, -992(%rbp)
	movl	$128, -1008(%rbp)
	movl	$5, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-256(%rbp), %rcx
	leaq	-1008(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character
	leaq	-384(%rbp), %rcx
	leaq	-1008(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.LBE3:
.LBB4:
	.loc 1 17 0 discriminator 2
	movq	$.LC2, -1000(%rbp)
	movl	$17, -992(%rbp)
	movl	$128, -1008(%rbp)
	movl	$6, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-1008(%rbp), %rax
	movl	$3, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE4:
.LBB5:
	.loc 1 18 0 discriminator 2
	movq	$.LC2, -1000(%rbp)
	movl	$18, -992(%rbp)
	movl	$128, -1008(%rbp)
	movl	$6, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-1008(%rbp), %rax
	movl	$7, %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-256(%rbp), %rcx
	leaq	-1008(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-384(%rbp), %rcx
	leaq	-1008(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE5:
	.loc 1 20 0 discriminator 2
	movl	$3, -32(%rbp)
.LBB6:
	.loc 1 22 0 discriminator 2
	movq	$.LC2, -1000(%rbp)
	movl	$22, -992(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -960(%rbp)
	movl	$120, -964(%rbp)
	movq	$.LC5, -928(%rbp)
	movl	$9, -920(%rbp)
	movl	$2304, -1008(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open
.LBE6:
.LBB7:
	.loc 1 23 0 discriminator 2
	movq	$.LC2, -1000(%rbp)
	movl	$23, -992(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -960(%rbp)
	movl	$120, -964(%rbp)
	movq	$.LC5, -928(%rbp)
	movl	$9, -920(%rbp)
	movl	$2304, -1008(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open
.LBE7:
	.loc 1 25 0 discriminator 2
	movl	$0, %eax
	cmpl	$0, -32(%rbp)
	cmovns	-32(%rbp), %eax
	movslq	%eax, %rcx
	testq	%rcx, %rcx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3
	.loc 1 25 0 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L4
.L3:
	.loc 1 25 0 discriminator 2
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	testq	%rax, %rax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L5
	.loc 1 25 0 discriminator 3
	movl	$1, %eax
	jmp	.L4
.L5:
	.loc 1 25 0 discriminator 4
	movl	$0, %eax
.L4:
	.loc 1 25 0 discriminator 6
	movl	%eax, %edx
	movq	%rcx, %rsi
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rsi
	seta	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L7
	.loc 1 25 0 discriminator 7
	movl	$1, %eax
	jmp	.L8
.L7:
	.loc 1 25 0 discriminator 8
	movl	$0, %eax
.L8:
	.loc 1 25 0 discriminator 9
	leal	(%rax,%rdx), %esi
	cmpl	$0, -32(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L9
	.loc 1 25 0 discriminator 10
	movl	$0, %edx
	jmp	.L10
.L9:
	.loc 1 25 0 discriminator 11
	movq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
.L10:
	.loc 1 25 0 discriminator 12
	movl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L11
	.loc 1 25 0 discriminator 13
	movl	$.LC6, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error
.L11:
	.loc 1 25 0 discriminator 14
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L12
	.loc 1 25 0 discriminator 15
	movl	$.LC7, %edx
	movl	$.LC8, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L12:
.LBB8:
	.loc 1 25 0 discriminator 16
	movq	%rdx, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L13
	.loc 1 25 0 discriminator 1
	movl	$.LC10, %edi
	call	_gfortran_os_error
.L13:
.LBE8:
	.loc 1 25 0 discriminator 2
	movq	$281, -64(%rbp)
	movq	$1, -48(%rbp)
	movl	-32(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	$1, -56(%rbp)
	movq	$-1, -72(%rbp)
	.loc 1 26 0 is_stmt 1 discriminator 2
	movl	$0, %eax
	cmpl	$0, -32(%rbp)
	cmovns	-32(%rbp), %eax
	movslq	%eax, %rcx
	testq	%rcx, %rcx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L14
	.loc 1 26 0 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L15
.L14:
	.loc 1 26 0 discriminator 2
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	testq	%rax, %rax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L16
	.loc 1 26 0 discriminator 3
	movl	$1, %eax
	jmp	.L15
.L16:
	.loc 1 26 0 discriminator 4
	movl	$0, %eax
.L15:
	.loc 1 26 0 discriminator 6
	movl	%eax, %edx
	movq	%rcx, %rsi
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rsi
	seta	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L18
	.loc 1 26 0 discriminator 7
	movl	$1, %eax
	jmp	.L19
.L18:
	.loc 1 26 0 discriminator 8
	movl	$0, %eax
.L19:
	.loc 1 26 0 discriminator 9
	leal	(%rax,%rdx), %esi
	cmpl	$0, -32(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L20
	.loc 1 26 0 discriminator 10
	movl	$0, %edx
	jmp	.L21
.L20:
	.loc 1 26 0 discriminator 11
	movq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
.L21:
	.loc 1 26 0 discriminator 12
	movl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L22
	.loc 1 26 0 discriminator 13
	movl	$.LC6, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error
.L22:
	.loc 1 26 0 discriminator 14
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L23
	.loc 1 26 0 discriminator 15
	movl	$.LC11, %edx
	movl	$.LC8, %esi
	movl	$.LC12, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L23:
.LBB9:
	.loc 1 26 0 discriminator 16
	movq	%rdx, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L24
	.loc 1 26 0 discriminator 1
	movl	$.LC10, %edi
	call	_gfortran_os_error
.L24:
.LBE9:
	.loc 1 26 0 discriminator 2
	movq	$281, -112(%rbp)
	movq	$1, -96(%rbp)
	movl	-32(%rbp), %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	$1, -104(%rbp)
	movq	$-1, -120(%rbp)
	.loc 1 28 0 is_stmt 1 discriminator 2
	movl	$1, -396(%rbp)
.LBB10:
	.loc 1 29 0 discriminator 2
	movq	$.LC2, -1000(%rbp)
	movl	$29, -992(%rbp)
	movl	$128, -1008(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-528(%rbp), %rcx
	leaq	-1008(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.LBE10:
.LBB11:
	.loc 1 30 0 discriminator 2
	movq	$.LC2, -1000(%rbp)
	movl	$30, -992(%rbp)
	movl	$128, -1008(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-528(%rbp), %rcx
	leaq	-1008(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.L39:
.LBE11:
.LBB12:
	.loc 1 32 0
	movq	$.LC2, -1000(%rbp)
	movl	$32, -992(%rbp)
	movl	$0, -388(%rbp)
	leaq	-388(%rbp), %rax
	movq	%rax, -976(%rbp)
	movl	$160, -1008(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-80(%rbp), %rsi
	leaq	-1008(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.LBE12:
	.loc 1 33 0
	movl	-388(%rbp), %eax
	testl	%eax, %eax
	js	.L25
	.loc 1 33 0 is_stmt 0 discriminator 1
	movl	-388(%rbp), %eax
	testl	%eax, %eax
	jg	.L25
.LBB13:
	.loc 1 39 0 is_stmt 1
	movq	$.LC2, -1000(%rbp)
	movl	$39, -992(%rbp)
	movl	$0, -392(%rbp)
	leaq	-392(%rbp), %rax
	movq	%rax, -976(%rbp)
	movl	$160, -1008(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-128(%rbp), %rsi
	leaq	-1008(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.LBE13:
	.loc 1 40 0
	movl	-392(%rbp), %eax
	testl	%eax, %eax
	js	.L25
	.loc 1 40 0 is_stmt 0 discriminator 1
	movl	-392(%rbp), %eax
	testl	%eax, %eax
	jg	.L25
.LBB14:
	.loc 1 46 0 is_stmt 1
	movl	-32(%rbp), %r12d
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %ebx
	cmpl	%r12d, -20(%rbp)
	jg	.L26
.L38:
.LBB15:
	.loc 1 47 0
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	setl	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L27
	.loc 1 47 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movl	$.LC13, %esi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L27:
	.loc 1 47 0 discriminator 2
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	setg	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L28
	.loc 1 47 0 discriminator 3
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$.LC15, %esi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L28:
	.loc 1 47 0 discriminator 4
	movl	-20(%rbp), %eax
	cltq
	movq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	%cl
	movzbl	%cl, %ecx
	movl	%ecx, %ecx
	andl	$1, %ecx
	testl	%ecx, %ecx
	je	.L29
	.loc 1 47 0 discriminator 5
	movq	-96(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC16, %esi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L29:
	.loc 1 47 0 discriminator 6
	movq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	setg	%cl
	movzbl	%cl, %ecx
	movl	%ecx, %ecx
	andl	$1, %ecx
	testl	%ecx, %ecx
	je	.L30
	.loc 1 47 0 discriminator 7
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC17, %esi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L30:
	.loc 1 47 0 discriminator 8
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rsi
	addq	%rsi, %rdx
	movss	(%rcx,%rdx,4), %xmm0
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rcx
	addq	%rcx, %rax
	movss	(%rdx,%rax,4), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L41
	ucomiss	%xmm1, %xmm0
	je	.L31
.L41:
	.loc 1 48 0 is_stmt 1
	movl	$0, same.1907(%rip)
.LBB16:
	.loc 1 50 0
	movq	$.LC2, -1000(%rbp)
	movl	$50, -992(%rbp)
	movl	$128, -1008(%rbp)
	movl	$6, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	.loc 1 49 0
	leaq	-1008(%rbp), %rax
	movl	$36, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-396(%rbp), %rcx
	leaq	-1008(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write
	.loc 1 50 0
	movl	-20(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	cmpq	%rdx, %rax
	setl	%dl
	movzbl	%dl, %edx
	movl	%edx, %edx
	.loc 1 49 0
	andl	$1, %edx
	testl	%edx, %edx
	je	.L33
	.loc 1 49 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC13, %esi
	movl	$.LC19, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L33:
	.loc 1 50 0 is_stmt 1 discriminator 2
	movq	-40(%rbp), %rdx
	cmpq	%rdx, %rax
	setg	%dl
	movzbl	%dl, %edx
	movl	%edx, %edx
	.loc 1 49 0 discriminator 2
	andl	$1, %edx
	testl	%edx, %edx
	je	.L34
	.loc 1 49 0 is_stmt 0 discriminator 3
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC15, %esi
	movl	$.LC19, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L34:
	.loc 1 50 0 is_stmt 1
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	addq	%rcx, %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-1008(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	movl	-20(%rbp), %eax
	cltq
	movq	-96(%rbp), %rdx
	cmpq	%rdx, %rax
	setl	%dl
	movzbl	%dl, %edx
	movl	%edx, %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L35
	.loc 1 50 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC16, %esi
	movl	$.LC20, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L35:
	.loc 1 50 0 discriminator 2
	movq	-88(%rbp), %rdx
	cmpq	%rdx, %rax
	setg	%dl
	movzbl	%dl, %edx
	movl	%edx, %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L36
	.loc 1 50 0 discriminator 3
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC17, %esi
	movl	$.LC20, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L36:
	.loc 1 50 0 discriminator 4
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rcx
	addq	%rcx, %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-1008(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.L31:
.LBE16:
	.loc 1 46 0 is_stmt 1
	cmpl	%ebx, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 52 0
	movl	%eax, %eax
	.loc 1 46 0
	andl	$1, %eax
	testl	%eax, %eax
	je	.L37
	.loc 1 46 0 is_stmt 0 discriminator 1
	movl	$.LC21, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L37:
	.loc 1 46 0 discriminator 2
	cmpl	%r12d, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %ebx
	testl	%eax, %eax
	jne	.L26
.LBE15:
	.loc 1 46 0 discriminator 3
	jmp	.L38
.L26:
.LBE14:
	.loc 1 53 0 is_stmt 1
	movl	-396(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -396(%rbp)
	.loc 1 54 0
	jmp	.L39
.L25:
.LBB17:
	.loc 1 55 0
	movq	$.LC2, -1000(%rbp)
	movl	$55, -992(%rbp)
	movl	$128, -1008(%rbp)
	movl	$6, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-1008(%rbp), %rax
	movl	$13, %edx
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-396(%rbp), %rcx
	leaq	-1008(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write
	leaq	-1008(%rbp), %rax
	movl	$21, %edx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE17:
.LBB18:
	.loc 1 56 0
	movq	$.LC2, -1000(%rbp)
	movl	$56, -992(%rbp)
	movl	$0, -1008(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close
.LBE18:
.LBB19:
	.loc 1 57 0
	movq	$.LC2, -1000(%rbp)
	movl	$57, -992(%rbp)
	movl	$0, -1008(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close
.LBE19:
	.loc 1 59 0
	movl	same.1907(%rip), %eax
	testl	%eax, %eax
	je	.L40
.LBB20:
	.loc 1 60 0
	movq	$.LC2, -1000(%rbp)
	movl	$60, -992(%rbp)
	movl	$128, -1008(%rbp)
	movl	$6, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-1008(%rbp), %rax
	movl	$25, %edx
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE20:
.LBB21:
	.loc 1 61 0
	movl	$.LC26, %edi
	movl	$0, %eax
	call	_gfortran_exit_i4
.L40:
.LBE21:
.LBB22:
	.loc 1 63 0
	movq	$.LC2, -1000(%rbp)
	movl	$63, -992(%rbp)
	movl	$128, -1008(%rbp)
	movl	$6, -1004(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-1008(%rbp), %rax
	movl	$31, %edx
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE22:
.LBB23:
	.loc 1 64 0
	movl	$.LC28, %edi
	movl	$0, %eax
	call	_gfortran_exit_i4
.LBE23:
.LBE2:
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 68 0
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args
	movl	$options.21.1963, %esi
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
	.local	is_recursive.0.1909
	.comm	is_recursive.0.1909,4,4
	.data
	.align 4
	.type	same.1907, @object
	.size	same.1907, 4
same.1907:
	.long	1
	.section	.rodata
	.align 16
	.type	options.21.1963, @object
	.size	options.21.1963, 28
options.21.1963:
	.long	68
	.long	1023
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x351
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF19
	.byte	0xe
	.byte	0x2
	.long	.LASF20
	.long	.LASF21
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF22
	.byte	0x1
	.byte	0x1
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0x2
	.long	0x2a4
	.uleb128 0x4
	.long	.LASF0
	.byte	0x1
	.byte	0x8
	.long	0x2a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.long	.LASF1
	.byte	0x1
	.byte	0x9
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x4
	.long	.LASF2
	.byte	0x1
	.byte	0xa
	.long	0x2f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x4
	.long	.LASF3
	.byte	0x1
	.byte	0xa
	.long	0x2f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.long	0x2f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.long	.LASF4
	.byte	0x1
	.byte	0x20
	.long	0x2f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x4
	.long	.LASF5
	.byte	0x1
	.byte	0x27
	.long	0x2f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.byte	0x1c
	.long	0x2f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x4
	.long	.LASF7
	.byte	0x1
	.byte	0xe
	.long	0x2f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF8
	.byte	0x1
	.byte	0xf
	.long	0x2f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.long	.LASF9
	.byte	0x1
	.byte	0x14
	.long	0x2f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0xc
	.long	0x2fc
	.uleb128 0x9
	.byte	0x3
	.quad	same.1907
	.uleb128 0x4
	.long	.LASF11
	.byte	0x1
	.byte	0xb
	.long	0x2f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x6
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x7
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x7
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x7
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x7
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x7
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x7
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x7
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x7
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x7
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x7
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x7
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x8
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x21b
	.uleb128 0x6
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x7
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x7
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x7
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x7
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x8
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x27a
	.uleb128 0x9
	.long	0x303
	.byte	0
	.uleb128 0x7
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x6
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x9
	.long	0x303
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x97
	.byte	0x6
	.uleb128 0x4
	.byte	0x97
	.byte	0x6
	.byte	0x30
	.byte	0x2e
	.long	0x2c8
	.long	0x2c8
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x97
	.byte	0x23
	.uleb128 0x20
	.byte	0x6
	.uleb128 0x4
	.byte	0x97
	.byte	0x23
	.uleb128 0x28
	.byte	0x6
	.uleb128 0x6
	.byte	0x97
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x34
	.byte	0x1e
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x97
	.byte	0x6
	.uleb128 0x4
	.byte	0x97
	.byte	0x6
	.byte	0x30
	.byte	0x2e
	.long	0x2c8
	.long	0x2f3
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x97
	.byte	0x23
	.uleb128 0x20
	.byte	0x6
	.uleb128 0x4
	.byte	0x97
	.byte	0x23
	.uleb128 0x28
	.byte	0x6
	.uleb128 0x6
	.byte	0x97
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x34
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.byte	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.long	.LASF15
	.uleb128 0xd
	.long	0x2f5
	.uleb128 0xe
	.long	.LASF23
	.byte	0x1
	.byte	0x44
	.long	0x2f5
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x347
	.uleb128 0xf
	.long	.LASF16
	.byte	0x1
	.byte	0x44
	.long	0x303
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.long	.LASF17
	.byte	0x1
	.byte	0x44
	.long	0x347
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x34d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF18
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
	.uleb128 0x3
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
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x27
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x50
	.uleb128 0x18
	.uleb128 0x4e
	.uleb128 0x18
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.uleb128 0x2f
	.uleb128 0x18
	.uleb128 0x51
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x12
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xf
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
	.uleb128 0x10
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
.LASF10:
	.string	"same"
.LASF9:
	.string	"nelements"
.LASF21:
	.string	"/apps/carolyn/prod/ck001/TEST"
.LASF16:
	.string	"argc"
.LASF22:
	.string	"comparetextoutputfiles"
.LASF15:
	.string	"logical(kind=4)"
.LASF19:
	.string	"GNU Fortran 4.8.5 20150623 (Red Hat 4.8.5-39) -ffixed-form -mtune=generic -march=x86-64 -g -fcheck=all -fintrinsic-modules-path /usr/lib/gcc/x86_64-redhat-linux/4.8.5/finclude"
.LASF8:
	.string	"kin2"
.LASF0:
	.string	"block1"
.LASF1:
	.string	"block2"
.LASF14:
	.string	"integer(kind=4)"
.LASF23:
	.string	"main"
.LASF11:
	.string	"title"
.LASF18:
	.string	"character(kind=1)"
.LASF7:
	.string	"kin1"
.LASF4:
	.string	"iostatnew1"
.LASF5:
	.string	"iostatnew2"
.LASF2:
	.string	"file1"
.LASF3:
	.string	"file2"
.LASF6:
	.string	"irecord"
.LASF20:
	.string	"compareTextOutputFiles.f"
.LASF12:
	.string	"integer(kind=8)"
.LASF13:
	.string	"real(kind=4)"
.LASF17:
	.string	"argv"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-39)"
	.section	.note.GNU-stack,"",@progbits
