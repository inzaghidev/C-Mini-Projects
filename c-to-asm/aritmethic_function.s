	.file	"aritmethic_function.c"
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
	.globl	tambah
	.def	tambah;	.scl	2;	.type	32;	.endef
	.seh_proc	tambah
tambah:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movss	16(%rbp), %xmm0
	addss	24(%rbp), %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	kurang
	.def	kurang;	.scl	2;	.type	32;	.endef
	.seh_proc	kurang
kurang:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movss	16(%rbp), %xmm0
	subss	24(%rbp), %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	kali
	.def	kali;	.scl	2;	.type	32;	.endef
	.seh_proc	kali
kali:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movss	16(%rbp), %xmm0
	mulss	24(%rbp), %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	bagi
	.def	bagi;	.scl	2;	.type	32;	.endef
	.seh_proc	bagi
bagi:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movss	16(%rbp), %xmm0
	divss	24(%rbp), %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "a = %d, b = %d\12\0"
.LC1:
	.ascii "a + b = %d\12\0"
.LC2:
	.ascii "a - b = %d\12\0"
.LC3:
	.ascii "a * b = %d\12\0"
.LC4:
	.ascii "a / b = %.2f\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	movl	$9, -4(%rbp)
	movl	$4, -8(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-8(%rbp), %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2ssl	-4(%rbp), %xmm2
	movd	%xmm2, %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	tambah
	cvttss2sil	%xmm0, %eax
	movl	%eax, -12(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-8(%rbp), %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2ssl	-4(%rbp), %xmm3
	movd	%xmm3, %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	kurang
	cvttss2sil	%xmm0, %eax
	movl	%eax, -16(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-8(%rbp), %xmm0
	pxor	%xmm4, %xmm4
	cvtsi2ssl	-4(%rbp), %xmm4
	movd	%xmm4, %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	kali
	cvttss2sil	%xmm0, %eax
	movl	%eax, -20(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-8(%rbp), %xmm0
	pxor	%xmm5, %xmm5
	cvtsi2ssl	-4(%rbp), %xmm5
	movd	%xmm5, %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	bagi
	movd	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	printf
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	pxor	%xmm0, %xmm0
	cvtss2sd	-24(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev5, Built by MSYS2 project) 10.3.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
