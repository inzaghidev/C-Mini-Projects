	.file	"penanggalan.c"
	.text
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
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "%B\0"
.LC1:
	.ascii "%A\0"
.LC2:
	.ascii "%A, %d %B %G\0"
.LC3:
	.ascii "%H:%M:%S\0"
	.align 8
.LC8:
	.ascii "Tahun                    : %d\12\0"
	.align 8
.LC9:
	.ascii "Bulan                    : %d (%s)\12\0"
	.align 8
.LC10:
	.ascii "Tanggal                  : %d\12\0"
	.align 8
.LC11:
	.ascii "Hari                     : %d (%s)\12\0"
	.align 8
.LC12:
	.ascii "Hari ke (dalam Setahun)  : %d\12\0"
	.align 8
.LC13:
	.ascii "Sisa Hari (Tahun depan)  : %d\12\0"
	.align 8
.LC14:
	.ascii "Persentase dalam Setahun : %f%\12\0"
	.align 8
.LC15:
	.ascii "Persentase Hitung Mundur : %f%\12\0"
	.align 8
.LC16:
	.ascii "Jam                      : %d\12\0"
	.align 8
.LC17:
	.ascii "Menit                    : %d\12\0"
	.align 8
.LC18:
	.ascii "Detik                    : %d\12\0"
.LC19:
	.ascii "\12\0"
.LC20:
	.ascii "%s, %02d %s %d\12\0"
.LC21:
	.ascii "Day-%d (%.4f%)\12\0"
.LC22:
	.ascii "%s\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$384, %rsp
	.seh_stackalloc	384
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	movl	$0, %ecx
	call	time
	movq	%rax, 72(%rbp)
	leaq	72(%rbp), %rax
	movq	%rax, %rcx
	call	localtime
	movq	%rax, 240(%rbp)
	movq	240(%rbp), %rdx
	leaq	80(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC0(%rip), %r8
	movl	$32, %edx
	movq	%rax, %rcx
	call	strftime
	movq	%rax, 232(%rbp)
	leaq	80(%rbp), %rdx
	movq	232(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$0, %ecx
	call	time
	movq	%rax, 24(%rbp)
	leaq	24(%rbp), %rax
	movq	%rax, %rcx
	call	localtime
	movq	%rax, 224(%rbp)
	movq	224(%rbp), %rdx
	leaq	32(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC1(%rip), %r8
	movl	$32, %edx
	movq	%rax, %rcx
	call	strftime
	movq	%rax, 216(%rbp)
	leaq	32(%rbp), %rdx
	movq	216(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$0, %ecx
	call	time
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	localtime
	movq	%rax, 208(%rbp)
	movq	208(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC2(%rip), %r8
	movl	$32, %edx
	movq	%rax, %rcx
	call	strftime
	movq	%rax, 200(%rbp)
	movl	$0, %ecx
	call	time
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	localtime
	movq	%rax, 192(%rbp)
	movq	192(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC3(%rip), %r8
	movl	$32, %edx
	movq	%rax, %rcx
	call	strftime
	movq	%rax, 184(%rbp)
	leaq	-64(%rbp), %rdx
	movq	184(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	time
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	localtime
	movq	%rax, 176(%rbp)
	movq	176(%rbp), %rax
	movl	20(%rax), %eax
	addl	$1900, %eax
	movl	%eax, 172(%rbp)
	movq	176(%rbp), %rax
	movl	16(%rax), %eax
	addl	$1, %eax
	movl	%eax, 168(%rbp)
	movq	176(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, 164(%rbp)
	movq	176(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, 160(%rbp)
	movq	176(%rbp), %rax
	movl	28(%rax), %eax
	addl	$1, %eax
	movl	%eax, 156(%rbp)
	movq	176(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, 152(%rbp)
	movq	176(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, 148(%rbp)
	movq	176(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, 144(%rbp)
	movl	172(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$400, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	jne	.L8
	movl	$366, 252(%rbp)
	jmp	.L9
.L8:
	movl	172(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	sarl	$5, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$100, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	jne	.L10
	movl	$365, 252(%rbp)
	jmp	.L9
.L10:
	movl	172(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L11
	movl	$366, 252(%rbp)
	jmp	.L9
.L11:
	movl	$365, 252(%rbp)
.L9:
	movl	156(%rbp), %eax
	subl	$1, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	152(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	148(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	144(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 136(%rbp)
	movsd	136(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	252(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 128(%rbp)
	movl	252(%rbp), %eax
	addl	$1, %eax
	subl	156(%rbp), %eax
	movl	%eax, 124(%rbp)
	movsd	.LC7(%rip), %xmm0
	subsd	128(%rbp), %xmm0
	movsd	%xmm0, 112(%rbp)
	movl	172(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC8(%rip), %rcx
	call	printf
	leaq	80(%rbp), %rdx
	movl	168(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, %edx
	leaq	.LC9(%rip), %rcx
	call	printf
	movl	164(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC10(%rip), %rcx
	call	printf
	leaq	32(%rbp), %rdx
	movl	160(%rbp), %eax
	movq	%rdx, %r8
	movl	%eax, %edx
	leaq	.LC11(%rip), %rcx
	call	printf
	movl	156(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC12(%rip), %rcx
	call	printf
	movl	124(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC13(%rip), %rcx
	call	printf
	movsd	128(%rbp), %xmm0
	movq	128(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rcx
	call	printf
	movsd	112(%rbp), %xmm0
	movq	112(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rcx
	call	printf
	movl	152(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC16(%rip), %rcx
	call	printf
	movl	148(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC17(%rip), %rcx
	call	printf
	movl	144(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC18(%rip), %rcx
	call	printf
	leaq	.LC19(%rip), %rcx
	call	printf
	leaq	80(%rbp), %r8
	movl	164(%rbp), %ecx
	leaq	32(%rbp), %rax
	movl	172(%rbp), %edx
	movl	%edx, 32(%rsp)
	movq	%r8, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	leaq	.LC20(%rip), %rcx
	call	printf
	movsd	128(%rbp), %xmm0
	movq	128(%rbp), %rdx
	movl	156(%rbp), %eax
	movapd	%xmm0, %xmm2
	movq	%rdx, %r8
	movl	%eax, %edx
	leaq	.LC21(%rip), %rcx
	call	printf
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$384, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.long	0
	.long	1077411840
	.align 8
.LC5:
	.long	0
	.long	1083604992
	.align 8
.LC6:
	.long	0
	.long	1089804288
	.align 8
.LC7:
	.long	0
	.long	1079574528
	.ident	"GCC: (Rev5, Built by MSYS2 project) 10.3.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	strftime;	.scl	2;	.type	32;	.endef