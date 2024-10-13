	.file	"day-and-month-name.c"
	.text
	.def	time;	.scl	3;	.type	32;	.endef
	.seh_proc	time
time:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	movq	__imp__time64(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	localtime;	.scl	3;	.type	32;	.endef
	.seh_proc	localtime
localtime:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	movq	__imp__localtime64(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "%A\0"
.LC1:
	.ascii "%B\0"
.LC2:
	.ascii "%s\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$160, %rsp
	.seh_stackalloc	160
	.seh_endprologue
	call	__main
	movl	$0, %ecx
	call	time
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	localtime
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC0(%rip), %r8
	movl	$32, %edx
	movq	%rax, %rcx
	call	strftime
	movq	%rax, -16(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$0, %ecx
	call	time
	movq	%rax, -120(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, %rcx
	call	localtime
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC1(%rip), %r8
	movl	$32, %edx
	movq	%rax, %rcx
	call	strftime
	movq	%rax, -32(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$160, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev5, Built by MSYS2 project) 10.3.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	strftime;	.scl	2;	.type	32;	.endef