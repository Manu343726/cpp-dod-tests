	.file	"dod_perfv2.cpp"
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB7854:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB8910:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4,,15
	.globl	_Z12pause_timingv
	.def	_Z12pause_timingv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12pause_timingv
_Z12pause_timingv:
.LFB7452:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_pause(%rip)
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z13resume_timingv
	.def	_Z13resume_timingv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13resume_timingv
_Z13resume_timingv:
.LFB7453:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_pause(%rip), %rax
	addq	%rax, measure_start(%rip)
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9do_renderiic
	.def	_Z9do_renderiic;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9do_renderiic
_Z9do_renderiic:
.LFB8202:
	.seh_endprologue
	addl	%ecx, %edx
	movsbl	%r8b, %r8d
	addl	%edx, %r8d
	addl	%r8d, _ZL13render_output(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z6renderPcS_PiS0_
	.def	_Z6renderPcS_PiS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6renderPcS_PiS0_
_Z6renderPcS_PiS0_:
.LFB8212:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	.seh_endprologue
	movl	$0, _ZL13render_output(%rip)
	cmpq	%rdx, %rcx
	je	.L18
	leaq	1(%rcx), %r10
	movq	%rcx, %r11
	leaq	1(%rdx), %rdi
	negq	%r11
	movq	%r10, %r12
	subq	%r10, %rdi
	andl	$15, %r11d
	cmpq	%rdi, %r11
	cmova	%rdi, %r11
	cmpq	$17, %rdi
	cmovbe	%rdi, %r11
	testq	%r11, %r11
	je	.L19
	movl	(%r8), %eax
	leaq	4(%r9), %rbx
	addl	(%r9), %eax
	leaq	4(%r8), %rsi
	movsbl	(%rcx), %ebp
	addl	%ebp, %eax
	cmpq	$1, %r11
	je	.L10
	movl	4(%r8), %ebp
	leaq	2(%rcx), %r10
	addl	4(%r9), %ebp
	leaq	8(%r9), %rbx
	leaq	8(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	1(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$2, %r11
	je	.L10
	movl	8(%r8), %ebp
	leaq	3(%rcx), %r10
	addl	8(%r9), %ebp
	leaq	12(%r9), %rbx
	leaq	12(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	2(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$3, %r11
	je	.L10
	movl	12(%r8), %ebp
	leaq	4(%rcx), %r10
	addl	12(%r9), %ebp
	leaq	16(%r9), %rbx
	leaq	16(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	3(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$4, %r11
	je	.L10
	movl	16(%r8), %ebp
	leaq	5(%rcx), %r10
	addl	16(%r9), %ebp
	leaq	20(%r9), %rbx
	leaq	20(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	4(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$5, %r11
	je	.L10
	movl	20(%r8), %ebp
	leaq	6(%rcx), %r10
	addl	20(%r9), %ebp
	leaq	24(%r9), %rbx
	leaq	24(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	5(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$6, %r11
	je	.L10
	movl	24(%r8), %ebp
	leaq	7(%rcx), %r10
	addl	24(%r9), %ebp
	leaq	28(%r9), %rbx
	leaq	28(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	6(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$7, %r11
	je	.L10
	movl	28(%r8), %ebp
	leaq	8(%rcx), %r10
	addl	28(%r9), %ebp
	leaq	32(%r9), %rbx
	leaq	32(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	7(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$8, %r11
	je	.L10
	movl	32(%r8), %ebp
	leaq	9(%rcx), %r10
	addl	32(%r9), %ebp
	leaq	36(%r9), %rbx
	leaq	36(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	8(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$9, %r11
	je	.L10
	movl	36(%r8), %ebp
	leaq	10(%rcx), %r10
	addl	36(%r9), %ebp
	leaq	40(%r9), %rbx
	leaq	40(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	9(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$10, %r11
	je	.L10
	movl	40(%r8), %ebp
	leaq	11(%rcx), %r10
	addl	40(%r9), %ebp
	leaq	44(%r9), %rbx
	leaq	44(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	10(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$11, %r11
	je	.L10
	movl	44(%r8), %ebp
	leaq	12(%rcx), %r10
	addl	44(%r9), %ebp
	leaq	48(%r9), %rbx
	leaq	48(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	11(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$12, %r11
	je	.L10
	movl	48(%r8), %ebp
	leaq	13(%rcx), %r10
	addl	48(%r9), %ebp
	leaq	52(%r9), %rbx
	leaq	52(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	12(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$13, %r11
	je	.L10
	movl	52(%r8), %ebp
	leaq	14(%rcx), %r10
	addl	52(%r9), %ebp
	leaq	56(%r9), %rbx
	leaq	56(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	13(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$14, %r11
	je	.L10
	movl	56(%r8), %ebp
	leaq	15(%rcx), %r10
	addl	56(%r9), %ebp
	leaq	60(%r9), %rbx
	leaq	60(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	14(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$15, %r11
	je	.L10
	movl	60(%r8), %ebp
	leaq	16(%rcx), %r10
	addl	60(%r9), %ebp
	leaq	64(%r9), %rbx
	leaq	64(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	15(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$16, %r11
	je	.L10
	movl	64(%r8), %ebp
	leaq	17(%rcx), %r10
	addl	64(%r9), %ebp
	leaq	68(%r9), %rbx
	leaq	68(%r8), %rsi
	movl	%ebp, %r13d
	movsbl	16(%rcx), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
.L10:
	cmpq	%r11, %rdi
	je	.L11
.L9:
	subq	%r11, %rdi
	movq	%rdx, %r14
	leaq	-16(%rdi), %r13
	subq	%r12, %r14
	shrq	$4, %r13
	movq	%r14, %r12
	addq	$1, %r13
	subq	%r11, %r12
	movq	%r13, %rbp
	salq	$4, %rbp
	cmpq	$14, %r12
	jbe	.L12
	addq	%r11, %rcx
	pxor	%xmm0, %xmm0
	pxor	%xmm6, %xmm6
	pxor	%xmm5, %xmm5
	leaq	0(,%r11,4), %r12
	xorl	%r11d, %r11d
	addq	%r12, %r9
	addq	%r12, %r8
.L14:
	movdqa	(%rcx), %xmm3
	movdqa	%xmm6, %xmm1
	movdqa	%xmm5, %xmm7
	addq	$1, %r11
	movdqu	(%r8), %xmm2
	addq	$16, %rcx
	addq	$64, %r9
	addq	$64, %r8
	pcmpgtb	%xmm3, %xmm1
	movdqa	%xmm3, %xmm4
	punpcklbw	%xmm1, %xmm4
	punpckhbw	%xmm1, %xmm3
	pcmpgtw	%xmm4, %xmm7
	movdqu	-64(%r9), %xmm1
	paddd	%xmm1, %xmm2
	movdqa	%xmm4, %xmm1
	punpcklwd	%xmm7, %xmm1
	paddd	%xmm1, %xmm2
	movdqu	-48(%r9), %xmm1
	punpckhwd	%xmm7, %xmm4
	paddd	%xmm2, %xmm0
	movdqu	-48(%r8), %xmm2
	movdqa	%xmm5, %xmm7
	pcmpgtw	%xmm3, %xmm7
	paddd	%xmm2, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm3, %xmm4
	movdqa	%xmm1, %xmm2
	movdqu	-32(%r8), %xmm1
	punpcklwd	%xmm7, %xmm4
	punpckhwd	%xmm7, %xmm3
	paddd	%xmm0, %xmm2
	movdqu	-32(%r9), %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm4, %xmm0
	paddd	%xmm2, %xmm0
	movdqu	-16(%r8), %xmm2
	movdqa	%xmm0, %xmm1
	movdqu	-16(%r9), %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	paddd	%xmm1, %xmm0
	cmpq	%r11, %r13
	ja	.L14
	movdqa	%xmm0, %xmm1
	addq	%rbp, %r10
	psrldq	$8, %xmm1
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm2
	pshufd	$85, %xmm1, %xmm0
	punpckhdq	%xmm1, %xmm2
	movdqa	%xmm2, %xmm3
	pshufd	$255, %xmm1, %xmm2
	movd	%xmm2, %ecx
	movd	%ecx, %xmm2
	punpckldq	%xmm3, %xmm0
	punpcklqdq	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ecx
	addl	%ecx, %eax
	leaq	0(,%rbp,4), %rcx
	addq	%rcx, %rsi
	addq	%rcx, %rbx
	cmpq	%rbp, %rdi
	je	.L11
.L12:
	movl	(%rsi), %ecx
	addl	(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	1(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	4(%rsi), %ecx
	addl	4(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	1(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	2(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	8(%rsi), %ecx
	addl	8(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	2(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	3(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	12(%rsi), %ecx
	addl	12(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	3(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	4(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	16(%rsi), %ecx
	addl	16(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	4(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	5(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	20(%rsi), %ecx
	addl	20(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	5(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	6(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	24(%rsi), %ecx
	addl	24(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	6(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	7(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	28(%rsi), %ecx
	addl	28(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	7(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	8(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	32(%rsi), %ecx
	addl	32(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	8(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	9(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	36(%rsi), %ecx
	addl	36(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	9(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	10(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	40(%rsi), %ecx
	addl	40(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	10(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	11(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	44(%rsi), %ecx
	addl	44(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	11(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	12(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	48(%rsi), %ecx
	addl	48(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	12(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	13(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	52(%rsi), %ecx
	addl	52(%rbx), %ecx
	movl	%ecx, %r8d
	movsbl	13(%r10), %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	leaq	14(%r10), %rcx
	cmpq	%rcx, %rdx
	je	.L11
	movl	56(%rsi), %edx
	addl	56(%rbx), %edx
	movl	%edx, %ecx
	movsbl	14(%r10), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
.L11:
	movl	%eax, _ZL13render_output(%rip)
.L7:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L19:
	movq	%r9, %rbx
	movq	%r8, %rsi
	movq	%rcx, %r10
	xorl	%eax, %eax
	jmp	.L9
	.p2align 4,,10
.L18:
	xorl	%eax, %eax
	jmp	.L7
	.seh_endproc
	.p2align 4,,15
	.globl	_Z6renderPcPiS0_y
	.def	_Z6renderPcPiS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6renderPcPiS0_y
_Z6renderPcPiS0_y:
.LFB8213:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	.seh_endprologue
	movl	$0, _ZL13render_output(%rip)
	testq	%r9, %r9
	je	.L82
	movq	%rcx, %r10
	negq	%r10
	andl	$15, %r10d
	cmpq	%r9, %r10
	cmova	%r9, %r10
	cmpq	$17, %r9
	ja	.L102
	movq	%r9, %r10
.L72:
	movl	(%rdx), %eax
	movsbl	(%rcx), %r11d
	addl	(%r8), %eax
	addl	%r11d, %eax
	cmpq	$1, %r10
	je	.L85
	movl	4(%rdx), %r11d
	movl	4(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	1(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$2, %r10
	je	.L86
	movl	8(%rdx), %r11d
	movl	8(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	2(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$3, %r10
	je	.L87
	movl	12(%rdx), %r11d
	movl	12(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	3(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$4, %r10
	je	.L88
	movl	16(%rdx), %r11d
	movl	16(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	4(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$5, %r10
	je	.L89
	movl	20(%rdx), %r11d
	movl	20(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	5(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$6, %r10
	je	.L90
	movl	24(%rdx), %r11d
	movl	24(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	6(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$7, %r10
	je	.L91
	movl	28(%rdx), %r11d
	movl	28(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	7(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$8, %r10
	je	.L92
	movl	32(%rdx), %r11d
	movl	32(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	8(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$9, %r10
	je	.L93
	movl	36(%rdx), %r11d
	movl	36(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	9(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$10, %r10
	je	.L94
	movl	40(%rdx), %r11d
	movl	40(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	10(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$11, %r10
	je	.L95
	movl	44(%rdx), %r11d
	movl	44(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	11(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$12, %r10
	je	.L96
	movl	48(%rdx), %r11d
	movl	48(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	12(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$13, %r10
	je	.L97
	movl	52(%rdx), %r11d
	movl	52(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	13(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$14, %r10
	je	.L98
	movl	56(%rdx), %r11d
	movl	56(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	14(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$15, %r10
	je	.L99
	movl	60(%rdx), %r11d
	movl	60(%r8), %ebx
	addl	%r11d, %ebx
	movsbl	15(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	cmpq	$16, %r10
	je	.L100
	movl	64(%r8), %r11d
	movl	64(%rdx), %ebx
	addl	%r11d, %ebx
	movsbl	16(%rcx), %r11d
	addl	%ebx, %r11d
	addl	%r11d, %eax
	movl	$17, %r11d
.L74:
	cmpq	%r10, %r9
	je	.L75
.L73:
	leaq	-1(%r9), %rsi
	movq	%r9, %rdi
	subq	%r10, %rdi
	subq	%r10, %rsi
	leaq	-16(%rdi), %rbx
	shrq	$4, %rbx
	addq	$1, %rbx
	movq	%rbx, %rbp
	salq	$4, %rbp
	cmpq	$14, %rsi
	jbe	.L76
	xorl	%r13d, %r13d
	pxor	%xmm0, %xmm0
	pxor	%xmm6, %xmm6
	pxor	%xmm5, %xmm5
	leaq	0(,%r10,4), %rsi
	addq	%rcx, %r10
	leaq	(%r8,%rsi), %r12
	addq	%rdx, %rsi
.L78:
	movdqa	%xmm6, %xmm1
	movdqa	%xmm5, %xmm7
	movdqu	(%rsi), %xmm2
	addq	$1, %r13
	movdqa	(%r10), %xmm3
	addq	$64, %r12
	addq	$16, %r10
	addq	$64, %rsi
	pcmpgtb	%xmm3, %xmm1
	movdqa	%xmm3, %xmm4
	punpcklbw	%xmm1, %xmm4
	punpckhbw	%xmm1, %xmm3
	pcmpgtw	%xmm4, %xmm7
	movdqu	-64(%r12), %xmm1
	paddd	%xmm1, %xmm2
	movdqa	%xmm4, %xmm1
	punpcklwd	%xmm7, %xmm1
	paddd	%xmm1, %xmm2
	movdqu	-48(%r12), %xmm1
	punpckhwd	%xmm7, %xmm4
	paddd	%xmm2, %xmm0
	movdqu	-48(%rsi), %xmm2
	movdqa	%xmm5, %xmm7
	pcmpgtw	%xmm3, %xmm7
	paddd	%xmm2, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm3, %xmm4
	movdqa	%xmm1, %xmm2
	movdqu	-32(%rsi), %xmm1
	punpcklwd	%xmm7, %xmm4
	punpckhwd	%xmm7, %xmm3
	paddd	%xmm0, %xmm2
	movdqu	-32(%r12), %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm4, %xmm0
	paddd	%xmm2, %xmm0
	movdqu	-16(%rsi), %xmm2
	movdqa	%xmm0, %xmm1
	movdqu	-16(%r12), %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	paddd	%xmm1, %xmm0
	cmpq	%r13, %rbx
	ja	.L78
	movdqa	%xmm0, %xmm1
	addq	%rbp, %r11
	psrldq	$8, %xmm1
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm2
	pshufd	$85, %xmm1, %xmm0
	punpckhdq	%xmm1, %xmm2
	movdqa	%xmm2, %xmm3
	pshufd	$255, %xmm1, %xmm2
	movd	%xmm2, %r10d
	movd	%r10d, %xmm2
	punpckldq	%xmm3, %xmm0
	punpcklqdq	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r10d
	addl	%r10d, %eax
	cmpq	%rbp, %rdi
	je	.L75
.L76:
	movl	(%r8,%r11,4), %r10d
	movl	(%rdx,%r11,4), %ebx
	addl	%r10d, %ebx
	movsbl	(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	1(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	1(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	2(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	2(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	3(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	3(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	4(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	4(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	5(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	5(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	6(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	6(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	7(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	7(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	8(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	8(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	9(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	9(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	10(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	10(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	11(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	11(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	12(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	12(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	leaq	13(%r11), %rbx
	addl	%r10d, %eax
	cmpq	%rbx, %r9
	jbe	.L75
	movl	(%rdx,%rbx,4), %r10d
	addl	(%r8,%rbx,4), %r10d
	movl	%r10d, %ebx
	movsbl	13(%rcx,%r11), %r10d
	addl	%ebx, %r10d
	addl	%r10d, %eax
	leaq	14(%r11), %r10
	cmpq	%r10, %r9
	jbe	.L75
	movl	(%rdx,%r10,4), %edx
	addl	(%r8,%r10,4), %edx
	movl	%edx, %r8d
	movsbl	14(%rcx,%r11), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
.L75:
	movl	%eax, _ZL13render_output(%rip)
.L71:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L102:
	testq	%r10, %r10
	jne	.L72
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	jmp	.L73
	.p2align 4,,10
.L82:
	xorl	%eax, %eax
	jmp	.L71
	.p2align 4,,10
.L91:
	movl	$7, %r11d
	jmp	.L74
	.p2align 4,,10
.L92:
	movl	$8, %r11d
	jmp	.L74
	.p2align 4,,10
.L93:
	movl	$9, %r11d
	jmp	.L74
	.p2align 4,,10
.L94:
	movl	$10, %r11d
	jmp	.L74
	.p2align 4,,10
.L95:
	movl	$11, %r11d
	jmp	.L74
	.p2align 4,,10
.L96:
	movl	$12, %r11d
	jmp	.L74
	.p2align 4,,10
.L97:
	movl	$13, %r11d
	jmp	.L74
	.p2align 4,,10
.L98:
	movl	$14, %r11d
	jmp	.L74
	.p2align 4,,10
.L87:
	movl	$3, %r11d
	jmp	.L74
	.p2align 4,,10
.L88:
	movl	$4, %r11d
	jmp	.L74
	.p2align 4,,10
.L89:
	movl	$5, %r11d
	jmp	.L74
	.p2align 4,,10
.L90:
	movl	$6, %r11d
	jmp	.L74
	.p2align 4,,10
.L85:
	movl	$1, %r11d
	jmp	.L74
	.p2align 4,,10
.L86:
	movl	$2, %r11d
	jmp	.L74
	.p2align 4,,10
.L99:
	movl	$15, %r11d
	jmp	.L74
	.p2align 4,,10
.L100:
	movl	$16, %r11d
	jmp	.L74
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	.def	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_:
.LFB8458:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rcx), %rax
	subq	(%rcx), %rax
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	sarq	$2, %rax
	je	.L111
	leaq	(%rax,%rax), %rdx
	cmpq	%rdx, %rax
	jbe	.L122
.L112:
	movq	$-4, %r12
	jmp	.L104
	.p2align 4,,10
.L111:
	movl	$4, %r12d
.L104:
	movq	%r12, %rcx
	call	_Znwy
	movq	%rax, %rsi
.L110:
	movq	(%rbx), %rbp
	movq	8(%rbx), %r8
	movl	(%rdi), %edx
	movq	%rsi, %rdi
	subq	%rbp, %r8
	movq	%r8, %rax
	sarq	$2, %rax
	addq	%r8, %rdi
	je	.L106
	movl	%edx, (%rdi)
.L106:
	testq	%rax, %rax
	jne	.L123
	addq	$4, %rdi
	testq	%rbp, %rbp
	je	.L109
.L108:
	movq	%rbp, %rcx
	call	_ZdlPv
.L109:
	movq	%rsi, (%rbx)
	addq	%r12, %rsi
	movq	%rdi, 8(%rbx)
	movq	%rsi, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L123:
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	addq	$4, %rdi
	call	memmove
	jmp	.L108
.L122:
	movabsq	$4611686018427387903, %rcx
	cmpq	%rcx, %rdx
	ja	.L112
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	testq	%rdx, %rdx
	je	.L110
	leaq	0(,%rax,8), %r12
	jmp	.L104
	.seh_endproc
	.weak	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIIRKiEEEvDpOT_
	.def	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIIRKiEEEvDpOT_;	.scl	2;	.type	32;	.endef
	.set	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIIRKiEEEvDpOT_,_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	.section	.text$_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.def	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_:
.LFB8603:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movabsq	$-3689348814741910323, %rax
	movq	%rcx, %rbx
	movq	(%rcx), %rcx
	movq	%rdx, %rbp
	movq	8(%rbx), %r10
	movq	%r10, %r8
	subq	%rcx, %r8
	movq	%r8, %rdx
	sarq	$2, %rdx
	imulq	%rdx, %rax
	testq	%rax, %rax
	je	.L133
	leaq	(%rax,%rax), %rdx
	cmpq	%rdx, %rax
	jbe	.L147
.L134:
	movq	$-16, %rdi
.L125:
	movq	%rdi, %rcx
	call	_Znwy
	movq	8(%rbx), %r10
	movq	(%rbx), %rcx
	leaq	20(%rax), %r12
	movq	%rax, %rsi
	addq	%rax, %rdi
	movq	%r10, %r8
	subq	%rcx, %r8
.L132:
	addq	%rsi, %r8
	je	.L127
	movq	0(%rbp), %rax
	movq	%rax, (%r8)
	movq	8(%rbp), %rax
	movq	%rax, 8(%r8)
	movl	16(%rbp), %eax
	movl	%eax, 16(%r8)
.L127:
	cmpq	%rcx, %r10
	je	.L128
	movq	%rcx, %rdx
	movq	%rsi, %r8
	.p2align 4,,10
.L130:
	testq	%r8, %r8
	je	.L129
	movq	(%rdx), %r9
	movq	%r9, (%r8)
	movq	8(%rdx), %r9
	movq	%r9, 8(%r8)
	movl	16(%rdx), %r9d
	movl	%r9d, 16(%r8)
.L129:
	addq	$20, %rdx
	addq	$20, %r8
	cmpq	%r10, %rdx
	jne	.L130
	leaq	20(%rcx), %rax
	subq	%rax, %rdx
	shrq	$2, %rdx
	leaq	40(%rsi,%rdx,4), %r12
.L128:
	testq	%rcx, %rcx
	je	.L131
	call	_ZdlPv
.L131:
	movq	%rsi, (%rbx)
	movq	%r12, 8(%rbx)
	movq	%rdi, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L133:
	movl	$20, %edi
	jmp	.L125
.L147:
	movabsq	$922337203685477580, %r9
	cmpq	%r9, %rdx
	ja	.L134
	testq	%rdx, %rdx
	jne	.L148
	movl	$20, %r12d
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L132
.L148:
	leaq	(%rdx,%rax,8), %rdi
	salq	$2, %rdi
	jmp	.L125
	.seh_endproc
	.weak	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_
	.def	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.set	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_,_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.section	.text$_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,"x"
	.linkonce discard
	.p2align 4,,15
	.globl	_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	.def	_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_:
.LFB8894:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	leaq	-1(%r8), %rax
	movq	%rax, %rbx
	shrq	$63, %rbx
	addq	%rax, %rbx
	sarq	%rbx
	cmpq	%rbx, %rdx
	jge	.L150
	movq	%rdx, %r11
	jmp	.L153
	.p2align 4,,10
.L161:
	movq	%rax, %r11
.L153:
	leaq	1(%r11), %r9
	leaq	(%r9,%r9), %rax
	salq	$4, %r9
	leaq	(%rcx,%r9), %r10
	movsd	-8(%rcx,%r9), %xmm1
	movsd	(%r10), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.L151
	subq	$1, %rax
	leaq	(%rcx,%rax,8), %r10
	movsd	(%r10), %xmm0
.L151:
	movsd	%xmm0, (%rcx,%r11,8)
	cmpq	%rbx, %rax
	jl	.L161
	testb	$1, %r8b
	jne	.L154
.L160:
	subq	$2, %r8
	movq	%r8, %r9
	shrq	$63, %r9
	addq	%r9, %r8
	sarq	%r8
	cmpq	%rax, %r8
	je	.L165
.L154:
	cmpq	%rdx, %rax
	jle	.L155
	leaq	-1(%rax), %r8
	movq	%r8, %r9
	shrq	$63, %r9
	addq	%r8, %r9
	sarq	%r9
	movsd	(%rcx,%r9,8), %xmm0
	ucomisd	%xmm0, %xmm3
	jbe	.L155
	leaq	(%rcx,%r9,8), %r10
	movsd	%xmm0, (%rcx,%rax,8)
	cmpq	%r9, %rdx
	jge	.L155
.L158:
	leaq	-1(%r9), %rax
	movq	%rax, %r8
	shrq	$63, %r8
	addq	%rax, %r8
	movq	%r9, %rax
	sarq	%r8
	movsd	(%rcx,%r8,8), %xmm0
	ucomisd	%xmm0, %xmm3
	jbe	.L155
	movq	%r8, %r9
	movsd	%xmm0, (%rcx,%rax,8)
	leaq	(%rcx,%r9,8), %r10
	cmpq	%r9, %rdx
	jl	.L158
.L155:
	movsd	%xmm3, (%r10)
	popq	%rbx
	ret
	.p2align 4,,10
.L165:
	leaq	2(%rax,%rax), %rax
	movsd	-8(%rcx,%rax,8), %xmm0
	subq	$1, %rax
	movsd	%xmm0, (%r10)
	leaq	(%rcx,%rax,8), %r10
	jmp	.L154
.L150:
	leaq	(%rcx,%rdx,8), %r10
	movq	%rdx, %rax
	testb	$1, %r8b
	je	.L160
	jmp	.L155
	.seh_endproc
	.text
	.p2align 4,,15
	.def	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78
_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78:
.LFB8990:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%r8, %r12
	subq	%rcx, %rax
	cmpq	$135, %rax
	jle	.L166
	testq	%r8, %r8
	je	.L191
	leaq	16(%rcx), %rbp
.L169:
	sarq	$4, %rax
	movsd	8(%rdi), %xmm1
	subq	$1, %r12
	leaq	(%rdi,%rax,8), %rax
	movsd	-8(%rdx), %xmm2
	movsd	(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L202
	ucomisd	%xmm0, %xmm2
	ja	.L206
	ucomisd	%xmm1, %xmm2
	movsd	(%rdi), %xmm0
	jbe	.L208
	movsd	%xmm2, (%rdi)
	movsd	%xmm0, -8(%rdx)
	movsd	(%rdi), %xmm1
.L177:
	movq	%rbp, %rcx
	movq	%rdx, %rax
	.p2align 4,,10
.L180:
	movsd	-8(%rcx), %xmm2
	leaq	-8(%rcx), %rbx
	movq	%rbx, %rsi
	ucomisd	%xmm2, %xmm1
	ja	.L185
	subq	$8, %rax
	ucomisd	%xmm1, %xmm0
	jbe	.L186
	.p2align 4,,10
.L199:
	subq	$8, %rax
	movsd	(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L199
.L186:
	cmpq	%rbx, %rax
	jbe	.L209
	movsd	%xmm0, -8(%rcx)
	movsd	-8(%rax), %xmm0
	movsd	%xmm2, (%rax)
	movsd	(%rdi), %xmm1
.L185:
	addq	$8, %rcx
	jmp	.L180
.L209:
	movq	%r12, %r8
	movq	%rbx, %rcx
	call	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78
	movq	%rbx, %rax
	subq	%rdi, %rax
	cmpq	$135, %rax
	jle	.L166
	testq	%r12, %r12
	je	.L168
	movq	%rbx, %rdx
	jmp	.L169
.L202:
	ucomisd	%xmm1, %xmm2
	ja	.L210
	ucomisd	%xmm0, %xmm2
	ja	.L211
.L206:
	movsd	(%rdi), %xmm1
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, (%rax)
	movsd	-8(%rdx), %xmm0
	movsd	(%rdi), %xmm1
	jmp	.L177
.L210:
	movsd	(%rdi), %xmm0
.L208:
	movsd	%xmm1, (%rdi)
	movsd	%xmm0, 8(%rdi)
	movsd	-8(%rdx), %xmm0
	jmp	.L177
.L211:
	movsd	(%rdi), %xmm0
	movsd	%xmm2, (%rdi)
	movsd	%xmm0, -8(%rdx)
	movsd	(%rdi), %xmm1
	jmp	.L177
.L191:
	movq	%rdx, %rsi
.L168:
	sarq	$3, %rax
	leaq	-2(%rax), %rbp
	movq	%rax, %rbx
	sarq	%rbp
	jmp	.L171
.L212:
	subq	$1, %rbp
.L171:
	movsd	(%rdi,%rbp,8), %xmm3
	movb	$0, 32(%rsp)
	movq	%rbx, %r8
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	call	_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	testq	%rbp, %rbp
	jne	.L212
.L172:
	subq	$8, %rsi
	movsd	(%rdi), %xmm0
	xorl	%edx, %edx
	movq	%rdi, %rcx
	movq	%rsi, %rbx
	movsd	(%rsi), %xmm3
	subq	%rdi, %rbx
	movsd	%xmm0, (%rsi)
	movq	%rbx, %r8
	movb	$0, 32(%rsp)
	sarq	$3, %r8
	call	_ZSt13__adjust_heapIPdxdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	cmpq	$15, %rbx
	jg	.L172
.L166:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "render:\0"
	.align 8
.LC1:
	.ascii "n;oop;raw;dod;render_dod;oop[i];raw[i];dod[i];render_dod[i]\0"
.LC2:
	.ascii "vector::_M_emplace_back_aux\0"
.LC3:
	.ascii ";\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB8217:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$552, %rsp
	.seh_stackalloc	552
	movaps	%xmm6, 432(%rsp)
	.seh_savexmm	%xmm6, 432
	movaps	%xmm7, 448(%rsp)
	.seh_savexmm	%xmm7, 448
	movaps	%xmm8, 464(%rsp)
	.seh_savexmm	%xmm8, 464
	movaps	%xmm9, 480(%rsp)
	.seh_savexmm	%xmm9, 480
	movaps	%xmm10, 496(%rsp)
	.seh_savexmm	%xmm10, 496
	movaps	%xmm11, 512(%rsp)
	.seh_savexmm	%xmm11, 512
	movaps	%xmm12, 528(%rsp)
	.seh_savexmm	%xmm12, 528
	.seh_endprologue
	movl	$10000, %r15d
	pxor	%xmm8, %xmm8
	pxor	%xmm6, %xmm6
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$7, %r8d
	leaq	.LC0(%rip), %rdx
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$59, %r8d
	leaq	.LC1(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.LEHE0:
	movsd	.LC4(%rip), %xmm7
	movl	$4, 164(%rsp)
	movsd	.LC6(%rip), %xmm9
.L413:
	leaq	352(%rsp), %rax
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	movq	$0, 192(%rsp)
	movq	%rax, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	leaq	320(%rsp), %rax
	xorl	%esi, %esi
	movq	$0, 200(%rsp)
	movq	%rax, 40(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	180(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	224(%rsp), %rax
	movq	$0, 208(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 288(%rsp)
	movq	$0, 296(%rsp)
	movq	$0, 304(%rsp)
	movq	$0, 320(%rsp)
	movq	$0, 328(%rsp)
	movq	$0, 336(%rsp)
	movq	%rax, 72(%rsp)
	jmp	.L239
	.p2align 4,,10
.L785:
	testq	%rcx, %rcx
	je	.L215
	movq	352(%rsp), %rax
	movq	%rax, (%rcx)
	movq	360(%rsp), %rax
	movq	%rax, 8(%rcx)
	movl	368(%rsp), %eax
	movl	%eax, 16(%rcx)
.L215:
	addq	$20, %rcx
	movq	%rcx, 328(%rsp)
	cmpq	%rdi, %r12
	je	.L217
.L786:
	testq	%rdi, %rdi
	je	.L218
	movb	%bpl, (%rdi)
.L218:
	addq	$1, %rdi
.L219:
	movq	200(%rsp), %rax
	cmpq	208(%rsp), %rax
	je	.L226
	movl	176(%rsp), %edx
	testq	%rax, %rax
	je	.L227
	movl	%edx, (%rax)
.L227:
	addq	$4, %rax
	movq	%rax, 200(%rsp)
.L228:
	movq	232(%rsp), %rax
	cmpq	240(%rsp), %rax
	je	.L229
	movl	180(%rsp), %edx
	testq	%rax, %rax
	je	.L230
	movl	%edx, (%rax)
.L230:
	addq	$4, %rax
	movq	%rax, 232(%rsp)
.L231:
	movq	264(%rsp), %rax
	cmpq	272(%rsp), %rax
	je	.L232
	movl	184(%rsp), %edx
	testq	%rax, %rax
	je	.L233
	movl	%edx, (%rax)
.L233:
	addq	$4, %rax
	movq	%rax, 264(%rsp)
.L234:
	movq	296(%rsp), %rax
	cmpq	304(%rsp), %rax
	je	.L235
	movl	188(%rsp), %edx
	testq	%rax, %rax
	je	.L236
	movl	%edx, (%rax)
.L236:
	addq	$4, %rax
	addq	$1, %rsi
	movq	%rax, 296(%rsp)
	cmpq	%r15, %rsi
	je	.L238
.L789:
	movq	328(%rsp), %rcx
	movq	336(%rsp), %r8
.L239:
	movq	%rsi, %rax
	movq	%rsi, %rbp
	movq	%rsi, %r9
	movl	%esi, 176(%rsp)
	leal	(%rsi,%rsi), %r10d
	movl	%esi, 356(%rsp)
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movl	%r10d, 180(%rsp)
	movl	%r10d, 360(%rsp)
	movq	%rdx, %rax
	shrq	$2, %rax
	leaq	(%rax,%rax,4), %rax
	subq	%rax, %rbp
	movq	%rdx, %rax
	shrq	$3, %rdx
	shrq	$4, %rax
	movb	%bpl, 352(%rsp)
	leaq	(%rax,%rax,4), %rax
	salq	$2, %rax
	subq	%rax, %r9
	leaq	(%rdx,%rdx,4), %rax
	movq	%rsi, %rdx
	movl	%r9d, 184(%rsp)
	addq	%rax, %rax
	movl	%r9d, 364(%rsp)
	subq	%rax, %rdx
	movl	%edx, 188(%rsp)
	movl	%edx, 368(%rsp)
	cmpq	%rcx, %r8
	jne	.L785
	movq	32(%rsp), %rdx
	movq	40(%rsp), %rcx
.LEHB1:
	call	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	cmpq	%rdi, %r12
	jne	.L786
.L217:
	subq	%rbx, %r12
	cmpq	$-1, %r12
	je	.L787
	movl	$1, %r14d
	testq	%r12, %r12
	je	.L221
	leaq	(%r12,%r12), %rax
	movq	$-1, %rdx
	cmpq	%rax, %r12
	cmovbe	%rax, %rdx
	movq	%rdx, %r14
.L221:
	movq	%r14, %rcx
	call	_Znwy
	movq	%rax, %rdi
	movq	%rax, %r13
	addq	%r12, %rdi
	je	.L222
	movb	%bpl, (%rdi)
.L222:
	testq	%r12, %r12
	jne	.L788
	addq	$1, %rdi
	testq	%rbx, %rbx
	je	.L225
.L224:
	movq	%rbx, %rcx
	call	_ZdlPv
.L225:
	leaq	0(%r13,%r14), %r12
	movq	%r13, %rbx
	jmp	.L219
.L235:
	leaq	188(%rsp), %rdx
	leaq	288(%rsp), %rcx
	call	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	addq	$1, %rsi
	cmpq	%r15, %rsi
	jne	.L789
.L238:
	movq	320(%rsp), %rax
	leaq	(%rbx,%r15), %rbp
	movq	%r15, %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	328(%rsp), %r12
	movq	192(%rsp), %rsi
	movq	%rax, %r13
	movq	%rax, 128(%rsp)
	movq	224(%rsp), %rdi
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	352(%rsp), %rax
	movq	%rsi, 32(%rsp)
	movq	%r12, %rsi
	movq	%rbx, %r12
	movq	%rax, 88(%rsp)
	movq	%rax, %r14
	movq	%r13, %rbx
	leaq	432(%rsp), %rax
	movq	%rdi, 40(%rsp)
	movq	%rax, %rdi
.L245:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r13d, %r13d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
.L241:
	movl	$0, _ZL13render_output(%rip)
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	cmpq	%rsi, %rbx
	je	.L244
	.p2align 4,,10
.L630:
	movl	8(%rcx), %eax
	addq	$20, %rcx
	addl	-16(%rcx), %eax
	movl	%eax, %edx
	movsbl	-20(%rcx), %eax
	addl	%edx, %eax
	addl	%eax, %r8d
	cmpq	%rcx, %rsi
	jne	.L630
	movl	%r8d, _ZL13render_output(%rip)
.L244:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	addl	$1, %r13d
	cmpq	$199999999, %rax
	jle	.L241
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	addq	$8, %r14
	cvtsi2sd	%r13d, %xmm1
	divsd	%xmm7, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%r14)
	cmpq	%rdi, %r14
	jne	.L245
	movq	88(%rsp), %r14
	movl	$6, %r8d
	movq	%r12, %rbx
	movl	$8, %r12d
	leaq	432(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdi
	leaq	8(%r14), %r13
	movq	%r14, %rcx
	call	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78
.L246:
	movsd	0(%r13), %xmm10
	movsd	352(%rsp), %xmm0
	ucomisd	%xmm10, %xmm0
	ja	.L790
	movsd	-8(%r13), %xmm0
	leaq	-8(%r13), %rax
	ucomisd	%xmm10, %xmm0
	ja	.L652
	jmp	.L791
	.p2align 4,,10
.L424:
	movq	%rdx, %rax
.L652:
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rax), %xmm0
	leaq	-8(%rax), %rdx
	ucomisd	%xmm10, %xmm0
	ja	.L424
.L252:
	movsd	%xmm10, (%rax)
.L251:
	leaq	432(%rsp), %rax
	addq	$8, %r13
	cmpq	%rax, %r13
	jne	.L246
	movsd	368(%rsp), %xmm1
	pxor	%xmm10, %xmm10
	cvtsi2sdq	%r15, %xmm10
	movq	.refptr._ZSt4cout(%rip), %rcx
	movsd	.LC7(%rip), %xmm11
	addsd	%xmm8, %xmm1
	addsd	376(%rsp), %xmm1
	addsd	384(%rsp), %xmm1
	addsd	392(%rsp), %xmm1
	addsd	400(%rsp), %xmm1
	addsd	408(%rsp), %xmm1
	divsd	%xmm9, %xmm1
	divsd	%xmm10, %xmm1
	mulsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	88(%rsp), %rax
	movq	%r15, 168(%rsp)
	movq	%rax, 104(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	1(%rbx), %rax
	movq	%rax, %rdx
	movq	%rax, 112(%rsp)
	movq	%rbp, %rax
	subq	%rbx, %rax
	movq	%rax, %r13
	movq	%rax, 32(%rsp)
	movq	%rbx, %rax
	negq	%rax
	andl	$15, %eax
	movq	%rax, %rcx
	movq	%rax, 144(%rsp)
	movq	%r13, %rax
	cmpq	%r13, %rcx
	cmovbe	%rcx, %rax
	cmpq	$17, %r13
	movq	%rax, %rcx
	movq	%rax, 152(%rsp)
	movq	%r13, %rax
	cmova	%rcx, %r13
	subq	%r13, %rax
	movq	%rax, 56(%rsp)
	subq	$16, %rax
	shrq	$4, %rax
	addq	$1, %rax
	movq	%rax, %rcx
	movq	%rax, 96(%rsp)
	salq	$4, %rax
	movq	%rax, %r14
	movq	%rbp, %rax
	subq	%rdx, %rax
	movq	%rax, 136(%rsp)
	subq	%r13, %rax
	movq	%rax, 40(%rsp)
	leaq	0(,%r13,4), %rax
	leaq	(%rsi,%rax), %rdx
	addq	%rdi, %rax
	movq	%rax, 64(%rsp)
	leaq	(%rbx,%r13), %rax
	movq	%rax, 72(%rsp)
	movq	%rcx, %rax
	salq	$6, %rax
	movq	%rdx, 80(%rsp)
	movq	%rax, 48(%rsp)
.L269:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r12d, %r12d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
.L257:
	movl	$0, _ZL13render_output(%rip)
	cmpq	%rbx, %rbp
	je	.L268
	testq	%r13, %r13
	je	.L425
	movl	(%rsi), %eax
	leaq	4(%rdi), %rcx
	addl	(%rdi), %eax
	leaq	4(%rsi), %r8
	movsbl	(%rbx), %edx
	addl	%edx, %eax
	cmpq	$1, %r13
	je	.L426
	movl	4(%rsi), %r10d
	leaq	2(%rbx), %rdx
	addl	4(%rdi), %r10d
	leaq	8(%rdi), %rcx
	movsbl	1(%rbx), %r9d
	leaq	8(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$2, %r13
	je	.L260
	movl	8(%rsi), %r10d
	leaq	3(%rbx), %rdx
	addl	8(%rdi), %r10d
	leaq	12(%rdi), %rcx
	movsbl	2(%rbx), %r9d
	leaq	12(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$3, %r13
	je	.L260
	movl	12(%rsi), %r10d
	leaq	4(%rbx), %rdx
	addl	12(%rdi), %r10d
	leaq	16(%rdi), %rcx
	movsbl	3(%rbx), %r9d
	leaq	16(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$4, %r13
	je	.L260
	movl	16(%rsi), %r10d
	leaq	5(%rbx), %rdx
	addl	16(%rdi), %r10d
	leaq	20(%rdi), %rcx
	movsbl	4(%rbx), %r9d
	leaq	20(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$5, %r13
	je	.L260
	movl	20(%rsi), %r10d
	leaq	6(%rbx), %rdx
	addl	20(%rdi), %r10d
	leaq	24(%rdi), %rcx
	movsbl	5(%rbx), %r9d
	leaq	24(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$6, %r13
	je	.L260
	movl	24(%rsi), %r10d
	leaq	7(%rbx), %rdx
	addl	24(%rdi), %r10d
	leaq	28(%rdi), %rcx
	movsbl	6(%rbx), %r9d
	leaq	28(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$7, %r13
	je	.L260
	movl	28(%rsi), %r10d
	leaq	8(%rbx), %rdx
	addl	28(%rdi), %r10d
	leaq	32(%rdi), %rcx
	movsbl	7(%rbx), %r9d
	leaq	32(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$8, %r13
	je	.L260
	movl	32(%rsi), %r10d
	leaq	9(%rbx), %rdx
	addl	32(%rdi), %r10d
	leaq	36(%rdi), %rcx
	movsbl	8(%rbx), %r9d
	leaq	36(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$9, %r13
	je	.L260
	movl	36(%rsi), %r10d
	leaq	10(%rbx), %rdx
	addl	36(%rdi), %r10d
	leaq	40(%rdi), %rcx
	movsbl	9(%rbx), %r9d
	leaq	40(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$10, %r13
	je	.L260
	movl	40(%rsi), %r10d
	leaq	11(%rbx), %rdx
	addl	40(%rdi), %r10d
	leaq	44(%rdi), %rcx
	movsbl	10(%rbx), %r9d
	leaq	44(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$11, %r13
	je	.L260
	movl	44(%rsi), %r10d
	leaq	12(%rbx), %rdx
	addl	44(%rdi), %r10d
	leaq	48(%rdi), %rcx
	movsbl	11(%rbx), %r9d
	leaq	48(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$12, %r13
	je	.L260
	movl	48(%rsi), %r10d
	leaq	13(%rbx), %rdx
	addl	48(%rdi), %r10d
	leaq	52(%rdi), %rcx
	movsbl	12(%rbx), %r9d
	leaq	52(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$13, %r13
	je	.L260
	movl	52(%rsi), %r10d
	leaq	14(%rbx), %rdx
	addl	52(%rdi), %r10d
	leaq	56(%rdi), %rcx
	movsbl	13(%rbx), %r9d
	leaq	56(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$14, %r13
	je	.L260
	movl	56(%rsi), %r10d
	leaq	15(%rbx), %rdx
	addl	56(%rdi), %r10d
	leaq	60(%rdi), %rcx
	movsbl	14(%rbx), %r9d
	leaq	60(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$15, %r13
	je	.L260
	movl	60(%rsi), %r10d
	leaq	16(%rbx), %rdx
	addl	60(%rdi), %r10d
	leaq	64(%rdi), %rcx
	movsbl	15(%rbx), %r9d
	leaq	64(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$16, %r13
	je	.L260
	movl	64(%rdi), %r10d
	leaq	17(%rbx), %rdx
	addl	64(%rsi), %r10d
	leaq	68(%rdi), %rcx
	movsbl	16(%rbx), %r9d
	leaq	68(%rsi), %r8
	addl	%r10d, %r9d
	addl	%r9d, %eax
.L260:
	cmpq	32(%rsp), %r13
	je	.L261
.L259:
	cmpq	$14, 40(%rsp)
	jbe	.L262
	movq	72(%rsp), %r15
	xorl	%r11d, %r11d
	pxor	%xmm3, %xmm3
	pxor	%xmm4, %xmm4
	movq	64(%rsp), %r10
	movq	80(%rsp), %r9
.L264:
	movdqa	(%r15), %xmm0
	movdqa	%xmm6, %xmm2
	movdqa	%xmm4, %xmm12
	addq	$1, %r11
	movdqu	(%r9), %xmm5
	addq	$64, %r10
	addq	$64, %r9
	addq	$16, %r15
	pcmpgtb	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm2, %xmm1
	punpckhbw	%xmm2, %xmm0
	pcmpgtw	%xmm1, %xmm12
	movdqu	-64(%r10), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm1, %xmm5
	punpcklwd	%xmm12, %xmm5
	paddd	%xmm5, %xmm2
	movdqu	-48(%r10), %xmm5
	punpckhwd	%xmm12, %xmm1
	paddd	%xmm2, %xmm3
	movdqu	-48(%r9), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm4, %xmm5
	paddd	%xmm2, %xmm1
	pcmpgtw	%xmm0, %xmm5
	paddd	%xmm3, %xmm1
	movdqu	-32(%r10), %xmm3
	movdqa	%xmm1, %xmm2
	movdqu	-32(%r9), %xmm1
	paddd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm5, %xmm0
	punpcklwd	%xmm5, %xmm3
	paddd	%xmm3, %xmm1
	movdqu	-16(%r10), %xmm3
	paddd	%xmm2, %xmm1
	movdqu	-16(%r9), %xmm2
	paddd	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	cmpq	%r11, 96(%rsp)
	ja	.L264
	movdqa	%xmm3, %xmm2
	movq	48(%rsp), %r11
	addq	%r14, %rdx
	psrldq	$8, %xmm2
	paddd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	pshufd	$85, %xmm2, %xmm3
	punpckhdq	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	pshufd	$255, %xmm2, %xmm0
	movd	%xmm0, %r9d
	movd	%r9d, %xmm0
	punpckldq	%xmm1, %xmm3
	addq	%r11, %rcx
	addq	%r11, %r8
	punpcklqdq	%xmm0, %xmm3
	paddd	%xmm3, %xmm2
	movd	%xmm2, %r9d
	addl	%r9d, %eax
	cmpq	56(%rsp), %r14
	je	.L261
	.p2align 4,,10
.L262:
	movl	(%r8), %r10d
	movsbl	(%rdx), %r9d
	addl	(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	1(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	4(%r8), %r10d
	movsbl	1(%rdx), %r9d
	addl	4(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	2(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	8(%r8), %r10d
	movsbl	2(%rdx), %r9d
	addl	8(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	3(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	12(%r8), %r10d
	movsbl	3(%rdx), %r9d
	addl	12(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	4(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	16(%r8), %r10d
	movsbl	4(%rdx), %r9d
	addl	16(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	5(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	20(%r8), %r10d
	movsbl	5(%rdx), %r9d
	addl	20(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	6(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	24(%r8), %r10d
	movsbl	6(%rdx), %r9d
	addl	24(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	7(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	28(%r8), %r10d
	movsbl	7(%rdx), %r9d
	addl	28(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	8(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	32(%r8), %r10d
	movsbl	8(%rdx), %r9d
	addl	32(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	9(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	36(%r8), %r10d
	movsbl	9(%rdx), %r9d
	addl	36(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	10(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	40(%r8), %r10d
	movsbl	10(%rdx), %r9d
	addl	40(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	11(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	44(%r8), %r10d
	movsbl	11(%rdx), %r9d
	addl	44(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	12(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	48(%r8), %r10d
	movsbl	12(%rdx), %r9d
	addl	48(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	13(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	52(%r8), %r10d
	movsbl	13(%rdx), %r9d
	addl	52(%rcx), %r10d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	leaq	14(%rdx), %r9
	cmpq	%r9, %rbp
	je	.L261
	movl	56(%rcx), %ecx
	movsbl	14(%rdx), %edx
	addl	56(%r8), %ecx
	addl	%edx, %ecx
	addl	%ecx, %eax
.L261:
	movl	%eax, _ZL13render_output(%rip)
.L268:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	addl	$1, %r12d
	cmpq	$199999999, %rax
	jle	.L257
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	104(%rsp), %rax
	cvtsi2sd	%r12d, %xmm1
	divsd	%xmm7, %xmm0
	addq	$8, %rax
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	movq	%rax, 104(%rsp)
	cmpq	%rax, 120(%rsp)
	jne	.L269
	movq	88(%rsp), %r14
	movl	$6, %r8d
	movl	$8, %r12d
	leaq	432(%rsp), %rdx
	movq	168(%rsp), %r15
	leaq	8(%r14), %r13
	movq	%r14, %rcx
	call	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78
.L270:
	movsd	0(%r13), %xmm12
	movsd	352(%rsp), %xmm0
	ucomisd	%xmm12, %xmm0
	ja	.L792
	movsd	-8(%r13), %xmm0
	leaq	-8(%r13), %rax
	ucomisd	%xmm12, %xmm0
	ja	.L653
	jmp	.L793
	.p2align 4,,10
.L428:
	movq	%rdx, %rax
.L653:
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rax), %xmm0
	leaq	-8(%rax), %rdx
	ucomisd	%xmm12, %xmm0
	ja	.L428
.L276:
	movsd	%xmm12, (%rax)
.L275:
	leaq	432(%rsp), %rax
	addq	$8, %r13
	cmpq	%rax, %r13
	jne	.L270
	movsd	368(%rsp), %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	addsd	%xmm8, %xmm1
	addsd	376(%rsp), %xmm1
	addsd	384(%rsp), %xmm1
	addsd	392(%rsp), %xmm1
	addsd	400(%rsp), %xmm1
	addsd	408(%rsp), %xmm1
	divsd	%xmm9, %xmm1
	divsd	%xmm10, %xmm1
	mulsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	88(%rsp), %rax
	movq	152(%rsp), %r12
	movq	%rax, 96(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	32(%rsp), %rax
	cmpq	$17, %rax
	cmovbe	%rax, %r12
	subq	%r12, %rax
	movq	%rax, 48(%rsp)
	subq	$16, %rax
	shrq	$4, %rax
	addq	$1, %rax
	movq	%rax, 80(%rsp)
	salq	$4, %rax
	movq	%rax, %r14
	movq	%rax, 120(%rsp)
	movq	136(%rsp), %rax
	movq	%r15, 136(%rsp)
	subq	%r12, %rax
	movq	%rax, 40(%rsp)
	leaq	0(,%r12,4), %rax
	leaq	(%rsi,%rax), %rcx
	addq	%rdi, %rax
	movq	%rax, 56(%rsp)
	leaq	(%rbx,%r12), %rax
	movq	%rcx, 72(%rsp)
	movq	%rax, 64(%rsp)
.L293:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r13d, %r13d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
.L281:
	movl	$0, _ZL13render_output(%rip)
	cmpq	%rbx, %rbp
	je	.L292
	testq	%r12, %r12
	je	.L429
	movl	(%rsi), %eax
	movsbl	(%rbx), %edx
	addl	(%rdi), %eax
	addl	%edx, %eax
	cmpq	$1, %r12
	je	.L430
	movl	4(%rsi), %ecx
	movsbl	1(%rbx), %edx
	addl	4(%rdi), %ecx
	addl	%ecx, %edx
	leaq	2(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$2, %r12
	je	.L431
	movl	8(%rsi), %ecx
	movsbl	2(%rbx), %edx
	addl	8(%rdi), %ecx
	addl	%ecx, %edx
	leaq	3(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$3, %r12
	je	.L432
	movl	12(%rsi), %ecx
	movsbl	3(%rbx), %edx
	addl	12(%rdi), %ecx
	addl	%ecx, %edx
	leaq	4(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$4, %r12
	je	.L433
	movl	16(%rsi), %ecx
	movsbl	4(%rbx), %edx
	addl	16(%rdi), %ecx
	addl	%ecx, %edx
	leaq	5(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$5, %r12
	je	.L434
	movl	20(%rsi), %ecx
	movsbl	5(%rbx), %edx
	addl	20(%rdi), %ecx
	addl	%ecx, %edx
	leaq	6(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$6, %r12
	je	.L435
	movl	24(%rsi), %ecx
	movsbl	6(%rbx), %edx
	addl	24(%rdi), %ecx
	addl	%ecx, %edx
	leaq	7(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$7, %r12
	je	.L436
	movl	28(%rsi), %ecx
	movsbl	7(%rbx), %edx
	addl	28(%rdi), %ecx
	addl	%ecx, %edx
	leaq	8(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$8, %r12
	je	.L437
	movl	32(%rsi), %ecx
	movsbl	8(%rbx), %edx
	addl	32(%rdi), %ecx
	addl	%ecx, %edx
	leaq	9(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$9, %r12
	je	.L438
	movl	36(%rsi), %ecx
	movsbl	9(%rbx), %edx
	addl	36(%rdi), %ecx
	addl	%ecx, %edx
	leaq	10(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$10, %r12
	je	.L439
	movl	40(%rsi), %ecx
	movsbl	10(%rbx), %edx
	addl	40(%rdi), %ecx
	addl	%ecx, %edx
	leaq	11(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$11, %r12
	je	.L440
	movl	44(%rsi), %ecx
	movsbl	11(%rbx), %edx
	addl	44(%rdi), %ecx
	addl	%ecx, %edx
	leaq	12(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$12, %r12
	je	.L441
	movl	48(%rsi), %ecx
	movsbl	12(%rbx), %edx
	addl	48(%rdi), %ecx
	addl	%ecx, %edx
	leaq	13(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$13, %r12
	je	.L442
	movl	52(%rsi), %ecx
	movsbl	13(%rbx), %edx
	addl	52(%rdi), %ecx
	addl	%ecx, %edx
	leaq	14(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$14, %r12
	je	.L443
	movl	56(%rsi), %ecx
	movsbl	14(%rbx), %edx
	addl	56(%rdi), %ecx
	addl	%ecx, %edx
	leaq	15(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$15, %r12
	je	.L444
	movl	60(%rsi), %ecx
	movsbl	15(%rbx), %edx
	addl	60(%rdi), %ecx
	addl	%ecx, %edx
	leaq	16(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$16, %r12
	je	.L445
	movl	64(%rdi), %ecx
	movl	$17, %r8d
	addl	64(%rsi), %ecx
	movsbl	16(%rbx), %edx
	addl	%ecx, %edx
	leaq	17(%rbx), %rcx
	addl	%edx, %eax
	movl	$17, %edx
.L284:
	cmpq	%r12, 32(%rsp)
	je	.L285
.L283:
	cmpq	$14, 40(%rsp)
	jbe	.L286
	movq	64(%rsp), %r15
	xorl	%r11d, %r11d
	pxor	%xmm3, %xmm3
	pxor	%xmm4, %xmm4
	movq	56(%rsp), %r10
	movq	72(%rsp), %r9
.L287:
	movdqa	(%r15), %xmm0
	movdqa	%xmm6, %xmm2
	movdqa	%xmm4, %xmm12
	addq	$1, %r11
	movdqu	(%r9), %xmm5
	addq	$64, %r10
	addq	$64, %r9
	addq	$16, %r15
	pcmpgtb	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm2, %xmm1
	punpckhbw	%xmm2, %xmm0
	pcmpgtw	%xmm1, %xmm12
	movdqu	-64(%r10), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm1, %xmm5
	punpcklwd	%xmm12, %xmm5
	paddd	%xmm5, %xmm2
	movdqu	-48(%r10), %xmm5
	punpckhwd	%xmm12, %xmm1
	paddd	%xmm2, %xmm3
	movdqu	-48(%r9), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm4, %xmm5
	paddd	%xmm2, %xmm1
	pcmpgtw	%xmm0, %xmm5
	paddd	%xmm3, %xmm1
	movdqu	-32(%r10), %xmm3
	movdqa	%xmm1, %xmm2
	movdqu	-32(%r9), %xmm1
	paddd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm5, %xmm0
	punpcklwd	%xmm5, %xmm3
	paddd	%xmm3, %xmm1
	movdqu	-16(%r10), %xmm3
	paddd	%xmm2, %xmm1
	movdqu	-16(%r9), %xmm2
	paddd	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	cmpq	%r11, 80(%rsp)
	ja	.L287
	movdqa	%xmm3, %xmm2
	addq	%r14, %rdx
	addq	%r14, %r8
	psrldq	$8, %xmm2
	addq	%r14, %rcx
	paddd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	pshufd	$85, %xmm2, %xmm3
	punpckhdq	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	pshufd	$255, %xmm2, %xmm0
	movd	%xmm0, %r9d
	movd	%r9d, %xmm0
	punpckldq	%xmm1, %xmm3
	punpcklqdq	%xmm0, %xmm3
	paddd	%xmm3, %xmm2
	movd	%xmm2, %r9d
	addl	%r9d, %eax
	cmpq	48(%rsp), %r14
	je	.L285
	.p2align 4,,10
.L286:
	movl	(%rsi,%r8,4), %r9d
	movsbl	(%rcx), %ecx
	addl	(%rdi,%r8,4), %r9d
	leaq	1(%rdx), %r8
	addl	%ecx, %r9d
	addl	%r9d, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	2(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	3(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	4(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	5(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	6(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	7(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	8(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	9(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	10(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	11(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	12(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	13(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L285
	movl	(%rsi,%r8,4), %ecx
	addq	$14, %rdx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	(%rbx,%rdx), %r8
	addl	%ecx, %eax
	cmpq	%r8, %rbp
	je	.L285
	movl	(%rdi,%rdx,4), %ecx
	addl	(%rsi,%rdx,4), %ecx
	movsbl	(%r8), %edx
	addl	%edx, %ecx
	addl	%ecx, %eax
.L285:
	movl	%eax, _ZL13render_output(%rip)
.L292:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	addl	$1, %r13d
	cmpq	$199999999, %rax
	jle	.L281
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	96(%rsp), %rax
	cvtsi2sd	%r13d, %xmm1
	divsd	%xmm7, %xmm0
	addq	$8, %rax
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	movq	%rax, 96(%rsp)
	cmpq	%rax, 104(%rsp)
	jne	.L293
	movq	88(%rsp), %r14
	movl	$6, %r8d
	movl	$8, %r13d
	leaq	432(%rsp), %rdx
	movq	136(%rsp), %r15
	movq	%r14, %rcx
	call	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78
	leaq	8(%r14), %r14
.L294:
	movsd	(%r14), %xmm12
	movsd	352(%rsp), %xmm0
	ucomisd	%xmm12, %xmm0
	ja	.L794
	movsd	-8(%r14), %xmm0
	leaq	-8(%r14), %rax
	ucomisd	%xmm12, %xmm0
	ja	.L654
	jmp	.L795
	.p2align 4,,10
.L447:
	movq	%rdx, %rax
.L654:
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rax), %xmm0
	leaq	-8(%rax), %rdx
	ucomisd	%xmm12, %xmm0
	ja	.L447
.L300:
	movsd	%xmm12, (%rax)
.L299:
	leaq	432(%rsp), %rax
	addq	$8, %r14
	cmpq	%rax, %r14
	jne	.L294
	movsd	368(%rsp), %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	addsd	%xmm8, %xmm1
	addsd	376(%rsp), %xmm1
	addsd	384(%rsp), %xmm1
	addsd	392(%rsp), %xmm1
	addsd	400(%rsp), %xmm1
	addsd	408(%rsp), %xmm1
	divsd	%xmm9, %xmm1
	divsd	%xmm10, %xmm1
	mulsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	88(%rsp), %rax
	movq	%r15, 136(%rsp)
	movq	120(%rsp), %r14
	movq	%rax, 96(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 104(%rsp)
.L317:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r13d, %r13d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
.L305:
	movl	$0, _ZL13render_output(%rip)
	cmpq	%rbx, %rbp
	je	.L316
	testq	%r12, %r12
	je	.L448
	movl	(%rsi), %eax
	movsbl	(%rbx), %edx
	addl	(%rdi), %eax
	addl	%edx, %eax
	cmpq	$1, %r12
	je	.L449
	movl	4(%rsi), %ecx
	movsbl	1(%rbx), %edx
	addl	4(%rdi), %ecx
	addl	%ecx, %edx
	leaq	2(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$2, %r12
	je	.L450
	movl	8(%rsi), %ecx
	movsbl	2(%rbx), %edx
	addl	8(%rdi), %ecx
	addl	%ecx, %edx
	leaq	3(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$3, %r12
	je	.L451
	movl	12(%rsi), %ecx
	movsbl	3(%rbx), %edx
	addl	12(%rdi), %ecx
	addl	%ecx, %edx
	leaq	4(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$4, %r12
	je	.L452
	movl	16(%rsi), %ecx
	movsbl	4(%rbx), %edx
	addl	16(%rdi), %ecx
	addl	%ecx, %edx
	leaq	5(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$5, %r12
	je	.L453
	movl	20(%rsi), %ecx
	movsbl	5(%rbx), %edx
	addl	20(%rdi), %ecx
	addl	%ecx, %edx
	leaq	6(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$6, %r12
	je	.L454
	movl	24(%rsi), %ecx
	movsbl	6(%rbx), %edx
	addl	24(%rdi), %ecx
	addl	%ecx, %edx
	leaq	7(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$7, %r12
	je	.L455
	movl	28(%rsi), %ecx
	movsbl	7(%rbx), %edx
	addl	28(%rdi), %ecx
	addl	%ecx, %edx
	leaq	8(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$8, %r12
	je	.L456
	movl	32(%rsi), %ecx
	movsbl	8(%rbx), %edx
	addl	32(%rdi), %ecx
	addl	%ecx, %edx
	leaq	9(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$9, %r12
	je	.L457
	movl	36(%rsi), %ecx
	movsbl	9(%rbx), %edx
	addl	36(%rdi), %ecx
	addl	%ecx, %edx
	leaq	10(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$10, %r12
	je	.L458
	movl	40(%rsi), %ecx
	movsbl	10(%rbx), %edx
	addl	40(%rdi), %ecx
	addl	%ecx, %edx
	leaq	11(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$11, %r12
	je	.L459
	movl	44(%rsi), %ecx
	movsbl	11(%rbx), %edx
	addl	44(%rdi), %ecx
	addl	%ecx, %edx
	leaq	12(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$12, %r12
	je	.L460
	movl	48(%rsi), %ecx
	movsbl	12(%rbx), %edx
	addl	48(%rdi), %ecx
	addl	%ecx, %edx
	leaq	13(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$13, %r12
	je	.L461
	movl	52(%rsi), %ecx
	movsbl	13(%rbx), %edx
	addl	52(%rdi), %ecx
	addl	%ecx, %edx
	leaq	14(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$14, %r12
	je	.L462
	movl	56(%rsi), %ecx
	movsbl	14(%rbx), %edx
	addl	56(%rdi), %ecx
	addl	%ecx, %edx
	leaq	15(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$15, %r12
	je	.L463
	movl	60(%rsi), %ecx
	movsbl	15(%rbx), %edx
	addl	60(%rdi), %ecx
	addl	%ecx, %edx
	leaq	16(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$16, %r12
	je	.L464
	movl	64(%rdi), %ecx
	movl	$17, %r8d
	addl	64(%rsi), %ecx
	movsbl	16(%rbx), %edx
	addl	%ecx, %edx
	leaq	17(%rbx), %rcx
	addl	%edx, %eax
	movl	$17, %edx
.L308:
	cmpq	%r12, 32(%rsp)
	je	.L309
.L307:
	cmpq	$14, 40(%rsp)
	jbe	.L310
	movq	64(%rsp), %r15
	xorl	%r11d, %r11d
	pxor	%xmm3, %xmm3
	pxor	%xmm4, %xmm4
	movq	56(%rsp), %r10
	movq	72(%rsp), %r9
.L311:
	movdqa	(%r15), %xmm0
	movdqa	%xmm6, %xmm2
	movdqa	%xmm4, %xmm12
	addq	$1, %r11
	movdqu	(%r9), %xmm5
	addq	$64, %r10
	addq	$64, %r9
	addq	$16, %r15
	pcmpgtb	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm2, %xmm1
	punpckhbw	%xmm2, %xmm0
	pcmpgtw	%xmm1, %xmm12
	movdqu	-64(%r10), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm1, %xmm5
	punpcklwd	%xmm12, %xmm5
	paddd	%xmm5, %xmm2
	movdqu	-48(%r10), %xmm5
	punpckhwd	%xmm12, %xmm1
	paddd	%xmm2, %xmm3
	movdqu	-48(%r9), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm4, %xmm5
	paddd	%xmm2, %xmm1
	pcmpgtw	%xmm0, %xmm5
	paddd	%xmm3, %xmm1
	movdqu	-32(%r10), %xmm3
	movdqa	%xmm1, %xmm2
	movdqu	-32(%r9), %xmm1
	paddd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm5, %xmm0
	punpcklwd	%xmm5, %xmm3
	paddd	%xmm3, %xmm1
	movdqu	-16(%r10), %xmm3
	paddd	%xmm2, %xmm1
	movdqu	-16(%r9), %xmm2
	paddd	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	cmpq	%r11, 80(%rsp)
	ja	.L311
	movdqa	%xmm3, %xmm2
	addq	%r14, %rdx
	addq	%r14, %r8
	psrldq	$8, %xmm2
	addq	%r14, %rcx
	paddd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	pshufd	$85, %xmm2, %xmm3
	punpckhdq	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	pshufd	$255, %xmm2, %xmm0
	movd	%xmm0, %r9d
	movd	%r9d, %xmm0
	punpckldq	%xmm1, %xmm3
	punpcklqdq	%xmm0, %xmm3
	paddd	%xmm3, %xmm2
	movd	%xmm2, %r9d
	addl	%r9d, %eax
	cmpq	48(%rsp), %r14
	je	.L309
	.p2align 4,,10
.L310:
	movl	(%rsi,%r8,4), %r9d
	movsbl	(%rcx), %ecx
	addl	(%rdi,%r8,4), %r9d
	leaq	1(%rdx), %r8
	addl	%ecx, %r9d
	addl	%r9d, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	2(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	3(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	4(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	5(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	6(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	7(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	8(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	9(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	10(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	11(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	12(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	13(%rdx), %r8
	addl	%ecx, %eax
	leaq	(%rbx,%r8), %r9
	cmpq	%r9, %rbp
	je	.L309
	movl	(%rsi,%r8,4), %ecx
	addq	$14, %rdx
	addl	(%rdi,%r8,4), %ecx
	movsbl	(%r9), %r8d
	addl	%r8d, %ecx
	leaq	(%rbx,%rdx), %r8
	addl	%ecx, %eax
	cmpq	%r8, %rbp
	je	.L309
	movl	(%rdi,%rdx,4), %ecx
	addl	(%rsi,%rdx,4), %ecx
	movsbl	(%r8), %edx
	addl	%edx, %ecx
	addl	%ecx, %eax
.L309:
	movl	%eax, _ZL13render_output(%rip)
.L316:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	addl	$1, %r13d
	cmpq	$199999999, %rax
	jle	.L305
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	96(%rsp), %rax
	cvtsi2sd	%r13d, %xmm1
	divsd	%xmm7, %xmm0
	addq	$8, %rax
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	movq	%rax, 96(%rsp)
	cmpq	%rax, 104(%rsp)
	jne	.L317
	movq	88(%rsp), %r14
	movl	$6, %r8d
	movl	$8, %ebp
	leaq	432(%rsp), %rdx
	movq	136(%rsp), %r15
	leaq	8(%r14), %r12
	movq	%r14, %rcx
	call	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78
.L318:
	movsd	(%r12), %xmm12
	movsd	352(%rsp), %xmm0
	ucomisd	%xmm12, %xmm0
	ja	.L796
	movsd	-8(%r12), %xmm0
	leaq	-8(%r12), %rax
	ucomisd	%xmm12, %xmm0
	ja	.L655
	jmp	.L797
	.p2align 4,,10
.L466:
	movq	%rdx, %rax
.L655:
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rax), %xmm0
	leaq	-8(%rax), %rdx
	ucomisd	%xmm12, %xmm0
	ja	.L466
.L324:
	movsd	%xmm12, (%rax)
.L323:
	leaq	432(%rsp), %rax
	addq	$8, %r12
	cmpq	%rax, %r12
	jne	.L318
	movsd	368(%rsp), %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	addsd	%xmm8, %xmm1
	addsd	376(%rsp), %xmm1
	addsd	384(%rsp), %xmm1
	addsd	392(%rsp), %xmm1
	addsd	400(%rsp), %xmm1
	addsd	408(%rsp), %xmm1
	divsd	%xmm9, %xmm1
	divsd	%xmm10, %xmm1
	mulsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	88(%rsp), %r12
	leaq	(%r15,%r15,4), %rax
	movq	%rsi, 32(%rsp)
	movq	128(%rsp), %rcx
	leaq	432(%rsp), %r13
	leaq	(%rcx,%rax,4), %r14
	movq	%r14, %rsi
	movq	%rbx, %r14
	movq	%rcx, %rbx
.L330:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%ebp, %ebp
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
.L329:
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	.p2align 4,,10
.L328:
	movl	8(%rcx), %eax
	addq	$20, %rcx
	addl	-16(%rcx), %eax
	movl	%eax, %edx
	movsbl	-20(%rcx), %eax
	addl	%edx, %eax
	addl	%eax, %r8d
	cmpq	%rcx, %rsi
	jne	.L328
	movl	%r8d, _ZL13render_output(%rip)
	addl	$1, %ebp
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$199999999, %rax
	jle	.L329
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	addq	$8, %r12
	cvtsi2sd	%ebp, %xmm1
	divsd	%xmm7, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%r12)
	cmpq	%r13, %r12
	jne	.L330
	movq	%r14, %rbx
	movq	88(%rsp), %r14
	movl	$6, %r8d
	movl	$8, %ebp
	leaq	432(%rsp), %rdx
	movq	32(%rsp), %rsi
	leaq	8(%r14), %r12
	movq	%r14, %rcx
	call	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78
.L331:
	movsd	(%r12), %xmm12
	movsd	352(%rsp), %xmm0
	ucomisd	%xmm12, %xmm0
	ja	.L798
	movsd	-8(%r12), %xmm0
	leaq	-8(%r12), %rax
	ucomisd	%xmm12, %xmm0
	ja	.L656
	jmp	.L799
	.p2align 4,,10
.L468:
	movq	%rdx, %rax
.L656:
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rax), %xmm0
	leaq	-8(%rax), %rdx
	ucomisd	%xmm12, %xmm0
	ja	.L468
.L337:
	movsd	%xmm12, (%rax)
.L336:
	leaq	432(%rsp), %rax
	addq	$8, %r12
	cmpq	%rax, %r12
	jne	.L331
	movsd	368(%rsp), %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	addsd	%xmm8, %xmm1
	addsd	376(%rsp), %xmm1
	addsd	384(%rsp), %xmm1
	addsd	392(%rsp), %xmm1
	addsd	400(%rsp), %xmm1
	addsd	408(%rsp), %xmm1
	divsd	%xmm9, %xmm1
	divsd	%xmm10, %xmm1
	mulsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	88(%rsp), %rax
	leaq	-1(%r15), %r13
	movq	%rax, 72(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	144(%rsp), %rax
	cmpq	%r15, %rax
	cmova	%r15, %rax
	cmpq	$17, %r15
	movq	%rax, %rbp
	movq	%r15, %rax
	cmovbe	%r15, %rbp
	subq	%rbp, %rax
	subq	%rbp, %r13
	movq	%rax, 32(%rsp)
	subq	$16, %rax
	shrq	$4, %rax
	addq	$1, %rax
	movq	%rax, 64(%rsp)
	salq	$4, %rax
	movq	%rax, %r12
	leaq	0(,%rbp,4), %rax
	leaq	(%rsi,%rax), %rcx
	addq	%rdi, %rax
	movq	%rax, 40(%rsp)
	leaq	(%rbx,%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	%rbx, %rax
	movq	%r15, %rbx
	movq	%rbp, %r15
	movq	%rcx, 56(%rsp)
	movq	%rax, %rbp
.L351:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r14d, %r14d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
.L350:
	testq	%r15, %r15
	je	.L469
	movl	(%rsi), %eax
	movsbl	0(%rbp), %edx
	addl	(%rdi), %eax
	addl	%edx, %eax
	cmpq	$1, %r15
	je	.L470
	movl	4(%rsi), %r8d
	movsbl	1(%rbp), %edx
	addl	4(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$2, %r15
	je	.L471
	movl	8(%rsi), %r8d
	movsbl	2(%rbp), %edx
	addl	8(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$3, %r15
	je	.L472
	movl	12(%rsi), %r8d
	movsbl	3(%rbp), %edx
	addl	12(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$4, %r15
	je	.L473
	movl	16(%rsi), %r8d
	movsbl	4(%rbp), %edx
	addl	16(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$5, %r15
	je	.L474
	movl	20(%rsi), %r8d
	movsbl	5(%rbp), %edx
	addl	20(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$6, %r15
	je	.L475
	movl	24(%rsi), %r8d
	movsbl	6(%rbp), %edx
	addl	24(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$7, %r15
	je	.L476
	movl	28(%rsi), %r8d
	movsbl	7(%rbp), %edx
	addl	28(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$8, %r15
	je	.L477
	movl	32(%rsi), %r8d
	movsbl	8(%rbp), %edx
	addl	32(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$9, %r15
	je	.L478
	movl	36(%rsi), %r8d
	movsbl	9(%rbp), %edx
	addl	36(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$10, %r15
	je	.L479
	movl	40(%rsi), %r8d
	movsbl	10(%rbp), %edx
	addl	40(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$11, %r15
	je	.L480
	movl	44(%rsi), %r8d
	movsbl	11(%rbp), %edx
	addl	44(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$12, %r15
	je	.L481
	movl	48(%rsi), %r8d
	movsbl	12(%rbp), %edx
	addl	48(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$13, %r15
	je	.L482
	movl	52(%rsi), %r8d
	movsbl	13(%rbp), %edx
	addl	52(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$14, %r15
	je	.L483
	movl	56(%rsi), %r8d
	movsbl	14(%rbp), %edx
	addl	56(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$15, %r15
	je	.L484
	movl	60(%rsi), %r8d
	movsbl	15(%rbp), %edx
	addl	60(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$16, %r15
	je	.L485
	movl	64(%rdi), %r8d
	movsbl	16(%rbp), %edx
	addl	64(%rsi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	movl	$17, %edx
.L342:
	cmpq	%r15, %rbx
	je	.L343
.L341:
	cmpq	$14, %r13
	jbe	.L344
	movq	48(%rsp), %r11
	xorl	%r10d, %r10d
	pxor	%xmm3, %xmm3
	pxor	%xmm4, %xmm4
	movq	40(%rsp), %r9
	movq	56(%rsp), %r8
.L346:
	movdqa	(%r11), %xmm0
	movdqa	%xmm6, %xmm2
	movdqa	%xmm4, %xmm12
	addq	$1, %r10
	movdqu	(%r8), %xmm5
	addq	$64, %r9
	addq	$64, %r8
	addq	$16, %r11
	pcmpgtb	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm2, %xmm1
	punpckhbw	%xmm2, %xmm0
	pcmpgtw	%xmm1, %xmm12
	movdqu	-64(%r9), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm1, %xmm5
	punpcklwd	%xmm12, %xmm5
	paddd	%xmm5, %xmm2
	movdqu	-48(%r9), %xmm5
	punpckhwd	%xmm12, %xmm1
	paddd	%xmm2, %xmm3
	movdqu	-48(%r8), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm4, %xmm5
	paddd	%xmm2, %xmm1
	pcmpgtw	%xmm0, %xmm5
	paddd	%xmm3, %xmm1
	movdqu	-32(%r9), %xmm3
	movdqa	%xmm1, %xmm2
	movdqu	-32(%r8), %xmm1
	paddd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm5, %xmm0
	punpcklwd	%xmm5, %xmm3
	paddd	%xmm3, %xmm1
	movdqu	-16(%r9), %xmm3
	paddd	%xmm2, %xmm1
	movdqu	-16(%r8), %xmm2
	paddd	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	cmpq	%r10, 64(%rsp)
	ja	.L346
	movdqa	%xmm3, %xmm2
	addq	%r12, %rdx
	psrldq	$8, %xmm2
	paddd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	pshufd	$85, %xmm2, %xmm3
	punpckhdq	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	pshufd	$255, %xmm2, %xmm0
	movd	%xmm0, %r8d
	movd	%r8d, %xmm0
	punpckldq	%xmm1, %xmm3
	punpcklqdq	%xmm0, %xmm3
	paddd	%xmm3, %xmm2
	movd	%xmm2, %r8d
	addl	%r8d, %eax
	cmpq	32(%rsp), %r12
	je	.L343
	.p2align 4,,10
.L344:
	movl	(%rsi,%rdx,4), %r9d
	movsbl	0(%rbp,%rdx), %r8d
	addl	(%rdi,%rdx,4), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	1(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	1(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	2(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	2(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	3(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	3(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	4(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	4(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	5(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	5(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	6(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	6(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	7(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	7(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	8(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	8(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	9(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	9(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	10(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	10(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	11(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	11(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	12(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	12(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	13(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	13(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	14(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L343
	movl	(%rdi,%r8,4), %r9d
	movsbl	14(%rbp,%rdx), %edx
	addl	(%rsi,%r8,4), %r9d
	addl	%edx, %r9d
	addl	%r9d, %eax
.L343:
	movl	%eax, _ZL13render_output(%rip)
	addl	$1, %r14d
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$199999999, %rax
	jle	.L350
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	72(%rsp), %rax
	cvtsi2sd	%r14d, %xmm1
	divsd	%xmm7, %xmm0
	addq	$8, %rax
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	movq	%rax, 72(%rsp)
	cmpq	%rax, 80(%rsp)
	jne	.L351
	movq	88(%rsp), %r14
	movq	%rbp, %rax
	movl	$6, %r8d
	movq	%r15, %rbp
	leaq	432(%rsp), %rdx
	movq	%rbx, %r15
	movq	%rax, %rbx
	movq	%r14, %rcx
	call	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78
	leaq	8(%r14), %r14
.L352:
	movsd	(%r14), %xmm12
	movsd	352(%rsp), %xmm0
	ucomisd	%xmm12, %xmm0
	ja	.L800
	movsd	-8(%r14), %xmm0
	leaq	-8(%r14), %rax
	ucomisd	%xmm12, %xmm0
	ja	.L657
	jmp	.L801
	.p2align 4,,10
.L487:
	movq	%rdx, %rax
.L657:
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rax), %xmm0
	leaq	-8(%rax), %rdx
	ucomisd	%xmm12, %xmm0
	ja	.L487
.L358:
	movsd	%xmm12, (%rax)
.L357:
	leaq	432(%rsp), %rax
	addq	$8, %r14
	cmpq	%rax, %r14
	jne	.L352
	movsd	368(%rsp), %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	addsd	%xmm8, %xmm1
	addsd	376(%rsp), %xmm1
	addsd	384(%rsp), %xmm1
	addsd	392(%rsp), %xmm1
	addsd	400(%rsp), %xmm1
	addsd	408(%rsp), %xmm1
	divsd	%xmm9, %xmm1
	divsd	%xmm10, %xmm1
	mulsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	88(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	%rbx, %rax
	movq	%r15, %rbx
	movq	%rbp, %r15
	movq	%rax, %rbp
.L372:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r14d, %r14d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
.L371:
	testq	%r15, %r15
	je	.L488
	movl	(%rsi), %eax
	movsbl	0(%rbp), %edx
	addl	(%rdi), %eax
	addl	%edx, %eax
	cmpq	$1, %r15
	je	.L489
	movl	4(%rsi), %r8d
	movsbl	1(%rbp), %edx
	addl	4(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$2, %r15
	je	.L490
	movl	8(%rsi), %r8d
	movsbl	2(%rbp), %edx
	addl	8(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$3, %r15
	je	.L491
	movl	12(%rsi), %r8d
	movsbl	3(%rbp), %edx
	addl	12(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$4, %r15
	je	.L492
	movl	16(%rsi), %r8d
	movsbl	4(%rbp), %edx
	addl	16(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$5, %r15
	je	.L493
	movl	20(%rsi), %r8d
	movsbl	5(%rbp), %edx
	addl	20(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$6, %r15
	je	.L494
	movl	24(%rsi), %r8d
	movsbl	6(%rbp), %edx
	addl	24(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$7, %r15
	je	.L495
	movl	28(%rsi), %r8d
	movsbl	7(%rbp), %edx
	addl	28(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$8, %r15
	je	.L496
	movl	32(%rsi), %r8d
	movsbl	8(%rbp), %edx
	addl	32(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$9, %r15
	je	.L497
	movl	36(%rsi), %r8d
	movsbl	9(%rbp), %edx
	addl	36(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$10, %r15
	je	.L498
	movl	40(%rsi), %r8d
	movsbl	10(%rbp), %edx
	addl	40(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$11, %r15
	je	.L499
	movl	44(%rsi), %r8d
	movsbl	11(%rbp), %edx
	addl	44(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$12, %r15
	je	.L500
	movl	48(%rsi), %r8d
	movsbl	12(%rbp), %edx
	addl	48(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$13, %r15
	je	.L501
	movl	52(%rsi), %r8d
	movsbl	13(%rbp), %edx
	addl	52(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$14, %r15
	je	.L502
	movl	56(%rsi), %r8d
	movsbl	14(%rbp), %edx
	addl	56(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$15, %r15
	je	.L503
	movl	60(%rsi), %r8d
	movsbl	15(%rbp), %edx
	addl	60(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$16, %r15
	je	.L504
	movl	64(%rdi), %r8d
	movsbl	16(%rbp), %edx
	addl	64(%rsi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	movl	$17, %edx
.L363:
	cmpq	%r15, %rbx
	je	.L364
.L362:
	cmpq	$14, %r13
	jbe	.L365
	movq	48(%rsp), %r11
	xorl	%r10d, %r10d
	pxor	%xmm3, %xmm3
	pxor	%xmm4, %xmm4
	movq	40(%rsp), %r9
	movq	56(%rsp), %r8
.L367:
	movdqa	(%r11), %xmm0
	movdqa	%xmm6, %xmm2
	movdqa	%xmm4, %xmm12
	addq	$1, %r10
	movdqu	(%r8), %xmm5
	addq	$64, %r9
	addq	$64, %r8
	addq	$16, %r11
	pcmpgtb	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm2, %xmm1
	punpckhbw	%xmm2, %xmm0
	pcmpgtw	%xmm1, %xmm12
	movdqu	-64(%r9), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm1, %xmm5
	punpcklwd	%xmm12, %xmm5
	paddd	%xmm5, %xmm2
	movdqu	-48(%r9), %xmm5
	punpckhwd	%xmm12, %xmm1
	paddd	%xmm2, %xmm3
	movdqu	-48(%r8), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm4, %xmm5
	paddd	%xmm2, %xmm1
	pcmpgtw	%xmm0, %xmm5
	paddd	%xmm3, %xmm1
	movdqu	-32(%r9), %xmm3
	movdqa	%xmm1, %xmm2
	movdqu	-32(%r8), %xmm1
	paddd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm5, %xmm0
	punpcklwd	%xmm5, %xmm3
	paddd	%xmm3, %xmm1
	movdqu	-16(%r9), %xmm3
	paddd	%xmm2, %xmm1
	movdqu	-16(%r8), %xmm2
	paddd	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	cmpq	%r10, 64(%rsp)
	ja	.L367
	movdqa	%xmm3, %xmm2
	addq	%r12, %rdx
	psrldq	$8, %xmm2
	paddd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	pshufd	$85, %xmm2, %xmm3
	punpckhdq	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	pshufd	$255, %xmm2, %xmm0
	movd	%xmm0, %r8d
	movd	%r8d, %xmm0
	punpckldq	%xmm1, %xmm3
	punpcklqdq	%xmm0, %xmm3
	paddd	%xmm3, %xmm2
	movd	%xmm2, %r8d
	addl	%r8d, %eax
	cmpq	32(%rsp), %r12
	je	.L364
	.p2align 4,,10
.L365:
	movl	(%rsi,%rdx,4), %r9d
	movsbl	0(%rbp,%rdx), %r8d
	addl	(%rdi,%rdx,4), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	1(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	1(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	2(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	2(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	3(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	3(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	4(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	4(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	5(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	5(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	6(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	6(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	7(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	7(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	8(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	8(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	9(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	9(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	10(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	10(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	11(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	11(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	12(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	12(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	13(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	13(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	14(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L364
	movl	(%rdi,%r8,4), %r9d
	movsbl	14(%rbp,%rdx), %edx
	addl	(%rsi,%r8,4), %r9d
	addl	%edx, %r9d
	addl	%r9d, %eax
.L364:
	movl	%eax, _ZL13render_output(%rip)
	addl	$1, %r14d
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$199999999, %rax
	jle	.L371
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	72(%rsp), %rax
	cvtsi2sd	%r14d, %xmm1
	divsd	%xmm7, %xmm0
	addq	$8, %rax
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	movq	%rax, 72(%rsp)
	cmpq	%rax, 80(%rsp)
	jne	.L372
	movq	88(%rsp), %r14
	movq	%rbp, %rax
	movl	$6, %r8d
	movq	%r15, %rbp
	leaq	432(%rsp), %rdx
	movq	%rbx, %r15
	movq	%rax, %rbx
	movq	%r14, %rcx
	call	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78
	leaq	8(%r14), %r14
.L373:
	movsd	(%r14), %xmm12
	movsd	352(%rsp), %xmm0
	ucomisd	%xmm12, %xmm0
	ja	.L802
	movsd	-8(%r14), %xmm0
	leaq	-8(%r14), %rax
	ucomisd	%xmm12, %xmm0
	ja	.L658
	jmp	.L803
	.p2align 4,,10
.L506:
	movq	%rdx, %rax
.L658:
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rax), %xmm0
	leaq	-8(%rax), %rdx
	ucomisd	%xmm12, %xmm0
	ja	.L506
.L379:
	movsd	%xmm12, (%rax)
.L378:
	leaq	432(%rsp), %rax
	addq	$8, %r14
	cmpq	%rax, %r14
	jne	.L373
	movsd	368(%rsp), %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	addsd	%xmm8, %xmm1
	addsd	376(%rsp), %xmm1
	addsd	384(%rsp), %xmm1
	addsd	392(%rsp), %xmm1
	addsd	400(%rsp), %xmm1
	addsd	408(%rsp), %xmm1
	divsd	%xmm9, %xmm1
	divsd	%xmm10, %xmm1
	mulsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	88(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	%rbx, %rax
	movq	%r15, %rbx
	movq	%rbp, %r15
	movq	%rax, %rbp
.L393:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r14d, %r14d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
.L392:
	testq	%r15, %r15
	je	.L507
	movl	(%rsi), %eax
	movsbl	0(%rbp), %edx
	addl	(%rdi), %eax
	addl	%edx, %eax
	cmpq	$1, %r15
	je	.L508
	movl	4(%rsi), %r8d
	movsbl	1(%rbp), %edx
	addl	4(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$2, %r15
	je	.L509
	movl	8(%rsi), %r8d
	movsbl	2(%rbp), %edx
	addl	8(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$3, %r15
	je	.L510
	movl	12(%rsi), %r8d
	movsbl	3(%rbp), %edx
	addl	12(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$4, %r15
	je	.L511
	movl	16(%rsi), %r8d
	movsbl	4(%rbp), %edx
	addl	16(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$5, %r15
	je	.L512
	movl	20(%rsi), %r8d
	movsbl	5(%rbp), %edx
	addl	20(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$6, %r15
	je	.L513
	movl	24(%rsi), %r8d
	movsbl	6(%rbp), %edx
	addl	24(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$7, %r15
	je	.L514
	movl	28(%rsi), %r8d
	movsbl	7(%rbp), %edx
	addl	28(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$8, %r15
	je	.L515
	movl	32(%rsi), %r8d
	movsbl	8(%rbp), %edx
	addl	32(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$9, %r15
	je	.L516
	movl	36(%rsi), %r8d
	movsbl	9(%rbp), %edx
	addl	36(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$10, %r15
	je	.L517
	movl	40(%rsi), %r8d
	movsbl	10(%rbp), %edx
	addl	40(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$11, %r15
	je	.L518
	movl	44(%rsi), %r8d
	movsbl	11(%rbp), %edx
	addl	44(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$12, %r15
	je	.L519
	movl	48(%rsi), %r8d
	movsbl	12(%rbp), %edx
	addl	48(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$13, %r15
	je	.L520
	movl	52(%rsi), %r8d
	movsbl	13(%rbp), %edx
	addl	52(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$14, %r15
	je	.L521
	movl	56(%rsi), %r8d
	movsbl	14(%rbp), %edx
	addl	56(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$15, %r15
	je	.L522
	movl	60(%rsi), %r8d
	movsbl	15(%rbp), %edx
	addl	60(%rdi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$16, %r15
	je	.L523
	movl	64(%rdi), %r8d
	movsbl	16(%rbp), %edx
	addl	64(%rsi), %r8d
	addl	%r8d, %edx
	addl	%edx, %eax
	movl	$17, %edx
.L384:
	cmpq	%r15, %rbx
	je	.L385
.L383:
	cmpq	$14, %r13
	jbe	.L386
	movq	40(%rsp), %r9
	xorl	%r10d, %r10d
	pxor	%xmm3, %xmm3
	pxor	%xmm4, %xmm4
	movq	48(%rsp), %r11
	movq	56(%rsp), %r8
.L388:
	movdqa	(%r11), %xmm0
	movdqa	%xmm6, %xmm2
	movdqa	%xmm4, %xmm12
	addq	$1, %r10
	movdqu	(%r9), %xmm5
	addq	$64, %r8
	addq	$16, %r11
	addq	$64, %r9
	pcmpgtb	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm2, %xmm1
	punpckhbw	%xmm2, %xmm0
	pcmpgtw	%xmm1, %xmm12
	movdqu	-64(%r8), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm1, %xmm5
	punpcklwd	%xmm12, %xmm5
	paddd	%xmm5, %xmm2
	movdqu	-48(%r8), %xmm5
	punpckhwd	%xmm12, %xmm1
	paddd	%xmm2, %xmm3
	movdqu	-48(%r9), %xmm2
	paddd	%xmm5, %xmm2
	movdqa	%xmm4, %xmm5
	paddd	%xmm2, %xmm1
	pcmpgtw	%xmm0, %xmm5
	paddd	%xmm3, %xmm1
	movdqu	-32(%r9), %xmm3
	movdqa	%xmm1, %xmm2
	movdqu	-32(%r8), %xmm1
	paddd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm5, %xmm0
	punpcklwd	%xmm5, %xmm3
	paddd	%xmm3, %xmm1
	movdqu	-16(%r9), %xmm3
	paddd	%xmm2, %xmm1
	movdqu	-16(%r8), %xmm2
	paddd	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	cmpq	64(%rsp), %r10
	jb	.L388
	movdqa	%xmm3, %xmm2
	addq	%r12, %rdx
	psrldq	$8, %xmm2
	paddd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	pshufd	$85, %xmm2, %xmm3
	punpckhdq	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	pshufd	$255, %xmm2, %xmm0
	movd	%xmm0, %r8d
	movd	%r8d, %xmm0
	punpckldq	%xmm1, %xmm3
	punpcklqdq	%xmm0, %xmm3
	paddd	%xmm3, %xmm2
	movd	%xmm2, %r8d
	addl	%r8d, %eax
	cmpq	32(%rsp), %r12
	je	.L385
	.p2align 4,,10
.L386:
	movl	(%rsi,%rdx,4), %r9d
	movsbl	0(%rbp,%rdx), %r8d
	addl	(%rdi,%rdx,4), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	1(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L385
	movl	(%rdi,%r8,4), %r9d
	addl	(%rsi,%r8,4), %r9d
	movsbl	1(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	2(%rdx), %r8
	cmpq	%rbx, %r8
	jnb	.L385
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	2(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	3(%rdx), %r8
	cmpq	%rbx, %r8
	jnb	.L385
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	3(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	4(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L385
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	4(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	5(%rdx), %r8
	cmpq	%rbx, %r8
	jnb	.L385
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	5(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	6(%rdx), %r8
	cmpq	%rbx, %r8
	jnb	.L385
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	6(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	7(%rdx), %r8
	cmpq	%rbx, %r8
	jnb	.L385
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	7(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	8(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L385
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	8(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	9(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L385
	movl	(%rdi,%r8,4), %r9d
	addl	(%rsi,%r8,4), %r9d
	movsbl	9(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	10(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L385
	movl	(%rdi,%r8,4), %r9d
	addl	(%rsi,%r8,4), %r9d
	movsbl	10(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	11(%rdx), %r8
	cmpq	%rbx, %r8
	jnb	.L385
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	11(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	12(%rdx), %r8
	cmpq	%rbx, %r8
	jnb	.L385
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	12(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	13(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L385
	movl	(%rsi,%r8,4), %r9d
	addl	(%rdi,%r8,4), %r9d
	movsbl	13(%rbp,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	14(%rdx), %r8
	cmpq	%r8, %rbx
	jbe	.L385
	movl	(%rdi,%r8,4), %r9d
	movsbl	14(%rbp,%rdx), %edx
	addl	(%rsi,%r8,4), %r9d
	addl	%edx, %r9d
	addl	%r9d, %eax
.L385:
	movl	%eax, _ZL13render_output(%rip)
	addl	$1, %r14d
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$199999999, %rax
	jle	.L392
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	movq	72(%rsp), %rax
	cvtsi2sd	%r14d, %xmm1
	divsd	%xmm7, %xmm0
	addq	$8, %rax
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	movq	%rax, 72(%rsp)
	cmpq	%rax, 80(%rsp)
	jne	.L393
	movq	88(%rsp), %rdi
	movl	$6, %r8d
	movq	%rbx, %r15
	movl	$8, %esi
	leaq	432(%rsp), %rdx
	movq	%rbp, %rbx
	movq	%rdi, %rcx
	call	_ZSt16__introsort_loopIPdxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.78
	leaq	8(%rdi), %rdi
.L394:
	movsd	(%rdi), %xmm12
	movsd	352(%rsp), %xmm0
	ucomisd	%xmm12, %xmm0
	ja	.L804
	movsd	-8(%rdi), %xmm0
	leaq	-8(%rdi), %rax
	ucomisd	%xmm12, %xmm0
	ja	.L659
	jmp	.L805
	.p2align 4,,10
.L525:
	movq	%rdx, %rax
.L659:
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rax), %xmm0
	leaq	-8(%rax), %rdx
	ucomisd	%xmm12, %xmm0
	ja	.L525
.L400:
	movsd	%xmm12, (%rax)
.L399:
	leaq	432(%rsp), %rax
	addq	$8, %rdi
	cmpq	%rax, %rdi
	jne	.L394
	movsd	368(%rsp), %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	addsd	%xmm8, %xmm1
	addsd	376(%rsp), %xmm1
	addsd	384(%rsp), %xmm1
	addsd	392(%rsp), %xmm1
	addsd	400(%rsp), %xmm1
	addsd	408(%rsp), %xmm1
	divsd	%xmm9, %xmm1
	divsd	%xmm10, %xmm1
	mulsd	%xmm11, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rsi
	testq	%rsi, %rsi
	je	.L806
	cmpb	$0, 56(%rsi)
	je	.L405
	movsbl	67(%rsi), %edx
.L406:
	movq	%rdi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	320(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L407
	call	_ZdlPv
.L407:
	movq	288(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L408
	call	_ZdlPv
.L408:
	movq	256(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L409
	call	_ZdlPv
.L409:
	movq	224(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L410
	call	_ZdlPv
.L410:
	movq	192(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L411
	call	_ZdlPv
.L411:
	testq	%rbx, %rbx
	je	.L412
	movq	%rbx, %rcx
	call	_ZdlPv
.L412:
	subl	$1, 164(%rsp)
	leaq	(%r15,%r15,4), %rax
	leaq	(%rax,%rax), %r15
	jne	.L413
	movaps	432(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	448(%rsp), %xmm7
	movaps	464(%rsp), %xmm8
	movaps	480(%rsp), %xmm9
	movaps	496(%rsp), %xmm10
	movaps	512(%rsp), %xmm11
	movaps	528(%rsp), %xmm12
	addq	$552, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L232:
	leaq	184(%rsp), %rdx
	leaq	256(%rsp), %rcx
	call	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	jmp	.L234
.L229:
	movq	64(%rsp), %rdx
	movq	72(%rsp), %rcx
	call	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	jmp	.L231
.L226:
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rcx
	call	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	jmp	.L228
.L788:
	movq	%r12, %r8
	movq	%rbx, %rdx
	movq	%r13, %rcx
	call	memmove
	addq	$1, %rdi
	jmp	.L224
	.p2align 4,,10
.L507:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L383
	.p2align 4,,10
.L488:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L362
	.p2align 4,,10
.L469:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L341
	.p2align 4,,10
.L448:
	movq	%rbx, %rcx
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	jmp	.L307
	.p2align 4,,10
.L429:
	movq	%rbx, %rcx
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	jmp	.L283
	.p2align 4,,10
.L425:
	movq	%rsi, %r8
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	xorl	%eax, %eax
	jmp	.L259
.L508:
	movl	$1, %edx
	jmp	.L383
.L490:
	movl	$2, %edx
	jmp	.L363
.L489:
	movl	$1, %edx
	jmp	.L362
.L494:
	movl	$6, %edx
	jmp	.L363
.L493:
	movl	$5, %edx
	jmp	.L363
.L492:
	movl	$4, %edx
	jmp	.L363
.L491:
	movl	$3, %edx
	jmp	.L363
.L502:
	movl	$14, %edx
	jmp	.L363
.L501:
	movl	$13, %edx
	jmp	.L363
.L500:
	movl	$12, %edx
	jmp	.L363
.L499:
	movl	$11, %edx
	jmp	.L363
.L498:
	movl	$10, %edx
	jmp	.L363
.L497:
	movl	$9, %edx
	jmp	.L363
.L496:
	movl	$8, %edx
	jmp	.L363
.L495:
	movl	$7, %edx
	jmp	.L363
.L523:
	movl	$16, %edx
	jmp	.L384
.L522:
	movl	$15, %edx
	jmp	.L384
.L521:
	movl	$14, %edx
	jmp	.L384
.L520:
	movl	$13, %edx
	jmp	.L384
.L519:
	movl	$12, %edx
	jmp	.L384
.L518:
	movl	$11, %edx
	jmp	.L384
.L517:
	movl	$10, %edx
	jmp	.L384
.L516:
	movl	$9, %edx
	jmp	.L384
.L515:
	movl	$8, %edx
	jmp	.L384
.L514:
	movl	$7, %edx
	jmp	.L384
.L513:
	movl	$6, %edx
	jmp	.L384
.L512:
	movl	$5, %edx
	jmp	.L384
.L511:
	movl	$4, %edx
	jmp	.L384
.L504:
	movl	$16, %edx
	jmp	.L363
.L503:
	movl	$15, %edx
	jmp	.L363
.L470:
	movl	$1, %edx
	jmp	.L341
.L510:
	movl	$3, %edx
	jmp	.L384
.L509:
	movl	$2, %edx
	jmp	.L384
.L485:
	movl	$16, %edx
	jmp	.L342
.L484:
	movl	$15, %edx
	jmp	.L342
.L483:
	movl	$14, %edx
	jmp	.L342
.L482:
	movl	$13, %edx
	jmp	.L342
.L481:
	movl	$12, %edx
	jmp	.L342
.L480:
	movl	$11, %edx
	jmp	.L342
.L479:
	movl	$10, %edx
	jmp	.L342
.L478:
	movl	$9, %edx
	jmp	.L342
.L477:
	movl	$8, %edx
	jmp	.L342
.L476:
	movl	$7, %edx
	jmp	.L342
.L475:
	movl	$6, %edx
	jmp	.L342
.L474:
	movl	$5, %edx
	jmp	.L342
.L473:
	movl	$4, %edx
	jmp	.L342
.L472:
	movl	$3, %edx
	jmp	.L342
.L471:
	movl	$2, %edx
	jmp	.L342
.L449:
	movq	112(%rsp), %rcx
	movl	$1, %r8d
	movl	$1, %edx
	jmp	.L308
.L464:
	movl	$16, %r8d
	movl	$16, %edx
	jmp	.L308
.L463:
	movl	$15, %r8d
	movl	$15, %edx
	jmp	.L308
.L462:
	movl	$14, %r8d
	movl	$14, %edx
	jmp	.L308
.L461:
	movl	$13, %r8d
	movl	$13, %edx
	jmp	.L308
.L460:
	movl	$12, %r8d
	movl	$12, %edx
	jmp	.L308
.L459:
	movl	$11, %r8d
	movl	$11, %edx
	jmp	.L308
.L458:
	movl	$10, %r8d
	movl	$10, %edx
	jmp	.L308
.L457:
	movl	$9, %r8d
	movl	$9, %edx
	jmp	.L308
.L456:
	movl	$8, %r8d
	movl	$8, %edx
	jmp	.L308
.L455:
	movl	$7, %r8d
	movl	$7, %edx
	jmp	.L308
.L454:
	movl	$6, %r8d
	movl	$6, %edx
	jmp	.L308
.L453:
	movl	$5, %r8d
	movl	$5, %edx
	jmp	.L308
.L452:
	movl	$4, %r8d
	movl	$4, %edx
	jmp	.L308
.L451:
	movl	$3, %r8d
	movl	$3, %edx
	jmp	.L308
.L450:
	movl	$2, %r8d
	movl	$2, %edx
	jmp	.L308
.L426:
	movq	112(%rsp), %rdx
	jmp	.L260
.L445:
	movl	$16, %r8d
	movl	$16, %edx
	jmp	.L284
.L444:
	movl	$15, %r8d
	movl	$15, %edx
	jmp	.L284
.L443:
	movl	$14, %r8d
	movl	$14, %edx
	jmp	.L284
.L442:
	movl	$13, %r8d
	movl	$13, %edx
	jmp	.L284
.L441:
	movl	$12, %r8d
	movl	$12, %edx
	jmp	.L284
.L440:
	movl	$11, %r8d
	movl	$11, %edx
	jmp	.L284
.L439:
	movl	$10, %r8d
	movl	$10, %edx
	jmp	.L284
.L438:
	movl	$9, %r8d
	movl	$9, %edx
	jmp	.L284
.L437:
	movl	$8, %r8d
	movl	$8, %edx
	jmp	.L284
.L436:
	movl	$7, %r8d
	movl	$7, %edx
	jmp	.L284
.L435:
	movl	$6, %r8d
	movl	$6, %edx
	jmp	.L284
.L434:
	movl	$5, %r8d
	movl	$5, %edx
	jmp	.L284
.L433:
	movl	$4, %r8d
	movl	$4, %edx
	jmp	.L284
.L432:
	movl	$3, %r8d
	movl	$3, %edx
	jmp	.L284
.L431:
	movl	$2, %r8d
	movl	$2, %edx
	jmp	.L284
.L430:
	movq	112(%rsp), %rcx
	movl	$1, %r8d
	movl	$1, %edx
	jmp	.L284
.L794:
	movq	%r14, %r8
	subq	88(%rsp), %r8
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L298
	movq	88(%rsp), %rdx
	movq	%r13, %rcx
	subq	%r8, %rcx
	addq	%r14, %rcx
	call	memmove
.L298:
	movsd	%xmm12, 352(%rsp)
	jmp	.L299
.L796:
	movq	%r12, %r8
	subq	88(%rsp), %r8
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L322
	movq	88(%rsp), %rdx
	movq	%rbp, %rcx
	subq	%r8, %rcx
	addq	%r12, %rcx
	call	memmove
.L322:
	movsd	%xmm12, 352(%rsp)
	jmp	.L323
.L790:
	movq	%r13, %r8
	subq	88(%rsp), %r8
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L250
	movq	88(%rsp), %rdx
	movq	%r12, %rcx
	subq	%r8, %rcx
	addq	%r13, %rcx
	call	memmove
.L250:
	movsd	%xmm10, 352(%rsp)
	jmp	.L251
.L792:
	movq	%r13, %r8
	subq	88(%rsp), %r8
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L274
	movq	88(%rsp), %rdx
	movq	%r12, %rcx
	subq	%r8, %rcx
	addq	%r13, %rcx
	call	memmove
.L274:
	movsd	%xmm12, 352(%rsp)
	jmp	.L275
.L802:
	movq	%r14, %r8
	subq	88(%rsp), %r8
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L377
	movq	88(%rsp), %rdx
	movl	$8, %ecx
	subq	%r8, %rcx
	addq	%r14, %rcx
	call	memmove
.L377:
	movsd	%xmm12, 352(%rsp)
	jmp	.L378
.L800:
	movq	%r14, %r8
	subq	88(%rsp), %r8
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L356
	movq	88(%rsp), %rdx
	movl	$8, %ecx
	subq	%r8, %rcx
	addq	%r14, %rcx
	call	memmove
.L356:
	movsd	%xmm12, 352(%rsp)
	jmp	.L357
.L798:
	movq	%r12, %r8
	subq	88(%rsp), %r8
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L335
	movq	88(%rsp), %rdx
	movq	%rbp, %rcx
	subq	%r8, %rcx
	addq	%r12, %rcx
	call	memmove
.L335:
	movsd	%xmm12, 352(%rsp)
	jmp	.L336
.L804:
	movq	%rdi, %r8
	subq	88(%rsp), %r8
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L398
	movq	88(%rsp), %rdx
	movq	%rsi, %rcx
	subq	%r8, %rcx
	addq	%rdi, %rcx
	call	memmove
.L398:
	movsd	%xmm12, 352(%rsp)
	jmp	.L399
.L801:
	movq	%r14, %rax
	jmp	.L358
.L795:
	movq	%r14, %rax
	jmp	.L300
.L799:
	movq	%r12, %rax
	jmp	.L337
.L405:
	movq	%rsi, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rsi), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L406
	movq	%rsi, %rcx
	call	*%rax
.LEHE1:
	movsbl	%al, %edx
	jmp	.L406
.L805:
	movq	%rdi, %rax
	jmp	.L400
.L793:
	movq	%r13, %rax
	jmp	.L276
.L803:
	movq	%r14, %rax
	jmp	.L379
.L797:
	movq	%r12, %rax
	jmp	.L324
.L791:
	movq	%r13, %rax
	jmp	.L252
.L527:
	movq	320(%rsp), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L415
	call	_ZdlPv
.L415:
	movq	288(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L416
	call	_ZdlPv
.L416:
	movq	256(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L417
	call	_ZdlPv
.L417:
	movq	224(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L418
	call	_ZdlPv
.L418:
	movq	192(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L419
	call	_ZdlPv
.L419:
	testq	%rbx, %rbx
	je	.L420
	movq	%rbx, %rcx
	call	_ZdlPv
.L420:
	movq	%rsi, %rcx
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L806:
.LEHB3:
	call	_ZSt16__throw_bad_castv
.L787:
	leaq	.LC2(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
.LEHE3:
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8217:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8217-.LLSDACSB8217
.LLSDACSB8217:
	.uleb128 .LEHB0-.LFB8217
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8217
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L527-.LFB8217
	.uleb128 0
	.uleb128 .LEHB2-.LFB8217
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8217
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L527-.LFB8217
	.uleb128 0
.LLSDACSE8217:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I_measure_start;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_measure_start
_GLOBAL__sub_I_measure_start:
.LFB8911:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_measure_start
.lcomm _ZL13render_output,4,4
.lcomm _ZStL8__ioinit,1,1
	.globl	measure_pause
	.bss
	.align 8
measure_pause:
	.space 8
	.globl	measure_start
	.align 8
measure_start:
	.space 8
	.section .rdata,"dr"
	.align 8
.LC4:
	.long	0
	.long	1104006501
	.align 8
.LC6:
	.long	0
	.long	1075314688
	.align 8
.LC7:
	.long	0
	.long	1097011920
	.ident	"GCC: (GNU) 5.1.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
