	.file	"ftp.c"
	.section	.rodata
.LC0:
	.string	"byte"
	.text
	.type	ftp_expected_bytes, @function
ftp_expected_bytes:
.LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	jmp	.L2
.L4:
	movl	8(%ebp), %eax
	addl	$1, %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%ebp)
.L2:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L3
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$40, %al
	jne	.L4
.L3:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L5
	movl	$0, %eax
	movl	$0, %edx
	jmp	.L6
.L5:
	movl	8(%ebp), %eax
	addl	$1, %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%ebp)
	movl	8(%ebp), %eax
	movl	$10, 8(%esp)
	leal	8(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strtoll
	not	%eax
	not	%eax
	movl	%eax, -16(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -12(%ebp)
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L7
	movl	$0, %eax
	movl	$0, %edx
	jmp	.L6
.L7:
	jmp	.L8
.L10:
	movl	8(%ebp), %eax
	addl	$1, %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%ebp)
.L8:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	c_isspace
	testb	%al, %al
	jne	.L10
.L9:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L11
	movl	$0, %eax
	movl	$0, %edx
	jmp	.L6
.L11:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	c_tolower
	cmpl	$98, %eax
	je	.L12
	jmp	.L13
.L12:
	movl	8(%ebp), %eax
	movl	$4, 8(%esp)
	movl	$.LC0, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	c_strncasecmp
	testl	%eax, %eax
	je	.L14
	jmp	.L13
.L14:
	nop
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	jmp	.L6
.L13:
	nop
	jmp	.L2
.L6:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE25:
	.size	ftp_expected_bytes, .-ftp_expected_bytes
	.section	.rodata
.LC1:
	.string	"==> PASV ... "
.LC2:
	.string	"==> EPSV ... "
.LC3:
	.string	"==> LPSV ... "
	.text
	.type	ftp_do_pasv, @function
ftp_do_pasv:
.LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	socket_ip_address
	xorl	$1, %eax
	testb	%al, %al
	je	.L18
	call	abort
.L18:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L20
	cmpl	$10, %eax
	je	.L21
	jmp	.L28
.L20:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L22
	movl	$.LC1, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L22:
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_pasv
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	jmp	.L23
.L21:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L24
	movl	$.LC2, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L24:
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_epsv
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	cmpl	$29, -12(%ebp)
	jne	.L25
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L26
	movl	$.LC3, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L26:
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_lpsv
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	jmp	.L23
.L25:
	jmp	.L23
.L28:
	call	abort
.L23:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE26:
	.size	ftp_do_pasv, .-ftp_do_pasv
	.section	.rodata
.LC4:
	.string	"==> PORT ... "
.LC5:
	.string	"==> EPRT ... "
.LC6:
	.string	"==> LPRT ... "
	.text
	.type	ftp_do_port, @function
ftp_do_port:
.LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
	movl	%gs:20, %eax
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$1, 8(%esp)
	leal	-36(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	socket_ip_address
	xorl	$1, %eax
	testb	%al, %al
	je	.L30
	call	abort
.L30:
	movl	-36(%ebp), %eax
	cmpl	$2, %eax
	je	.L32
	cmpl	$10, %eax
	je	.L33
	jmp	.L41
.L32:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L34
	movl	$.LC4, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L34:
	movl	-44(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_port
	not	%eax
	not	%eax
	movl	%eax, -40(%ebp)
	jmp	.L35
.L33:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L36
	movl	$.LC5, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L36:
	movl	-44(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_eprt
	not	%eax
	not	%eax
	movl	%eax, -40(%ebp)
	cmpl	$10, -40(%ebp)
	jne	.L37
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L38
	movl	$.LC6, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L38:
	movl	-44(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_lprt
	not	%eax
	not	%eax
	movl	%eax, -40(%ebp)
	jmp	.L35
.L37:
	jmp	.L35
.L41:
	call	abort
.L35:
	movl	-40(%ebp), %eax
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L40
	call	__stack_chk_fail
.L40:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE27:
	.size	ftp_do_port, .-ftp_do_port
	.section	.rodata
.LC7:
	.string	"Length: %s"
.LC8:
	.string	" (%s)"
.LC9:
	.string	", %s (%s) remaining"
.LC10:
	.string	", %s remaining"
.LC11:
	.string	" (unauthoritative)\n"
.LC12:
	.string	"\n"
	.text
	.type	print_length, @function
print_length:
.LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	24(%ebp), %eax
	movl	8(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, -16(%ebp)
	movl	12(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, -12(%ebp)
	movl	16(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, -24(%ebp)
	movl	20(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, -20(%ebp)
	not	%al
	not	%al
	movb	%al, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	number_to_static_string
	movl	%eax, %ebx
	movl	$.LC7, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	cmpl	$0, -12(%ebp)
	js	.L43
	cmpl	$0, -12(%ebp)
	jg	.L51
	cmpl	$1023, -16(%ebp)
	jbe	.L43
.L51:
	movl	$1, 12(%esp)
	movl	$10, 8(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	human_readable
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC8, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L43:
	cmpl	$0, -20(%ebp)
	js	.L45
	cmpl	$0, -20(%ebp)
	jg	.L52
	cmpl	$0, -24(%ebp)
	jbe	.L45
.L52:
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %ebx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	testl	%edx, %edx
	js	.L47
	testl	%edx, %edx
	jg	.L53
	cmpl	$1023, %eax
	jbe	.L47
.L53:
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %ebx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	$1, 12(%esp)
	movl	$10, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	human_readable
	movl	%eax, %esi
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %ebx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	number_to_static_string
	movl	%eax, %ebx
	movl	$.LC9, (%esp)
	call	gettext
	not	%esi
	not	%esi
	movl	%esi, 12(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	jmp	.L45
.L47:
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %ebx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	number_to_static_string
	movl	%eax, %ebx
	movl	$.LC10, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L45:
	movzbl	-28(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L49
	movl	$.LC11, (%esp)
	call	gettext
	jmp	.L50
.L49:
	movl	$.LC12, %eax
.L50:
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	addl	$48, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE28:
	.size	print_length, .-print_length
	.section	.rodata
	.align 4
.LC13:
	.string	"Error in server response. Closing.\n"
	.text
	.type	get_ftp_greeting, @function
get_ftp_greeting:
.LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_greeting
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	cmpl	$7, -12(%ebp)
	je	.L55
	movl	$.LC13, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	12(%ebp), %eax
	movl	$-1, 8(%eax)
.L55:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE29:
	.size	get_ftp_greeting, .-get_ftp_greeting
	.section	.rodata
.LC14:
	.string	"==> AUTH TLS ... "
.LC15:
	.string	" done.\n"
	.align 4
.LC16:
	.string	"Server does not support AUTH TLS. Falling back to FTP.\n"
	.text
	.type	init_control_ssl_connection, @function
init_control_ssl_connection:
.LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	$0, -9(%ebp)
	movzbl	opt+431, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L58
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L58
	movl	$.LC14, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L58:
	movzbl	opt+431, %eax
	testb	%al, %al
	jne	.L59
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_auth
	cmpl	$7, %eax
	jne	.L60
.L59:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ssl_connect_wget
	xorl	$1, %eax
	testb	%al, %al
	je	.L61
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	$4, %eax
	jmp	.L62
.L61:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ssl_check_certificate
	xorl	$1, %eax
	testb	%al, %al
	je	.L63
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	$46, %eax
	jmp	.L62
.L63:
	movzbl	opt+431, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L64
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L64
	movl	$.LC15, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L64:
	movb	$1, -9(%ebp)
	jmp	.L65
.L60:
	movzbl	opt+430, %eax
	testb	%al, %al
	je	.L66
	movl	$.LC16, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movb	$0, -9(%ebp)
	jmp	.L65
.L66:
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	$32, %eax
	jmp	.L62
.L65:
	movl	16(%ebp), %eax
	movzbl	-9(%ebp), %edx
	not	%dl
	not	%dl
	movb	%dl, (%eax)
	movl	$0, %eax
.L62:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE30:
	.size	init_control_ssl_connection, .-init_control_ssl_connection
	.section	.rodata
.LC17:
	.string	"anonymous"
.LC18:
	.string	"-wget@"
	.align 4
.LC20:
	.string	"Could not initialize SSL. It will be disabled."
	.align 4
.LC21:
	.string	"Implicit FTPS was specified. Rewriting default port to %d.\n"
.LC22:
	.string	"Logging in as %s ... "
.LC23:
	.string	"@"
	.align 4
.LC24:
	.string	"Error in server response, closing control connection.\n"
.LC25:
	.string	"Error in server greeting.\n"
	.align 4
.LC26:
	.string	"Write failed, closing control connection.\n"
.LC27:
	.string	"The server refuses login.\n"
.LC28:
	.string	"Login incorrect.\n"
.LC29:
	.string	"Logged in!\n"
.LC30:
	.string	"==> PBSZ 0 ... "
	.align 4
.LC31:
	.string	"Server did not accept the 'PBSZ 0' command.\n"
.LC32:
	.string	"done."
.LC33:
	.string	"  ==> PROT %c ... "
	.align 4
.LC34:
	.string	"Server did not accept the 'PROT %c' command.\n"
.LC35:
	.string	"done.\n"
.LC36:
	.string	"==> SYST ... "
	.align 4
.LC37:
	.string	"Server error, can't determine system type.\n"
.LC38:
	.string	"done.    "
	.align 4
.LC39:
	.string	"\nVMS: I know it and I will use \"LIST\" as standard list command\n"
	.align 4
.LC40:
	.string	"\nUNIX MultiNet: I know it and I will use \"LIST\" as standard list command\n"
	.align 4
.LC41:
	.string	"\nUNIX TYPE L8: I know it and I will use \"LIST -a\" as standard list command\n"
.LC42:
	.string	"==> PWD ... "
.LC43:
	.string	"/"
.LC44:
	.string	"==> TYPE %c ... "
	.align 4
.LC45:
	.string	"Unknown type `%c', closing control connection.\n"
.LC46:
	.string	"done.  "
.LC47:
	.string	"==> CWD not needed.\n"
.LC48:
	.string	"changing working directory\n"
	.align 4
.LC49:
	.string	"Prepended initial PWD to relative path:\n"
	.align 4
.LC50:
	.string	"   pwd: '%s'\n   old: '%s'\n  new: '%s'\n"
	.align 4
.LC51:
	.string	"Using two-step CWD for relative path.\n"
	.align 4
.LC52:
	.string	"Using extra \"CWD []\" step for VMS server.\n"
.LC53:
	.string	"[]"
	.align 4
.LC54:
	.string	"Logically impossible section reached in getftp()"
	.align 4
.LC55:
	.string	"cwd_count: %d\ncwd_start: %d\ncwd_end: %d\n"
.LC56:
	.string	"==> CWD (%d) %s ... "
.LC57:
	.string	"No such directory %s.\n\n"
.LC58:
	.string	"==> CWD not required.\n"
.LC59:
	.string	"==> SIZE %s ... "
.LC60:
	.string	"%s\n"
	.align 4
.LC61:
	.string	"File has already been retrieved.\n"
	.align 4
.LC62:
	.string	"Cannot initiate PASV transfer.\n"
.LC63:
	.string	"Cannot parse PASV response.\n"
	.align 4
.LC64:
	.string	"trying to connect to %s port %d\n"
	.align 4
.LC65:
	.string	"couldn't connect to %s port %d: %s\n"
.LC66:
	.string	"socket: %s\n"
.LC67:
	.string	"Bind error (%s).\n"
.LC68:
	.string	"Invalid PORT.\n"
.LC69:
	.string	"==> REST %s ... "
	.align 4
.LC70:
	.string	"\nREST failed, starting from scratch.\n"
.LC71:
	.string	"File %s exists.\n"
.LC72:
	.string	"No such file %s.\n"
.LC73:
	.string	"==> RETR %s ... "
.LC74:
	.string	"No such file %s.\n\n"
.LC75:
	.string	"==> LIST ... "
.LC76:
	.string	"."
	.align 4
.LC77:
	.string	"No such file or directory %s.\n\n"
	.align 4
.LC78:
	.string	"Lying FTP server found, adjusting.\n"
.LC79:
	.string	"accept: %s\n"
.LC80:
	.string	"ab"
.LC81:
	.string	"%s: %s\n"
.LC82:
	.string	"wb"
	.align 4
.LC83:
	.string	"%s has sprung into existence.\n"
	.align 4
.LC84:
	.string	"Server does not want to resume the SSL session. Trying with a new one.\n"
	.align 4
.LC85:
	.string	"Could not perform SSL handshake.\n"
	.align 4
.LC86:
	.string	"Resuming SSL session in data connection.\n"
	.align 4
.LC87:
	.string	"%s: %s, closing control connection.\n"
	.align 4
.LC88:
	.string	"%s (%s) - Data connection: %s; "
.LC89:
	.string	"%s (%s) - "
.LC90:
	.string	"Control connection closed.\n"
.LC91:
	.string	"Data transfer aborted.\n"
.LC92:
	.string	"425"
	.align 4
.LC93:
	.string	"FTPS server rejects new SSL sessions in the data connection.\n"
.LC94:
	.string	"r"
	.align 4
.LC95:
	.string	"LIST returned more data than \"LIST -a\": I will use \"LIST\" as standard list command\n"
	.align 4
.LC96:
	.string	"LIST returned less data than \"LIST -a\": I will use \"LIST -a\" as standard list command\n"
	.align 4
.LC97:
	.string	"LIST returned the same amount of data of \"LIST -a\": I will use \"LIST -a\" as standard list command\n"
	.align 4
.LC98:
	.string	"\"LIST -a\" failed: I will use \"LIST\" as standard list command\n"
	.text
	.type	getftp, @function
getftp:
.LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$300, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -220(%ebp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -224(%ebp)
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -232(%ebp)
	movl	20(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -228(%ebp)
	movl	24(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -236(%ebp)
	movl	28(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -248(%ebp)
	movl	32(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -244(%ebp)
	movl	36(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -240(%ebp)
	movl	44(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -252(%ebp)
	movl	48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -256(%ebp)
	movl	%gs:20, %eax
	not	%eax
	not	%eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	$25, -168(%ebp)
	movl	$0, -164(%ebp)
	movl	-240(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -128(%ebp)
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	movb	$0, -206(%ebp)
	movb	$0, -205(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movb	$0, -208(%ebp)
	movzbl	opt+432, %eax
	testb	%al, %al
	je	.L68
	movl	$67, %eax
	jmp	.L69
.L68:
	movl	$80, %eax
.L69:
	not	%eax
	not	%eax
	movl	%eax, -124(%ebp)
	movb	$0, -207(%ebp)
	movb	$0, -203(%ebp)
	movl	-236(%ebp), %ecx
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%ecx)
	not	%edx
	not	%edx
	movl	%edx, 4(%ecx)
	movl	-220(%ebp), %eax
	movl	40(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -188(%ebp)
	movl	-220(%ebp), %eax
	movl	44(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -184(%ebp)
	movl	-220(%ebp), %eax
	movl	8(%eax), %eax
	movl	$1, 12(%esp)
	leal	-184(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	leal	-188(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	search_netrc
	movl	-188(%ebp), %eax
	testl	%eax, %eax
	jne	.L70
	movl	opt+196, %eax
	testl	%eax, %eax
	je	.L71
	movl	opt+196, %eax
	jmp	.L73
.L71:
	movl	opt+176, %eax
	jmp	.L73
.L70:
	movl	-188(%ebp), %eax
.L73:
	not	%eax
	not	%eax
	movl	%eax, -188(%ebp)
	movl	-188(%ebp), %eax
	testl	%eax, %eax
	jne	.L74
	movl	$.LC17, -188(%ebp)
.L74:
	movl	-184(%ebp), %eax
	testl	%eax, %eax
	jne	.L75
	movl	opt+200, %eax
	testl	%eax, %eax
	je	.L76
	movl	opt+200, %eax
	jmp	.L78
.L76:
	movl	opt+180, %eax
	jmp	.L78
.L75:
	movl	-184(%ebp), %eax
.L78:
	not	%eax
	not	%eax
	movl	%eax, -184(%ebp)
	movl	-184(%ebp), %eax
	testl	%eax, %eax
	jne	.L79
	movl	$.LC18, -184(%ebp)
.L79:
	movl	$-1, -172(%ebp)
	movl	$-1, -196(%ebp)
	movl	-240(%ebp), %eax
	fldz
	fstpl	12(%eax)
	movl	-220(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$3, %eax
	jne	.L80
	call	ssl_init
	xorl	$1, %eax
	testb	%al, %al
	je	.L81
	movl	$3, (%esp)
	call	scheme_disable
	movl	$.LC20, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	$45, -168(%ebp)
	movl	-168(%ebp), %eax
	jmp	.L319
.L81:
	movzbl	opt+431, %eax
	testb	%al, %al
	je	.L80
	movl	-220(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$21, %eax
	jne	.L80
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L83
	movl	$990, 4(%esp)
	movl	$.LC21, (%esp)
	call	debug_logprintf
.L83:
	movl	-220(%ebp), %eax
	movl	$990, 12(%eax)
.L80:
	movl	-128(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L84
	movl	-240(%ebp), %eax
	movl	8(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -200(%ebp)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	setne	%al
	not	%al
	not	%al
	movb	%al, -203(%ebp)
	jmp	.L85
.L84:
	movl	-240(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L86
	movl	-240(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%eax), %eax
	jmp	.L87
.L86:
	movl	-220(%ebp), %eax
	movl	8(%eax), %eax
.L87:
	not	%eax
	not	%eax
	movl	%eax, -120(%ebp)
	movl	-240(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L88
	movl	-240(%ebp), %eax
	movl	36(%eax), %eax
	movl	12(%eax), %eax
	jmp	.L89
.L88:
	movl	-220(%ebp), %eax
	movl	12(%eax), %eax
.L89:
	not	%eax
	not	%eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	connect_to_host
	not	%eax
	not	%eax
	movl	%eax, -200(%ebp)
	movl	-200(%ebp), %eax
	cmpl	$-100, %eax
	jne	.L90
	movl	$1, %eax
	jmp	.L319
.L90:
	movl	-200(%ebp), %eax
	testl	%eax, %eax
	jns	.L91
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	retryable_socket_connect_error
	testb	%al, %al
	je	.L92
	movl	$3, %eax
	jmp	.L93
.L92:
	movl	$5, %eax
.L93:
	jmp	.L319
.L91:
	movl	-128(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L94
	movl	-200(%ebp), %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 8(%eax)
	jmp	.L95
.L94:
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
.L95:
	movl	-220(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$3, %eax
	jne	.L96
	movzbl	opt+431, %eax
	testb	%al, %al
	je	.L97
	movl	-200(%ebp), %eax
	leal	-207(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	movl	-220(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	init_control_ssl_connection
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$0, -168(%ebp)
	je	.L98
	movl	-168(%ebp), %eax
	jmp	.L319
.L98:
	movl	-200(%ebp), %eax
	movl	-240(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	get_ftp_greeting
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$7, -168(%ebp)
	je	.L99
	movl	-168(%ebp), %eax
	jmp	.L319
.L97:
	movl	-200(%ebp), %eax
	movl	-240(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	get_ftp_greeting
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$7, -168(%ebp)
	je	.L100
	movl	-168(%ebp), %eax
	jmp	.L319
.L100:
	movl	-200(%ebp), %eax
	leal	-207(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	movl	-220(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	init_control_ssl_connection
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$0, -168(%ebp)
	je	.L99
	movl	-168(%ebp), %eax
	jmp	.L319
.L96:
	movl	-200(%ebp), %eax
	movl	-240(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	get_ftp_greeting
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$7, -168(%ebp)
	je	.L99
	movl	-168(%ebp), %eax
	jmp	.L319
.L99:
	movl	-188(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	quotearg_style
	movl	%eax, %ebx
	movl	$.LC22, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	movzbl	opt+328, %eax
	testb	%al, %al
	je	.L101
	movl	$.LC12, 4(%esp)
	movl	$3, (%esp)
	call	logputs
.L101:
	movl	-240(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L102
	movl	-220(%ebp), %eax
	movl	8(%eax), %edx
	movl	-188(%ebp), %eax
	movl	$0, 12(%esp)
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	movl	$.LC23, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	concat_strings
	not	%eax
	not	%eax
	movl	%eax, -112(%ebp)
	movl	-184(%ebp), %edx
	movl	-200(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	movl	-112(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_login
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	movl	-112(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -112(%ebp)
	jmp	.L103
.L102:
	movl	-184(%ebp), %ecx
	movl	-188(%ebp), %edx
	movl	-200(%ebp), %eax
	not	%ecx
	not	%ecx
	movl	%ecx, 8(%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_login
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
.L103:
	movl	-168(%ebp), %eax
	subl	$7, %eax
	cmpl	$37, %eax
	ja	.L104
	movl	.L106(,%eax,4), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L106:
	.long	.L105
	.long	.L107
	.long	.L108
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L109
	.long	.L110
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L104
	.long	.L111
	.text
.L109:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L110:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC25, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L111:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC26, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L108:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC27, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	$9, %eax
	jmp	.L319
.L107:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC28, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	$8, %eax
	jmp	.L319
.L105:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L112
	movl	$.LC29, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	jmp	.L113
.L112:
	jmp	.L113
.L104:
	call	abort
.L113:
	movzbl	-207(%ebp), %eax
	testb	%al, %al
	je	.L114
	movl	-220(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$3, %eax
	jne	.L114
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L115
	movl	$.LC30, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L115:
	movl	-200(%ebp), %eax
	movl	$0, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_pbsz
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$30, -168(%ebp)
	jne	.L116
	movl	$.LC31, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-168(%ebp), %eax
	jmp	.L319
.L116:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L117
	movl	$.LC32, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L117:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L118
	movl	-124(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC33, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L118:
	movl	-200(%ebp), %eax
	movl	-124(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_prot
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$31, -168(%ebp)
	jne	.L119
	movl	$.LC34, (%esp)
	call	gettext
	movl	-124(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-168(%ebp), %eax
	jmp	.L319
.L119:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L120
	movl	$.LC35, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L120:
	cmpl	$67, -124(%ebp)
	je	.L114
	movb	$1, -203(%ebp)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
.L114:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L121
	movl	$.LC36, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L121:
	movl	-240(%ebp), %eax
	leal	24(%eax), %ecx
	movl	-240(%ebp), %eax
	leal	20(%eax), %edx
	movl	-200(%ebp), %eax
	not	%ecx
	not	%ecx
	movl	%ecx, 8(%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_syst
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	cmpl	$14, %eax
	je	.L123
	cmpl	$15, %eax
	je	.L124
	cmpl	$7, %eax
	je	.L328
	jmp	.L324
.L123:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L124:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC37, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	jmp	.L126
.L324:
	call	abort
.L328:
	nop
.L126:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L127
	cmpl	$15, -168(%ebp)
	je	.L127
	movl	$.LC38, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L127:
	movl	-240(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L129
	cmpl	$1, %eax
	je	.L130
	jmp	.L132
.L130:
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L131
	movl	$.LC39, (%esp)
	call	debug_logprintf
.L131:
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	jmp	.L132
.L129:
	movl	-240(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	$1, %eax
	jne	.L133
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L134
	movl	$.LC40, (%esp)
	call	debug_logprintf
.L134:
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	jmp	.L135
.L133:
	movl	-240(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L135
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L136
	movl	$.LC41, (%esp)
	call	debug_logprintf
.L136:
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	jmp	.L329
.L135:
.L329:
	nop
.L132:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L137
	movl	$.LC42, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L137:
	movl	-240(%ebp), %eax
	leal	28(%eax), %edx
	movl	-200(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_pwd
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	cmpl	$14, %eax
	je	.L139
	cmpl	$15, %eax
	je	.L140
	cmpl	$7, %eax
	je	.L330
	jmp	.L325
.L139:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L140:
	movl	-240(%ebp), %eax
	movl	28(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	-240(%ebp), %eax
	movl	$0, 28(%eax)
	movl	$.LC43, (%esp)
	call	xstrdup
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 28(%eax)
	jmp	.L142
.L325:
	call	abort
.L330:
	nop
.L142:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L143
	movl	$.LC35, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L143:
	movl	-220(%ebp), %eax
	movl	20(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_process_type
	not	%al
	not	%al
	movb	%al, -201(%ebp)
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L144
	movsbl	-201(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC44, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L144:
	movsbl	-201(%ebp), %edx
	movl	-200(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_type
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	cmpl	$13, %eax
	je	.L146
	cmpl	$13, %eax
	ja	.L147
	cmpl	$7, %eax
	je	.L331
	jmp	.L145
.L147:
	cmpl	$14, %eax
	je	.L149
	cmpl	$44, %eax
	je	.L150
	jmp	.L145
.L149:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L150:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC26, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L146:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movsbl	-201(%ebp), %ebx
	movl	$.LC45, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L145:
	call	abort
.L331:
	nop
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L85
	movl	$.LC46, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L85:
	movl	-128(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L152
	movl	-220(%ebp), %eax
	movl	32(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L153
	movl	$.LC47, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	jmp	.L185
.L153:
	movl	$0, -156(%ebp)
	movl	-220(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -140(%ebp)
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L155
	movl	$.LC48, (%esp)
	call	debug_logprintf
.L155:
	movl	-140(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L156
	movl	-240(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L157
	movl	-140(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	c_isalpha
	xorl	$1, %eax
	testb	%al, %al
	jne	.L157
	movl	-140(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	je	.L156
.L157:
	movl	-240(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$4, %eax
	je	.L156
	movl	-240(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$1, %eax
	je	.L156
	movl	-240(%ebp), %eax
	movl	28(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strlen
	not	%eax
	not	%eax
	movl	%eax, -136(%ebp)
	jmp	.L158
.L160:
	subl	$1, -136(%ebp)
.L158:
	cmpl	$0, -136(%ebp)
	jle	.L159
	movl	-240(%ebp), %eax
	movl	28(%eax), %eax
	movl	-136(%ebp), %edx
	subl	$1, %edx
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L160
.L159:
	movl	-220(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strlen
	movl	-136(%ebp), %edx
	addl	%edx, %eax
	addl	$2, %eax
	leal	15(%eax), %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %edi
	movl	$0, %edx
	divl	%edi
	imull	$16, %eax, %eax
	subl	%eax, %esp
	leal	48(%esp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	not	%eax
	not	%eax
	movl	%eax, -108(%ebp)
	movl	-108(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -104(%ebp)
	movl	-136(%ebp), %edx
	movl	-240(%ebp), %eax
	movl	28(%eax), %eax
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	memcpy
	movl	-136(%ebp), %eax
	addl	%eax, -104(%ebp)
	movl	-104(%ebp), %eax
	leal	1(%eax), %edx
	not	%edx
	not	%edx
	movl	%edx, -104(%ebp)
	movb	$47, (%eax)
	movl	-140(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strcpy
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L161
	movl	$.LC49, (%esp)
	call	debug_logprintf
.L161:
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L162
	movl	-240(%ebp), %eax
	movl	28(%eax), %eax
	movl	-108(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 12(%esp)
	movl	-140(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$.LC50, (%esp)
	call	debug_logprintf
.L162:
	movl	-108(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -140(%ebp)
.L156:
	movl	-240(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$1, %eax
	jne	.L163
	movl	-140(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L163
	movl	$0, -144(%ebp)
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L164
	movl	$.LC51, (%esp)
	call	debug_logprintf
	jmp	.L165
.L164:
	jmp	.L165
.L163:
	movl	$1, -144(%ebp)
.L165:
	movl	-240(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$1, %eax
	jne	.L166
	movl	$47, 4(%esp)
	movl	-140(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strchr
	testl	%eax, %eax
	je	.L166
	movl	$3, -148(%ebp)
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L167
	movl	$.LC52, (%esp)
	call	debug_logprintf
	jmp	.L168
.L167:
	jmp	.L168
.L166:
	movl	$2, -148(%ebp)
.L168:
	movl	-144(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -152(%ebp)
	jmp	.L169
.L184:
	movl	-152(%ebp), %eax
	cmpl	$1, %eax
	je	.L171
	cmpl	$2, %eax
	je	.L172
	testl	%eax, %eax
	jne	.L326
	movl	-240(%ebp), %eax
	movl	28(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -156(%ebp)
	jmp	.L174
.L171:
	movl	-140(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -156(%ebp)
	jmp	.L174
.L172:
	movl	$.LC53, -156(%ebp)
	jmp	.L174
.L326:
	movl	$.LC54, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	logprintf
	movl	$.LC55, (%esp)
	call	gettext
	movl	-148(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 16(%esp)
	movl	-144(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 12(%esp)
	movl	-152(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	logprintf
	call	abort
.L174:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L175
	movl	-140(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	quotearg_style
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	-152(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC56, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L175:
	movl	-200(%ebp), %eax
	movl	-156(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_cwd
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	cmpl	$12, %eax
	je	.L177
	cmpl	$12, %eax
	ja	.L178
	cmpl	$7, %eax
	je	.L332
	jmp	.L176
.L178:
	cmpl	$14, %eax
	je	.L180
	cmpl	$44, %eax
	je	.L181
	jmp	.L176
.L180:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L181:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC26, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L177:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	-220(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC57, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L176:
	call	abort
.L332:
	nop
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L183
	movl	$.LC35, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L183:
	addl	$1, -152(%ebp)
.L169:
	movl	-152(%ebp), %eax
	cmpl	-148(%ebp), %eax
	jl	.L184
	jmp	.L185
.L152:
	movl	$.LC58, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L185:
	movl	-128(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L186
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L186
	movl	opt, %eax
	testl	%eax, %eax
	je	.L187
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L187
	movl	-220(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	quotearg_style
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC59, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L187:
	movl	-220(%ebp), %eax
	movl	36(%eax), %edx
	movl	-200(%ebp), %eax
	leal	-80(%ebp), %ecx
	not	%ecx
	not	%ecx
	movl	%ecx, 8(%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_size
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	cmpl	$7, %eax
	je	.L189
	cmpl	$7, %eax
	jb	.L188
	subl	$14, %eax
	cmpl	$1, %eax
	ja	.L188
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L189:
	movb	$1, -206(%ebp)
	nop
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L186
	jmp	.L327
.L188:
	call	abort
.L327:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L192
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	number_to_static_string
	jmp	.L193
.L192:
	movl	$.LC35, (%esp)
	call	gettext
.L193:
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC60, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L186:
	movl	-128(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L194
	cmpl	$0, -244(%ebp)
	js	.L194
	cmpl	$0, -244(%ebp)
	jg	.L321
	cmpl	$0, -248(%ebp)
	jbe	.L194
.L321:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %ecx
	xorl	-244(%ebp), %ecx
	xorl	-248(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L194
	movl	$.LC61, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	$35, %eax
	jmp	.L319
.L194:
	movb	$0, -204(%ebp)
	movl	-128(%ebp), %eax
	andl	$12, %eax
	testl	%eax, %eax
	je	.L196
	movzbl	opt+206, %eax
	testb	%al, %al
	je	.L197
	movl	-200(%ebp), %eax
	leal	-176(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	leal	-52(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_do_pasv
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	subl	$7, %eax
	cmpl	$37, %eax
	ja	.L198
	movl	.L200(,%eax,4), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L200:
	.long	.L333
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L201
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L202
	.long	.L203
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L198
	.long	.L204
	.text
.L201:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L204:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC26, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-168(%ebp), %eax
	jmp	.L319
.L203:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC62, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	jmp	.L206
.L202:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC63, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	jmp	.L206
.L198:
	call	abort
.L333:
	nop
.L206:
	cmpl	$7, -168(%ebp)
	jne	.L207
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L208
	movl	-176(%ebp), %ebx
	leal	-52(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	print_address
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$.LC64, (%esp)
	call	debug_logprintf
.L208:
	movl	-176(%ebp), %eax
	movl	$0, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	connect_to_ip
	not	%eax
	not	%eax
	movl	%eax, -172(%ebp)
	cmpl	$0, -172(%ebp)
	jns	.L209
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -100(%ebp)
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-100(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	movl	%eax, %esi
	movl	-176(%ebp), %edi
	leal	-52(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	print_address
	movl	%eax, %ebx
	movl	$.LC65, (%esp)
	call	gettext
	not	%esi
	not	%esi
	movl	%esi, 16(%esp)
	not	%edi
	not	%edi
	movl	%edi, 12(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	movl	-100(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	retryable_socket_connect_error
	testb	%al, %al
	je	.L210
	movl	$3, %eax
	jmp	.L211
.L210:
	movl	$5, %eax
.L211:
	jmp	.L319
.L209:
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L212
	movl	$.LC38, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	jmp	.L196
.L212:
	jmp	.L196
.L207:
	movl	-168(%ebp), %eax
	jmp	.L319
.L197:
	movl	-200(%ebp), %eax
	leal	-196(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_do_port
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$44, -168(%ebp)
	ja	.L213
	movl	-168(%ebp), %eax
	sall	$2, %eax
	addl	$.L215, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L215:
	.long	.L213
	.long	.L213
	.long	.L214
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L334
	.long	.L213
	.long	.L213
	.long	.L217
	.long	.L218
	.long	.L213
	.long	.L213
	.long	.L219
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L213
	.long	.L220
	.text
.L219:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L220:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC26, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L214:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC66, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L218:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	movl	%eax, %ebx
	movl	$.LC67, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L217:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC68, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L213:
	call	abort
.L334:
	nop
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L196
	movl	$.LC38, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L196:
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L222
	movl	-128(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L222
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L223
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	number_to_static_string
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC69, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L223:
	movl	-200(%ebp), %ecx
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%ecx
	not	%ecx
	movl	%ecx, (%esp)
	call	ftp_rest
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	cmpl	$14, %eax
	je	.L225
	cmpl	$14, %eax
	ja	.L226
	cmpl	$7, %eax
	je	.L335
	jmp	.L224
.L226:
	cmpl	$17, %eax
	je	.L228
	cmpl	$44, %eax
	je	.L229
	jmp	.L224
.L225:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L229:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC26, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L228:
	movl	$.LC70, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movb	$1, -205(%ebp)
	jmp	.L230
.L224:
	call	abort
.L335:
	nop
.L230:
	cmpl	$17, -168(%ebp)
	je	.L222
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L222
	movl	$.LC38, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L222:
	movl	-128(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L231
	movzbl	opt+68, %eax
	testb	%al, %al
	je	.L232
	movb	$0, -202(%ebp)
	leal	-176(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	-240(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	-224(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-220(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_get_listing
	not	%eax
	not	%eax
	movl	%eax, -96(%ebp)
	movl	-240(%ebp), %eax
	movl	4(%eax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	cmpl	$25, -96(%ebp)
	jne	.L233
	jmp	.L234
.L237:
	movl	-220(%ebp), %eax
	movl	36(%eax), %edx
	movl	-176(%ebp), %eax
	movl	4(%eax), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strcmp
	testl	%eax, %eax
	jne	.L235
	movb	$1, -202(%ebp)
	jmp	.L236
.L235:
	movl	-176(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -176(%ebp)
.L234:
	movl	-176(%ebp), %eax
	testl	%eax, %eax
	jne	.L237
.L236:
	cmpb	$0, -202(%ebp)
	je	.L238
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	-220(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC71, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	jmp	.L233
.L238:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	-220(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC72, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
.L233:
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	$35, %eax
	jmp	.L319
.L232:
	movl	opt, %eax
	testl	%eax, %eax
	je	.L239
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L239
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L240
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L240:
	movl	-220(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	quotearg_style
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC73, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L239:
	movl	-220(%ebp), %eax
	movl	36(%eax), %edx
	movl	-200(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_retr
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	cmpl	$12, %eax
	je	.L242
	cmpl	$12, %eax
	ja	.L243
	cmpl	$7, %eax
	je	.L336
	jmp	.L241
.L243:
	cmpl	$14, %eax
	je	.L245
	cmpl	$44, %eax
	je	.L246
	jmp	.L241
.L245:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L246:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC26, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L242:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	-220(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC74, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L241:
	call	abort
.L336:
	nop
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L248
	movl	$.LC35, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L248:
	movzbl	-206(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L231
	movl	-252(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -80(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -76(%ebp)
.L231:
	movl	-128(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L249
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L250
	movl	$.LC75, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L250:
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ecx
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-200(%ebp), %eax
	leal	-208(%ebp), %ebx
	not	%ebx
	not	%ebx
	movl	%ebx, 16(%esp)
	not	%ecx
	not	%ecx
	movl	%ecx, 12(%esp)
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_list
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	cmpl	$12, %eax
	je	.L252
	cmpl	$12, %eax
	ja	.L253
	cmpl	$7, %eax
	je	.L337
	jmp	.L251
.L253:
	cmpl	$14, %eax
	je	.L255
	cmpl	$44, %eax
	je	.L256
	jmp	.L251
.L255:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC24, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L256:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC26, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L252:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	movl	$.LC76, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC77, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-168(%ebp), %eax
	jmp	.L319
.L251:
	call	abort
.L337:
	nop
	movzbl	opt+328, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L258
	movl	$.LC35, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logputs
.L258:
	movzbl	-206(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L249
	movl	-252(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -80(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -76(%ebp)
.L249:
	movl	-128(%ebp), %eax
	andl	$12, %eax
	testl	%eax, %eax
	je	.L259
	movzbl	opt+68, %eax
	testb	%al, %al
	je	.L260
	movl	-128(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L260
.L259:
	movl	$35, %eax
	jmp	.L319
.L260:
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L261
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L261
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L261
	movl	-248(%ebp), %ecx
	movl	-244(%ebp), %ebx
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.L261
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L262
	movl	$.LC78, (%esp)
	call	debug_logprintf
.L262:
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, -80(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -76(%ebp)
.L261:
	movzbl	opt+206, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L263
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	accept_connection
	not	%eax
	not	%eax
	movl	%eax, -172(%ebp)
	cmpl	$0, -172(%ebp)
	jns	.L263
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC79, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	$3, %eax
	jmp	.L319
.L263:
	movl	output_stream, %eax
	testl	%eax, %eax
	je	.L264
	movl	-240(%ebp), %eax
	movl	4(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L265
.L264:
	movl	-240(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	mkalldirs
	movl	opt+336, %eax
	testl	%eax, %eax
	je	.L266
	movl	-240(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	rotate_backups
.L266:
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L267
	movl	-240(%ebp), %eax
	movl	4(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L267
	movl	-240(%ebp), %eax
	movl	32(%eax), %eax
	movl	$.LC80, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fopen64
	not	%eax
	not	%eax
	movl	%eax, -164(%ebp)
	jmp	.L268
.L267:
	movzbl	opt+42, %eax
	testb	%al, %al
	jne	.L269
	movzbl	opt+185, %eax
	testb	%al, %al
	jne	.L269
	movzbl	opt+332, %eax
	testb	%al, %al
	jne	.L269
	movzbl	opt+32, %eax
	testb	%al, %al
	jne	.L269
	movl	opt+144, %eax
	testl	%eax, %eax
	jne	.L269
	cmpl	$0, 40(%ebp)
	jle	.L270
.L269:
	movzbl	opt+43, %eax
	testb	%al, %al
	je	.L271
	movl	-240(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	file_exists_p
	testb	%al, %al
	je	.L271
	movl	-240(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	unlink
	testl	%eax, %eax
	jns	.L271
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	movl	-240(%ebp), %edx
	movl	32(%edx), %edx
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	movl	$.LC81, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	$47, %eax
	jmp	.L319
.L271:
	movl	-240(%ebp), %eax
	movl	32(%eax), %eax
	movl	$.LC82, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fopen64
	not	%eax
	not	%eax
	movl	%eax, -164(%ebp)
	jmp	.L268
.L270:
	movl	-240(%ebp), %eax
	movl	32(%eax), %eax
	movl	$1, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fopen_excl
	not	%eax
	not	%eax
	movl	%eax, -164(%ebp)
	cmpl	$0, -164(%ebp)
	jne	.L268
	call	__errno_location
	movl	(%eax), %eax
	cmpl	$17, %eax
	jne	.L268
	movl	-240(%ebp), %eax
	movl	32(%eax), %ebx
	movl	$.LC83, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	$20, %eax
	jmp	.L319
.L268:
	cmpl	$0, -164(%ebp)
	jne	.L272
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	movl	-240(%ebp), %edx
	movl	32(%edx), %edx
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	movl	$.LC81, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	$19, %eax
	jmp	.L319
.L272:
	jmp	.L273
.L265:
	movl	output_stream, %eax
	not	%eax
	not	%eax
	movl	%eax, -164(%ebp)
.L273:
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L274
	movl	$1, 16(%esp)
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	not	%edx
	not	%edx
	movl	%edx, 12(%esp)
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	print_length
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, -80(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -76(%ebp)
	jmp	.L275
.L274:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L275
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	$0, 16(%esp)
	movl	-248(%ebp), %ecx
	movl	-244(%ebp), %ebx
	not	%ecx
	not	%ecx
	movl	%ecx, 8(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 12(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	print_length
.L275:
	movl	-220(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$3, %eax
	jne	.L276
	cmpb	$0, -203(%ebp)
	je	.L276
	movzbl	opt+429, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L277
	movl	-220(%ebp), %eax
	movl	8(%eax), %eax
	leal	-200(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ssl_connect_wget
	xorl	$1, %eax
	testb	%al, %al
	je	.L278
.L277:
	movzbl	opt+429, %eax
	testb	%al, %al
	je	.L279
	movl	$.LC84, 4(%esp)
	movl	$1, (%esp)
	call	logputs
.L279:
	movl	-220(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ssl_connect_wget
	xorl	$1, %eax
	testb	%al, %al
	je	.L280
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	$3, -168(%ebp)
	movl	$.LC85, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	jmp	.L281
.L280:
	jmp	.L282
.L278:
	movl	$.LC86, 4(%esp)
	movl	$1, (%esp)
	call	logputs
.L282:
	movl	-220(%ebp), %eax
	movl	8(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ssl_check_certificate
	xorl	$1, %eax
	testb	%al, %al
	je	.L276
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	$3, -168(%ebp)
	jmp	.L281
.L276:
	movl	$0, -160(%ebp)
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L283
	cmpb	$0, -205(%ebp)
	je	.L283
	orl	$2, -160(%ebp)
.L283:
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	-240(%ebp), %eax
	leal	12(%eax), %ebx
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L284
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	subl	-248(%ebp), %eax
	sbbl	-244(%ebp), %edx
	jmp	.L285
.L284:
	movl	$0, %eax
	movl	$0, %edx
.L285:
	movl	-240(%ebp), %ecx
	movl	32(%ecx), %esi
	movl	-256(%ebp), %ecx
	not	%ecx
	not	%ecx
	movl	%ecx, 44(%esp)
	movl	-160(%ebp), %ecx
	not	%ecx
	not	%ecx
	movl	%ecx, 40(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 36(%esp)
	movl	-236(%ebp), %ecx
	not	%ecx
	not	%ecx
	movl	%ecx, 32(%esp)
	leal	-72(%ebp), %ecx
	not	%ecx
	not	%ecx
	movl	%ecx, 28(%esp)
	movl	-248(%ebp), %ecx
	movl	-244(%ebp), %ebx
	not	%ecx
	not	%ecx
	movl	%ecx, 20(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 24(%esp)
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	not	%edx
	not	%edx
	movl	%edx, 16(%esp)
	movl	-164(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	not	%esi
	not	%esi
	movl	%esi, (%esp)
	call	fd_read_body
	not	%eax
	not	%eax
	movl	%eax, -92(%ebp)
	movl	$0, (%esp)
	call	time
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	datetime_str
	not	%eax
	not	%eax
	movl	%eax, -88(%ebp)
	movl	-240(%ebp), %eax
	fldl	12(%eax)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	fstpl	8(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	retr_rate
	not	%eax
	not	%eax
	movl	%eax, -84(%ebp)
	movl	-240(%ebp), %eax
	fldl	12(%eax)
	fldl	total_download_time
	faddp	%st, %st(1)
	fstpl	total_download_time
	movl	-196(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	output_stream, %eax
	testl	%eax, %eax
	je	.L286
	movl	-240(%ebp), %eax
	movl	4(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L287
.L286:
	movl	-164(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fclose
.L287:
	cmpl	$-2, -92(%ebp)
	je	.L288
	cmpl	$0, -256(%ebp)
	je	.L289
	cmpl	$-3, -92(%ebp)
	jne	.L289
.L288:
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	movl	%eax, %ebx
	movl	-240(%ebp), %eax
	movl	32(%eax), %esi
	movl	$.LC87, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 12(%esp)
	not	%esi
	not	%esi
	movl	%esi, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	cmpl	$-2, -92(%ebp)
	jne	.L290
	movl	$21, %eax
	jmp	.L319
.L290:
	cmpl	$-3, -92(%ebp)
	jne	.L291
	movl	$54, %eax
	jmp	.L319
.L291:
	jmp	.L292
.L289:
	cmpl	$-1, -92(%ebp)
	jne	.L292
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_errstr
	movl	%eax, %ebx
	movl	$.LC88, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 16(%esp)
	movl	-84(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 12(%esp)
	movl	-88(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	movzbl	opt+328, %eax
	testb	%al, %al
	je	.L292
	movl	$.LC12, 4(%esp)
	movl	$3, (%esp)
	call	logputs
.L292:
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-200(%ebp), %eax
	leal	-192(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_response
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$7, -168(%ebp)
	je	.L293
	cmpl	$-1, -92(%ebp)
	je	.L294
	movl	-84(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC89, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
.L294:
	movl	$.LC90, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
	movl	$16, %eax
	jmp	.L319
.L293:
	movl	-192(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_expected_bytes
	movl	-252(%ebp), %ecx
	not	%eax
	not	%eax
	movl	%eax, (%ecx)
	not	%edx
	not	%edx
	movl	%edx, 4(%ecx)
	movl	-192(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$50, %al
	je	.L295
	cmpl	$-1, -92(%ebp)
	je	.L296
	movl	-84(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC89, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
.L296:
	movl	$.LC91, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-192(%ebp), %eax
	movl	$3, 8(%esp)
	movl	$.LC92, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	c_strncasecmp
	testl	%eax, %eax
	jne	.L297
	movl	-220(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$3, %eax
	jne	.L297
	movl	$.LC93, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	movl	-192(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -192(%ebp)
	movl	$17, %eax
	jmp	.L319
.L297:
	movl	-192(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -192(%ebp)
	movl	$16, %eax
	jmp	.L319
.L295:
	movl	-192(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -192(%ebp)
	cmpl	$-1, -92(%ebp)
	jne	.L298
	movl	$16, %eax
	jmp	.L319
.L298:
	movl	-128(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L299
	movl	-200(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-240(%ebp), %eax
	movl	$-1, 8(%eax)
.L299:
	movl	-240(%ebp), %eax
	movl	4(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L300
	movzbl	opt+328, %eax
	testb	%al, %al
	je	.L301
	movl	-240(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	mkalldirs
	movl	-240(%ebp), %eax
	movl	32(%eax), %eax
	movl	$.LC94, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fopen64
	not	%eax
	not	%eax
	movl	%eax, -164(%ebp)
	cmpl	$0, -164(%ebp)
	jne	.L302
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	movl	-240(%ebp), %edx
	movl	32(%edx), %edx
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	movl	$.LC81, 4(%esp)
	movl	$3, (%esp)
	call	logprintf
	jmp	.L301
.L302:
	movl	$0, -180(%ebp)
	movl	$0, -176(%ebp)
	jmp	.L303
.L307:
	jmp	.L304
.L306:
	movl	-180(%ebp), %edx
	subl	$1, -132(%ebp)
	movl	-132(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
.L304:
	cmpl	$0, -132(%ebp)
	jle	.L305
	movl	-180(%ebp), %eax
	movl	-132(%ebp), %edx
	subl	$1, %edx
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	je	.L306
	movl	-180(%ebp), %eax
	movl	-132(%ebp), %edx
	subl	$1, %edx
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$13, %al
	je	.L306
.L305:
	movl	-180(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	quotearg_style
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC60, 4(%esp)
	movl	$3, (%esp)
	call	logprintf
.L303:
	movl	-164(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	leal	-176(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	leal	-180(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	getline
	not	%eax
	not	%eax
	movl	%eax, -132(%ebp)
	cmpl	$0, -132(%ebp)
	jg	.L307
	movl	-180(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -180(%ebp)
	movl	-164(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fclose
.L301:
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L300
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L308
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	cmpl	-60(%ebp), %edx
	jl	.L309
	cmpl	-60(%ebp), %edx
	jg	.L322
	cmpl	-64(%ebp), %eax
	jbe	.L309
.L322:
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L300
	movl	$.LC95, (%esp)
	call	debug_logprintf
	jmp	.L300
.L309:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	cmpl	%edx, -60(%ebp)
	jl	.L313
	cmpl	%edx, -60(%ebp)
	jg	.L323
	cmpl	%eax, -64(%ebp)
	jbe	.L313
.L323:
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movb	$1, -204(%ebp)
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L300
	movl	$.LC96, (%esp)
	call	debug_logprintf
	jmp	.L300
.L313:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L316
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	jmp	.L300
.L316:
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L300
	movl	$.LC97, (%esp)
	call	debug_logprintf
	jmp	.L300
.L308:
	movzbl	-208(%ebp), %eax
	testb	%al, %al
	je	.L317
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, -64(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -60(%ebp)
	movb	$1, -204(%ebp)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	jmp	.L300
.L317:
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movl	-240(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L300
	movl	$.LC98, (%esp)
	call	debug_logprintf
.L300:
	cmpb	$0, -204(%ebp)
	jne	.L194
	movl	$35, %eax
	jmp	.L319
.L281:
	cmpl	$0, -164(%ebp)
	je	.L318
	movl	output_stream, %eax
	testl	%eax, %eax
	jne	.L318
	movl	-164(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fclose
.L318:
	movl	-168(%ebp), %eax
.L319:
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L320
	call	__stack_chk_fail
.L320:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE31:
	.size	getftp, .-getftp
	.section	.rodata
	.align 4
.LC100:
	.string	"File %s already there; not retrieving.\n"
.LC101:
	.string	"(try:%2d)"
.LC102:
	.string	"--%s--  %s\n  %s => %s\n"
	.align 4
.LC103:
	.string	"Server does not support AUTH TLS.\n"
	.align 4
.LC104:
	.string	"Server does not like implicit FTPS connections.\n"
.LC105:
	.string	""
	.align 4
.LC106:
	.string	"%s (%s) - written to stdout %s[%s]\n\n"
.LC107:
	.string	"%s (%s) - %s saved [%s]\n\n"
.LC108:
	.string	"%s URL: %s [%s] -> \"%s\" [%d]\n"
	.align 4
.LC109:
	.string	"Removing file due to --delete-after in ftp_loop_internal():\n"
.LC110:
	.string	"Removing %s.\n"
.LC111:
	.string	"unlink: %s\n"
	.text
	.type	ftp_loop_internal, @function
ftp_loop_internal:
.LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$540, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, -476(%ebp)
	movl	12(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, -480(%ebp)
	movl	16(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, -484(%ebp)
	movl	20(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, -488(%ebp)
	movl	24(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, -492(%ebp)
	not	%al
	not	%al
	movb	%al, -496(%ebp)
	movl	%gs:20, %eax
	not	%eax
	not	%eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	$0, -392(%ebp)
	movl	$0, -388(%ebp)
	movl	$0, -416(%ebp)
	movl	$0, -412(%ebp)
	movl	$0, -448(%ebp)
	movl	opt+148, %eax
	testl	%eax, %eax
	setne	%al
	not	%al
	not	%al
	movb	%al, -459(%ebp)
	movl	$0, -444(%ebp)
	movl	$0, -440(%ebp)
	movl	$0, -408(%ebp)
	movl	$0, -404(%ebp)
	cmpl	$0, -484(%ebp)
	jne	.L339
	movl	-488(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L339
	movl	-488(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -452(%ebp)
	jmp	.L340
.L339:
	movl	-488(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	-488(%ebp), %eax
	movl	$0, 32(%eax)
	movzbl	opt+500, %eax
	testb	%al, %al
	jne	.L341
	cmpl	$0, -480(%ebp)
	jne	.L342
.L341:
	movl	-476(%ebp), %eax
	jmp	.L343
.L342:
	movl	-480(%ebp), %eax
.L343:
	movl	$0, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_file_name
	movl	-488(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, 32(%edx)
	movl	opt+144, %eax
	testl	%eax, %eax
	jne	.L344
	movl	-488(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -452(%ebp)
	jmp	.L340
.L344:
	movl	opt+144, %eax
	not	%eax
	not	%eax
	movl	%eax, -452(%ebp)
.L340:
	movzbl	opt+42, %eax
	testb	%al, %al
	je	.L345
	movl	opt+144, %eax
	testl	%eax, %eax
	jne	.L345
	movl	-488(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	file_exists_p
	testb	%al, %al
	je	.L345
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L346
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L345
.L346:
	movl	-488(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC100, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	movl	$25, %eax
	jmp	.L407
.L345:
	movl	-488(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	remove_link
	movl	$0, -456(%ebp)
	movl	-488(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L348
	movl	-488(%ebp), %eax
	movl	$1, (%eax)
.L348:
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	not	%eax
	not	%eax
	movl	%eax, -436(%ebp)
.L404:
	addl	$1, -456(%ebp)
	movl	-456(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	sleep_between_retrievals
	movl	-488(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L349
	movl	-488(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	orl	$20, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	movl	-488(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$-1, %eax
	je	.L350
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	jmp	.L352
.L350:
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	orl	$3, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	jmp	.L352
.L349:
	movl	-488(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$-1, %eax
	je	.L353
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	jmp	.L354
.L353:
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
.L354:
	movl	-488(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L355
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	jmp	.L352
.L355:
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
.L352:
	cmpb	$0, -459(%ebp)
	je	.L356
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L356
	cmpl	$0, -444(%ebp)
	jne	.L356
	call	warc_tempfile
	not	%eax
	not	%eax
	movl	%eax, -444(%ebp)
	cmpl	$0, -444(%ebp)
	jne	.L357
	movl	$53, %eax
	jmp	.L407
.L357:
	movl	-488(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L356
	movl	-488(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$-1, %eax
	je	.L356
	movl	$16, %eax
	subl	$1, %eax
	addl	$39, %eax
	movl	$16, %edi
	movl	$0, %edx
	divl	%edi
	imull	$16, %eax, %eax
	subl	%eax, %esp
	leal	44(%esp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	not	%eax
	not	%eax
	movl	%eax, -440(%ebp)
	movl	-488(%ebp), %eax
	movl	8(%eax), %eax
	movl	$1, 8(%esp)
	movl	-440(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	socket_ip_address
.L356:
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L358
	movl	$0, -400(%ebp)
	movl	$0, -396(%ebp)
	jmp	.L359
.L358:
	cmpb	$0, -496(%ebp)
	je	.L360
	movl	$0, -400(%ebp)
	movl	$0, -396(%ebp)
	jmp	.L359
.L360:
	movl	opt+188, %eax
	movl	opt+192, %edx
	testl	%edx, %edx
	js	.L361
	movl	opt+188, %eax
	movl	opt+192, %edx
	not	%eax
	not	%eax
	movl	%eax, -400(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -396(%ebp)
	jmp	.L359
.L361:
	movzbl	opt+185, %eax
	testb	%al, %al
	je	.L362
	leal	-380(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-452(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	stat64
	testl	%eax, %eax
	jne	.L362
	movl	-364(%ebp), %eax
	andl	$61440, %eax
	cmpl	$32768, %eax
	jne	.L362
	movl	-336(%ebp), %eax
	movl	-332(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, -400(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -396(%ebp)
	jmp	.L359
.L362:
	cmpl	$1, -456(%ebp)
	jle	.L363
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, -400(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -396(%ebp)
	jmp	.L359
.L363:
	movl	$0, -400(%ebp)
	movl	$0, -396(%ebp)
.L359:
	movl	$0, (%esp)
	call	time
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	datetime_str
	not	%eax
	not	%eax
	movl	%eax, -432(%ebp)
	movl	opt, %eax
	testl	%eax, %eax
	je	.L364
	movl	$1, 4(%esp)
	movl	-476(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_string
	not	%eax
	not	%eax
	movl	%eax, -428(%ebp)
	leal	-284(%ebp), %eax
	movl	$538976288, (%eax)
	movl	$538976288, 4(%eax)
	movb	$0, 8(%eax)
	cmpl	$1, -456(%ebp)
	jle	.L365
	movl	$.LC101, (%esp)
	call	gettext
	movl	-456(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	leal	-284(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	sprintf
.L365:
	movl	-452(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	not	%eax
	not	%eax
	movl	%eax, 20(%esp)
	leal	-284(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 16(%esp)
	movl	-428(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	-432(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC102, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	movl	-428(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -428(%ebp)
.L364:
	cmpl	$0, -484(%ebp)
	je	.L366
	movl	-484(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L366
	movl	-484(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -392(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -388(%ebp)
	jmp	.L367
.L366:
	movl	$0, -392(%ebp)
	movl	$0, -388(%ebp)
.L367:
	movl	-444(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 40(%esp)
	leal	-408(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 36(%esp)
	movl	-456(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 32(%esp)
	movl	-488(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 28(%esp)
	movl	-400(%ebp), %eax
	movl	-396(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, 20(%esp)
	not	%edx
	not	%edx
	movl	%edx, 24(%esp)
	leal	-416(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 16(%esp)
	movl	-392(%ebp), %eax
	movl	-388(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	not	%edx
	not	%edx
	movl	%edx, 12(%esp)
	movl	-480(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	getftp
	not	%eax
	not	%eax
	movl	%eax, -424(%ebp)
	movl	-488(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$-1, %eax
	jne	.L368
	movl	-488(%ebp), %eax
	movl	(%eax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	jmp	.L369
.L368:
	movl	-488(%ebp), %eax
	movl	(%eax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
.L369:
	cmpl	$54, -424(%ebp)
	ja	.L370
	movl	-424(%ebp), %eax
	sall	$2, %eax
	addl	$.L372, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L372:
	.long	.L370
	.long	.L371
	.long	.L373
	.long	.L373
	.long	.L371
	.long	.L371
	.long	.L370
	.long	.L370
	.long	.L371
	.long	.L373
	.long	.L373
	.long	.L373
	.long	.L371
	.long	.L373
	.long	.L373
	.long	.L373
	.long	.L374
	.long	.L370
	.long	.L370
	.long	.L371
	.long	.L373
	.long	.L371
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L373
	.long	.L371
	.long	.L371
	.long	.L371
	.long	.L371
	.long	.L371
	.long	.L370
	.long	.L409
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L373
	.long	.L370
	.long	.L370
	.long	.L371
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L370
	.long	.L371
	.text
.L371:
	cmpl	$32, -424(%ebp)
	jne	.L376
	movl	$.LC103, 4(%esp)
	movl	$1, (%esp)
	call	logputs
.L376:
	movzbl	opt+431, %eax
	testb	%al, %al
	je	.L377
	movl	$.LC104, 4(%esp)
	movl	$1, (%esp)
	call	logputs
.L377:
	cmpl	$0, -444(%ebp)
	je	.L378
	movl	-444(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fclose
.L378:
	movl	-424(%ebp), %eax
	jmp	.L407
.L373:
	movl	opt+8, %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-456(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	printwhat
	cmpl	$20, -424(%ebp)
	jne	.L379
	movl	-488(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	-488(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$0, 4(%esp)
	movl	-476(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_file_name
	movl	-488(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, 32(%edx)
	movl	-488(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -452(%ebp)
	jmp	.L380
.L379:
	jmp	.L380
.L374:
	cmpl	$0, -484(%ebp)
	je	.L381
	movl	-484(%ebp), %eax
	movl	8(%eax), %ecx
	movl	12(%eax), %ebx
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	je	.L382
.L381:
	movl	opt+8, %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-456(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	printwhat
	jmp	.L380
.L382:
	jmp	.L383
.L370:
	call	abort
.L409:
	nop
.L383:
	movl	$0, (%esp)
	call	time
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	datetime_str
	not	%eax
	not	%eax
	movl	%eax, -432(%ebp)
	movzbl	opt+68, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L384
	movl	-488(%ebp), %eax
	fldl	12(%eax)
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	subl	-400(%ebp), %eax
	sbbl	-396(%ebp), %edx
	fstpl	8(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	retr_rate
	not	%eax
	not	%eax
	movl	%eax, -448(%ebp)
.L384:
	movl	-452(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	downloaded_file
	movl	-488(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L385
	movl	-488(%ebp), %eax
	movl	8(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-488(%ebp), %eax
	movl	$-1, 8(%eax)
.L385:
	movzbl	opt+68, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L386
	movl	opt+144, %eax
	testl	%eax, %eax
	je	.L387
	movl	opt+144, %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L387
	movl	opt+144, %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L387
	movl	$1, %eax
	jmp	.L388
.L387:
	movl	$0, %eax
.L388:
	not	%al
	not	%al
	movb	%al, -458(%ebp)
	andb	$1, -458(%ebp)
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	number_to_static_string
	movl	%eax, %esi
	cmpb	$0, -458(%ebp)
	je	.L389
	movl	$.LC105, %ebx
	jmp	.L390
.L389:
	movl	-452(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
.L390:
	cmpb	$0, -458(%ebp)
	je	.L391
	movl	$.LC106, (%esp)
	call	gettext
	jmp	.L392
.L391:
	movl	$.LC107, (%esp)
	call	gettext
.L392:
	not	%esi
	not	%esi
	movl	%esi, 20(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 16(%esp)
	movl	-448(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 12(%esp)
	movl	-432(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L386:
	movl	opt, %eax
	testl	%eax, %eax
	jne	.L393
	movzbl	opt+4, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L393
	movl	$1, 4(%esp)
	movl	-476(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_string
	not	%eax
	not	%eax
	movl	%eax, -420(%ebp)
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	number_to_static_string
	movl	-456(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 24(%esp)
	movl	-452(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 20(%esp)
	not	%eax
	not	%eax
	movl	%eax, 16(%esp)
	movl	-420(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	-432(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC108, 4(%esp)
	movl	$2, (%esp)
	call	logprintf
	movl	-420(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -420(%ebp)
.L393:
	cmpb	$0, -459(%ebp)
	je	.L394
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L394
	movl	-476(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, 28(%esp)
	movl	$-1, 32(%esp)
	movl	-444(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 24(%esp)
	movl	$0, 20(%esp)
	movl	-440(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	warc_write_resource_record
	not	%al
	not	%al
	movb	%al, -457(%ebp)
	movzbl	-457(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L395
	movl	$52, %eax
	jmp	.L407
.L395:
	movl	$0, -444(%ebp)
.L394:
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L396
	movzbl	opt+350, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L398
	movl	total_downloaded_bytes, %ecx
	movl	total_downloaded_bytes+4, %ebx
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, total_downloaded_bytes
	movl	%edx, total_downloaded_bytes+4
	movl	numurls, %eax
	addl	$1, %eax
	movl	%eax, numurls
	jmp	.L398
.L396:
	movzbl	opt+68, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L398
	movl	total_downloaded_bytes, %ecx
	movl	total_downloaded_bytes+4, %ebx
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, total_downloaded_bytes
	movl	%edx, total_downloaded_bytes+4
	movl	numurls, %eax
	addl	$1, %eax
	movl	%eax, numurls
	movzbl	opt+372, %eax
	testb	%al, %al
	je	.L398
	movl	opt+52, %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	input_file_url
	xorl	$1, %eax
	testb	%al, %al
	je	.L398
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L399
	movl	$.LC109, (%esp)
	call	debug_logprintf
.L399:
	movl	$.LC110, (%esp)
	call	gettext
	movl	-452(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	movl	-452(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	unlink
	testl	%eax, %eax
	je	.L398
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC111, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
.L398:
	cmpl	$0, -436(%ebp)
	je	.L400
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	jmp	.L401
.L400:
	movl	-488(%ebp), %eax
	movl	4(%eax), %eax
	andl	$-17, %eax
	movl	%eax, %edx
	movl	-488(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
.L401:
	cmpl	$0, -492(%ebp)
	je	.L402
	movl	-452(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	xstrdup
	movl	%eax, %edx
	movl	-492(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
.L402:
	cmpl	$0, -444(%ebp)
	je	.L403
	movl	-444(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fclose
.L403:
	movl	$25, %eax
	jmp	.L407
.L380:
	movl	opt+8, %eax
	testl	%eax, %eax
	je	.L404
	movl	opt+8, %eax
	cmpl	-456(%ebp), %eax
	jg	.L404
	movl	-488(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$-1, %eax
	je	.L405
	movl	-488(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L405
	movl	-488(%ebp), %eax
	movl	8(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
	movl	-488(%ebp), %eax
	movl	$-1, 8(%eax)
.L405:
	cmpl	$0, -444(%ebp)
	je	.L406
	movl	-444(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fclose
.L406:
	movl	$37, %eax
.L407:
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L408
	call	__stack_chk_fail
.L408:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE32:
	.size	ftp_loop_internal, .-ftp_loop_internal
	.section	.rodata
.LC112:
	.string	".listing"
	.align 4
.LC113:
	.string	"Using %s as listing tmp file.\n"
.LC114:
	.string	"Removed %s.\n"
	.text
	.type	ftp_get_listing, @function
ftp_get_listing:
.LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	16(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	orl	$24, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_file_name
	not	%eax
	not	%eax
	movl	%eax, -20(%ebp)
	movl	$.LC112, 4(%esp)
	movl	-20(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	file_merge
	not	%eax
	not	%eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -20(%ebp)
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L411
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC113, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	debug_logprintf
.L411:
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	xstrdup
	movl	%eax, %edx
	movl	16(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 32(%eax)
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -16(%ebp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_loop_internal
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	xstrdup
	not	%eax
	not	%eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	16(%ebp), %eax
	movl	$0, 32(%eax)
	movl	16(%ebp), %eax
	movl	-24(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 32(%eax)
	cmpl	$25, -12(%ebp)
	jne	.L412
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_parse_ls
	movl	20(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%edx)
	movzbl	opt+350, %eax
	testb	%al, %al
	je	.L415
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	unlink
	testl	%eax, %eax
	je	.L414
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC111, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	jmp	.L415
.L414:
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC114, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	jmp	.L415
.L412:
	movl	20(%ebp), %eax
	movl	$0, (%eax)
.L415:
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -16(%ebp)
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE33:
	.size	ftp_get_listing, .-ftp_get_listing
	.section	.rodata
	.align 4
.LC115:
	.string	"Recursion depth %d exceeded max. depth %d.\n"
	.align 4
.LC116:
	.string	"Remote file no newer than local file %s -- not retrieving.\n"
	.align 4
.LC117:
	.string	"Remote file is newer than local file %s -- retrieving.\n\n"
	.align 4
.LC118:
	.string	"The sizes do not match (local %s) -- retrieving.\n\n"
	.align 4
.LC119:
	.string	"Invalid name of the symlink, skipping.\n"
	.align 4
.LC120:
	.string	"Already have correct symlink %s -> %s\n\n"
.LC121:
	.string	"Creating symlink %s -> %s\n"
.LC122:
	.string	"symlink: %s\n"
.LC123:
	.string	"Skipping directory %s.\n"
	.align 4
.LC124:
	.string	"%s: unknown/unsupported file type.\n"
	.align 4
.LC125:
	.string	"Unrecognized permissions for %s.\n"
.LC126:
	.string	"%s: corrupt time-stamp.\n"
	.align 4
.LC127:
	.string	"Will not retrieve dirs since depth is %d (max %d).\n"
	.text
	.type	ftp_retrieve_list, @function
ftp_retrieve_list:
.LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$204, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$0, -168(%ebp)
	movb	$0, -171(%ebp)
	movl	depth.7149, %eax
	addl	$1, %eax
	movl	%eax, depth.7149
	movl	opt+28, %eax
	cmpl	$-1, %eax
	je	.L418
	movl	opt+28, %edx
	movl	depth.7149, %eax
	cmpl	%eax, %edx
	jge	.L418
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L419
	movl	opt+28, %esi
	movl	depth.7149, %ebx
	movl	$.LC115, (%esp)
	call	gettext
	not	%esi
	not	%esi
	movl	%esi, 8(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	debug_logprintf
.L419:
	movl	depth.7149, %eax
	subl	$1, %eax
	movl	%eax, depth.7149
	movl	$26, %eax
	jmp	.L461
.L418:
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -160(%ebp)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L421
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	jmp	.L422
.L421:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
.L422:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	orl	$20, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	movl	20(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jns	.L423
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	jmp	.L424
.L423:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
.L424:
	movl	$25, -164(%ebp)
	jmp	.L425
.L457:
	movl	opt+320, %eax
	movl	opt+324, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L426
	movl	opt+320, %ecx
	movl	opt+324, %ebx
	movl	total_downloaded_bytes, %eax
	movl	total_downloaded_bytes+4, %edx
	cmpl	%edx, %ebx
	jg	.L426
	cmpl	%edx, %ebx
	jl	.L462
	cmpl	%eax, %ecx
	jnb	.L426
.L462:
	movl	depth.7149, %eax
	subl	$1, %eax
	movl	%eax, depth.7149
	movl	$43, %eax
	jmp	.L461
.L426:
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -156(%ebp)
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	xstrdup
	not	%eax
	not	%eax
	movl	%eax, -152(%ebp)
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_set_file
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_file_name
	movl	20(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, 32(%edx)
	movl	$25, -164(%ebp)
	movb	$1, -172(%ebp)
	movzbl	opt+332, %eax
	testb	%al, %al
	je	.L428
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L428
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	leal	-120(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	stat64
	testl	%eax, %eax
	jne	.L428
	movl	-76(%ebp), %eax
	movl	-72(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, -128(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -124(%ebp)
	movl	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -148(%ebp)
	movl	20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L430
	movl	20(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$2, %eax
	jne	.L431
.L430:
	movl	$1, %eax
	jmp	.L432
.L431:
	movl	$0, %eax
.L432:
	not	%al
	not	%al
	movb	%al, -170(%ebp)
	andb	$1, -170(%ebp)
	cmpb	$0, -170(%ebp)
	je	.L433
	movl	16(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, %ecx
	xorl	-128(%ebp), %ecx
	movl	%ecx, %esi
	movl	%edx, %eax
	xorl	-124(%ebp), %eax
	movl	%eax, %edi
	movl	%esi, %eax
	orl	%edi, %eax
	testl	%eax, %eax
	sete	%al
	jmp	.L434
.L433:
	movl	$1, %eax
.L434:
	not	%al
	not	%al
	movb	%al, -169(%ebp)
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-148(%ebp), %eax
	jg	.L435
	cmpb	$0, -169(%ebp)
	je	.L435
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC116, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	movb	$0, -172(%ebp)
	jmp	.L428
.L435:
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-148(%ebp), %eax
	jle	.L436
	movb	$1, -171(%ebp)
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC117, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	jmp	.L428
.L436:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	number_to_static_string
	movl	%eax, %ebx
	movl	$.LC118, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
.L428:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L438
	cmpl	$1, %eax
	jb	.L439
	cmpl	$2, %eax
	je	.L440
	cmpl	$3, %eax
	je	.L441
	jmp	.L437
.L440:
	movzbl	opt+141, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L442
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L443
	movl	$.LC119, (%esp)
	call	gettext
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logputs
	jmp	.L448
.L443:
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	leal	-120(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	lstat64
	not	%eax
	not	%eax
	movl	%eax, -144(%ebp)
	cmpl	$0, -144(%ebp)
	jne	.L445
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strlen
	addl	$1, %eax
	not	%eax
	not	%eax
	movl	%eax, -140(%ebp)
	movl	-104(%ebp), %eax
	andl	$61440, %eax
	cmpl	$40960, %eax
	jne	.L445
	movl	-140(%ebp), %eax
	leal	15(%eax), %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	subl	%eax, %esp
	leal	24(%esp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	not	%eax
	not	%eax
	movl	%eax, -136(%ebp)
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	movl	-140(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	movl	-136(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	readlink
	not	%eax
	not	%eax
	movl	%eax, -132(%ebp)
	movl	-140(%ebp), %eax
	subl	$1, %eax
	cmpl	-132(%ebp), %eax
	jne	.L445
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	movl	-132(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	memcmp
	testl	%eax, %eax
	jne	.L445
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	not	%eax
	not	%eax
	movl	%eax, -188(%ebp)
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC120, (%esp)
	call	gettext
	movl	-188(%ebp), %ecx
	not	%ecx
	not	%ecx
	movl	%ecx, 12(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	movb	$0, -172(%ebp)
	nop
	jmp	.L437
.L445:
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	not	%eax
	not	%eax
	movl	%eax, -188(%ebp)
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC121, (%esp)
	call	gettext
	movl	-188(%ebp), %ecx
	not	%ecx
	not	%ecx
	movl	%ecx, 12(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	unlink
	movl	20(%ebp), %eax
	movl	32(%eax), %edx
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	symlink
	cmpl	$-1, %eax
	jne	.L447
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC122, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
.L447:
	movl	$.LC12, 4(%esp)
	movl	$0, (%esp)
	call	logputs
	jmp	.L448
.L442:
	cmpb	$0, -172(%ebp)
	je	.L448
	movzbl	-171(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_loop_internal
	not	%eax
	not	%eax
	movl	%eax, -164(%ebp)
	jmp	.L437
.L448:
	jmp	.L437
.L438:
	movzbl	opt+15, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L449
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC123, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	jmp	.L437
.L449:
	jmp	.L437
.L439:
	cmpb	$0, -172(%ebp)
	je	.L450
	movzbl	-171(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_loop_internal
	not	%eax
	not	%eax
	movl	%eax, -164(%ebp)
	jmp	.L437
.L450:
	jmp	.L437
.L441:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC124, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	nop
.L437:
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	leal	-168(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	set_local_file
	cmpb	$0, -172(%ebp)
	je	.L451
	movl	-168(%ebp), %eax
	testl	%eax, %eax
	je	.L451
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L451
	movzbl	opt+481, %eax
	testb	%al, %al
	je	.L451
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L452
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	-168(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	chmod
	jmp	.L451
.L452:
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L451
	movl	-168(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$.LC125, (%esp)
	call	debug_logprintf
.L451:
	movl	-168(%ebp), %eax
	testl	%eax, %eax
	je	.L453
	movzbl	opt+501, %eax
	testb	%al, %al
	je	.L454
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L455
	movzbl	opt+141, %eax
	testb	%al, %al
	je	.L454
.L455:
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$-1, %eax
	je	.L454
	cmpb	$0, -172(%ebp)
	je	.L454
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	file_exists_p
	testb	%al, %al
	je	.L454
	movl	16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-168(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	touch
	jmp	.L453
.L454:
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$-1, %eax
	jne	.L453
	movl	-168(%ebp), %ebx
	movl	$.LC126, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
.L453:
	movl	20(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	20(%ebp), %eax
	movl	$0, 32(%eax)
	movl	20(%ebp), %eax
	movl	-156(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 32(%eax)
	movl	-152(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_set_file
	movl	-152(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -152(%ebp)
	cmpl	$43, -164(%ebp)
	je	.L456
	cmpl	$1, -164(%ebp)
	je	.L456
	cmpl	$21, -164(%ebp)
	je	.L456
	cmpl	$52, -164(%ebp)
	je	.L456
	cmpl	$53, -164(%ebp)
	je	.L456
	cmpl	$54, -164(%ebp)
	je	.L456
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	movl	16(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 16(%ebp)
.L425:
	cmpl	$0, 16(%ebp)
	jne	.L457
.L456:
	movzbl	opt+15, %eax
	testb	%al, %al
	je	.L458
	movl	opt+28, %eax
	cmpl	$-1, %eax
	je	.L459
	movl	opt+28, %edx
	movl	depth.7149, %eax
	cmpl	%eax, %edx
	jle	.L458
.L459:
	movl	20(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	-160(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_retrieve_dirs
	not	%eax
	not	%eax
	movl	%eax, -164(%ebp)
	jmp	.L460
.L458:
	movzbl	opt+15, %eax
	testb	%al, %al
	je	.L460
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L460
	movl	opt+28, %esi
	movl	depth.7149, %ebx
	movl	$.LC127, (%esp)
	call	gettext
	not	%esi
	not	%esi
	movl	%esi, 8(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	debug_logprintf
.L460:
	movl	depth.7149, %eax
	subl	$1, %eax
	movl	%eax, depth.7149
	movl	-164(%ebp), %eax
.L461:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE34:
	.size	ftp_retrieve_list, .-ftp_retrieve_list
	.section	.rodata
.LC128:
	.string	"%s%s"
.LC129:
	.string	"%s/%s"
	.align 4
.LC130:
	.string	"Composing new CWD relative to the initial directory.\n"
	.align 4
.LC131:
	.string	"  odir = '%s'\n  f->name = '%s'\n  newdir = '%s'\n\n"
	.align 4
.LC132:
	.string	"Not descending to %s as it is excluded/not-included.\n"
	.text
	.type	ftp_retrieve_dirs, @function
ftp_retrieve_dirs:
.LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L464
.L477:
	movl	opt+320, %eax
	movl	opt+324, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L465
	movl	opt+320, %ecx
	movl	opt+324, %ebx
	movl	total_downloaded_bytes, %eax
	movl	total_downloaded_bytes+4, %edx
	cmpl	%edx, %ebx
	jg	.L465
	cmpl	%edx, %ebx
	jl	.L481
	cmpl	%eax, %ecx
	jnb	.L465
.L481:
	jmp	.L467
.L465:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L468
	jmp	.L469
.L468:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strlen
	movl	%eax, %ebx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strlen
	addl	%ebx, %eax
	addl	$2, %eax
	not	%eax
	not	%eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	.L470
	movl	-20(%ebp), %eax
	leal	15(%eax), %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %esi
	movl	$0, %edx
	divl	%esi
	imull	$16, %eax, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	not	%eax
	not	%eax
	movl	%eax, -28(%ebp)
.L470:
	movl	-28(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L471
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L472
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L472
.L471:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC128, 4(%esp)
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	sprintf
	jmp	.L473
.L472:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	$.LC129, 4(%esp)
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	sprintf
.L473:
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L474
	movl	$.LC130, (%esp)
	call	debug_logprintf
.L474:
	movzbl	opt+331, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L475
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	-16(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 12(%esp)
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$.LC131, (%esp)
	call	debug_logprintf
.L475:
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	accdir
	xorl	$1, %eax
	testb	%al, %al
	je	.L476
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC132, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	jmp	.L469
.L476:
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	xstrdup
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_set_dir
	movl	$1, 12(%esp)
	movl	20(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_retrieve_glob
	movl	-12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_set_dir
	movl	-12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -12(%ebp)
.L469:
	movl	16(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 16(%ebp)
.L464:
	cmpl	$0, 16(%ebp)
	jne	.L477
.L467:
	movl	opt+320, %eax
	movl	opt+324, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L478
	movl	opt+320, %ecx
	movl	opt+324, %ebx
	movl	total_downloaded_bytes, %eax
	movl	total_downloaded_bytes+4, %edx
	cmpl	%edx, %ebx
	jg	.L478
	cmpl	%edx, %ebx
	jl	.L482
	cmpl	%eax, %ecx
	jnb	.L478
.L482:
	movl	$43, %eax
	jmp	.L480
.L478:
	movl	$25, %eax
.L480:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE35:
	.size	ftp_retrieve_dirs, .-ftp_retrieve_dirs
	.section	.rodata
.LC133:
	.string	"../"
	.text
	.type	has_insecure_name_p, @function
has_insecure_name_p:
.LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L484
	movl	$1, %eax
	jmp	.L485
.L484:
	movl	$.LC133, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strstr
	testl	%eax, %eax
	je	.L486
	movl	$1, %eax
	jmp	.L485
.L486:
	movl	$0, %eax
.L485:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE36:
	.size	has_insecure_name_p, .-has_insecure_name_p
	.type	is_invalid_entry, @function
is_invalid_entry:
.LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	jmp	.L488
.L490:
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strcmp
	testl	%eax, %eax
	jne	.L488
	movl	$1, %eax
	jmp	.L489
.L488:
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L490
	movl	$0, %eax
.L489:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE37:
	.size	is_invalid_entry, .-is_invalid_entry
	.section	.rodata
.LC134:
	.string	"Rejecting %s.\n"
	.align 4
.LC135:
	.string	"Error matching %s against %s: %s\n"
.LC136:
	.string	"No matches on pattern %s.\n"
	.text
	.type	ftp_retrieve_glob, @function
ftp_retrieve_glob:
.LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%eax)
	leal	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_get_listing
	not	%eax
	not	%eax
	movl	%eax, -40(%ebp)
	cmpl	$25, -40(%ebp)
	je	.L492
	movl	-40(%ebp), %eax
	jmp	.L523
.L492:
	movl	opt+72, %eax
	testl	%eax, %eax
	jne	.L494
	movl	opt+76, %eax
	testl	%eax, %eax
	je	.L495
.L494:
	movl	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
	jmp	.L496
.L498:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L497
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	acceptable
	xorl	$1, %eax
	testb	%al, %al
	je	.L497
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC134, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	leal	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	delelement
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
	jmp	.L496
.L497:
	movl	-44(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
.L496:
	cmpl	$0, -44(%ebp)
	jne	.L498
.L495:
	movl	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
	jmp	.L499
.L502:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	has_insecure_name_p
	testb	%al, %al
	jne	.L500
	movl	-44(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	is_invalid_entry
	testb	%al, %al
	je	.L501
.L500:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC134, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	leal	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	delelement
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
	jmp	.L499
.L501:
	movl	-44(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
.L499:
	cmpl	$0, -44(%ebp)
	jne	.L502
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L503
	cmpl	$0, 20(%ebp)
	jne	.L504
	movzbl	opt+88, %eax
	testb	%al, %al
	je	.L505
	movl	$fnmatch_nocase, %eax
	jmp	.L506
.L505:
	movl	$fnmatch, %eax
.L506:
	not	%eax
	not	%eax
	movl	%eax, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
	jmp	.L507
.L511:
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$0, 8(%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	movl	-32(%ebp), %eax
	call	*%eax
	not	%eax
	not	%eax
	movl	%eax, -36(%ebp)
	cmpl	$-1, -36(%ebp)
	jne	.L508
	call	__errno_location
	movl	(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strerror
	movl	%eax, %esi
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	quotearg_style
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	36(%eax), %edi
	movl	$.LC135, (%esp)
	call	gettext
	not	%esi
	not	%esi
	movl	%esi, 16(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 12(%esp)
	not	%edi
	not	%edi
	movl	%edi, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	jmp	.L509
.L508:
	cmpl	$1, -36(%ebp)
	jne	.L510
	leal	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	delelement
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
	jmp	.L507
.L510:
	movl	-44(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
.L507:
	cmpl	$0, -44(%ebp)
	jne	.L511
.L509:
	cmpl	$-1, -36(%ebp)
	jne	.L512
	movl	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	freefileinfo
	movl	$40, %eax
	jmp	.L523
.L512:
	jmp	.L503
.L504:
	cmpl	$2, 20(%ebp)
	jne	.L503
	movzbl	opt+88, %eax
	testb	%al, %al
	je	.L513
	movl	$strcasecmp, %eax
	jmp	.L514
.L513:
	movl	$strcmp, %eax
.L514:
	not	%eax
	not	%eax
	movl	%eax, -28(%ebp)
	movl	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
	jmp	.L515
.L517:
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	movl	-28(%ebp), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L516
	leal	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	delelement
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
	jmp	.L515
.L516:
	movl	-44(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -44(%ebp)
.L515:
	cmpl	$0, -44(%ebp)
	jne	.L517
.L503:
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	je	.L518
	movl	-48(%ebp), %eax
	movl	16(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 12(%esp)
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_retrieve_list
	not	%eax
	not	%eax
	movl	%eax, -40(%ebp)
	jmp	.L519
.L518:
	cmpl	$0, 20(%ebp)
	jne	.L520
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC136, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	logprintf
	jmp	.L519
.L520:
	cmpl	$2, 20(%ebp)
	jne	.L519
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_loop_internal
	not	%eax
	not	%eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	jmp	.L523
.L519:
	movl	-48(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	freefileinfo
	movl	opt+320, %eax
	movl	opt+324, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L521
	movl	opt+320, %ecx
	movl	opt+324, %ebx
	movl	total_downloaded_bytes, %eax
	movl	total_downloaded_bytes+4, %edx
	cmpl	%edx, %ebx
	jg	.L521
	cmpl	%edx, %ebx
	jl	.L524
	cmpl	%eax, %ecx
	jnb	.L521
.L524:
	movl	$43, %eax
	jmp	.L523
.L521:
	movl	-40(%ebp), %eax
.L523:
	addl	$76, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE38:
	.size	ftp_retrieve_glob, .-ftp_retrieve_glob
	.section	.rodata
	.align 4
.LC137:
	.string	"Wrote HTML-ized index to %s [%s].\n"
.LC138:
	.string	"Wrote HTML-ized index to %s.\n"
	.text
	.globl	ftp_loop
	.type	ftp_loop, @function
ftp_loop:
.LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$208, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	28(%ebp), %edx
	movl	32(%ebp), %eax
	not	%dl
	not	%dl
	movb	%dl, -188(%ebp)
	not	%al
	not	%al
	movb	%al, -192(%ebp)
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	movl	$40, 8(%esp)
	movl	$0, 4(%esp)
	leal	-144(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	memset
	movl	$-1, -136(%ebp)
	movl	$1, -144(%ebp)
	movl	$0, -124(%ebp)
	movl	$0, -116(%ebp)
	movl	24(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, -108(%ebp)
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L526
	movzbl	-188(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L526
	leal	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	leal	-144(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_get_listing
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$25, -168(%ebp)
	jne	.L527
	movzbl	opt+351, %eax
	testb	%al, %al
	je	.L528
	movzbl	opt+68, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L528
	movzbl	opt+500, %eax
	testb	%al, %al
	je	.L529
	movl	8(%ebp), %eax
	jmp	.L530
.L529:
	movl	12(%ebp), %eax
.L530:
	not	%eax
	not	%eax
	movl	%eax, -160(%ebp)
	movl	opt+144, %eax
	testl	%eax, %eax
	je	.L531
	movl	opt+144, %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	xstrdup
	jmp	.L532
.L531:
	movl	-112(%ebp), %eax
	testl	%eax, %eax
	je	.L533
	movl	-112(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	xstrdup
	jmp	.L532
.L533:
	movl	$0, 4(%esp)
	movl	-160(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	url_file_name
.L532:
	not	%eax
	not	%eax
	movl	%eax, -156(%ebp)
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-156(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_index
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	cmpl	$7, -168(%ebp)
	jne	.L535
	movl	opt, %eax
	testl	%eax, %eax
	je	.L535
	movl	opt+144, %eax
	testl	%eax, %eax
	jne	.L536
	leal	-104(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	-156(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	stat64
	testl	%eax, %eax
	jne	.L537
	movl	-60(%ebp), %eax
	movl	-56(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, -152(%ebp)
	not	%edx
	not	%edx
	movl	%edx, -148(%ebp)
	jmp	.L538
.L537:
	movl	$-1, -152(%ebp)
	movl	$-1, -148(%ebp)
.L538:
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	not	%edx
	not	%edx
	movl	%edx, 4(%esp)
	call	number_to_static_string
	movl	%eax, %esi
	movl	-156(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC137, (%esp)
	call	gettext
	not	%esi
	not	%esi
	movl	%esi, 12(%esp)
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
	jmp	.L535
.L536:
	movl	-156(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	quote
	movl	%eax, %ebx
	movl	$.LC138, (%esp)
	call	gettext
	not	%ebx
	not	%ebx
	movl	%ebx, 8(%esp)
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	logprintf
.L535:
	movl	-156(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -156(%ebp)
.L528:
	movl	-172(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	freefileinfo
	jmp	.L539
.L527:
	jmp	.L539
.L526:
	movb	$0, -173(%ebp)
	cmpb	$0, -192(%ebp)
	je	.L540
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$47, 4(%esp)
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	strrchr
	not	%eax
	not	%eax
	movl	%eax, -164(%ebp)
	cmpl	$0, -164(%ebp)
	jne	.L541
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -164(%ebp)
.L541:
	movl	-164(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	has_wildcards_p
	not	%al
	not	%al
	movb	%al, -173(%ebp)
.L540:
	cmpb	$0, -173(%ebp)
	jne	.L542
	cmpb	$0, -188(%ebp)
	jne	.L542
	movzbl	opt+332, %eax
	testb	%al, %al
	jne	.L542
	movzbl	opt+481, %eax
	testb	%al, %al
	je	.L543
.L542:
	cmpb	$0, -173(%ebp)
	je	.L544
	movl	$0, %eax
	jmp	.L545
.L544:
	movl	$2, %eax
.L545:
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	leal	-144(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_retrieve_glob
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
	jmp	.L539
.L543:
	movl	$0, 20(%esp)
	movl	16(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 16(%esp)
	leal	-144(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	ftp_loop_internal
	not	%eax
	not	%eax
	movl	%eax, -168(%ebp)
.L539:
	cmpl	$7, -168(%ebp)
	jne	.L546
	movl	$25, -168(%ebp)
.L546:
	cmpl	$25, -168(%ebp)
	jne	.L547
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	not	%edx
	not	%edx
	movl	%edx, (%eax)
.L547:
	movl	-136(%ebp), %eax
	cmpl	$-1, %eax
	je	.L548
	movl	-136(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	fd_close
.L548:
	movl	-116(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -116(%ebp)
	movl	-112(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, -112(%ebp)
	movl	-168(%ebp), %eax
	addl	$208, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE39:
	.size	ftp_loop, .-ftp_loop
	.type	delelement, @function
delelement:
.LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, 8(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L551
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 32(%eax)
.L551:
	cmpl	$0, -16(%ebp)
	je	.L552
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, 36(%eax)
	jmp	.L553
.L552:
	movl	12(%ebp), %eax
	movl	-12(%ebp), %edx
	not	%edx
	not	%edx
	movl	%edx, (%eax)
.L553:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE40:
	.size	delelement, .-delelement
	.type	freefileinfo, @function
freefileinfo:
.LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	jmp	.L556
.L558:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L557
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
.L557:
	movl	8(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, (%esp)
	call	free
	movl	$0, 8(%ebp)
	movl	-12(%ebp), %eax
	not	%eax
	not	%eax
	movl	%eax, 8(%ebp)
.L556:
	cmpl	$0, 8(%ebp)
	jne	.L558
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	not	%eax
	not	%eax
	ret
	.cfi_endproc
.LFE41:
	.size	freefileinfo, .-freefileinfo
	.local	depth.7149
	.comm	depth.7149,4,4
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
