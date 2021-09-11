foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	nop
	popq	%rbp
	nop
	ret

	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
