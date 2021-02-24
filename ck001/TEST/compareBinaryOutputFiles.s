	.file	"compareBinaryOutputFiles.f"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"Recursive call to nonrecursive procedure 'findnumberofwordsperrecordinfile'"
	.align 8
.LC1:
	.string	"At line 76 of file compareBinaryOutputFiles.f"
.LC2:
	.string	"infile"
	.align 8
.LC3:
	.string	"Actual string length is shorter than the declared one for dummy argument '%s' (%ld/%ld)"
.LC4:
	.string	"compareBinaryOutputFiles.f"
.LC5:
	.ascii	"old"
.LC6:
	.ascii	"direct"
.LC7:
	.ascii	"unformatted"
	.text
	.globl	findnumberofwordsperrecordinfile_
	.type	findnumberofwordsperrecordinfile_, @function
findnumberofwordsperrecordinfile_:
.LFB0:
	.file 1 "compareBinaryOutputFiles.f"
	.loc 1 76 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$544, %rsp
	movq	%rdi, -520(%rbp)
	movq	%rsi, -528(%rbp)
	movl	%edx, -532(%rbp)
	.loc 1 76 0
	movl	is_recursive.0.1893(%rip), %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 76 0 is_stmt 0 discriminator 1
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L2:
	.loc 1 76 0 discriminator 2
	movl	$1, is_recursive.0.1893(%rip)
	cmpl	$119, -532(%rbp)
	setle	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3
	.loc 1 76 0 discriminator 3
	movl	-532(%rbp), %eax
	cltq
	movl	$120, %r8d
	movq	%rax, %rcx
	movl	$.LC2, %edx
	movl	$.LC3, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L3:
