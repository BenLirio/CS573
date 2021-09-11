.LC0:
	.string	"/bin/sh"
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execvp@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	ret
