	.text
	.file	"auth.c"
	.globl	auth
	.align	16, 0x90
	.type	auth,@function
auth:                                   # @auth
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%eax
	movb	8(%ebp), %al
	movb	%al, -1(%ebp)
	movsbl	-1(%ebp), %ecx
	cmpl	$97, %ecx
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addl	$4, %esp
	popl	%ebp
	retl
.Ltmp0:
	.size	auth, .Ltmp0-auth

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	leal	.L.str1, %eax
	leal	.L.str, %ecx
	movl	$0, -4(%ebp)
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fopen
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	fgetc
	movb	%al, %dl
	movb	%dl, -13(%ebp)
	movsbl	-13(%ebp), %eax
	movl	%eax, (%esp)
	calll	auth
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	leal	.L.str2, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -20(%ebp)         # 4-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	leal	.L.str3, %eax
	movl	%eax, (%esp)
	calll	printf
	movl	%eax, -24(%ebp)         # 4-byte Spill
.LBB1_3:                                # %if.end
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	fclose
	movl	$0, %ecx
	movl	%eax, -28(%ebp)         # 4-byte Spill
	movl	%ecx, %eax
	addl	$40, %esp
	popl	%ebp
	retl
.Ltmp1:
	.size	main, .Ltmp1-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"password.txt"
	.size	.L.str, 13

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"r"
	.size	.L.str1, 2

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"YES\n"
	.size	.L.str2, 5

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"NO\n"
	.size	.L.str3, 4


	.ident	"clang version 3.5.0 (tags/RELEASE_350/final)"
	.section	".note.GNU-stack","",@progbits