.LBB2:
	.loc 1 87 0 is_stmt 1
	movq	$.LC4, -504(%rbp)
	movl	$87, -496(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -464(%rbp)
	movl	$120, -468(%rbp)
	movq	$.LC5, -456(%rbp)
	movl	$3, -448(%rbp)
	movq	$.LC6, -440(%rbp)
	movl	$6, -444(%rbp)
	movq	$.LC7, -432(%rbp)
	movl	$11, -424(%rbp)
	movl	$4, -472(%rbp)
	movl	$3968, -512(%rbp)
	movl	$12, -508(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open
.LBE2:
.LBB3:
	.loc 1 88 0
	movq	$.LC4, -504(%rbp)
	movl	$88, -496(%rbp)
	movq	$1, -472(%rbp)
	movl	$512, -512(%rbp)
	movl	$12, -508(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-32(%rbp), %rcx
	leaq	-512(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.LBE3:
	.loc 1 89 0
	movzbl	-32(%rbp), %eax
	movb	%al, -13(%rbp)
	.loc 1 90 0
	movzbl	-31(%rbp), %eax
	movb	%al, -14(%rbp)
	.loc 1 91 0
	movzbl	-30(%rbp), %eax
	movb	%al, -15(%rbp)
	.loc 1 92 0
	movzbl	-29(%rbp), %eax
	movb	%al, -16(%rbp)
	.loc 1 76 0
	movl	-32(%rbp), %eax
	.loc 1 93 0
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	.loc 1 76 0
	movl	-16(%rbp), %eax
	.loc 1 93 0
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	jle	.L4
	.loc 1 76 0
	movl	-16(%rbp), %eax
	.loc 1 94 0
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-528(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L5
.L4:
	.loc 1 76 0
	movl	-32(%rbp), %eax
	.loc 1 96 0
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-528(%rbp), %rax
	movl	%edx, (%rax)
.L5:
.LBB4:
	.loc 1 98 0
	movq	$.LC4, -504(%rbp)
	movl	$98, -496(%rbp)
	movl	$0, -512(%rbp)
	movl	$12, -508(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close
.LBE4:
	.loc 1 99 0
	movl	$0, is_recursive.0.1893(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	findnumberofwordsperrecordinfile_, .-findnumberofwordsperrecordinfile_
	.section	.rodata
	.align 8
.LC8:
	.string	"Recursive call to nonrecursive procedure 'comparebinaryoutputfiles'"
	.align 8
.LC9:
	.string	"At line 7 of file compareBinaryOutputFiles.f"
.LC10:
	.ascii	"  "
.LC11:
	.ascii	"Files: "
	.align 8
.LC12:
	.ascii	"Number of words per record in file1: "
	.align 8
.LC13:
	.ascii	"Number of words per record in file2: "
	.align 8
.LC14:
	.ascii	"Test failed: Number of elements per record differs"
	.align 8
.LC15:
	.string	"Integer overflow when calculating the amount of memory to allocate"
.LC16:
	.string	"block1"
	.align 8
.LC17:
	.string	"Attempting to allocate already allocated variable '%s'"
	.align 8
.LC18:
	.string	"At line 33 of file compareBinaryOutputFiles.f"
	.align 8
.LC19:
	.string	"Allocation would exceed memory limit"
.LC20:
	.string	"block2"
	.align 8
.LC21:
	.string	"At line 34 of file compareBinaryOutputFiles.f"
	.align 8
.LC22:
	.string	"Index '%ld' of dimension 1 of array 'block1' below lower bound of %ld"
	.align 8
.LC23:
	.string	"At line 53 of file compareBinaryOutputFiles.f"
	.align 8
.LC24:
	.string	"Index '%ld' of dimension 1 of array 'block1' above upper bound of %ld"
	.align 8
.LC25:
	.string	"Index '%ld' of dimension 1 of array 'block2' below lower bound of %ld"
	.align 8
.LC26:
	.string	"Index '%ld' of dimension 1 of array 'block2' above upper bound of %ld"
	.align 8
.LC27:
	.ascii	"Test Failed: Files differ on record "
	.align 8
.LC28:
	.string	"At line 55 of file compareBinaryOutputFiles.f"
	.align 8
.LC29:
	.string	"At line 56 of file compareBinaryOutputFiles.f"
	.align 8
.LC30:
	.string	"Loop variable has been modified"
	.align 8
.LC31:
	.string	"At line 52 of file compareBinaryOutputFiles.f"
.LC32:
	.ascii	"Done reading "
.LC33:
	.ascii	" records in the file."
.LC34:
	.ascii	"Test Success: Files match"
	.align 4
.LC35:
	.long	0
	.align 8
.LC36:
	.ascii	"Test Failed: Files do not match"
	.align 4
.LC37:
	.long	1
	.text
	.type	MAIN__, @function
MAIN__:
.LFB1:
	.loc 1 7 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$880, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 7 0
	movl	is_recursive.4.1932(%rip), %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L7
	.loc 1 7 0 is_stmt 0 discriminator 1
	movl	$.LC8, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L7:
	.loc 1 7 0 discriminator 2
	movl	$1, is_recursive.4.1932(%rip)
	.loc 1 8 0 is_stmt 1 discriminator 2
	movq	$0, -80(%rbp)
	.loc 1 9 0 discriminator 2
	movq	$0, -128(%rbp)
.LBB5:
	.loc 1 13 0 discriminator 2
	movl	$12, -24(%rbp)
	.loc 1 14 0 discriminator 2
	movl	$13, -28(%rbp)
.LBB6:
	.loc 1 15 0 discriminator 2
	movq	$.LC4, -888(%rbp)
	movl	$15, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$5, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-256(%rbp), %rcx
	leaq	-896(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character
	leaq	-384(%rbp), %rcx
	leaq	-896(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.LBE6:
.LBB7:
	.loc 1 16 0 discriminator 2
	movq	$.LC4, -888(%rbp)
	movl	$16, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$6, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-896(%rbp), %rax
	movl	$2, %edx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE7:
.LBB8:
	.loc 1 17 0 discriminator 2
	movq	$.LC4, -888(%rbp)
	movl	$17, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$6, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-896(%rbp), %rax
	movl	$7, %edx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-256(%rbp), %rcx
	leaq	-896(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-384(%rbp), %rcx
	leaq	-896(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE8:
	.loc 1 18 0 discriminator 2
	leaq	-400(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	findnumberofwordsperrecordinfile_
.LBB9:
	.loc 1 19 0 discriminator 2
	movq	$.LC4, -888(%rbp)
	movl	$19, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$6, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-896(%rbp), %rax
	movl	$37, %edx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-400(%rbp), %rcx
	leaq	-896(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE9:
	.loc 1 20 0 discriminator 2
	leaq	-404(%rbp), %rcx
	leaq	-384(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	findnumberofwordsperrecordinfile_
.LBB10:
	.loc 1 21 0 discriminator 2
	movq	$.LC4, -888(%rbp)
	movl	$21, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$6, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-896(%rbp), %rax
	movl	$37, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-404(%rbp), %rcx
	leaq	-896(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE10:
	.loc 1 23 0 discriminator 2
	movl	-400(%rbp), %edx
	movl	-404(%rbp), %eax
	cmpl	%eax, %edx
	je	.L8
.LBB11:
	.loc 1 24 0
	movq	$.LC4, -888(%rbp)
	movl	$24, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$6, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-896(%rbp), %rax
	movl	$50, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE11:
.LBB12:
	.loc 1 25 0
	movq	$.LC4, -888(%rbp)
	movl	$25, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$6, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-400(%rbp), %rcx
	leaq	-896(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write
	leaq	-404(%rbp), %rcx
	leaq	-896(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE12:
	.loc 1 26 0
	jmp	.L9
.L8:
	.loc 1 28 0
	movl	-400(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB13:
	.loc 1 30 0
	movq	$.LC4, -888(%rbp)
	movl	$30, -880(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -848(%rbp)
	movl	$120, -852(%rbp)
	movq	$.LC7, -816(%rbp)
	movl	$11, -808(%rbp)
	movl	$2304, -896(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open
.LBE13:
.LBB14:
	.loc 1 31 0
	movq	$.LC4, -888(%rbp)
	movl	$31, -880(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -848(%rbp)
	movl	$120, -852(%rbp)
	movq	$.LC7, -816(%rbp)
	movl	$11, -808(%rbp)
	movl	$2304, -896(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open
.LBE14:
	.loc 1 33 0
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
	je	.L10
	.loc 1 33 0 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L11
.L10:
	.loc 1 33 0 discriminator 2
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	testq	%rax, %rax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L12
	.loc 1 33 0 discriminator 3
	movl	$1, %eax
	jmp	.L11
.L12:
	.loc 1 33 0 discriminator 4
	movl	$0, %eax
.L11:
	.loc 1 33 0 discriminator 6
	movl	%eax, %edx
	movq	%rcx, %rsi
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rsi
	seta	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L14
	.loc 1 33 0 discriminator 7
	movl	$1, %eax
	jmp	.L15
.L14:
	.loc 1 33 0 discriminator 8
	movl	$0, %eax
.L15:
	.loc 1 33 0 discriminator 9
	leal	(%rax,%rdx), %esi
	cmpl	$0, -32(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L16
	.loc 1 33 0 discriminator 10
	movl	$0, %edx
	jmp	.L17
.L16:
	.loc 1 33 0 discriminator 11
	movq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
.L17:
	.loc 1 33 0 discriminator 12
	movl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L18
	.loc 1 33 0 discriminator 13
	movl	$.LC15, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error
.L18:
	.loc 1 33 0 discriminator 14
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L19
	.loc 1 33 0 discriminator 15
	movl	$.LC16, %edx
	movl	$.LC17, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L19:
.LBB15:
	.loc 1 33 0 discriminator 16
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
	je	.L20
	.loc 1 33 0 discriminator 1
	movl	$.LC19, %edi
	call	_gfortran_os_error
.L20:
.LBE15:
	.loc 1 33 0 discriminator 2
	movq	$281, -64(%rbp)
	movq	$1, -48(%rbp)
	movl	-32(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	$1, -56(%rbp)
	movq	$-1, -72(%rbp)
	.loc 1 34 0 is_stmt 1 discriminator 2
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
	je	.L21
	.loc 1 34 0 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L22
.L21:
	.loc 1 34 0 discriminator 2
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	testq	%rax, %rax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L23
	.loc 1 34 0 discriminator 3
	movl	$1, %eax
	jmp	.L22
.L23:
	.loc 1 34 0 discriminator 4
	movl	$0, %eax
.L22:
	.loc 1 34 0 discriminator 6
	movl	%eax, %edx
	movq	%rcx, %rsi
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rsi
	seta	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L25
	.loc 1 34 0 discriminator 7
	movl	$1, %eax
	jmp	.L26
.L25:
	.loc 1 34 0 discriminator 8
	movl	$0, %eax
.L26:
	.loc 1 34 0 discriminator 9
	leal	(%rax,%rdx), %esi
	cmpl	$0, -32(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L27
	.loc 1 34 0 discriminator 10
	movl	$0, %edx
	jmp	.L28
.L27:
	.loc 1 34 0 discriminator 11
	movq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
.L28:
	.loc 1 34 0 discriminator 12
	movl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L29
	.loc 1 34 0 discriminator 13
	movl	$.LC15, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error
.L29:
	.loc 1 34 0 discriminator 14
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L30
	.loc 1 34 0 discriminator 15
	movl	$.LC20, %edx
	movl	$.LC17, %esi
	movl	$.LC21, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L30:
.LBB16:
	.loc 1 34 0 discriminator 16
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
	je	.L31
	.loc 1 34 0 discriminator 1
	movl	$.LC19, %edi
	call	_gfortran_os_error
.L31:
.LBE16:
	.loc 1 34 0 discriminator 2
	movq	$281, -112(%rbp)
	movq	$1, -96(%rbp)
	movl	-32(%rbp), %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	$1, -104(%rbp)
	movq	$-1, -120(%rbp)
	.loc 1 36 0 is_stmt 1 discriminator 2
	movl	$1, -396(%rbp)
.L46:
.LBB17:
	.loc 1 38 0
	movq	$.LC4, -888(%rbp)
	movl	$38, -880(%rbp)
	movl	$0, -388(%rbp)
	leaq	-388(%rbp), %rax
	movq	%rax, -864(%rbp)
	movl	$32, -896(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-80(%rbp), %rsi
	leaq	-896(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.LBE17:
	.loc 1 39 0
	movl	-388(%rbp), %eax
	testl	%eax, %eax
	js	.L32
	.loc 1 39 0 is_stmt 0 discriminator 1
	movl	-388(%rbp), %eax
	testl	%eax, %eax
	jg	.L32
.LBB18:
	.loc 1 45 0 is_stmt 1
	movq	$.LC4, -888(%rbp)
	movl	$45, -880(%rbp)
	movl	$0, -392(%rbp)
	leaq	-392(%rbp), %rax
	movq	%rax, -864(%rbp)
	movl	$32, -896(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read
	leaq	-128(%rbp), %rsi
	leaq	-896(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done
.LBE18:
	.loc 1 46 0
	movl	-392(%rbp), %eax
	testl	%eax, %eax
	js	.L32
	.loc 1 46 0 is_stmt 0 discriminator 1
	movl	-392(%rbp), %eax
	testl	%eax, %eax
	jg	.L32
.LBB19:
	.loc 1 52 0 is_stmt 1
	movl	-32(%rbp), %r12d
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %ebx
	cmpl	%r12d, -20(%rbp)
	jg	.L33
.L45:
.LBB20:
	.loc 1 53 0
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	setl	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L34
	.loc 1 53 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movl	$.LC22, %esi
	movl	$.LC23, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L34:
	.loc 1 53 0 discriminator 2
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	setg	%al
	movzbl	%al, %eax
	movl	%eax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L35
	.loc 1 53 0 discriminator 3
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$.LC24, %esi
	movl	$.LC23, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L35:
	.loc 1 53 0 discriminator 4
	movl	-20(%rbp), %eax
	cltq
	movq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	%cl
	movzbl	%cl, %ecx
	movl	%ecx, %ecx
	andl	$1, %ecx
	testl	%ecx, %ecx
	je	.L36
	.loc 1 53 0 discriminator 5
	movq	-96(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC25, %esi
	movl	$.LC23, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L36:
	.loc 1 53 0 discriminator 6
	movq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	setg	%cl
	movzbl	%cl, %ecx
	movl	%ecx, %ecx
	andl	$1, %ecx
	testl	%ecx, %ecx
	je	.L37
	.loc 1 53 0 discriminator 7
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC26, %esi
	movl	$.LC23, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L37:
	.loc 1 53 0 discriminator 8
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rsi
	addq	%rsi, %rdx
	movss	(%rcx,%rdx,4), %xmm0
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rcx
	addq	%rcx, %rax
	movss	(%rdx,%rax,4), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L48
	ucomiss	%xmm1, %xmm0
	je	.L38
.L48:
	.loc 1 54 0 is_stmt 1
	movl	$0, same.1931(%rip)
.LBB21:
	.loc 1 56 0
	movq	$.LC4, -888(%rbp)
	movl	$56, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$6, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	.loc 1 55 0
	leaq	-896(%rbp), %rax
	movl	$36, %edx
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-396(%rbp), %rcx
	leaq	-896(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write
	.loc 1 56 0
	movl	-20(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	cmpq	%rdx, %rax
	setl	%dl
	movzbl	%dl, %edx
	movl	%edx, %edx
	.loc 1 55 0
	andl	$1, %edx
	testl	%edx, %edx
	je	.L40
	.loc 1 55 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC22, %esi
	movl	$.LC28, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L40:
	.loc 1 56 0 is_stmt 1 discriminator 2
	movq	-40(%rbp), %rdx
	cmpq	%rdx, %rax
	setg	%dl
	movzbl	%dl, %edx
	movl	%edx, %edx
	.loc 1 55 0 discriminator 2
	andl	$1, %edx
	testl	%edx, %edx
	je	.L41
	.loc 1 55 0 is_stmt 0 discriminator 3
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	$.LC28, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L41:
	.loc 1 56 0 is_stmt 1
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	addq	%rcx, %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-896(%rbp), %rax
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
	je	.L42
	.loc 1 56 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC25, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L42:
	.loc 1 56 0 discriminator 2
	movq	-88(%rbp), %rdx
	cmpq	%rdx, %rax
	setg	%dl
	movzbl	%dl, %edx
	movl	%edx, %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L43
	.loc 1 56 0 discriminator 3
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC26, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L43:
	.loc 1 56 0 discriminator 4
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rcx
	addq	%rcx, %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-896(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.L38:
.LBE21:
	.loc 1 52 0 is_stmt 1
	cmpl	%ebx, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 58 0
	movl	%eax, %eax
	.loc 1 52 0
	andl	$1, %eax
	testl	%eax, %eax
	je	.L44
	.loc 1 52 0 is_stmt 0 discriminator 1
	movl	$.LC30, %esi
	movl	$.LC31, %edi
	movl	$0, %eax
	call	_gfortran_runtime_error_at
.L44:
	.loc 1 52 0 discriminator 2
	cmpl	%r12d, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %ebx
	testl	%eax, %eax
	jne	.L33
.LBE20:
	.loc 1 52 0 discriminator 3
	jmp	.L45
.L33:
.LBE19:
	.loc 1 59 0 is_stmt 1
	movl	-396(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -396(%rbp)
	.loc 1 60 0
	jmp	.L46
.L32:
.LBB22:
	.loc 1 61 0
	movq	$.LC4, -888(%rbp)
	movl	$61, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$6, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-896(%rbp), %rax
	movl	$13, %edx
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-396(%rbp), %rcx
	leaq	-896(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write
	leaq	-896(%rbp), %rax
	movl	$21, %edx
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.L9:
.LBE22:
.LBB23:
	.loc 1 62 0
	movq	$.LC4, -888(%rbp)
	movl	$62, -880(%rbp)
	movl	$0, -896(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close
.LBE23:
.LBB24:
	.loc 1 63 0
	movq	$.LC4, -888(%rbp)
	movl	$63, -880(%rbp)
	movl	$0, -896(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close
.LBE24:
	.loc 1 65 0
	movl	same.1931(%rip), %eax
	testl	%eax, %eax
	je	.L47
.LBB25:
	.loc 1 66 0
	movq	$.LC4, -888(%rbp)
	movl	$66, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$6, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-896(%rbp), %rax
	movl	$25, %edx
	movl	$.LC34, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE25:
.LBB26:
	.loc 1 67 0
	movl	$.LC35, %edi
	movl	$0, %eax
	call	_gfortran_exit_i4
.L47:
.LBE26:
.LBB27:
	.loc 1 69 0
	movq	$.LC4, -888(%rbp)
	movl	$69, -880(%rbp)
	movl	$128, -896(%rbp)
	movl	$6, -892(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write
	leaq	-896(%rbp), %rax
	movl	$31, %edx
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write
	leaq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done
.LBE27:
.LBB28:
	.loc 1 70 0
	movl	$.LC37, %edi
	movl	$0, %eax
	call	_gfortran_exit_i4
.LBE28:
.LBE5:
	.cfi_endproc
.LFE1:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB2:
	.loc 1 74 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 74 0
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args
	movl	$options.27.1989, %esi
	movl	$7, %edi
	call	_gfortran_set_options
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.local	is_recursive.0.1893
	.comm	is_recursive.0.1893,4,4
	.local	is_recursive.4.1932
	.comm	is_recursive.4.1932,4,4
	.data
	.align 4
	.type	same.1931, @object
	.size	same.1931, 4
same.1931:
	.long	1
	.section	.rodata
	.align 16
	.type	options.27.1989, @object
	.size	options.27.1989, 28
options.27.1989:
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
	.long	0x44e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF28
	.byte	0xe
	.byte	0x2
	.long	.LASF29
	.long	.LASF30
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF23
	.byte	0x1
	.byte	0x4c
	.long	.LASF31
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xef
	.uleb128 0x4
	.long	.LASF0
	.byte	0x1
	.byte	0x4c
	.long	0xef
	.uleb128 0x4
	.byte	0x91
	.sleb128 -536
	.byte	0x6
	.uleb128 0x4
	.long	.LASF1
	.byte	0x1
	.byte	0x4c
	.long	0xf1
	.uleb128 0x4
	.byte	0x91
	.sleb128 -544
	.byte	0x6
	.uleb128 0x5
	.long	.LASF32
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x6
	.long	.LASF2
	.byte	0x1
	.byte	0x53
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF3
	.byte	0x1
	.byte	0x52
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF4
	.byte	0x1
	.byte	0x50
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF5
	.byte	0x1
	.byte	0x4f
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x7
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x7
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x8
	.byte	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x9
	.long	0xf1
	.uleb128 0xa
	.long	0x10d
	.long	0x10d
	.uleb128 0xb
	.long	0x2e
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.byte	0x7
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.byte	0x2
	.long	0x3af
	.uleb128 0x6
	.long	.LASF8
	.byte	0x1
	.byte	0x8
	.long	0x3af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.byte	0x9
	.long	0x3da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0xa
	.long	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0xa
	.long	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x34
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x26
	.long	0xf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x2d
	.long	0xf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x24
	.long	0xf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0xd
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0xe
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x1c
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x12
	.long	0xf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0x14
	.long	0xf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.byte	0xb
	.long	0x3fe
	.uleb128 0x9
	.byte	0x3
	.quad	same.1931
	.uleb128 0xe
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
	.uleb128 0x7
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x7
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x7
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x7
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x7
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0xf
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x326
	.uleb128 0xe
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x7
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x7
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x7
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x7
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0xf
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x385
	.uleb128 0x10
	.long	0xf8
	.byte	0
	.uleb128 0x7
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0xe
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x10
	.long	0xf8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x97
	.byte	0x6
	.uleb128 0x4
	.byte	0x97
	.byte	0x6
	.byte	0x30
	.byte	0x2e
	.long	0x3d3
	.long	0x3d3
	.uleb128 0x12
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
	.long	.LASF21
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x97
	.byte	0x6
	.uleb128 0x4
	.byte	0x97
	.byte	0x6
	.byte	0x30
	.byte	0x2e
	.long	0x3d3
	.long	0x3fe
	.uleb128 0x12
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
	.byte	0x2
	.long	.LASF22
	.uleb128 0x13
	.long	.LASF24
	.byte	0x1
	.byte	0x4a
	.long	0xf1
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x444
	.uleb128 0x4
	.long	.LASF25
	.byte	0x1
	.byte	0x4a
	.long	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.long	.LASF26
	.byte	0x1
	.byte	0x4a
	.long	0x444
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.byte	0x8
	.long	0x44a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF27
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x12
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x27
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x14
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
.LASF5:
	.string	"bookend"
.LASF20:
	.string	"same"
.LASF17:
	.string	"nelements"
.LASF31:
	.string	"findnumberofwordsperrecordinfile_"
.LASF30:
	.string	"/apps/carolyn/prod/ck001/TEST"
.LASF25:
	.string	"argc"
.LASF4:
	.string	"bytes"
.LASF2:
	.string	"bytes2"
.LASF33:
	.string	"comparebinaryoutputfiles"
.LASF28:
	.string	"GNU Fortran 4.8.5 20150623 (Red Hat 4.8.5-39) -ffixed-form -mtune=generic -march=x86-64 -g -fcheck=all -fintrinsic-modules-path /usr/lib/gcc/x86_64-redhat-linux/4.8.5/finclude"
.LASF16:
	.string	"kin2"
.LASF8:
	.string	"block1"
.LASF9:
	.string	"block2"
.LASF7:
	.string	"integer(kind=4)"
.LASF14:
	.string	"irecord"
.LASF18:
	.string	"numberofwords1"
.LASF19:
	.string	"numberofwords2"
.LASF24:
	.string	"main"
.LASF1:
	.string	"nelem"
.LASF23:
	.string	"findnumberofwordsperrecordinfile"
.LASF27:
	.string	"character(kind=1)"
.LASF26:
	.string	"argv"
.LASF15:
	.string	"kin1"
.LASF12:
	.string	"iostatnew1"
.LASF13:
	.string	"iostatnew2"
.LASF32:
	.string	"_infile"
.LASF10:
	.string	"file1"
.LASF11:
	.string	"file2"
.LASF3:
	.string	"bookend2"
.LASF6:
	.string	"integer(kind=8)"
.LASF29:
	.string	"compareBinaryOutputFiles.f"
.LASF22:
	.string	"logical(kind=4)"
.LASF0:
	.string	"infile"
.LASF21:
	.string	"real(kind=4)"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-39)"
	.section	.note.GNU-stack,"",@progbits
