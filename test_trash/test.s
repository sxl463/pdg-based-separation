	.text
	.file	"test.c"
	.globl	CalcSum
	.align	16, 0x90
	.type	CalcSum,@function
CalcSum:                                # @CalcSum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	addl	-8(%rbp), %esi
	movl	%esi, %eax
	popq	%rbp
	retq
.Ltmp3:
	.size	CalcSum, .Ltmp3-CalcSum
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	var, %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -12(%rbp)
	jge	.LBB1_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	CalcSum
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_1
.LBB1_3:                                # %while.end
	movabsq	$.L.str, %rdi
	movabsq	$.L.str1, %rsi
	callq	fopen
	movabsq	$.L.str2, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-24(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	fclose
	movl	$0, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp7:
	.size	main, .Ltmp7-main
	.cfi_endproc

	.type	var,@object             # @var
	.local	var
	.comm	var,4,128
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"a.txt"
	.size	.L.str, 6

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"w"
	.size	.L.str1, 2

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"testing...\n"
	.size	.L.str2, 12


	.ident	"clang version 3.5.0 (tags/RELEASE_350/final)"
	.section	".note.GNU-stack","",@progbits
