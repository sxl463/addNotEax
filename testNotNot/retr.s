	.file	"retr.c"
	.text
	.type	VALGRIND_PRINTF, @function
VALGRIND_PRINTF:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$48, %esp
	leal	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$5123, -24(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	$0, -4(%ebp)
	leal	-24(%ebp), %eax
	movl	$0, %edx
#APP
# 6779 "/home/shenliu/flowcheck/include/valgrind/valgrind.h" 1
	roll $3,  %edi ; roll $13, %edi
	roll $29, %edi ; roll $19, %edi
	xchgl %ebx,%ebx
# 0 "" 2
#NO_APP
	movl	%edx, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	VALGRIND_PRINTF, .-VALGRIND_PRINTF
	.type	VALGRIND_PRINTF_BACKTRACE, @function
VALGRIND_PRINTF_BACKTRACE:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$48, %esp
	leal	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$5124, -24(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	leal	-36(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	$0, -4(%ebp)
	leal	-24(%ebp), %eax
	movl	$0, %edx
#APP
# 6818 "/home/shenliu/flowcheck/include/valgrind/valgrind.h" 1
	roll $3,  %edi ; roll $13, %edi
	roll $29, %edi ; roll $19, %edi
	xchgl %ebx,%ebx
# 0 "" 2
#NO_APP
	movl	%edx, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	VALGRIND_PRINTF_BACKTRACE, .-VALGRIND_PRINTF_BACKTRACE
	.comm	total_downloaded_bytes,8,8
	.comm	total_download_time,8,8
	.comm	output_stream,4,4
	.comm	output_stream_regular,1,1
	.local	limit_data
	.comm	limit_data,24,4
	.type	limit_bandwidth_reset, @function
limit_bandwidth_reset:
.LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$24, 8(%esp)
	movl	$0, 4(%esp)
	movl	$limit_data, (%esp)
	call	memset
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	limit_bandwidth_reset, .-limit_bandwidth_reset
	.section	.rodata
	.align 4
.LC2:
	.string	"deferring a %.2f ms sleep (%s/%.2f).\n"
	.align 4
.LC3:
	.string	"\nsleeping %.2f ms for %s bytes, adjust %.2f ms\n"
	.text
	.type	limit_bandwidth, @function
limit_bandwidth:
.LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$100, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	ptimer_read
	fldl	limit_data+8
	fsubrp	%st, %st(1)
	fstpl	-48(%ebp)
	movl	limit_data, %ecx
	movl	limit_data+4, %ebx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, limit_data
	movl	%edx, limit_data+4
	movl	limit_data, %eax
	movl	limit_data+4, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	fildq	-72(%ebp)
	movl	opt+312, %eax
	movl	opt+316, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	fildq	-72(%ebp)
	fdivrp	%st, %st(1)
	fstpl	-40(%ebp)
	fldl	-40(%ebp)
	fldl	-48(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L7
	fldl	-40(%ebp)
	fsubl	-48(%ebp)
	fldl	limit_data+16
	faddp	%st, %st(1)
	fstpl	-32(%ebp)
	fldl	.LC0
	fldl	-32(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L21
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L11
	movl	limit_data, %eax
	movl	limit_data+4, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	number_to_static_string
	fldl	-32(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fldl	-48(%ebp)
	fstpl	16(%esp)
	movl	%eax, 12(%esp)
	fstpl	4(%esp)
	movl	$.LC2, (%esp)
	call	debug_logprintf
	jmp	.L6
.L11:
	jmp	.L6
.L21:
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L13
	fldl	limit_data+16
	fstpl	-80(%ebp)
	movl	limit_data, %eax
	movl	limit_data+4, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	number_to_static_string
	fldl	-32(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fldl	-80(%ebp)
	fstpl	16(%esp)
	movl	%eax, 12(%esp)
	fstpl	4(%esp)
	movl	$.LC3, (%esp)
	call	debug_logprintf
.L13:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	ptimer_read
	fstpl	-24(%ebp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	xsleep
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	ptimer_measure
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	fsubl	-24(%ebp)
	fldl	-32(%ebp)
	fsubp	%st, %st(1)
	fstpl	limit_data+16
	fldl	limit_data+16
	fldl	.LC4
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L22
	fldl	.LC4
	fstpl	limit_data+16
	jmp	.L7
.L22:
	fldl	limit_data+16
	fldl	.LC5
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L7
	fldl	.LC5
	fstpl	limit_data+16
.L7:
	movl	$0, limit_data
	movl	$0, limit_data+4
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	ptimer_read
	fstpl	limit_data+8
.L6:
	addl	$100, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	limit_bandwidth, .-limit_bandwidth
	.type	write_data, @function
write_data:
.LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	cmpl	$0, 8(%ebp)
	jne	.L24
	cmpl	$0, 12(%ebp)
	jne	.L24
	movl	$1, %eax
	jmp	.L25
.L24:
	movl	24(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	20(%ebp), %eax
	cltd
	cmpl	%edx, %ebx
	jl	.L26
	cmpl	%edx, %ebx
	jg	.L35
	cmpl	%eax, %ecx
	jbe	.L26
.L35:
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	20(%ebp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$1, %eax
	jmp	.L25
.L26:
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L28
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	%eax, 16(%ebp)
	movl	20(%ebp), %ecx
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 20(%ebp)
	movl	24(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	cmpl	$0, 20(%ebp)
	jne	.L28
	movl	$1, %eax
	jmp	.L25
.L28:
	cmpl	$0, 8(%ebp)
	je	.L29
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite
.L29:
	cmpl	$0, 12(%ebp)
	je	.L30
	movl	20(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite
.L30:
	movl	28(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	20(%ebp), %eax
	cltd
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 8(%ebp)
	je	.L31
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fflush
.L31:
	cmpl	$0, 12(%ebp)
	je	.L32
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fflush
.L32:
	cmpl	$0, 8(%ebp)
	je	.L33
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ferror
	testl	%eax, %eax
	je	.L33
	movl	$-1, %eax
	jmp	.L25
.L33:
	cmpl	$0, 12(%ebp)
	je	.L34
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ferror
	testl	%eax, %eax
	je	.L34
	movl	$-2, %eax
	jmp	.L25
.L34:
	movl	$0, %eax
.L25:
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	write_data, .-write_data
	.section	.rodata
.LC8:
	.string	"before while in retr.c"
.LC9:
	.string	"inside while in retr.c"
.LC10:
	.string	"in remaining_chuck_size == 0"
.LC11:
	.string	"1st fwrite, out2: %d\n"
.LC12:
	.string	"2nd fwrite, out2:%d\n"
	.text
	.globl	fd_read_body
	.type	fd_read_body, @function
fd_read_body:
.LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$244, %esp
	.cfi_offset 3, -12
	movl	20(%ebp), %eax
	movl	%eax, -208(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -204(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -216(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -212(%ebp)
	movl	$0, -184(%ebp)
	movl	$8192, -180(%ebp)
	movl	-180(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	xmalloc
	movl	%eax, -144(%ebp)
	movl	$0, -176(%ebp)
	fldz
	fstpl	-104(%ebp)
	movl	$0, -172(%ebp)
	movb	$0, -199(%ebp)
	movl	48(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -198(%ebp)
	movl	48(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -197(%ebp)
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	48(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L37
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.L37:
	movl	opt+248, %eax
	testl	%eax, %eax
	je	.L38
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L39
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	jmp	.L40
.L39:
	movl	$0, %eax
	movl	$0, %edx
.L40:
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	opt+44, %eax
	testl	%eax, %eax
	je	.L41
	movl	opt+44, %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strlen
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -168(%ebp)
	jmp	.L42
.L41:
	movl	8(%ebp), %eax
	movl	%eax, -168(%ebp)
.L42:
	movl	-208(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	-72(%ebp), %ecx
	movl	-68(%ebp), %ebx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	not	%eax
	not	%eax
	movl	%edx, 16(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	not	%eax
	not	%eax
	movl	%edx, 8(%esp)
	movl	-168(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	progress_create
	not	%eax
	not	%eax
	movl	%eax, -172(%ebp)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	progress_interactive_p
	movb	%al, -199(%ebp)
.L38:
	movl	opt+312, %eax
	movl	opt+316, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L43
	call	limit_bandwidth_reset
.L43:
	cmpl	$0, -172(%ebp)
	jne	.L44
	movl	opt+312, %eax
	movl	opt+316, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L44
	cmpl	$0, 44(%ebp)
	je	.L45
.L44:
	call	ptimer_new
	movl	%eax, -176(%ebp)
	fldz
	fstpl	-104(%ebp)
.L45:
	movl	opt+312, %eax
	movl	opt+316, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L46
	movl	opt+312, %ecx
	movl	opt+316, %ebx
	movl	-180(%ebp), %eax
	cltd
	cmpl	%edx, %ebx
	jg	.L46
	cmpl	%edx, %ebx
	jl	.L94
	cmpl	%eax, %ecx
	jnb	.L46
.L94:
	movl	opt+312, %eax
	movl	opt+316, %edx
	movl	%eax, -180(%ebp)
.L46:
	not	%eax
	not	%eax
	movl	$.LC8, (%esp)
	call	puts
	jmp	.L48
.L86:
	not	%eax
	not	%eax
	movl	$.LC9, (%esp)
	call	puts
	fldl	opt+264
	fstpl	-80(%ebp)
	cmpb	$0, -197(%ebp)
	je	.L49
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L50
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_read_line
	movl	%eax, -140(%ebp)
	not	%eax
	not	%eax
	movl	$.LC10, (%esp)
	call	puts
	movl	-140(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	$0, -156(%ebp)
	jmp	.L51
.L52:
	movl	$0, -136(%ebp)
	movl	$1178796048, -56(%ebp)
	movl	-160(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	leal	-56(%ebp), %eax
	movl	$0, %edx
#APP
# 330 "retr.c" 1
	roll $3,  %edi ; roll $13, %edi
	roll $29, %edi ; roll $19, %edi
	xchgl %ebx,%ebx
# 0 "" 2
#NO_APP
	movl	%edx, -196(%ebp)
	movl	-196(%ebp), %eax
	movl	%eax, -136(%ebp)
	addl	$2, -160(%ebp)
	addl	$2, -156(%ebp)
.L51:
	movl	-156(%ebp), %eax
	cmpl	$3, %eax
	jbe	.L52
	cmpl	$0, -140(%ebp)
	jne	.L53
	movl	$-1, -184(%ebp)
	jmp	.L60
.L53:
	cmpl	$0, 52(%ebp)
	je	.L55
	movl	52(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$.LC11, (%esp)
	call	printf
	movl	-140(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strlen
	movl	52(%ebp), %edx
	not	%eax
	not	%eax
	movl	%edx, 12(%esp)
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-140(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fwrite
.L55:
	movl	$16, 8(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	strtol
	cltd
	not	%eax
	not	%eax
	movl	%eax, -88(%ebp)
	not	%eax
	not	%eax
	movl	%edx, -84(%ebp)
	movl	-140(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -140(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L50
	not	%eax
	not	%eax
	movl	$0, -184(%ebp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_read_line
	movl	%eax, -140(%ebp)
	cmpl	$0, -140(%ebp)
	jne	.L57
	movl	$-1, -184(%ebp)
	jmp	.L58
.L57:
	cmpl	$0, 52(%ebp)
	je	.L59
	movl	52(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	not	%eax
	not	%eax
	movl	$.LC12, (%esp)
	call	printf
	movl	-140(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strlen
	movl	52(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-140(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fwrite
.L59:
	movl	-140(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -140(%ebp)
.L58:
	nop
	jmp	.L60
.L50:
	movl	-180(%ebp), %eax
	cltd
	movl	-88(%ebp), %ecx
	movl	-84(%ebp), %ebx
	cmpl	%ebx, %edx
	jl	.L61
	cmpl	%ebx, %edx
	jg	.L62
	cmpl	%ecx, %eax
	jbe	.L61
.L62:
	movl	%ecx, %eax
	movl	%ebx, %edx
.L61:
	movl	%eax, -164(%ebp)
	jmp	.L63
.L49:
	cmpb	$0, -198(%ebp)
	je	.L64
	movl	-96(%ebp), %ecx
	movl	-92(%ebp), %ebx
	movl	-208(%ebp), %eax
	movl	-204(%ebp), %edx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	-180(%ebp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	cmpl	%ebx, %edx
	jl	.L67
	cmpl	%ebx, %edx
	jg	.L66
	cmpl	%ecx, %eax
	jbe	.L67
.L66:
	movl	%ecx, %eax
	movl	%ebx, %edx
	jmp	.L67
.L64:
	movl	-180(%ebp), %eax
.L67:
	movl	%eax, -164(%ebp)
.L63:
	cmpb	$0, -199(%ebp)
	je	.L68
	fldl	.LC13
	fstpl	-80(%ebp)
	fldl	opt+264
	fldz
	fucomip	%st(1), %st
	jp	.L98
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L68
	jmp	.L95
.L98:
	fstp	%st(0)
.L95:
	movl	-176(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ptimer_read
	fsubl	-104(%ebp)
	fstpl	-64(%ebp)
	fldl	-64(%ebp)
	faddl	-80(%ebp)
	fldl	opt+264
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L68
	fldl	opt+264
	fsubl	-64(%ebp)
	fstpl	-80(%ebp)
	fldz
	fldl	-80(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L68
	not	%eax
	not	%eax
	movl	$-1, -184(%ebp)
	call	__errno_location
	movl	$110, (%eax)
	jmp	.L60
.L68:
	fldl	-80(%ebp)
	fstpl	12(%esp)
	movl	-164(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	-144(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_read
	movl	%eax, -184(%ebp)
	movl	$0, -152(%ebp)
	movl	-144(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L72
.L73:
	movl	$0, -132(%ebp)
	movl	$1178796048, -32(%ebp)
	movl	-148(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	leal	-32(%ebp), %eax
	movl	$0, %edx
#APP
# 401 "retr.c" 1
	roll $3,  %edi ; roll $13, %edi
	roll $29, %edi ; roll $19, %edi
	xchgl %ebx,%ebx
# 0 "" 2
#NO_APP
	movl	%edx, -188(%ebp)
	movl	-188(%ebp), %eax
	movl	%eax, -132(%ebp)
	addl	$2, -148(%ebp)
	addl	$2, -152(%ebp)
.L72:
	movl	-152(%ebp), %eax
	cmpl	$3, %eax
	jbe	.L73
	cmpb	$0, -199(%ebp)
	je	.L74
	cmpl	$0, -184(%ebp)
	jns	.L74
	call	__errno_location
	movl	(%eax), %eax
	cmpl	$110, %eax
	jne	.L74
	movl	$0, -184(%ebp)
	jmp	.L75
.L74:
	cmpl	$0, -184(%ebp)
	jg	.L75
	jmp	.L60
.L75:
	cmpl	$0, -172(%ebp)
	jne	.L76
	movl	opt+312, %eax
	movl	opt+316, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L76
	cmpl	$0, 44(%ebp)
	je	.L77
.L76:
	movl	-176(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ptimer_measure
	fstp	%st(0)
	cmpl	$0, -184(%ebp)
	jle	.L77
	movl	-176(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ptimer_read
	fstpl	-104(%ebp)
.L77:
	cmpl	$0, -184(%ebp)
	jle	.L78
	movl	-184(%ebp), %eax
	cltd
	addl	%eax, -96(%ebp)
	adcl	%edx, -92(%ebp)
	leal	-112(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 20(%esp)
	leal	-120(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 16(%esp)
	movl	-184(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	-144(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	52(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	write_data
	movl	%eax, -128(%ebp)
	cmpl	$0, -128(%ebp)
	jns	.L79
	cmpl	$-3, -128(%ebp)
	jne	.L80
	movl	$-3, %eax
	jmp	.L81
.L80:
	movl	$-2, %eax
.L81:
	movl	%eax, -184(%ebp)
	jmp	.L82
.L79:
	cmpb	$0, -197(%ebp)
	je	.L78
	movl	-184(%ebp), %eax
	cltd
	subl	%eax, -88(%ebp)
	sbbl	%edx, -84(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L78
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_read_line
	movl	%eax, -124(%ebp)
	cmpl	$0, -124(%ebp)
	jne	.L83
	movl	$-1, -184(%ebp)
	jmp	.L60
.L83:
	cmpl	$0, 52(%ebp)
	je	.L84
	movl	-124(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strlen
	movl	52(%ebp), %edx
	not	%eax
	not	%eax
	movl	%edx, 12(%esp)
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	not	%eax
	not	%eax
	movl	$1, 4(%esp)
	movl	-124(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fwrite
.L84:
	movl	-124(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -124(%ebp)
.L78:
	movl	opt+312, %eax
	movl	opt+316, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L85
	movl	-184(%ebp), %eax
	cltd
	movl	-176(%ebp), %ecx
	not	%eax
	not	%eax
	movl	%ecx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%eax
	not	%eax
	movl	%edx, 4(%esp)
	call	limit_bandwidth
.L85:
	cmpl	$0, -172(%ebp)
	je	.L48
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	ptimer_read
	movl	-184(%ebp), %eax
	cltd
	fstpl	12(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	not	%eax
	not	%eax
	movl	%edx, 8(%esp)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	progress_update
.L48:
	movzbl	-198(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L86
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	cmpl	-204(%ebp), %edx
	jl	.L86
	cmpl	-204(%ebp), %edx
	jg	.L60
	cmpl	-208(%ebp), %eax
	jb	.L86
.L60:
	cmpl	$-1, -184(%ebp)
	jge	.L82
	movl	$-1, -184(%ebp)
.L82:
	cmpl	$0, -172(%ebp)
	je	.L88
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	ptimer_read
	fstpl	4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	progress_finish
.L88:
	cmpl	$0, 44(%ebp)
	je	.L89
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	ptimer_read
	movl	44(%ebp), %eax
	fstpl	(%eax)
.L89:
	cmpl	$0, -176(%ebp)
	je	.L90
	movl	-176(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ptimer_destroy
.L90:
	cmpl	$0, 36(%ebp)
	je	.L91
	movl	36(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L91:
	cmpl	$0, 40(%ebp)
	je	.L92
	movl	40(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L92:
	movl	-144(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -144(%ebp)
	movl	-184(%ebp), %eax
	addl	$244, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE30:
	.size	fd_read_body, .-fd_read_body
	.globl	fd_read_hunk
	.type	fd_read_hunk, @function
fd_read_hunk:
.LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
.L113:
	movl	-36(%ebp), %eax
	subl	$1, %eax
	subl	-28(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %edx
	addl	%ecx, %edx
	fld1
	fchs
	fstpl	12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fd_peek
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jns	.L100
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -32(%ebp)
	movl	$0, %eax
	jmp	.L101
.L100:
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L102
	movl	-16(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L103
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-32(%ebp), %eax
	jmp	.L101
.L103:
	movl	-36(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L105
	movl	-24(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	xrealloc
	movl	%eax, -32(%ebp)
	jmp	.L105
.L102:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L105:
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	fldz
	fstpl	12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fd_read
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L106
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -32(%ebp)
	movl	$0, %eax
	jmp	.L101
.L106:
	movl	-12(%ebp), %eax
	addl	%eax, -28(%ebp)
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	cmpl	$0, -12(%ebp)
	jne	.L107
	cmpl	$0, -28(%ebp)
	jne	.L108
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -32(%ebp)
	call	__errno_location
	movl	$0, (%eax)
	movl	$0, %eax
	jmp	.L101
.L108:
	movl	-32(%ebp), %eax
	jmp	.L101
.L107:
	cmpl	$0, -16(%ebp)
	je	.L109
	movl	-12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L109
	movl	-32(%ebp), %eax
	jmp	.L101
.L109:
	movl	-36(%ebp), %eax
	subl	$1, %eax
	cmpl	-28(%ebp), %eax
	jne	.L110
	cmpl	$0, 20(%ebp)
	je	.L111
	movl	-36(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	.L111
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -32(%ebp)
	call	__errno_location
	movl	$12, (%eax)
	movl	$0, %eax
	jmp	.L101
.L111:
	sall	-36(%ebp)
	cmpl	$0, 20(%ebp)
	je	.L112
	movl	-36(%ebp), %eax
	cmpl	20(%ebp), %eax
	jle	.L112
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
.L112:
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	xrealloc
	movl	%eax, -32(%ebp)
	jmp	.L113
.L110:
	jmp	.L113
.L101:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE31:
	.size	fd_read_hunk, .-fd_read_hunk
	.type	line_terminator, @function
line_terminator:
.LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	memchr
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L115
	movl	-12(%ebp), %eax
	addl	$1, %eax
	jmp	.L116
.L115:
	movl	$0, %eax
.L116:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE32:
	.size	line_terminator, .-line_terminator
	.globl	fd_read_line
	.type	fd_read_line, @function
fd_read_line:
.LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$4096, 12(%esp)
	movl	$128, 8(%esp)
	movl	$line_terminator, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fd_read_hunk
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE33:
	.size	fd_read_line, .-fd_read_line
	.section	.rodata
.LC17:
	.string	"%.*f %s"
	.text
	.globl	retr_rate
	.type	retr_rate, @function
retr_rate:
.LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	fldl	-40(%ebp)
	fstpl	8(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	calc_rate
	fstpl	-16(%ebp)
	movzbl	opt+503, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L120
	movl	-20(%ebp), %eax
	movl	rate_names.7139(,%eax,4), %edx
	jmp	.L121
.L120:
	movl	-20(%ebp), %eax
	movl	rate_names_bits.7140(,%eax,4), %edx
.L121:
	fldl	-16(%ebp)
	fldl	.LC15
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jb	.L131
	movl	$0, %eax
	jmp	.L124
.L131:
	fldl	-16(%ebp)
	fldl	.LC16
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jb	.L132
	movl	$1, %eax
	jmp	.L124
.L132:
	movl	$2, %eax
.L124:
	movl	%edx, 20(%esp)
	fldl	-16(%ebp)
	fstpl	12(%esp)
	movl	%eax, 8(%esp)
	movl	$.LC17, 4(%esp)
	movl	$res.7138, (%esp)
	call	sprintf
	movl	$res.7138, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	retr_rate, .-retr_rate
	.globl	calc_rate
	.type	calc_rate, @function
calc_rate:
.LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	fldl	.LC1
	fstpl	-16(%ebp)
	movzbl	opt+503, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L134
	fldl	.LC18
	fstpl	-16(%ebp)
.L134:
	fldl	-40(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L135
	fldl	-40(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L135
	call	ptimer_resolution
	fldl	.LC19
	fdivrp	%st, %st(1)
	fstpl	-40(%ebp)
.L135:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	convert_to_bits
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	fildq	-48(%ebp)
	fdivl	-40(%ebp)
	fstpl	-24(%ebp)
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L149
	movl	24(%ebp), %eax
	movl	$0, (%eax)
	jmp	.L139
.L149:
	fldl	-16(%ebp)
	fmull	-16(%ebp)
	fldl	-24(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L150
	movl	24(%ebp), %eax
	movl	$1, (%eax)
	fldl	-24(%ebp)
	fdivl	-16(%ebp)
	fstpl	-24(%ebp)
	jmp	.L139
.L150:
	fldl	-16(%ebp)
	fmull	-16(%ebp)
	fmull	-16(%ebp)
	fldl	-24(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L151
	movl	24(%ebp), %eax
	movl	$2, (%eax)
	fldl	-16(%ebp)
	fmull	-16(%ebp)
	fldl	-24(%ebp)
	fdivp	%st, %st(1)
	fstpl	-24(%ebp)
	jmp	.L139
.L151:
	movl	24(%ebp), %eax
	movl	$3, (%eax)
	fldl	-16(%ebp)
	fmull	-16(%ebp)
	fmull	-16(%ebp)
	fldl	-24(%ebp)
	fdivp	%st, %st(1)
	fstpl	-24(%ebp)
.L139:
	fldl	-24(%ebp)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	calc_rate, .-calc_rate
	.section	.rodata
	.align 4
.LC20:
	.string	"Error parsing proxy URL %s: %s.\n"
	.align 4
.LC21:
	.string	"Error in proxy URL %s: Must be HTTP.\n"
	.align 4
.LC22:
	.string	"URL transformed to HTTPS due to an HSTS policy\n"
.LC23:
	.string	"%s: %s.\n"
.LC24:
	.string	"%d redirections exceeded.\n"
	.align 4
.LC25:
	.string	"[IRI fallbacking to non-utf8 for %s\n"
	.align 4
.LC26:
	.string	"[Couldn't fallback to non-utf8 for %s\n"
	.text
	.globl	retrieve_url
	.type	retrieve_url, @function
retrieve_url:
.LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$132, %esp
	.cfi_offset 3, -12
	movl	32(%ebp), %edx
	movl	40(%ebp), %eax
	movb	%dl, -92(%ebp)
	movb	%al, -96(%ebp)
	movb	$0, -85(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -48(%ebp)
	movb	$0, -84(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	cmpl	$0, 28(%ebp)
	jne	.L153
	leal	-80(%ebp), %eax
	movl	%eax, 28(%ebp)
	movl	$0, -80(%ebp)
.L153:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup
	movl	%eax, -60(%ebp)
	cmpl	$0, 20(%ebp)
	je	.L154
	movl	20(%ebp), %eax
	movl	$0, (%eax)
.L154:
	cmpl	$0, 16(%ebp)
	je	.L155
	movl	16(%ebp), %eax
	movl	$0, (%eax)
.L155:
	cmpl	$0, 24(%ebp)
	jne	.L156
	movl	opt+344, %eax
	movl	%eax, 24(%ebp)
.L156:
	movl	$0, -64(%ebp)
	movl	$0, -76(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -68(%ebp)
	movl	$0, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	getproxy
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L157
	movl	$dummy_iri, -28(%ebp)
	movl	-28(%ebp), %eax
	movb	$0, 12(%eax)
	movl	$1, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	url_parse
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jne	.L158
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	url_error
	movl	%eax, -24(%ebp)
	movl	$.LC20, (%esp)
	call	gettext
	movl	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -60(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -24(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -32(%ebp)
	cmpb	$0, -84(%ebp)
	je	.L159
	movl	-44(%ebp), %eax
	movl	%eax, opt+460
	movl	-36(%ebp), %eax
	movl	%eax, opt+464
	movl	-40(%ebp), %eax
	movl	%eax, opt+456
	movb	$0, -84(%ebp)
.L159:
	movl	$41, -64(%ebp)
	jmp	.L160
.L158:
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L161
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L161
	movl	$.LC21, (%esp)
	call	gettext
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	url_free
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -60(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -32(%ebp)
	cmpb	$0, -84(%ebp)
	je	.L162
	movl	-44(%ebp), %eax
	movl	%eax, opt+460
	movl	-36(%ebp), %eax
	movl	%eax, opt+464
	movl	-40(%ebp), %eax
	movl	%eax, opt+456
	movb	$0, -84(%ebp)
.L162:
	movl	$41, -64(%ebp)
	jmp	.L160
.L161:
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -32(%ebp)
.L157:
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L163
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	je	.L163
	cmpl	$0, -52(%ebp)
	je	.L164
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L164
.L163:
	movzbl	opt+508, %eax
	testb	%al, %al
	je	.L165
	movl	hsts_store, %eax
	testl	%eax, %eax
	je	.L165
	movl	hsts_store, %eax
	movl	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	hsts_match
	testb	%al, %al
	je	.L165
	movl	$.LC22, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L165:
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	http_loop
	movl	%eax, -64(%ebp)
	jmp	.L166
.L164:
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$2, %eax
	je	.L167
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$3, %eax
	jne	.L166
.L167:
	movzbl	-92(%ebp), %eax
	movb	%al, -83(%ebp)
	movzbl	opt+205, %eax
	movb	%al, -82(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L168
	movb	$0, -82(%ebp)
	movzbl	-82(%ebp), %eax
	movb	%al, -83(%ebp)
.L168:
	movzbl	-82(%ebp), %edx
	movzbl	-92(%ebp), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	ftp_loop
	movl	%eax, -64(%ebp)
	movzbl	-83(%ebp), %eax
	movb	%al, -92(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L166
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L166
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$2, %eax
	je	.L169
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$3, %eax
	jne	.L166
.L169:
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	has_html_suffix_p
	testb	%al, %al
	je	.L166
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
.L166:
	cmpl	$0, -52(%ebp)
	je	.L170
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	url_free
	movl	$0, -52(%ebp)
.L170:
	cmpl	$6, -64(%ebp)
	je	.L171
	cmpl	$48, -64(%ebp)
	jne	.L172
.L171:
	movl	$1, %eax
	jmp	.L173
.L172:
	movl	$0, %eax
.L173:
	movb	%al, -81(%ebp)
	andb	$1, -81(%ebp)
	cmpb	$0, -81(%ebp)
	je	.L174
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -68(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	uri_merge
	movl	%eax, -20(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -76(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	$1, 12(%esp)
	movl	36(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-72(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	url_parse
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L175
	movl	-72(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	url_error
	movl	%eax, -12(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	escnonprint_uri
	movl	-12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	8(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L176
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	url_free
.L176:
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -60(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -76(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -12(%ebp)
	cmpb	$0, -84(%ebp)
	je	.L177
	movl	-44(%ebp), %eax
	movl	%eax, opt+460
	movl	-36(%ebp), %eax
	movl	%eax, opt+464
	movl	-40(%ebp), %eax
	movl	%eax, opt+456
	movb	$0, -84(%ebp)
	jmp	.L160
.L177:
	jmp	.L160
.L175:
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -76(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	xstrdup
	movl	%eax, -76(%ebp)
	addl	$1, -48(%ebp)
	movl	opt+20, %eax
	cmpl	%eax, -48(%ebp)
	jle	.L178
	movl	opt+20, %ebx
	movl	$.LC24, (%esp)
	call	gettext
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	url_free
	movl	8(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L179
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	url_free
.L179:
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -60(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -76(%ebp)
	cmpb	$0, -84(%ebp)
	je	.L180
	movl	-44(%ebp), %eax
	movl	%eax, opt+460
	movl	-36(%ebp), %eax
	movl	%eax, opt+464
	movl	-40(%ebp), %eax
	movl	%eax, opt+456
	movb	$0, -84(%ebp)
.L180:
	movl	$27, -64(%ebp)
	jmp	.L160
.L178:
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -60(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L181
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	url_free
.L181:
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	cmpl	$48, -64(%ebp)
	je	.L182
	movzbl	-84(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L182
	movb	$1, -84(%ebp)
	movl	opt+460, %eax
	movl	%eax, -44(%ebp)
	movl	opt+464, %eax
	movl	%eax, -36(%ebp)
	movl	opt+456, %eax
	movl	%eax, -40(%ebp)
	movl	$0, opt+460
	movl	$0, opt+464
	movl	$0, opt+456
	jmp	.L156
.L182:
	jmp	.L156
.L174:
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -76(%ebp)
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L183
	movl	36(%ebp), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	je	.L183
	movl	36(%ebp), %eax
	movb	$0, 12(%eax)
	movl	8(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L184
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	url_free
.L184:
	movl	$1, 12(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	url_parse
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L185
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L186
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, 4(%esp)
	movl	$.LC25, (%esp)
	call	debug_logprintf
.L186:
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -60(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	xstrdup
	movl	%eax, -60(%ebp)
	movb	$1, -85(%ebp)
	jmp	.L156
.L185:
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L183
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, 4(%esp)
	movl	$.LC26, (%esp)
	call	debug_logprintf
.L183:
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L187
	cmpl	$0, -56(%ebp)
	je	.L187
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L188
	movzbl	opt+330, %eax
	testb	%al, %al
	je	.L187
.L188:
	movl	-68(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	register_download
	movzbl	opt+68, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L189
	cmpl	$0, -48(%ebp)
	je	.L189
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp
	testl	%eax, %eax
	je	.L189
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_redirection
.L189:
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L190
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	register_html
.L190:
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L187
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	register_css
.L187:
	cmpl	$0, 16(%ebp)
	je	.L191
	movl	-68(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L192
.L191:
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -68(%ebp)
.L192:
	movl	8(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L193
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	url_free
.L193:
	cmpl	$0, -48(%ebp)
	jne	.L194
	cmpb	$0, -85(%ebp)
	je	.L195
.L194:
	cmpl	$0, 20(%ebp)
	je	.L196
	movl	20(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, (%eax)
	jmp	.L198
.L196:
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -60(%ebp)
	jmp	.L198
.L195:
	cmpl	$0, 20(%ebp)
	je	.L199
	movl	20(%ebp), %eax
	movl	$0, (%eax)
.L199:
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -60(%ebp)
.L198:
	cmpb	$0, -84(%ebp)
	je	.L160
	movl	-44(%ebp), %eax
	movl	%eax, opt+460
	movl	-36(%ebp), %eax
	movl	%eax, opt+464
	movl	-40(%ebp), %eax
	movl	%eax, opt+456
	movb	$0, -84(%ebp)
.L160:
	cmpb	$0, -96(%ebp)
	je	.L200
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	inform_exit_status
.L200:
	movl	-64(%ebp), %eax
	addl	$132, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	retrieve_url, .-retrieve_url
	.section	.rodata
	.align 4
.LC27:
	.string	"Removing file due to --delete-after in retrieve_from_file():\n"
.LC28:
	.string	"Removing %s.\n"
.LC29:
	.string	"unlink: %s\n"
	.text
	.globl	retrieve_from_file
	.type	retrieve_from_file, @function
retrieve_from_file:
.LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$116, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movb	%al, -76(%ebp)
	movl	$dummy_iri, -44(%ebp)
	movl	$0, -72(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	$25, -56(%ebp)
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	url_valid_scheme
	testb	%al, %al
	je	.L203
	movl	$1, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	url_parse
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	.L204
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	url_error
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC23, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -32(%ebp)
	movl	$18, %eax
	jmp	.L236
.L204:
	movl	opt+240, %eax
	testl	%eax, %eax
	jne	.L206
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup
	movl	%eax, opt+240
.L206:
	movl	$1, 32(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	retrieve_url
	movl	%eax, -56(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	url_free
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	je	.L207
	cmpl	$25, -56(%ebp)
	je	.L208
.L207:
	movl	-56(%ebp), %eax
	jmp	.L236
.L208:
	movl	-64(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L209
	movb	$1, -76(%ebp)
.L209:
	movzbl	opt+490, %edx
	movl	-44(%ebp), %eax
	movb	%dl, 12(%eax)
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free
	movl	-44(%ebp), %eax
	movl	$0, 8(%eax)
	movl	-72(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L210
.L203:
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
.L210:
	cmpb	$0, -76(%ebp)
	je	.L212
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_urls_html
	jmp	.L213
.L212:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_urls_file
.L213:
	movl	%eax, -28(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -72(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L214
.L235:
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$dummy_iri, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L216
	movl	opt+320, %eax
	movl	opt+324, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L217
	movl	opt+320, %ecx
	movl	opt+324, %ebx
	movl	total_downloaded_bytes, %eax
	movl	total_downloaded_bytes+4, %edx
	cmpl	%edx, %ebx
	jg	.L217
	cmpl	%edx, %ebx
	jl	.L237
	cmpl	%eax, %ecx
	jnb	.L217
.L237:
	movl	$43, -56(%ebp)
	jmp	.L219
.L217:
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	$1, 12(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	url_parse
	movl	%eax, -20(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	getproxy
	movl	%eax, -16(%ebp)
	movzbl	opt+15, %eax
	testb	%al, %al
	jne	.L220
	movzbl	opt+374, %eax
	testb	%al, %al
	je	.L221
.L220:
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$2, %eax
	je	.L222
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$3, %eax
	jne	.L223
.L222:
	cmpl	$0, -16(%ebp)
	je	.L221
.L223:
	movzbl	opt+140, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$2, %eax
	je	.L224
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$3, %eax
	jne	.L225
.L224:
	movb	$1, opt+140
.L225:
	cmpl	$0, -20(%ebp)
	jne	.L226
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	jmp	.L227
.L226:
	movl	-20(%ebp), %eax
.L227:
	movl	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	retrieve_tree
	movl	%eax, -56(%ebp)
	cmpl	$0, -12(%ebp)
	setne	%al
	movb	%al, opt+140
	jmp	.L228
.L221:
	movzbl	opt+15, %eax
	movzbl	%al, %ecx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	cmpl	$0, -20(%ebp)
	jne	.L229
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	jmp	.L230
.L229:
	movl	-20(%ebp), %eax
.L230:
	movl	$1, 32(%esp)
	movl	-24(%ebp), %ebx
	movl	%ebx, 28(%esp)
	movl	%ecx, 24(%esp)
	leal	-60(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	$0, 16(%esp)
	leal	-64(%ebp), %ecx
	movl	%ecx, 12(%esp)
	leal	-68(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	retrieve_url
	movl	%eax, -56(%ebp)
.L228:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -16(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L231
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	url_free
.L231:
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L232
	movzbl	opt+372, %eax
	testb	%al, %al
	je	.L232
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	file_exists_p
	testb	%al, %al
	je	.L232
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L233
	movl	$.LC27, (%esp)
	call	debug_logprintf
.L233:
	movl	-68(%ebp), %ebx
	movl	$.LC28, (%esp)
	call	gettext
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	unlink
	testl	%eax, %eax
	je	.L234
	call	__errno_location
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	strerror
	movl	%eax, 8(%esp)
	movl	$.LC29, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
.L234:
	movl	-60(%ebp), %eax
	andl	$-3, %eax
	movl	%eax, -60(%ebp)
.L232:
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -64(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -68(%ebp)
.L216:
	movl	-52(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L214:
	cmpl	$0, -52(%ebp)
	jne	.L235
.L219:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free_urlpos
	movl	-56(%ebp), %eax
.L236:
	addl	$116, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	retrieve_from_file, .-retrieve_from_file
	.section	.rodata
.LC30:
	.string	"Giving up.\n\n"
.LC31:
	.string	"Retrying.\n\n"
	.text
	.globl	printwhat
	.type	printwhat, @function
printwhat:
.LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L239
	movl	$.LC30, (%esp)
	call	gettext
	jmp	.L240
.L239:
	movl	$.LC31, (%esp)
	call	gettext
.L240:
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	printwhat, .-printwhat
	.section	.rodata
	.align 4
.LC32:
	.string	"sleep_between_retrievals: avg=%f,sleep=%f\n"
	.text
	.globl	sleep_between_retrievals
	.type	sleep_between_retrievals, @function
sleep_between_retrievals:
.LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movzbl	first_retrieval.7224, %eax
	testb	%al, %al
	je	.L242
	movb	$0, first_retrieval.7224
	jmp	.L241
.L242:
	fldl	opt+300
	fldz
	fucomip	%st(1), %st
	jp	.L257
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L244
	jmp	.L253
.L257:
	fstp	%st(0)
.L253:
	cmpl	$1, 8(%ebp)
	jle	.L244
	fildl	8(%ebp)
	fldl	opt+300
	fucomip	%st(1), %st
	fstp	%st(0)
	jb	.L256
	movl	8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	fildl	-28(%ebp)
	fstpl	(%esp)
	call	xsleep
	jmp	.L241
.L256:
	fldl	opt+300
	fstpl	(%esp)
	call	xsleep
	jmp	.L241
.L244:
	fldl	opt+292
	fldz
	fucomip	%st(1), %st
	jp	.L258
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L241
	jmp	.L255
.L258:
	fstp	%st(0)
.L255:
	movzbl	opt+288, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L250
	cmpl	$1, 8(%ebp)
	jle	.L251
.L250:
	fldl	opt+292
	fstpl	(%esp)
	call	xsleep
	jmp	.L241
.L251:
	call	random_float
	fldl	.LC4
	faddp	%st, %st(1)
	fldl	opt+292
	fmulp	%st, %st(1)
	fstpl	-16(%ebp)
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L252
	fldl	opt+292
	fldl	-16(%ebp)
	fstpl	12(%esp)
	fstpl	4(%esp)
	movl	$.LC32, (%esp)
	call	debug_logprintf
.L252:
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	xsleep
.L241:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE39:
	.size	sleep_between_retrievals, .-sleep_between_retrievals
	.globl	free_urlpos
	.type	free_urlpos, @function
free_urlpos:
.LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	jmp	.L260
.L262:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L261
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	url_free
.L261:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	free
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, 8(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%ebp)
.L260:
	cmpl	$0, 8(%ebp)
	jne	.L262
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE40:
	.size	free_urlpos, .-free_urlpos
	.section	.rodata
.LC33:
	.string	"."
.LC34:
	.string	"%s%s%d"
	.text
	.globl	rotate_backups
	.type	rotate_backups, @function
rotate_backups:
.LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$144, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strlen
	movl	%eax, %ebx
	movl	opt+336, %eax
	cltd
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	numdigit
	addl	%ebx, %eax
	addl	$2, %eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	leal	15(%eax), %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -112(%ebp)
	movl	-116(%ebp), %eax
	leal	15(%eax), %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %esi
	movl	$0, %edx
	divl	%esi
	imull	$16, %eax, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -108(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stat64
	testl	%eax, %eax
	jne	.L264
	movl	-88(%ebp), %eax
	andl	$61440, %eax
	cmpl	$32768, %eax
	jne	.L263
.L264:
	movl	opt+336, %eax
	movl	%eax, -120(%ebp)
	jmp	.L266
.L267:
	movl	-120(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$.LC33, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC34, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf
	movl	-120(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 16(%esp)
	movl	$.LC33, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC34, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	rename
	subl	$1, -120(%ebp)
.L266:
	cmpl	$1, -120(%ebp)
	jg	.L267
	movl	$1, 16(%esp)
	movl	$.LC33, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC34, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rename
.L263:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE41:
	.size	rotate_backups, .-rotate_backups
	.section	.rodata
.LC35:
	.string	"http_proxy"
.LC36:
	.string	"https_proxy"
.LC37:
	.string	"ftps_proxy"
.LC38:
	.string	"ftp_proxy"
	.text
	.type	getproxy, @function
getproxy:
.LFB42:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -16(%ebp)
	movzbl	opt+221, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L269
	movl	$0, %eax
	jmp	.L270
.L269:
	movl	opt+236, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	no_proxy_match
	testb	%al, %al
	je	.L271
	movl	$0, %eax
	jmp	.L270
.L271:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$4, %eax
	ja	.L272
	movl	.L274(,%eax,4), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L274:
	.long	.L273
	.long	.L275
	.long	.L276
	.long	.L277
	.long	.L290
	.text
.L273:
	movl	opt+224, %eax
	testl	%eax, %eax
	je	.L279
	movl	opt+224, %eax
	jmp	.L280
.L279:
	movl	$.LC35, (%esp)
	call	getenv
.L280:
	movl	%eax, -16(%ebp)
	jmp	.L272
.L275:
	movl	opt+232, %eax
	testl	%eax, %eax
	je	.L281
	movl	opt+232, %eax
	jmp	.L282
.L281:
	movl	$.LC36, (%esp)
	call	getenv
.L282:
	movl	%eax, -16(%ebp)
	jmp	.L272
.L277:
	movl	opt+228, %eax
	testl	%eax, %eax
	je	.L283
	movl	opt+228, %eax
	jmp	.L284
.L283:
	movl	$.LC37, (%esp)
	call	getenv
.L284:
	movl	%eax, -16(%ebp)
	jmp	.L272
.L276:
	movl	opt+228, %eax
	testl	%eax, %eax
	je	.L285
	movl	opt+228, %eax
	jmp	.L286
.L285:
	movl	$.LC38, (%esp)
	call	getenv
.L286:
	movl	%eax, -16(%ebp)
	jmp	.L272
.L290:
	nop
.L272:
	cmpl	$0, -16(%ebp)
	je	.L287
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L288
.L287:
	movl	$0, %eax
	jmp	.L270
.L288:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	rewrite_shorthand_url
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L289
	movl	-12(%ebp), %eax
	jmp	.L270
.L289:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strdup
.L270:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE42:
	.size	getproxy, .-getproxy
	.globl	url_uses_proxy
	.type	url_uses_proxy, @function
url_uses_proxy:
.LFB43:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	jne	.L292
	movl	$0, %eax
	jmp	.L293
.L292:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	getproxy
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	setne	%al
	movb	%al, -13(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -12(%ebp)
	movzbl	-13(%ebp), %eax
.L293:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE43:
	.size	url_uses_proxy, .-url_uses_proxy
	.type	no_proxy_match, @function
no_proxy_match:
.LFB44:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 12(%ebp)
	jne	.L295
	movl	$0, %eax
	jmp	.L296
.L295:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sufmatch
.L296:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE44:
	.size	no_proxy_match, .-no_proxy_match
	.globl	set_local_file
	.type	set_local_file, @function
set_local_file:
.LFB45:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	opt+144, %eax
	testl	%eax, %eax
	je	.L298
	movzbl	output_stream_regular, %eax
	testb	%al, %al
	je	.L297
	movl	opt+144, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L297
.L298:
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
.L297:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE45:
	.size	set_local_file, .-set_local_file
	.globl	input_file_url
	.type	input_file_url, @function
input_file_url:
.LFB46:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	.L302
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	url_has_scheme
	testb	%al, %al
	je	.L302
	movzbl	first.7274, %eax
	testb	%al, %al
	je	.L302
	movb	$0, first.7274
	movl	$1, %eax
	jmp	.L303
.L302:
	movl	$0, %eax
.L303:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE46:
	.size	input_file_url, .-input_file_url
	.section	.rodata
.LC39:
	.string	"B/s"
.LC40:
	.string	"KB/s"
.LC41:
	.string	"MB/s"
.LC42:
	.string	"GB/s"
	.data
	.align 4
	.type	rate_names.7139, @object
	.size	rate_names.7139, 16
rate_names.7139:
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.section	.rodata
.LC43:
	.string	"b/s"
.LC44:
	.string	"Kb/s"
.LC45:
	.string	"Mb/s"
.LC46:
	.string	"Gb/s"
	.data
	.align 4
	.type	rate_names_bits.7140, @object
	.size	rate_names_bits.7140, 16
rate_names_bits.7140:
	.long	.LC43
	.long	.LC44
	.long	.LC45
	.long	.LC46
	.local	res.7138
	.comm	res.7138,20,1
	.type	first_retrieval.7224, @object
	.size	first_retrieval.7224, 1
first_retrieval.7224:
	.byte	1
	.type	first.7274, @object
	.size	first.7274, 1
first.7274:
	.byte	1
	.section	.rodata
	.align 8
.LC0:
	.long	-1717986918
	.long	1070176665
	.align 8
.LC1:
	.long	0
	.long	1083129856
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.align 8
.LC5:
	.long	0
	.long	-1075838976
	.align 8
.LC13:
	.long	1717986918
	.long	1072588390
	.align 8
.LC15:
	.long	-858993459
	.long	1079573708
	.align 8
.LC16:
	.long	-1546188227
	.long	1076100464
	.align 8
.LC18:
	.long	0
	.long	1083179008
	.align 8
.LC19:
	.long	0
	.long	1073741824
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
