	.file	"dod_perfv2.cpp"
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
.LCOLDB0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTB0:
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB7829:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE7829:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LCOLDE0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTE0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	_Z12pause_timingv
	.type	_Z12pause_timingv, @function
_Z12pause_timingv:
.LFB7427:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_pause(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE7427:
	.size	_Z12pause_timingv, .-_Z12pause_timingv
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	_Z13resume_timingv
	.type	_Z13resume_timingv, @function
_Z13resume_timingv:
.LFB7428:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_pause(%rip), %rax
	addq	%rax, measure_start(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE7428:
	.size	_Z13resume_timingv, .-_Z13resume_timingv
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	_Z9do_renderiic
	.type	_Z9do_renderiic, @function
_Z9do_renderiic:
.LFB8177:
	.cfi_startproc
	addl	%edi, %esi
	movsbl	%dl, %edx
	addl	%esi, %edx
	addl	%edx, _ZL13render_output(%rip)
	ret
	.cfi_endproc
.LFE8177:
	.size	_Z9do_renderiic, .-_Z9do_renderiic
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	_Z6renderPcS_PiS0_
	.type	_Z6renderPcS_PiS0_, @function
_Z6renderPcS_PiS0_:
.LFB8187:
	.cfi_startproc
	cmpq	%rsi, %rdi
	movl	$0, _ZL13render_output(%rip)
	je	.L19
	leaq	1(%rdi), %r8
	leaq	1(%rsi), %r10
	movq	%rdi, %r9
	negq	%r9
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	subq	%r8, %r10
	andl	$15, %r9d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	cmpq	%r10, %r9
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%r8, %r12
	cmova	%r10, %r9
	cmpq	$17, %r10
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	cmovbe	%r10, %r9
	testq	%r9, %r9
	je	.L20
	movl	(%rdx), %eax
	movsbl	(%rdi), %ebp
	leaq	4(%rcx), %r11
	addl	(%rcx), %eax
	leaq	4(%rdx), %rbx
	addl	%ebp, %eax
	cmpq	$1, %r9
	je	.L11
	movl	4(%rdx), %ebp
	addl	4(%rcx), %ebp
	leaq	2(%rdi), %r8
	leaq	8(%rcx), %r11
	leaq	8(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	1(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$2, %r9
	je	.L11
	movl	8(%rdx), %ebp
	addl	8(%rcx), %ebp
	leaq	3(%rdi), %r8
	leaq	12(%rcx), %r11
	leaq	12(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	2(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$3, %r9
	je	.L11
	movl	12(%rdx), %ebp
	addl	12(%rcx), %ebp
	leaq	4(%rdi), %r8
	leaq	16(%rcx), %r11
	leaq	16(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	3(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$4, %r9
	je	.L11
	movl	16(%rdx), %ebp
	addl	16(%rcx), %ebp
	leaq	5(%rdi), %r8
	leaq	20(%rcx), %r11
	leaq	20(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	4(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$5, %r9
	je	.L11
	movl	20(%rdx), %ebp
	addl	20(%rcx), %ebp
	leaq	6(%rdi), %r8
	leaq	24(%rcx), %r11
	leaq	24(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	5(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$6, %r9
	je	.L11
	movl	24(%rdx), %ebp
	addl	24(%rcx), %ebp
	leaq	7(%rdi), %r8
	leaq	28(%rcx), %r11
	leaq	28(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	6(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$7, %r9
	je	.L11
	movl	28(%rdx), %ebp
	addl	28(%rcx), %ebp
	leaq	8(%rdi), %r8
	leaq	32(%rcx), %r11
	leaq	32(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	7(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$8, %r9
	je	.L11
	movl	32(%rdx), %ebp
	addl	32(%rcx), %ebp
	leaq	9(%rdi), %r8
	leaq	36(%rcx), %r11
	leaq	36(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	8(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$9, %r9
	je	.L11
	movl	36(%rdx), %ebp
	addl	36(%rcx), %ebp
	leaq	10(%rdi), %r8
	leaq	40(%rcx), %r11
	leaq	40(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	9(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$10, %r9
	je	.L11
	movl	40(%rdx), %ebp
	addl	40(%rcx), %ebp
	leaq	11(%rdi), %r8
	leaq	44(%rcx), %r11
	leaq	44(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	10(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$11, %r9
	je	.L11
	movl	44(%rdx), %ebp
	addl	44(%rcx), %ebp
	leaq	12(%rdi), %r8
	leaq	48(%rcx), %r11
	leaq	48(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	11(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$12, %r9
	je	.L11
	movl	48(%rdx), %ebp
	addl	48(%rcx), %ebp
	leaq	13(%rdi), %r8
	leaq	52(%rcx), %r11
	leaq	52(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	12(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$13, %r9
	je	.L11
	movl	52(%rdx), %ebp
	addl	52(%rcx), %ebp
	leaq	14(%rdi), %r8
	leaq	56(%rcx), %r11
	leaq	56(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	13(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$14, %r9
	je	.L11
	movl	56(%rdx), %ebp
	addl	56(%rcx), %ebp
	leaq	15(%rdi), %r8
	leaq	60(%rcx), %r11
	leaq	60(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	14(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$15, %r9
	je	.L11
	movl	60(%rdx), %ebp
	addl	60(%rcx), %ebp
	leaq	16(%rdi), %r8
	leaq	64(%rcx), %r11
	leaq	64(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	15(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
	cmpq	$16, %r9
	je	.L11
	movl	64(%rdx), %ebp
	addl	64(%rcx), %ebp
	leaq	17(%rdi), %r8
	leaq	68(%rcx), %r11
	leaq	68(%rdx), %rbx
	movl	%ebp, %r13d
	movsbl	16(%rdi), %ebp
	addl	%r13d, %ebp
	addl	%ebp, %eax
.L11:
	cmpq	%r9, %r10
	je	.L12
.L10:
	subq	%r9, %r10
	movq	%rsi, %r14
	leaq	-16(%r10), %r13
	subq	%r12, %r14
	movq	%r14, %r12
	shrq	$4, %r13
	subq	%r9, %r12
	addq	$1, %r13
	movq	%r13, %rbp
	salq	$4, %rbp
	cmpq	$14, %r12
	jbe	.L13
	leaq	0(,%r9,4), %r12
	pxor	%xmm0, %xmm0
	pxor	%xmm6, %xmm6
	addq	%r9, %rdi
	pxor	%xmm5, %xmm5
	addq	%r12, %rcx
	addq	%r12, %rdx
	xorl	%r9d, %r9d
.L15:
	movdqa	(%rdi), %xmm3
	movdqa	%xmm6, %xmm1
	movdqa	%xmm5, %xmm7
	addq	$1, %r9
	pcmpgtb	%xmm3, %xmm1
	movdqa	%xmm3, %xmm4
	movdqu	(%rdx), %xmm2
	addq	$16, %rdi
	punpcklbw	%xmm1, %xmm4
	addq	$64, %rcx
	punpckhbw	%xmm1, %xmm3
	addq	$64, %rdx
	movdqu	-64(%rcx), %xmm1
	pcmpgtw	%xmm4, %xmm7
	paddd	%xmm1, %xmm2
	movdqa	%xmm4, %xmm1
	punpckhwd	%xmm7, %xmm4
	punpcklwd	%xmm7, %xmm1
	movdqa	%xmm5, %xmm7
	pcmpgtw	%xmm3, %xmm7
	paddd	%xmm1, %xmm2
	movdqu	-48(%rcx), %xmm1
	paddd	%xmm2, %xmm0
	movdqu	-48(%rdx), %xmm2
	paddd	%xmm2, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm3, %xmm4
	movdqa	%xmm1, %xmm2
	movdqu	-32(%rdx), %xmm1
	punpcklwd	%xmm7, %xmm4
	paddd	%xmm0, %xmm2
	movdqu	-32(%rcx), %xmm0
	punpckhwd	%xmm7, %xmm3
	paddd	%xmm1, %xmm0
	paddd	%xmm4, %xmm0
	paddd	%xmm2, %xmm0
	movdqu	-16(%rdx), %xmm2
	movdqa	%xmm0, %xmm1
	movdqu	-16(%rcx), %xmm0
	cmpq	%r9, %r13
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	paddd	%xmm1, %xmm0
	ja	.L15
	movdqa	%xmm0, %xmm1
	addq	%rbp, %r8
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	pshufd	$255, %xmm0, %xmm2
	pshufd	$85, %xmm0, %xmm1
	punpckhdq	%xmm0, %xmm3
	movd	%xmm2, %edx
	punpckldq	%xmm3, %xmm1
	movd	%edx, %xmm2
	punpcklqdq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %edx
	addl	%edx, %eax
	leaq	0(,%rbp,4), %rdx
	addq	%rdx, %rbx
	addq	%rdx, %r11
	cmpq	%rbp, %r10
	je	.L12
.L13:
	movl	(%rbx), %edx
	movl	(%r11), %ecx
	addl	%edx, %ecx
	movsbl	(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	1(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	4(%rbx), %edx
	movl	4(%r11), %ecx
	addl	%edx, %ecx
	movsbl	1(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	2(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	8(%rbx), %edx
	movl	8(%r11), %ecx
	addl	%edx, %ecx
	movsbl	2(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	3(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	12(%rbx), %edx
	movl	12(%r11), %ecx
	addl	%edx, %ecx
	movsbl	3(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	4(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	16(%rbx), %edx
	movl	16(%r11), %ecx
	addl	%edx, %ecx
	movsbl	4(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	5(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	20(%rbx), %edx
	movl	20(%r11), %ecx
	addl	%edx, %ecx
	movsbl	5(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	6(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	24(%rbx), %edx
	movl	24(%r11), %ecx
	addl	%edx, %ecx
	movsbl	6(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	7(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	28(%rbx), %edx
	movl	28(%r11), %ecx
	addl	%edx, %ecx
	movsbl	7(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	8(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	32(%rbx), %edx
	movl	32(%r11), %ecx
	addl	%edx, %ecx
	movsbl	8(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	9(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	36(%rbx), %edx
	movl	36(%r11), %ecx
	addl	%edx, %ecx
	movsbl	9(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	10(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	40(%rbx), %edx
	movl	40(%r11), %ecx
	addl	%edx, %ecx
	movsbl	10(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	11(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	44(%rbx), %edx
	movl	44(%r11), %ecx
	addl	%edx, %ecx
	movsbl	11(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	12(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	48(%rbx), %edx
	movl	48(%r11), %ecx
	addl	%edx, %ecx
	movsbl	12(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	13(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	52(%rbx), %edx
	movl	52(%r11), %ecx
	addl	%edx, %ecx
	movsbl	13(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
	leaq	14(%r8), %rdx
	cmpq	%rdx, %rsi
	je	.L12
	movl	56(%rbx), %edx
	movl	56(%r11), %ecx
	addl	%edx, %ecx
	movsbl	14(%r8), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
.L12:
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	movl	%eax, _ZL13render_output(%rip)
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	.cfi_restore_state
	movq	%rcx, %r11
	movq	%rdx, %rbx
	movq	%rdi, %r8
	xorl	%eax, %eax
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8187:
	.size	_Z6renderPcS_PiS0_, .-_Z6renderPcS_PiS0_
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	_Z6renderPcPiS0_m
	.type	_Z6renderPcPiS0_m, @function
_Z6renderPcPiS0_m:
.LFB8188:
	.cfi_startproc
	testq	%rcx, %rcx
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$0, _ZL13render_output(%rip)
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	je	.L85
	movq	%rdi, %r8
	negq	%r8
	andl	$15, %r8d
	cmpq	%rcx, %r8
	cmova	%rcx, %r8
	cmpq	$17, %rcx
	ja	.L106
	movq	%rcx, %r8
.L75:
	movl	(%rsi), %eax
	movsbl	(%rdi), %r9d
	addl	(%rdx), %eax
	addl	%r9d, %eax
	cmpq	$1, %r8
	je	.L88
	movl	4(%rsi), %r9d
	movl	4(%rdx), %r10d
	addl	%r9d, %r10d
	movsbl	1(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$2, %r8
	je	.L89
	movl	8(%rsi), %r9d
	movl	8(%rdx), %r10d
	addl	%r9d, %r10d
	movsbl	2(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$3, %r8
	je	.L90
	movl	12(%rsi), %r9d
	movl	12(%rdx), %r10d
	addl	%r9d, %r10d
	movsbl	3(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$4, %r8
	je	.L91
	movl	16(%rsi), %r9d
	movl	16(%rdx), %r10d
	addl	%r9d, %r10d
	movsbl	4(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$5, %r8
	je	.L92
	movl	20(%rsi), %r9d
	movl	20(%rdx), %r10d
	addl	%r9d, %r10d
	movsbl	5(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$6, %r8
	je	.L93
	movl	24(%rsi), %r9d
	movl	24(%rdx), %r10d
	addl	%r9d, %r10d
	movsbl	6(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$7, %r8
	je	.L94
	movl	28(%rsi), %r9d
	addl	28(%rdx), %r9d
	movl	%r9d, %r10d
	movsbl	7(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$8, %r8
	je	.L95
	movl	32(%rsi), %r9d
	movl	32(%rdx), %r10d
	addl	%r9d, %r10d
	movsbl	8(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$9, %r8
	je	.L96
	movl	36(%rsi), %r9d
	addl	36(%rdx), %r9d
	movl	%r9d, %r10d
	movsbl	9(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$10, %r8
	je	.L97
	movl	40(%rsi), %r9d
	movl	40(%rdx), %r10d
	addl	%r9d, %r10d
	movsbl	10(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$11, %r8
	je	.L98
	movl	44(%rsi), %r9d
	addl	44(%rdx), %r9d
	movl	%r9d, %r10d
	movsbl	11(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$12, %r8
	je	.L99
	movl	48(%rsi), %r9d
	movl	48(%rdx), %r10d
	addl	%r9d, %r10d
	movsbl	12(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$13, %r8
	je	.L100
	movl	52(%rsi), %r9d
	addl	52(%rdx), %r9d
	movl	%r9d, %r10d
	movsbl	13(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$14, %r8
	je	.L101
	movl	56(%rsi), %r9d
	movl	56(%rdx), %r10d
	addl	%r9d, %r10d
	movsbl	14(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$15, %r8
	je	.L102
	movl	60(%rsi), %r9d
	addl	60(%rdx), %r9d
	movl	%r9d, %r10d
	movsbl	15(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	cmpq	$16, %r8
	je	.L103
	movl	64(%rdx), %r9d
	movl	64(%rsi), %r10d
	addl	%r9d, %r10d
	movsbl	16(%rdi), %r9d
	addl	%r10d, %r9d
	addl	%r9d, %eax
	movl	$17, %r9d
.L77:
	cmpq	%r8, %rcx
	je	.L78
.L76:
	movq	%rcx, %rbx
	leaq	-1(%rcx), %r11
	subq	%r8, %rbx
	leaq	-16(%rbx), %r10
	subq	%r8, %r11
	shrq	$4, %r10
	addq	$1, %r10
	movq	%r10, %rbp
	salq	$4, %rbp
	cmpq	$14, %r11
	jbe	.L79
	leaq	0(,%r8,4), %r11
	pxor	%xmm0, %xmm0
	pxor	%xmm6, %xmm6
	addq	%rdi, %r8
	pxor	%xmm5, %xmm5
	leaq	(%rdx,%r11), %r12
	xorl	%r13d, %r13d
	addq	%rsi, %r11
.L81:
	movdqa	(%r8), %xmm3
	movdqa	%xmm6, %xmm1
	movdqa	%xmm5, %xmm7
	addq	$1, %r13
	pcmpgtb	%xmm3, %xmm1
	movdqa	%xmm3, %xmm4
	movdqu	(%r11), %xmm2
	addq	$16, %r8
	punpcklbw	%xmm1, %xmm4
	addq	$64, %r12
	punpckhbw	%xmm1, %xmm3
	addq	$64, %r11
	movdqu	-64(%r12), %xmm1
	pcmpgtw	%xmm4, %xmm7
	paddd	%xmm1, %xmm2
	movdqa	%xmm4, %xmm1
	punpckhwd	%xmm7, %xmm4
	punpcklwd	%xmm7, %xmm1
	movdqa	%xmm5, %xmm7
	pcmpgtw	%xmm3, %xmm7
	paddd	%xmm1, %xmm2
	movdqu	-48(%r12), %xmm1
	paddd	%xmm2, %xmm0
	movdqu	-48(%r11), %xmm2
	paddd	%xmm2, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm3, %xmm4
	movdqa	%xmm1, %xmm2
	movdqu	-32(%r11), %xmm1
	punpcklwd	%xmm7, %xmm4
	paddd	%xmm0, %xmm2
	movdqu	-32(%r12), %xmm0
	punpckhwd	%xmm7, %xmm3
	paddd	%xmm1, %xmm0
	paddd	%xmm4, %xmm0
	paddd	%xmm2, %xmm0
	movdqu	-16(%r11), %xmm2
	movdqa	%xmm0, %xmm1
	movdqu	-16(%r12), %xmm0
	cmpq	%r13, %r10
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	paddd	%xmm1, %xmm0
	ja	.L81
	movdqa	%xmm0, %xmm1
	addq	%rbp, %r9
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	pshufd	$255, %xmm0, %xmm2
	pshufd	$85, %xmm0, %xmm1
	punpckhdq	%xmm0, %xmm3
	movd	%xmm2, %r8d
	punpckldq	%xmm3, %xmm1
	movd	%r8d, %xmm2
	punpcklqdq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r8d
	addl	%r8d, %eax
	cmpq	%rbp, %rbx
	je	.L78
.L79:
	movl	(%rdx,%r9,4), %r8d
	addl	(%rsi,%r9,4), %r8d
	movl	%r8d, %r10d
	movsbl	(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	1(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	1(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	2(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	2(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	3(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	3(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	4(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	4(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	5(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	5(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	6(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	6(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	7(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	7(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	8(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	8(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	9(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	9(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	10(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	10(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	11(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	11(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	12(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	12(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	leaq	13(%r9), %r10
	addl	%r8d, %eax
	cmpq	%r10, %rcx
	jbe	.L78
	movl	(%rsi,%r10,4), %r8d
	addl	(%rdx,%r10,4), %r8d
	movl	%r8d, %r10d
	movsbl	13(%rdi,%r9), %r8d
	addl	%r10d, %r8d
	addl	%r8d, %eax
	leaq	14(%r9), %r8
	cmpq	%r8, %rcx
	jbe	.L78
	movl	(%rsi,%r8,4), %ecx
	addl	(%rdx,%r8,4), %ecx
	movsbl	14(%rdi,%r9), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
.L78:
	movl	%eax, _ZL13render_output(%rip)
.L74:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L106:
	.cfi_restore_state
	testq	%r8, %r8
	jne	.L75
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L85:
	xorl	%eax, %eax
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L94:
	movl	$7, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L95:
	movl	$8, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L96:
	movl	$9, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L97:
	movl	$10, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L98:
	movl	$11, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L99:
	movl	$12, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L100:
	movl	$13, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L101:
	movl	$14, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L90:
	movl	$3, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L91:
	movl	$4, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L92:
	movl	$5, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L93:
	movl	$6, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L88:
	movl	$1, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L89:
	movl	$2, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L102:
	movl	$15, %r9d
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L103:
	movl	$16, %r9d
	jmp	.L77
	.cfi_endproc
.LFE8188:
	.size	_Z6renderPcPiS0_m, .-_Z6renderPcPiS0_m
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely._ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_,comdat
	.align 2
.LCOLDB6:
	.section	.text._ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_,comdat
.LHOTB6:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	.type	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_, @function
_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_:
.LFB8431:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	8(%rdi), %rax
	movq	%rdi, %rbx
	subq	(%rdi), %rax
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L115
	leaq	(%rax,%rax), %rdx
	cmpq	%rdx, %rax
	jbe	.L127
.L116:
	movq	$-4, %r13
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L115:
	movl	$4, %r13d
.L108:
	movq	%r13, %rdi
	call	_Znwm
	movq	%rax, %rbp
.L114:
	movq	(%rbx), %r14
	movq	8(%rbx), %rdx
	movl	(%r12), %ecx
	movq	%rbp, %r12
	subq	%r14, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	addq	%rdx, %r12
	je	.L110
	movl	%ecx, (%r12)
.L110:
	testq	%rax, %rax
	jne	.L128
	addq	$4, %r12
	testq	%r14, %r14
	je	.L113
.L112:
	movq	%r14, %rdi
	call	_ZdlPv
.L113:
	movq	%rbp, (%rbx)
	addq	%r13, %rbp
	movq	%r12, 8(%rbx)
	movq	%rbp, 16(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L128:
	.cfi_restore_state
	movq	%r14, %rsi
	movq	%rbp, %rdi
	addq	$4, %r12
	call	memmove
	jmp	.L112
.L127:
	movabsq	$4611686018427387903, %rcx
	cmpq	%rcx, %rdx
	ja	.L116
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	testq	%rdx, %rdx
	je	.L114
	leaq	0(,%rax,8), %r13
	jmp	.L108
	.cfi_endproc
.LFE8431:
	.size	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_, .-_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	.section	.text.unlikely._ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_,comdat
.LCOLDE6:
	.section	.text._ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_,comdat
.LHOTE6:
	.weak	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIIRKiEEEvDpOT_
	.set	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIIRKiEEEvDpOT_,_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	.section	.text.unlikely._ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,comdat
	.align 2
.LCOLDB7:
	.section	.text._ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,comdat
.LHOTB7:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.type	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_, @function
_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_:
.LFB8576:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movabsq	$-3689348814741910323, %rax
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %r13
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	8(%rbx), %r8
	movq	%r8, %rdx
	subq	%rdi, %rdx
	movq	%rdx, %rcx
	sarq	$2, %rcx
	imulq	%rcx, %rax
	testq	%rax, %rax
	je	.L138
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rax
	jbe	.L153
.L139:
	movq	$-16, %r12
.L130:
	movq	%r12, %rdi
	call	_Znwm
	movq	8(%rbx), %r8
	movq	(%rbx), %rdi
	leaq	20(%rax), %r14
	movq	%rax, %rbp
	addq	%rax, %r12
	movq	%r8, %rdx
	subq	%rdi, %rdx
.L137:
	addq	%rbp, %rdx
	je	.L132
	movq	0(%r13), %rax
	movq	%rax, (%rdx)
	movq	8(%r13), %rax
	movq	%rax, 8(%rdx)
	movl	16(%r13), %eax
	movl	%eax, 16(%rdx)
.L132:
	cmpq	%rdi, %r8
	je	.L133
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	.p2align 4,,10
	.p2align 3
.L135:
	testq	%rcx, %rcx
	je	.L134
	movq	(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rcx)
	movl	16(%rdx), %esi
	movl	%esi, 16(%rcx)
.L134:
	addq	$20, %rdx
	addq	$20, %rcx
	cmpq	%r8, %rdx
	jne	.L135
	leaq	20(%rdi), %rax
	subq	%rax, %rdx
	shrq	$2, %rdx
	leaq	40(%rbp,%rdx,4), %r14
.L133:
	testq	%rdi, %rdi
	je	.L136
	call	_ZdlPv
.L136:
	movq	%rbp, (%rbx)
	movq	%r14, 8(%rbx)
	movq	%r12, 16(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L138:
	.cfi_restore_state
	movl	$20, %r12d
	jmp	.L130
.L153:
	movabsq	$922337203685477580, %rsi
	cmpq	%rsi, %rcx
	ja	.L139
	testq	%rcx, %rcx
	jne	.L154
	movl	$20, %r14d
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	jmp	.L137
.L154:
	leaq	(%rcx,%rax,8), %r12
	salq	$2, %r12
	jmp	.L130
	.cfi_endproc
.LFE8576:
	.size	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_, .-_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.section	.text.unlikely._ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,comdat
.LCOLDE7:
	.section	.text._ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,comdat
.LHOTE7:
	.weak	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_
	.set	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_,_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.section	.text.unlikely._ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,comdat
.LCOLDB8:
	.section	.text._ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,comdat
.LHOTB8:
	.p2align 4,,15
	.weak	_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	.type	_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_, @function
_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_:
.LFB8854:
	.cfi_startproc
	leaq	-1(%rdx), %rax
	movq	%rax, %r10
	shrq	$63, %r10
	addq	%rax, %r10
	sarq	%r10
	cmpq	%r10, %rsi
	jge	.L156
	movq	%rsi, %r9
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L167:
	movq	%rax, %r9
.L159:
	leaq	1(%r9), %rcx
	leaq	(%rcx,%rcx), %rax
	salq	$4, %rcx
	leaq	(%rdi,%rcx), %r8
	movsd	-8(%rdi,%rcx), %xmm2
	movsd	(%r8), %xmm1
	ucomisd	%xmm1, %xmm2
	jbe	.L157
	subq	$1, %rax
	leaq	(%rdi,%rax,8), %r8
	movsd	(%r8), %xmm1
.L157:
	cmpq	%r10, %rax
	movsd	%xmm1, (%rdi,%r9,8)
	jl	.L167
	testb	$1, %dl
	jne	.L160
.L166:
	subq	$2, %rdx
	movq	%rdx, %rcx
	shrq	$63, %rcx
	addq	%rcx, %rdx
	sarq	%rdx
	cmpq	%rax, %rdx
	je	.L171
.L160:
	cmpq	%rsi, %rax
	jle	.L161
	leaq	-1(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	sarq	%rcx
	movsd	(%rdi,%rcx,8), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L161
	cmpq	%rcx, %rsi
	leaq	(%rdi,%rcx,8), %r8
	movsd	%xmm1, (%rdi,%rax,8)
	jge	.L161
.L164:
	leaq	-1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	movq	%rcx, %rax
	sarq	%rdx
	movsd	(%rdi,%rdx,8), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L161
	movq	%rdx, %rcx
	movsd	%xmm1, (%rdi,%rax,8)
	cmpq	%rcx, %rsi
	leaq	(%rdi,%rcx,8), %r8
	jl	.L164
.L161:
	movsd	%xmm0, (%r8)
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	leaq	2(%rax,%rax), %rax
	movsd	-8(%rdi,%rax,8), %xmm1
	subq	$1, %rax
	movsd	%xmm1, (%r8)
	leaq	(%rdi,%rax,8), %r8
	jmp	.L160
.L156:
	testb	$1, %dl
	leaq	(%rdi,%rsi,8), %r8
	movq	%rsi, %rax
	je	.L166
	jmp	.L161
	.cfi_endproc
.LFE8854:
	.size	_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_, .-_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	.section	.text.unlikely._ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,comdat
.LCOLDE8:
	.section	.text._ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,comdat
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.type	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71, @function
_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71:
.LFB8942:
	.cfi_startproc
	movq	%rsi, %rax
	subq	%rdi, %rax
	cmpq	$135, %rax
	jle	.L216
	testq	%rdx, %rdx
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	je	.L197
	leaq	16(%rdi), %r13
.L175:
	sarq	$4, %rax
	movsd	8(%r12), %xmm1
	leaq	(%r12,%rax,8), %rax
	subq	$1, %r14
	movsd	-8(%rsi), %xmm2
	movsd	(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L208
	ucomisd	%xmm0, %xmm2
	ja	.L212
	ucomisd	%xmm1, %xmm2
	movsd	(%r12), %xmm0
	jbe	.L217
	movsd	%xmm2, (%r12)
	movsd	%xmm0, -8(%rsi)
	movsd	(%r12), %xmm1
.L183:
	movq	%r13, %rdx
	movq	%rsi, %rax
	.p2align 4,,10
	.p2align 3
.L186:
	movsd	-8(%rdx), %xmm2
	leaq	-8(%rdx), %rbx
	ucomisd	%xmm2, %xmm1
	movq	%rbx, %rbp
	ja	.L191
	subq	$8, %rax
	ucomisd	%xmm1, %xmm0
	jbe	.L192
	.p2align 4,,10
	.p2align 3
.L205:
	subq	$8, %rax
	movsd	(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L205
.L192:
	cmpq	%rbx, %rax
	jbe	.L218
	movsd	%xmm0, -8(%rdx)
	movsd	%xmm2, (%rax)
	movsd	-8(%rax), %xmm0
	movsd	(%r12), %xmm1
.L191:
	addq	$8, %rdx
	jmp	.L186
.L218:
	movq	%r14, %rdx
	movq	%rbx, %rdi
	call	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71
	movq	%rbx, %rax
	subq	%r12, %rax
	cmpq	$135, %rax
	jle	.L172
	testq	%r14, %r14
	je	.L174
	movq	%rbx, %rsi
	jmp	.L175
.L208:
	ucomisd	%xmm1, %xmm2
	ja	.L219
	ucomisd	%xmm0, %xmm2
	ja	.L220
.L212:
	movsd	(%r12), %xmm1
	movsd	%xmm0, (%r12)
	movsd	%xmm1, (%rax)
	movsd	-8(%rsi), %xmm0
	movsd	(%r12), %xmm1
	jmp	.L183
.L219:
	movsd	(%r12), %xmm0
.L217:
	movsd	%xmm1, (%r12)
	movsd	%xmm0, 8(%r12)
	movsd	-8(%rsi), %xmm0
	jmp	.L183
.L220:
	movsd	(%r12), %xmm0
	movsd	%xmm2, (%r12)
	movsd	%xmm0, -8(%rsi)
	movsd	(%r12), %xmm1
	jmp	.L183
.L197:
	movq	%rsi, %rbp
.L174:
	sarq	$3, %rax
	leaq	-2(%rax), %r13
	movq	%rax, %rbx
	sarq	%r13
	jmp	.L177
.L221:
	subq	$1, %r13
.L177:
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	movsd	(%r12,%r13,8), %xmm0
	pushq	$0
	.cfi_def_cfa_offset 64
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rdi
	call	_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	testq	%r13, %r13
	popq	%rcx
	.cfi_def_cfa_offset 56
	popq	%rsi
	.cfi_def_cfa_offset 48
	jne	.L221
.L178:
	subq	$8, %rbp
	movsd	(%r12), %xmm1
	movq	%rbp, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	xorl	%esi, %esi
	subq	%r12, %rbx
	movsd	0(%rbp), %xmm0
	movq	%rbx, %rdx
	movsd	%xmm1, 0(%rbp)
	pushq	$0
	.cfi_def_cfa_offset 64
	sarq	$3, %rdx
	movq	%r12, %rdi
	call	_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	cmpq	$15, %rbx
	popq	%rax
	.cfi_def_cfa_offset 56
	popq	%rdx
	.cfi_def_cfa_offset 48
	jg	.L178
.L172:
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.L216:
	ret
	.cfi_endproc
.LFE8942:
	.size	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71, .-_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"render:"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC11:
	.string	"n;oop;raw;dod;render_dod;oop[i];raw[i];dod[i];render_dod[i]"
	.section	.rodata.str1.1
.LC12:
	.string	"vector::_M_emplace_back_aux"
.LC13:
	.string	";"
	.section	.text.unlikely
.LCOLDB18:
	.section	.text.startup,"ax",@progbits
.LHOTB18:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB8192:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8192
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$7, %edx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$.LC10, %esi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	$_ZSt4cout, %edi
	movl	$10000, %r14d
	subq	$408, %rsp
	.cfi_def_cfa_offset 464
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$59, %edx
	movl	$.LC11, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.LEHE0:
	movl	$4, 132(%rsp)
.L422:
	movq	$0, 160(%rsp)
	movq	$0, 168(%rsp)
	xorl	%esi, %esi
	movq	$0, 176(%rsp)
	movq	$0, 192(%rsp)
	xorl	%ecx, %ecx
	movq	$0, 200(%rsp)
	movq	$0, 208(%rsp)
	xorl	%r15d, %r15d
	movq	$0, 224(%rsp)
	movq	$0, 232(%rsp)
	xorl	%r12d, %r12d
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	xorl	%ebx, %ebx
	movq	$0, 264(%rsp)
	movq	$0, 272(%rsp)
	xorl	%ebp, %ebp
	movq	$0, 288(%rsp)
	movq	$0, 296(%rsp)
	movq	$0, 304(%rsp)
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L796:
	testq	%rcx, %rcx
	je	.L224
	movq	320(%rsp), %rax
	movq	%rax, (%rcx)
	movq	328(%rsp), %rax
	movq	%rax, 8(%rcx)
	movl	336(%rsp), %eax
	movl	%eax, 16(%rcx)
.L224:
	addq	$20, %rcx
	cmpq	%r12, %r15
	movq	%rcx, 296(%rsp)
	je	.L226
.L797:
	testq	%r12, %r12
	je	.L227
	movb	%r13b, (%r12)
.L227:
	addq	$1, %r12
.L228:
	movq	168(%rsp), %rax
	cmpq	176(%rsp), %rax
	je	.L235
	testq	%rax, %rax
	movl	144(%rsp), %edx
	je	.L236
	movl	%edx, (%rax)
.L236:
	addq	$4, %rax
	movq	%rax, 168(%rsp)
.L237:
	movq	200(%rsp), %rax
	cmpq	208(%rsp), %rax
	je	.L238
	testq	%rax, %rax
	movl	148(%rsp), %edx
	je	.L239
	movl	%edx, (%rax)
.L239:
	addq	$4, %rax
	movq	%rax, 200(%rsp)
.L240:
	movq	232(%rsp), %rax
	cmpq	240(%rsp), %rax
	je	.L241
	testq	%rax, %rax
	movl	152(%rsp), %edx
	je	.L242
	movl	%edx, (%rax)
.L242:
	addq	$4, %rax
	movq	%rax, 232(%rsp)
.L243:
	movq	264(%rsp), %rax
	cmpq	272(%rsp), %rax
	je	.L244
	testq	%rax, %rax
	movl	156(%rsp), %edx
	je	.L245
	movl	%edx, (%rax)
.L245:
	addq	$1, %rbp
	addq	$4, %rax
	cmpq	%r14, %rbp
	movq	%rax, 264(%rsp)
	je	.L247
.L800:
	movq	296(%rsp), %rcx
	movq	304(%rsp), %rsi
.L248:
	movq	%rbp, %rax
	movabsq	$-3689348814741910323, %rdx
	movq	%rbp, %r13
	mulq	%rdx
	movq	%rbp, %r8
	leal	(%rbp,%rbp), %edi
	movl	%ebp, 144(%rsp)
	movl	%ebp, 324(%rsp)
	movl	%edi, 148(%rsp)
	movl	%edi, 328(%rsp)
	movq	%rdx, %rax
	shrq	$2, %rax
	leaq	(%rax,%rax,4), %rax
	subq	%rax, %r13
	movq	%rdx, %rax
	shrq	$3, %rdx
	shrq	$4, %rax
	movb	%r13b, 320(%rsp)
	leaq	(%rax,%rax,4), %rax
	salq	$2, %rax
	subq	%rax, %r8
	leaq	(%rdx,%rdx,4), %rax
	movq	%rbp, %rdx
	movl	%r8d, 152(%rsp)
	movl	%r8d, 332(%rsp)
	addq	%rax, %rax
	subq	%rax, %rdx
	cmpq	%rcx, %rsi
	movl	%edx, 156(%rsp)
	movl	%edx, 336(%rsp)
	jne	.L796
	leaq	320(%rsp), %rsi
	leaq	288(%rsp), %rdi
.LEHB1:
	call	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	cmpq	%r12, %r15
	jne	.L797
.L226:
	subq	%rbx, %r15
	cmpq	$-1, %r15
	movq	%r15, %r12
	je	.L798
	testq	%r12, %r12
	movl	$1, %r15d
	je	.L230
	leaq	(%r12,%r12), %rax
	movq	$-1, %rdx
	cmpq	%rax, %r12
	cmovbe	%rax, %rdx
	movq	%rdx, %r15
.L230:
	movq	%r15, %rdi
	call	_Znwm
	movq	%rax, %rcx
	movq	%rax, (%rsp)
	addq	%r12, %rcx
	je	.L231
	movb	%r13b, (%rcx)
.L231:
	testq	%r12, %r12
	jne	.L799
	testq	%rbx, %rbx
	leaq	1(%rcx), %r12
	je	.L234
.L233:
	movq	%rbx, %rdi
	call	_ZdlPv
.L234:
	movq	(%rsp), %rax
	addq	%rax, %r15
	movq	%rax, %rbx
	jmp	.L228
.L244:
	leaq	156(%rsp), %rsi
	leaq	256(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	addq	$1, %rbp
	cmpq	%r14, %rbp
	jne	.L800
.L247:
	movq	288(%rsp), %rax
	movq	%r14, %rsi
	movl	$_ZSt4cout, %edi
	movq	296(%rsp), %r12
	leaq	(%rbx,%r14), %r13
	movq	160(%rsp), %rbp
	movq	192(%rsp), %r15
	movq	%rax, 96(%rsp)
	call	_ZNSo9_M_insertImEERSoT_
	movl	$1, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	320(%rsp), %rsi
	movq	%r14, 8(%rsp)
	movq	96(%rsp), %r14
	movq	%rbp, 16(%rsp)
	movq	%r13, (%rsp)
	movq	%r12, %rbp
	movq	%rbx, %r12
	movq	%rsi, %rbx
.L254:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r13d, %r13d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
	.p2align 3
.L250:
	xorl	%esi, %esi
	cmpq	%rbp, %r14
	movl	$0, _ZL13render_output(%rip)
	movq	%r14, %rcx
	je	.L253
	.p2align 4,,10
	.p2align 3
.L639:
	movl	8(%rcx), %eax
	addl	4(%rcx), %eax
	addq	$20, %rcx
	movl	%eax, %edx
	movsbl	-20(%rcx), %eax
	addl	%edx, %eax
	addl	%eax, %esi
	cmpq	%rcx, %rbp
	jne	.L639
	movl	%esi, _ZL13render_output(%rip)
.L253:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	addl	$1, %r13d
	cmpq	$199999999, %rax
	jle	.L250
	pxor	%xmm0, %xmm0
	addq	$8, %rbx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm0
	leaq	400(%rsp), %rax
	cvtsi2sd	%r13d, %xmm1
	divsd	.LC14(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbx)
	cmpq	%rax, %rbx
	jne	.L254
	movq	%r12, %rbx
	leaq	320(%rsp), %rdi
	leaq	328(%rsp), %r12
	movl	$6, %edx
	movq	%rax, %rsi
	movq	(%rsp), %r13
	movq	8(%rsp), %r14
	movq	16(%rsp), %rbp
	call	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71
.L255:
	movsd	(%r12), %xmm1
	movsd	320(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L801
	movsd	-8(%r12), %xmm0
	leaq	-8(%r12), %rax
	ucomisd	%xmm1, %xmm0
	ja	.L661
	jmp	.L802
	.p2align 4,,10
	.p2align 3
.L433:
	movq	%rdx, %rax
.L661:
	movsd	%xmm0, 8(%rax)
	leaq	-8(%rax), %rdx
	movsd	-8(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L433
.L261:
	movsd	%xmm1, (%rax)
.L260:
	leaq	400(%rsp), %rax
	addq	$8, %r12
	cmpq	%rax, %r12
	jne	.L255
	pxor	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	pxor	%xmm6, %xmm6
	addsd	336(%rsp), %xmm0
	cvtsi2sdq	%r14, %xmm6
	addsd	344(%rsp), %xmm0
	addsd	352(%rsp), %xmm0
	movsd	%xmm6, 88(%rsp)
	addsd	360(%rsp), %xmm0
	addsd	368(%rsp), %xmm0
	addsd	376(%rsp), %xmm0
	divsd	.LC16(%rip), %xmm0
	divsd	%xmm6, %xmm0
	mulsd	.LC17(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	320(%rsp), %rax
	movq	%r14, 136(%rsp)
	movq	%rax, 72(%rsp)
	leaq	1(%rbx), %rax
	movq	%rax, %rdi
	movq	%rax, 80(%rsp)
	movq	%r13, %rax
	subq	%rbx, %rax
	movq	%rax, %r12
	movq	%rax, (%rsp)
	movq	%rbx, %rax
	negq	%rax
	andl	$15, %eax
	movq	%rax, %rsi
	movq	%rax, 112(%rsp)
	movq	%r12, %rax
	cmpq	%r12, %rsi
	cmovbe	%rsi, %rax
	cmpq	$17, %r12
	movq	%rax, %rsi
	movq	%rax, 120(%rsp)
	movq	%r12, %rax
	cmova	%rsi, %r12
	subq	%r12, %rax
	movq	%rax, 32(%rsp)
	subq	$16, %rax
	shrq	$4, %rax
	addq	$1, %rax
	movq	%rax, %rsi
	movq	%rax, 64(%rsp)
	salq	$4, %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rax
	subq	%rdi, %rax
	movq	%rax, 104(%rsp)
	subq	%r12, %rax
	movq	%rax, 8(%rsp)
	leaq	0(,%r12,4), %rax
	leaq	0(%rbp,%rax), %rdi
	addq	%r15, %rax
	movq	%rax, 40(%rsp)
	leaq	(%rbx,%r12), %rax
	movq	%rdi, 56(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rsi, %rax
	salq	$6, %rax
	movq	%rax, 16(%rsp)
	movq	%r12, %rax
	movq	%r13, %r12
	movq	%rax, %r13
.L278:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r14d, %r14d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
	.p2align 3
.L266:
	cmpq	%rbx, %r12
	movl	$0, _ZL13render_output(%rip)
	je	.L277
	testq	%r13, %r13
	je	.L434
	movl	0(%rbp), %eax
	movsbl	(%rbx), %edx
	leaq	4(%r15), %rcx
	addl	(%r15), %eax
	leaq	4(%rbp), %rsi
	addl	%edx, %eax
	cmpq	$1, %r13
	je	.L435
	movl	4(%rbp), %r9d
	movsbl	1(%rbx), %r8d
	leaq	2(%rbx), %rdx
	addl	4(%r15), %r9d
	leaq	8(%r15), %rcx
	leaq	8(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$2, %r13
	je	.L269
	movl	8(%rbp), %r9d
	movsbl	2(%rbx), %r8d
	leaq	3(%rbx), %rdx
	addl	8(%r15), %r9d
	leaq	12(%r15), %rcx
	leaq	12(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$3, %r13
	je	.L269
	movl	12(%rbp), %r9d
	movsbl	3(%rbx), %r8d
	leaq	4(%rbx), %rdx
	addl	12(%r15), %r9d
	leaq	16(%r15), %rcx
	leaq	16(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$4, %r13
	je	.L269
	movl	16(%rbp), %r9d
	movsbl	4(%rbx), %r8d
	leaq	5(%rbx), %rdx
	addl	16(%r15), %r9d
	leaq	20(%r15), %rcx
	leaq	20(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$5, %r13
	je	.L269
	movl	20(%rbp), %r9d
	movsbl	5(%rbx), %r8d
	leaq	6(%rbx), %rdx
	addl	20(%r15), %r9d
	leaq	24(%r15), %rcx
	leaq	24(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$6, %r13
	je	.L269
	movl	24(%rbp), %r9d
	movsbl	6(%rbx), %r8d
	leaq	7(%rbx), %rdx
	addl	24(%r15), %r9d
	leaq	28(%r15), %rcx
	leaq	28(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$7, %r13
	je	.L269
	movl	28(%rbp), %r9d
	movsbl	7(%rbx), %r8d
	leaq	8(%rbx), %rdx
	addl	28(%r15), %r9d
	leaq	32(%r15), %rcx
	leaq	32(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$8, %r13
	je	.L269
	movl	32(%rbp), %r9d
	movsbl	8(%rbx), %r8d
	leaq	9(%rbx), %rdx
	addl	32(%r15), %r9d
	leaq	36(%r15), %rcx
	leaq	36(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$9, %r13
	je	.L269
	movl	36(%rbp), %r9d
	movsbl	9(%rbx), %r8d
	leaq	10(%rbx), %rdx
	addl	36(%r15), %r9d
	leaq	40(%r15), %rcx
	leaq	40(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$10, %r13
	je	.L269
	movl	40(%rbp), %r9d
	movsbl	10(%rbx), %r8d
	leaq	11(%rbx), %rdx
	addl	40(%r15), %r9d
	leaq	44(%r15), %rcx
	leaq	44(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$11, %r13
	je	.L269
	movl	44(%rbp), %r9d
	movsbl	11(%rbx), %r8d
	leaq	12(%rbx), %rdx
	addl	44(%r15), %r9d
	leaq	48(%r15), %rcx
	leaq	48(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$12, %r13
	je	.L269
	movl	48(%rbp), %r9d
	movsbl	12(%rbx), %r8d
	leaq	13(%rbx), %rdx
	addl	48(%r15), %r9d
	leaq	52(%r15), %rcx
	leaq	52(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$13, %r13
	je	.L269
	movl	52(%rbp), %r9d
	movsbl	13(%rbx), %r8d
	leaq	14(%rbx), %rdx
	addl	52(%r15), %r9d
	leaq	56(%r15), %rcx
	leaq	56(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$14, %r13
	je	.L269
	movl	56(%rbp), %r9d
	movsbl	14(%rbx), %r8d
	leaq	15(%rbx), %rdx
	addl	56(%r15), %r9d
	leaq	60(%r15), %rcx
	leaq	60(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$15, %r13
	je	.L269
	movl	60(%rbp), %r9d
	movsbl	15(%rbx), %r8d
	leaq	16(%rbx), %rdx
	addl	60(%r15), %r9d
	leaq	64(%r15), %rcx
	leaq	64(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
	cmpq	$16, %r13
	je	.L269
	movl	64(%r15), %r9d
	movsbl	16(%rbx), %r8d
	leaq	17(%rbx), %rdx
	addl	64(%rbp), %r9d
	leaq	68(%r15), %rcx
	leaq	68(%rbp), %rsi
	addl	%r9d, %r8d
	addl	%r8d, %eax
.L269:
	cmpq	(%rsp), %r13
	je	.L270
.L268:
	cmpq	$14, 8(%rsp)
	jbe	.L271
	movq	48(%rsp), %r11
	movq	40(%rsp), %r9
	xorl	%r10d, %r10d
	movq	56(%rsp), %r8
	pxor	%xmm1, %xmm1
.L273:
	pxor	%xmm0, %xmm0
	addq	$1, %r10
	movdqa	(%r11), %xmm2
	addq	$64, %r8
	pxor	%xmm5, %xmm5
	addq	$64, %r9
	pcmpgtb	%xmm2, %xmm0
	movdqa	%xmm2, %xmm3
	movdqu	-64(%r9), %xmm4
	addq	$16, %r11
	punpcklbw	%xmm0, %xmm3
	punpckhbw	%xmm0, %xmm2
	movdqu	-64(%r8), %xmm0
	pcmpgtw	%xmm3, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm5, %xmm4
	punpckhwd	%xmm5, %xmm3
	pxor	%xmm5, %xmm5
	paddd	%xmm4, %xmm0
	movdqu	-48(%r9), %xmm4
	paddd	%xmm0, %xmm1
	movdqu	-48(%r8), %xmm0
	pcmpgtw	%xmm2, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm2, %xmm4
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	movdqu	-32(%r8), %xmm1
	movdqa	%xmm3, %xmm0
	punpcklwd	%xmm5, %xmm4
	movdqu	-32(%r9), %xmm3
	punpckhwd	%xmm5, %xmm2
	paddd	%xmm3, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	movdqu	-16(%r9), %xmm1
	paddd	%xmm0, %xmm3
	movdqu	-16(%r8), %xmm0
	cmpq	%r10, 64(%rsp)
	paddd	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	paddd	%xmm3, %xmm1
	ja	.L273
	movdqa	%xmm1, %xmm0
	movq	24(%rsp), %rdi
	movq	16(%rsp), %r10
	psrldq	$8, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	pshufd	$255, %xmm0, %xmm2
	addq	%rdi, %rdx
	pshufd	$85, %xmm0, %xmm1
	addq	%r10, %rcx
	addq	%r10, %rsi
	punpckhdq	%xmm0, %xmm3
	movd	%xmm2, %r8d
	punpckldq	%xmm3, %xmm1
	movd	%r8d, %xmm2
	punpcklqdq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r8d
	addl	%r8d, %eax
	cmpq	32(%rsp), %rdi
	je	.L270
	.p2align 4,,10
	.p2align 3
.L271:
	movl	(%rsi), %r9d
	movsbl	(%rdx), %r8d
	addl	(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	1(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	4(%rsi), %r9d
	movsbl	1(%rdx), %r8d
	addl	4(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	2(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	8(%rsi), %r9d
	movsbl	2(%rdx), %r8d
	addl	8(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	3(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	12(%rsi), %r9d
	movsbl	3(%rdx), %r8d
	addl	12(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	4(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	16(%rsi), %r9d
	movsbl	4(%rdx), %r8d
	addl	16(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	5(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	20(%rsi), %r9d
	movsbl	5(%rdx), %r8d
	addl	20(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	6(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	24(%rsi), %r9d
	movsbl	6(%rdx), %r8d
	addl	24(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	7(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	28(%rsi), %r9d
	movsbl	7(%rdx), %r8d
	addl	28(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	8(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	32(%rsi), %r9d
	movsbl	8(%rdx), %r8d
	addl	32(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	9(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	36(%rsi), %r9d
	movsbl	9(%rdx), %r8d
	addl	36(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	10(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	40(%rsi), %r9d
	movsbl	10(%rdx), %r8d
	addl	40(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	11(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	44(%rsi), %r9d
	movsbl	11(%rdx), %r8d
	addl	44(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	12(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	48(%rsi), %r9d
	movsbl	12(%rdx), %r8d
	addl	48(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	13(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	52(%rsi), %r9d
	movsbl	13(%rdx), %r8d
	addl	52(%rcx), %r9d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	14(%rdx), %r8
	cmpq	%r8, %r12
	je	.L270
	movl	56(%rcx), %ecx
	movsbl	14(%rdx), %edx
	addl	56(%rsi), %ecx
	addl	%ecx, %edx
	addl	%edx, %eax
.L270:
	movl	%eax, _ZL13render_output(%rip)
.L277:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	addl	$1, %r14d
	cmpq	$199999999, %rax
	jle	.L266
	pxor	%xmm0, %xmm0
	leaq	400(%rsp), %rsi
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm0
	movq	72(%rsp), %rax
	cvtsi2sd	%r14d, %xmm1
	addq	$8, %rax
	divsd	.LC14(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	cmpq	%rax, %rsi
	movq	%rax, 72(%rsp)
	jne	.L278
	movq	%r12, %r13
	leaq	320(%rsp), %rdi
	leaq	328(%rsp), %r12
	movl	$6, %edx
	movq	136(%rsp), %r14
	call	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71
.L279:
	movsd	(%r12), %xmm1
	movsd	320(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L803
	movsd	-8(%r12), %xmm0
	leaq	-8(%r12), %rax
	ucomisd	%xmm1, %xmm0
	ja	.L662
	jmp	.L804
	.p2align 4,,10
	.p2align 3
.L437:
	movq	%rdx, %rax
.L662:
	movsd	%xmm0, 8(%rax)
	leaq	-8(%rax), %rdx
	movsd	-8(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L437
.L285:
	movsd	%xmm1, (%rax)
.L284:
	leaq	400(%rsp), %rax
	addq	$8, %r12
	cmpq	%rax, %r12
	jne	.L279
	pxor	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	addsd	336(%rsp), %xmm0
	addsd	344(%rsp), %xmm0
	addsd	352(%rsp), %xmm0
	addsd	360(%rsp), %xmm0
	addsd	368(%rsp), %xmm0
	addsd	376(%rsp), %xmm0
	divsd	.LC16(%rip), %xmm0
	divsd	88(%rsp), %xmm0
	mulsd	.LC17(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	320(%rsp), %rax
	movq	120(%rsp), %r12
	movq	%r14, 72(%rsp)
	movq	%rax, 64(%rsp)
	movq	(%rsp), %rax
	cmpq	$17, %rax
	cmovbe	%rax, %r12
	subq	%r12, %rax
	movq	%rax, 24(%rsp)
	subq	$16, %rax
	shrq	$4, %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	salq	$4, %rax
	movq	%rax, 16(%rsp)
	movq	104(%rsp), %rax
	subq	%r12, %rax
	movq	%rax, 8(%rsp)
	leaq	0(,%r12,4), %rax
	leaq	0(%rbp,%rax), %rsi
	addq	%r15, %rax
	movq	%rax, 32(%rsp)
	leaq	(%rbx,%r12), %rax
	movq	%rsi, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r12, %rax
	movq	%r13, %r12
	movq	%rax, %r13
.L302:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r14d, %r14d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
	.p2align 3
.L290:
	cmpq	%rbx, %r12
	movl	$0, _ZL13render_output(%rip)
	je	.L301
	testq	%r13, %r13
	je	.L438
	movl	0(%rbp), %eax
	movsbl	(%rbx), %edx
	addl	(%r15), %eax
	addl	%edx, %eax
	cmpq	$1, %r13
	je	.L439
	movl	4(%rbp), %edx
	movl	4(%r15), %ecx
	addl	%edx, %ecx
	movsbl	1(%rbx), %edx
	addl	%ecx, %edx
	leaq	2(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$2, %r13
	je	.L440
	movl	8(%rbp), %edx
	movl	8(%r15), %ecx
	addl	%edx, %ecx
	movsbl	2(%rbx), %edx
	addl	%ecx, %edx
	leaq	3(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$3, %r13
	je	.L441
	movl	12(%rbp), %edx
	movl	12(%r15), %ecx
	addl	%edx, %ecx
	movsbl	3(%rbx), %edx
	addl	%ecx, %edx
	leaq	4(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$4, %r13
	je	.L442
	movl	16(%rbp), %edx
	movl	16(%r15), %ecx
	addl	%edx, %ecx
	movsbl	4(%rbx), %edx
	addl	%ecx, %edx
	leaq	5(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$5, %r13
	je	.L443
	movl	20(%rbp), %edx
	movl	20(%r15), %ecx
	addl	%edx, %ecx
	movsbl	5(%rbx), %edx
	addl	%ecx, %edx
	leaq	6(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$6, %r13
	je	.L444
	movl	24(%rbp), %edx
	movl	24(%r15), %ecx
	addl	%edx, %ecx
	movsbl	6(%rbx), %edx
	addl	%ecx, %edx
	leaq	7(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$7, %r13
	je	.L445
	movl	28(%rbp), %edx
	movl	28(%r15), %ecx
	addl	%edx, %ecx
	movsbl	7(%rbx), %edx
	addl	%ecx, %edx
	leaq	8(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$8, %r13
	je	.L446
	movl	32(%rbp), %edx
	movl	32(%r15), %ecx
	addl	%edx, %ecx
	movsbl	8(%rbx), %edx
	addl	%ecx, %edx
	leaq	9(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$9, %r13
	je	.L447
	movl	36(%rbp), %edx
	movl	36(%r15), %ecx
	addl	%edx, %ecx
	movsbl	9(%rbx), %edx
	addl	%ecx, %edx
	leaq	10(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$10, %r13
	je	.L448
	movl	40(%rbp), %edx
	movl	40(%r15), %ecx
	addl	%edx, %ecx
	movsbl	10(%rbx), %edx
	addl	%ecx, %edx
	leaq	11(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$11, %r13
	je	.L449
	movl	44(%rbp), %edx
	movl	44(%r15), %ecx
	addl	%edx, %ecx
	movsbl	11(%rbx), %edx
	addl	%ecx, %edx
	leaq	12(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$12, %r13
	je	.L450
	movl	48(%rbp), %edx
	movl	48(%r15), %ecx
	addl	%edx, %ecx
	movsbl	12(%rbx), %edx
	addl	%ecx, %edx
	leaq	13(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$13, %r13
	je	.L451
	movl	52(%rbp), %edx
	movl	52(%r15), %ecx
	addl	%edx, %ecx
	movsbl	13(%rbx), %edx
	addl	%ecx, %edx
	leaq	14(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$14, %r13
	je	.L452
	movl	56(%rbp), %edx
	movl	56(%r15), %ecx
	addl	%edx, %ecx
	movsbl	14(%rbx), %edx
	addl	%ecx, %edx
	leaq	15(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$15, %r13
	je	.L453
	movl	60(%rbp), %edx
	movl	60(%r15), %ecx
	addl	%edx, %ecx
	movsbl	15(%rbx), %edx
	addl	%ecx, %edx
	leaq	16(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$16, %r13
	je	.L454
	movl	64(%r15), %edx
	movl	64(%rbp), %ecx
	movl	$17, %edi
	addl	%edx, %ecx
	movsbl	16(%rbx), %edx
	addl	%ecx, %edx
	leaq	17(%rbx), %rcx
	addl	%edx, %eax
	movl	$17, %edx
.L293:
	cmpq	%r13, (%rsp)
	je	.L294
.L292:
	cmpq	$14, 8(%rsp)
	jbe	.L295
	movq	40(%rsp), %r11
	movq	32(%rsp), %r9
	xorl	%r10d, %r10d
	movq	48(%rsp), %r8
	pxor	%xmm1, %xmm1
.L296:
	pxor	%xmm0, %xmm0
	addq	$1, %r10
	movdqa	(%r11), %xmm2
	addq	$64, %r8
	pxor	%xmm5, %xmm5
	addq	$64, %r9
	pcmpgtb	%xmm2, %xmm0
	movdqa	%xmm2, %xmm3
	movdqu	-64(%r9), %xmm4
	addq	$16, %r11
	punpcklbw	%xmm0, %xmm3
	punpckhbw	%xmm0, %xmm2
	movdqu	-64(%r8), %xmm0
	pcmpgtw	%xmm3, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm5, %xmm4
	punpckhwd	%xmm5, %xmm3
	pxor	%xmm5, %xmm5
	paddd	%xmm4, %xmm0
	movdqu	-48(%r9), %xmm4
	paddd	%xmm0, %xmm1
	movdqu	-48(%r8), %xmm0
	pcmpgtw	%xmm2, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm2, %xmm4
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	movdqu	-32(%r8), %xmm1
	movdqa	%xmm3, %xmm0
	punpcklwd	%xmm5, %xmm4
	movdqu	-32(%r9), %xmm3
	punpckhwd	%xmm5, %xmm2
	paddd	%xmm3, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	movdqu	-16(%r9), %xmm1
	paddd	%xmm0, %xmm3
	movdqu	-16(%r8), %xmm0
	cmpq	%r10, 56(%rsp)
	paddd	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	paddd	%xmm3, %xmm1
	ja	.L296
	movdqa	%xmm1, %xmm0
	movq	16(%rsp), %rsi
	psrldq	$8, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	pshufd	$255, %xmm0, %xmm2
	addq	%rsi, %rdx
	addq	%rsi, %rdi
	pshufd	$85, %xmm0, %xmm1
	addq	%rsi, %rcx
	punpckhdq	%xmm0, %xmm3
	movd	%xmm2, %r8d
	punpckldq	%xmm3, %xmm1
	movd	%r8d, %xmm2
	punpcklqdq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r8d
	addl	%r8d, %eax
	cmpq	24(%rsp), %rsi
	je	.L294
	.p2align 4,,10
	.p2align 3
.L295:
	movl	0(%rbp,%rdi,4), %r8d
	movsbl	(%rcx), %ecx
	addl	(%r15,%rdi,4), %r8d
	leaq	1(%rdx), %rdi
	addl	%ecx, %r8d
	addl	%r8d, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	2(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	3(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	4(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	5(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	6(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	7(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	8(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	9(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	10(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	11(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	12(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	13(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L294
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	addq	$14, %rdx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	(%rbx,%rdx), %rdi
	addl	%ecx, %eax
	cmpq	%rdi, %r12
	je	.L294
	movl	(%r15,%rdx,4), %ecx
	addl	0(%rbp,%rdx,4), %ecx
	movsbl	(%rdi), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
.L294:
	movl	%eax, _ZL13render_output(%rip)
.L301:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	addl	$1, %r14d
	cmpq	$199999999, %rax
	jle	.L290
	pxor	%xmm0, %xmm0
	leaq	400(%rsp), %rsi
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm0
	movq	64(%rsp), %rax
	cvtsi2sd	%r14d, %xmm1
	addq	$8, %rax
	divsd	.LC14(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	cmpq	%rax, %rsi
	movq	%rax, 64(%rsp)
	jne	.L302
	leaq	320(%rsp), %rdi
	movq	%r13, %rax
	movl	$6, %edx
	movq	72(%rsp), %r14
	movq	%r12, %r13
	movq	%rax, %r12
	call	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71
	leaq	328(%rsp), %rcx
.L303:
	movsd	(%rcx), %xmm1
	movsd	320(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L805
	movsd	-8(%rcx), %xmm0
	leaq	-8(%rcx), %rax
	ucomisd	%xmm1, %xmm0
	ja	.L663
	jmp	.L806
	.p2align 4,,10
	.p2align 3
.L456:
	movq	%rdx, %rax
.L663:
	movsd	%xmm0, 8(%rax)
	leaq	-8(%rax), %rdx
	movsd	-8(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L456
.L309:
	movsd	%xmm1, (%rax)
.L308:
	leaq	400(%rsp), %rax
	addq	$8, %rcx
	cmpq	%rax, %rcx
	jne	.L303
	pxor	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	addsd	336(%rsp), %xmm0
	addsd	344(%rsp), %xmm0
	addsd	352(%rsp), %xmm0
	addsd	360(%rsp), %xmm0
	addsd	368(%rsp), %xmm0
	addsd	376(%rsp), %xmm0
	divsd	.LC16(%rip), %xmm0
	divsd	88(%rsp), %xmm0
	mulsd	.LC17(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	320(%rsp), %rax
	movq	%r14, 72(%rsp)
	movq	%rax, 64(%rsp)
	movq	%r12, %rax
	movq	%r13, %r12
	movq	%rax, %r13
.L326:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r14d, %r14d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
	.p2align 3
.L314:
	cmpq	%rbx, %r12
	movl	$0, _ZL13render_output(%rip)
	je	.L325
	testq	%r13, %r13
	je	.L457
	movl	0(%rbp), %eax
	movsbl	(%rbx), %edx
	addl	(%r15), %eax
	addl	%edx, %eax
	cmpq	$1, %r13
	je	.L458
	movl	4(%rbp), %edx
	movl	4(%r15), %ecx
	addl	%edx, %ecx
	movsbl	1(%rbx), %edx
	addl	%ecx, %edx
	leaq	2(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$2, %r13
	je	.L459
	movl	8(%rbp), %edx
	movl	8(%r15), %ecx
	addl	%edx, %ecx
	movsbl	2(%rbx), %edx
	addl	%ecx, %edx
	leaq	3(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$3, %r13
	je	.L460
	movl	12(%rbp), %edx
	movl	12(%r15), %ecx
	addl	%edx, %ecx
	movsbl	3(%rbx), %edx
	addl	%ecx, %edx
	leaq	4(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$4, %r13
	je	.L461
	movl	16(%rbp), %edx
	movl	16(%r15), %ecx
	addl	%edx, %ecx
	movsbl	4(%rbx), %edx
	addl	%ecx, %edx
	leaq	5(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$5, %r13
	je	.L462
	movl	20(%rbp), %edx
	movl	20(%r15), %ecx
	addl	%edx, %ecx
	movsbl	5(%rbx), %edx
	addl	%ecx, %edx
	leaq	6(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$6, %r13
	je	.L463
	movl	24(%rbp), %edx
	movl	24(%r15), %ecx
	addl	%edx, %ecx
	movsbl	6(%rbx), %edx
	addl	%ecx, %edx
	leaq	7(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$7, %r13
	je	.L464
	movl	28(%rbp), %edx
	movl	28(%r15), %ecx
	addl	%edx, %ecx
	movsbl	7(%rbx), %edx
	addl	%ecx, %edx
	leaq	8(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$8, %r13
	je	.L465
	movl	32(%rbp), %edx
	movl	32(%r15), %ecx
	addl	%edx, %ecx
	movsbl	8(%rbx), %edx
	addl	%ecx, %edx
	leaq	9(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$9, %r13
	je	.L466
	movl	36(%rbp), %edx
	movl	36(%r15), %ecx
	addl	%edx, %ecx
	movsbl	9(%rbx), %edx
	addl	%ecx, %edx
	leaq	10(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$10, %r13
	je	.L467
	movl	40(%rbp), %edx
	movl	40(%r15), %ecx
	addl	%edx, %ecx
	movsbl	10(%rbx), %edx
	addl	%ecx, %edx
	leaq	11(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$11, %r13
	je	.L468
	movl	44(%rbp), %edx
	movl	44(%r15), %ecx
	addl	%edx, %ecx
	movsbl	11(%rbx), %edx
	addl	%ecx, %edx
	leaq	12(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$12, %r13
	je	.L469
	movl	48(%rbp), %edx
	movl	48(%r15), %ecx
	addl	%edx, %ecx
	movsbl	12(%rbx), %edx
	addl	%ecx, %edx
	leaq	13(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$13, %r13
	je	.L470
	movl	52(%rbp), %edx
	movl	52(%r15), %ecx
	addl	%edx, %ecx
	movsbl	13(%rbx), %edx
	addl	%ecx, %edx
	leaq	14(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$14, %r13
	je	.L471
	movl	56(%rbp), %edx
	movl	56(%r15), %ecx
	addl	%edx, %ecx
	movsbl	14(%rbx), %edx
	addl	%ecx, %edx
	leaq	15(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$15, %r13
	je	.L472
	movl	60(%rbp), %edx
	movl	60(%r15), %ecx
	addl	%edx, %ecx
	movsbl	15(%rbx), %edx
	addl	%ecx, %edx
	leaq	16(%rbx), %rcx
	addl	%edx, %eax
	cmpq	$16, %r13
	je	.L473
	movl	64(%r15), %edx
	movl	64(%rbp), %ecx
	movl	$17, %edi
	addl	%edx, %ecx
	movsbl	16(%rbx), %edx
	addl	%ecx, %edx
	leaq	17(%rbx), %rcx
	addl	%edx, %eax
	movl	$17, %edx
.L317:
	cmpq	%r13, (%rsp)
	je	.L318
.L316:
	cmpq	$14, 8(%rsp)
	jbe	.L319
	movq	40(%rsp), %r11
	movq	32(%rsp), %r9
	xorl	%r10d, %r10d
	movq	48(%rsp), %r8
	pxor	%xmm1, %xmm1
.L320:
	pxor	%xmm0, %xmm0
	addq	$1, %r10
	movdqa	(%r11), %xmm2
	addq	$64, %r8
	pxor	%xmm5, %xmm5
	addq	$64, %r9
	pcmpgtb	%xmm2, %xmm0
	movdqa	%xmm2, %xmm3
	movdqu	-64(%r9), %xmm4
	addq	$16, %r11
	punpcklbw	%xmm0, %xmm3
	punpckhbw	%xmm0, %xmm2
	movdqu	-64(%r8), %xmm0
	pcmpgtw	%xmm3, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm5, %xmm4
	punpckhwd	%xmm5, %xmm3
	pxor	%xmm5, %xmm5
	paddd	%xmm4, %xmm0
	movdqu	-48(%r9), %xmm4
	paddd	%xmm0, %xmm1
	movdqu	-48(%r8), %xmm0
	pcmpgtw	%xmm2, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm2, %xmm4
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	movdqu	-32(%r8), %xmm1
	movdqa	%xmm3, %xmm0
	punpcklwd	%xmm5, %xmm4
	movdqu	-32(%r9), %xmm3
	punpckhwd	%xmm5, %xmm2
	paddd	%xmm3, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	movdqu	-16(%r9), %xmm1
	paddd	%xmm0, %xmm3
	movdqu	-16(%r8), %xmm0
	cmpq	%r10, 56(%rsp)
	paddd	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	paddd	%xmm3, %xmm1
	ja	.L320
	movdqa	%xmm1, %xmm0
	movq	16(%rsp), %rsi
	psrldq	$8, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	pshufd	$255, %xmm0, %xmm2
	addq	%rsi, %rdx
	addq	%rsi, %rdi
	pshufd	$85, %xmm0, %xmm1
	addq	%rsi, %rcx
	punpckhdq	%xmm0, %xmm3
	movd	%xmm2, %r8d
	punpckldq	%xmm3, %xmm1
	movd	%r8d, %xmm2
	punpcklqdq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r8d
	addl	%r8d, %eax
	cmpq	24(%rsp), %rsi
	je	.L318
	.p2align 4,,10
	.p2align 3
.L319:
	movl	0(%rbp,%rdi,4), %r8d
	movsbl	(%rcx), %ecx
	addl	(%r15,%rdi,4), %r8d
	leaq	1(%rdx), %rdi
	addl	%ecx, %r8d
	addl	%r8d, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	2(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	3(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	4(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	5(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	6(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	7(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	8(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	9(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	10(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	11(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	12(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	13(%rdx), %rdi
	addl	%ecx, %eax
	leaq	(%rbx,%rdi), %r8
	cmpq	%r8, %r12
	je	.L318
	movl	0(%rbp,%rdi,4), %ecx
	addl	(%r15,%rdi,4), %ecx
	addq	$14, %rdx
	movsbl	(%r8), %edi
	addl	%edi, %ecx
	leaq	(%rbx,%rdx), %rdi
	addl	%ecx, %eax
	cmpq	%rdi, %r12
	je	.L318
	movl	(%r15,%rdx,4), %ecx
	addl	0(%rbp,%rdx,4), %ecx
	movsbl	(%rdi), %edx
	addl	%ecx, %edx
	addl	%edx, %eax
.L318:
	movl	%eax, _ZL13render_output(%rip)
.L325:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	addl	$1, %r14d
	cmpq	$199999999, %rax
	jle	.L314
	pxor	%xmm0, %xmm0
	leaq	400(%rsp), %rsi
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm0
	movq	64(%rsp), %rax
	cvtsi2sd	%r14d, %xmm1
	addq	$8, %rax
	divsd	.LC14(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	cmpq	%rax, %rsi
	movq	%rax, 64(%rsp)
	jne	.L326
	leaq	320(%rsp), %rdi
	leaq	328(%rsp), %r13
	movl	$6, %edx
	movl	$8, %r12d
	movq	72(%rsp), %r14
	call	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71
.L327:
	movsd	0(%r13), %xmm1
	movsd	320(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L807
	movsd	-8(%r13), %xmm0
	leaq	-8(%r13), %rax
	ucomisd	%xmm1, %xmm0
	ja	.L664
	jmp	.L808
	.p2align 4,,10
	.p2align 3
.L475:
	movq	%rdx, %rax
.L664:
	movsd	%xmm0, 8(%rax)
	leaq	-8(%rax), %rdx
	movsd	-8(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L475
.L333:
	movsd	%xmm1, (%rax)
.L332:
	leaq	400(%rsp), %rax
	addq	$8, %r13
	cmpq	%rax, %r13
	jne	.L327
	pxor	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	addsd	336(%rsp), %xmm0
	addsd	344(%rsp), %xmm0
	addsd	352(%rsp), %xmm0
	addsd	360(%rsp), %xmm0
	addsd	368(%rsp), %xmm0
	addsd	376(%rsp), %xmm0
	divsd	.LC16(%rip), %xmm0
	divsd	88(%rsp), %xmm0
	mulsd	.LC17(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	320(%rsp), %rax
	movq	96(%rsp), %rsi
	movq	%r14, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%rax, %rdi
	leaq	(%r14,%r14,4), %rax
	movq	%rsi, %r14
	leaq	(%rsi,%rax,4), %r13
	movq	%r13, %rbp
	movq	%rbx, %r13
	movq	%rdi, %rbx
.L339:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r12d, %r12d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
	.p2align 3
.L338:
	movq	%r14, %rcx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L337:
	movl	8(%rcx), %eax
	addl	4(%rcx), %eax
	addq	$20, %rcx
	movl	%eax, %edx
	movsbl	-20(%rcx), %eax
	addl	%edx, %eax
	addl	%eax, %esi
	cmpq	%rcx, %rbp
	jne	.L337
	movl	%esi, _ZL13render_output(%rip)
	addl	$1, %r12d
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$199999999, %rax
	jle	.L338
	pxor	%xmm0, %xmm0
	addq	$8, %rbx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm0
	leaq	400(%rsp), %rax
	cvtsi2sd	%r12d, %xmm1
	divsd	.LC14(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbx)
	cmpq	%rax, %rbx
	jne	.L339
	movq	%r13, %rbx
	leaq	320(%rsp), %rdi
	leaq	328(%rsp), %r13
	movl	$6, %edx
	movq	%rax, %rsi
	movl	$8, %r12d
	movq	(%rsp), %r14
	movq	8(%rsp), %rbp
	call	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71
.L340:
	movsd	0(%r13), %xmm1
	movsd	320(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L809
	movsd	-8(%r13), %xmm0
	leaq	-8(%r13), %rax
	ucomisd	%xmm1, %xmm0
	ja	.L665
	jmp	.L810
	.p2align 4,,10
	.p2align 3
.L477:
	movq	%rdx, %rax
.L665:
	movsd	%xmm0, 8(%rax)
	leaq	-8(%rax), %rdx
	movsd	-8(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L477
.L346:
	movsd	%xmm1, (%rax)
.L345:
	leaq	400(%rsp), %rax
	addq	$8, %r13
	cmpq	%rax, %r13
	jne	.L340
	pxor	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	addsd	336(%rsp), %xmm0
	addsd	344(%rsp), %xmm0
	addsd	352(%rsp), %xmm0
	addsd	360(%rsp), %xmm0
	addsd	368(%rsp), %xmm0
	addsd	376(%rsp), %xmm0
	divsd	.LC16(%rip), %xmm0
	divsd	88(%rsp), %xmm0
	mulsd	.LC17(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	320(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	112(%rsp), %rax
	cmpq	%r14, %rax
	cmova	%r14, %rax
	cmpq	$17, %r14
	movq	%rax, %r12
	movq	%r14, %rax
	cmovbe	%r14, %r12
	subq	%r12, %rax
	movq	%rax, 16(%rsp)
	subq	$16, %rax
	shrq	$4, %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	salq	$4, %rax
	movq	%rax, 8(%rsp)
	leaq	-1(%r14), %rax
	subq	%r12, %rax
	movq	%rax, (%rsp)
	leaq	0(,%r12,4), %rax
	leaq	0(%rbp,%rax), %rsi
	addq	%r15, %rax
	movq	%rax, 24(%rsp)
	leaq	(%rbx,%r12), %rax
	movq	%rsi, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	%r12, %rax
	movq	%r14, %r12
	movq	%rbp, %r14
	movq	%rax, %rbp
.L360:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r13d, %r13d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
	.p2align 3
.L359:
	testq	%rbp, %rbp
	je	.L478
	movl	(%r14), %eax
	movsbl	(%rbx), %edx
	addl	(%r15), %eax
	addl	%edx, %eax
	cmpq	$1, %rbp
	je	.L479
	movl	4(%r14), %edx
	addl	4(%r15), %edx
	movl	%edx, %r8d
	movsbl	1(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$2, %rbp
	je	.L480
	movl	8(%r14), %edx
	addl	8(%r15), %edx
	movl	%edx, %r8d
	movsbl	2(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$3, %rbp
	je	.L481
	movl	12(%r14), %edx
	addl	12(%r15), %edx
	movl	%edx, %r8d
	movsbl	3(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$4, %rbp
	je	.L482
	movl	16(%r14), %edx
	addl	16(%r15), %edx
	movl	%edx, %r8d
	movsbl	4(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$5, %rbp
	je	.L483
	movl	20(%r14), %edx
	addl	20(%r15), %edx
	movl	%edx, %r8d
	movsbl	5(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$6, %rbp
	je	.L484
	movl	24(%r14), %edx
	addl	24(%r15), %edx
	movl	%edx, %r8d
	movsbl	6(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$7, %rbp
	je	.L485
	movl	28(%r14), %edx
	addl	28(%r15), %edx
	movl	%edx, %r8d
	movsbl	7(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$8, %rbp
	je	.L486
	movl	32(%r14), %edx
	addl	32(%r15), %edx
	movl	%edx, %r8d
	movsbl	8(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$9, %rbp
	je	.L487
	movl	36(%r14), %edx
	addl	36(%r15), %edx
	movl	%edx, %r8d
	movsbl	9(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$10, %rbp
	je	.L488
	movl	40(%r14), %edx
	addl	40(%r15), %edx
	movl	%edx, %r8d
	movsbl	10(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$11, %rbp
	je	.L489
	movl	44(%r14), %edx
	addl	44(%r15), %edx
	movl	%edx, %r8d
	movsbl	11(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$12, %rbp
	je	.L490
	movl	48(%r14), %edx
	addl	48(%r15), %edx
	movl	%edx, %r8d
	movsbl	12(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$13, %rbp
	je	.L491
	movl	52(%r14), %edx
	addl	52(%r15), %edx
	movl	%edx, %r8d
	movsbl	13(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$14, %rbp
	je	.L492
	movl	56(%r14), %edx
	addl	56(%r15), %edx
	movl	%edx, %r8d
	movsbl	14(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$15, %rbp
	je	.L493
	movl	60(%r14), %edx
	addl	60(%r15), %edx
	movl	%edx, %r8d
	movsbl	15(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$16, %rbp
	je	.L494
	movl	64(%r15), %edx
	addl	64(%r14), %edx
	movl	%edx, %r8d
	movsbl	16(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	movl	$17, %edx
.L351:
	cmpq	%rbp, %r12
	je	.L352
.L350:
	cmpq	$14, (%rsp)
	jbe	.L353
	movq	32(%rsp), %r11
	movq	24(%rsp), %r9
	xorl	%r10d, %r10d
	movq	40(%rsp), %r8
	pxor	%xmm1, %xmm1
.L355:
	pxor	%xmm0, %xmm0
	addq	$1, %r10
	movdqa	(%r11), %xmm2
	addq	$64, %r8
	pxor	%xmm5, %xmm5
	addq	$64, %r9
	pcmpgtb	%xmm2, %xmm0
	movdqa	%xmm2, %xmm3
	movdqu	-64(%r9), %xmm4
	addq	$16, %r11
	punpcklbw	%xmm0, %xmm3
	punpckhbw	%xmm0, %xmm2
	movdqu	-64(%r8), %xmm0
	pcmpgtw	%xmm3, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm5, %xmm4
	punpckhwd	%xmm5, %xmm3
	pxor	%xmm5, %xmm5
	paddd	%xmm4, %xmm0
	movdqu	-48(%r9), %xmm4
	paddd	%xmm0, %xmm1
	movdqu	-48(%r8), %xmm0
	pcmpgtw	%xmm2, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm2, %xmm4
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	movdqu	-32(%r8), %xmm1
	movdqa	%xmm3, %xmm0
	punpcklwd	%xmm5, %xmm4
	movdqu	-32(%r9), %xmm3
	punpckhwd	%xmm5, %xmm2
	paddd	%xmm3, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	movdqu	-16(%r9), %xmm1
	paddd	%xmm0, %xmm3
	movdqu	-16(%r8), %xmm0
	cmpq	%r10, 48(%rsp)
	paddd	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	paddd	%xmm3, %xmm1
	ja	.L355
	movdqa	%xmm1, %xmm0
	movq	8(%rsp), %rsi
	psrldq	$8, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	pshufd	$255, %xmm0, %xmm2
	addq	%rsi, %rdx
	pshufd	$85, %xmm0, %xmm1
	punpckhdq	%xmm0, %xmm3
	movd	%xmm2, %r8d
	punpckldq	%xmm3, %xmm1
	movd	%r8d, %xmm2
	punpcklqdq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r8d
	addl	%r8d, %eax
	cmpq	16(%rsp), %rsi
	je	.L352
	.p2align 4,,10
	.p2align 3
.L353:
	movl	(%r14,%rdx,4), %r8d
	movl	(%r15,%rdx,4), %r9d
	addl	%r8d, %r9d
	movsbl	(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	1(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	1(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	2(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	2(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	3(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	3(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	4(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	4(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	5(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	5(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	6(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	6(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	7(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	7(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	8(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	8(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	9(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	9(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	10(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	10(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	11(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	11(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	12(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	12(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	13(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L352
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	13(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	14(%rdx), %r8
	cmpq	%r8, %r12
	jbe	.L352
	movl	(%r15,%r8,4), %r9d
	movsbl	14(%rbx,%rdx), %edx
	addl	(%r14,%r8,4), %r9d
	addl	%r9d, %edx
	addl	%edx, %eax
.L352:
	movl	%eax, _ZL13render_output(%rip)
	addl	$1, %r13d
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$199999999, %rax
	jle	.L359
	pxor	%xmm0, %xmm0
	leaq	400(%rsp), %rsi
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm0
	movq	56(%rsp), %rax
	cvtsi2sd	%r13d, %xmm1
	addq	$8, %rax
	divsd	.LC14(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	cmpq	%rax, %rsi
	movq	%rax, 56(%rsp)
	jne	.L360
	leaq	320(%rsp), %rdi
	leaq	328(%rsp), %r13
	movq	%rbp, %rax
	movl	$6, %edx
	movq	%r14, %rbp
	movq	%r12, %r14
	movq	%rax, %r12
	call	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71
.L361:
	movsd	0(%r13), %xmm1
	movsd	320(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L811
	movsd	-8(%r13), %xmm0
	leaq	-8(%r13), %rax
	ucomisd	%xmm1, %xmm0
	ja	.L666
	jmp	.L812
	.p2align 4,,10
	.p2align 3
.L496:
	movq	%rdx, %rax
.L666:
	movsd	%xmm0, 8(%rax)
	leaq	-8(%rax), %rdx
	movsd	-8(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L496
.L367:
	movsd	%xmm1, (%rax)
.L366:
	leaq	400(%rsp), %rax
	addq	$8, %r13
	cmpq	%rax, %r13
	jne	.L361
	pxor	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	addsd	336(%rsp), %xmm0
	addsd	344(%rsp), %xmm0
	addsd	352(%rsp), %xmm0
	addsd	360(%rsp), %xmm0
	addsd	368(%rsp), %xmm0
	addsd	376(%rsp), %xmm0
	divsd	.LC16(%rip), %xmm0
	divsd	88(%rsp), %xmm0
	mulsd	.LC17(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	320(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	%r12, %rax
	movq	%r14, %r12
	movq	%rbp, %r14
	movq	%rax, %rbp
.L381:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r13d, %r13d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
	.p2align 3
.L380:
	testq	%rbp, %rbp
	je	.L497
	movl	(%r14), %eax
	movsbl	(%rbx), %edx
	addl	(%r15), %eax
	addl	%edx, %eax
	cmpq	$1, %rbp
	je	.L498
	movl	4(%r14), %edx
	addl	4(%r15), %edx
	movl	%edx, %r8d
	movsbl	1(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$2, %rbp
	je	.L499
	movl	8(%r14), %edx
	addl	8(%r15), %edx
	movl	%edx, %r8d
	movsbl	2(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$3, %rbp
	je	.L500
	movl	12(%r14), %edx
	addl	12(%r15), %edx
	movl	%edx, %r8d
	movsbl	3(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$4, %rbp
	je	.L501
	movl	16(%r14), %edx
	addl	16(%r15), %edx
	movl	%edx, %r8d
	movsbl	4(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$5, %rbp
	je	.L502
	movl	20(%r14), %edx
	addl	20(%r15), %edx
	movl	%edx, %r8d
	movsbl	5(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$6, %rbp
	je	.L503
	movl	24(%r14), %edx
	addl	24(%r15), %edx
	movl	%edx, %r8d
	movsbl	6(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$7, %rbp
	je	.L504
	movl	28(%r14), %edx
	addl	28(%r15), %edx
	movl	%edx, %r8d
	movsbl	7(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$8, %rbp
	je	.L505
	movl	32(%r14), %edx
	addl	32(%r15), %edx
	movl	%edx, %r8d
	movsbl	8(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$9, %rbp
	je	.L506
	movl	36(%r14), %edx
	addl	36(%r15), %edx
	movl	%edx, %r8d
	movsbl	9(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$10, %rbp
	je	.L507
	movl	40(%r14), %edx
	addl	40(%r15), %edx
	movl	%edx, %r8d
	movsbl	10(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$11, %rbp
	je	.L508
	movl	44(%r14), %edx
	addl	44(%r15), %edx
	movl	%edx, %r8d
	movsbl	11(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$12, %rbp
	je	.L509
	movl	48(%r14), %edx
	addl	48(%r15), %edx
	movl	%edx, %r8d
	movsbl	12(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$13, %rbp
	je	.L510
	movl	52(%r14), %edx
	addl	52(%r15), %edx
	movl	%edx, %r8d
	movsbl	13(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$14, %rbp
	je	.L511
	movl	56(%r14), %edx
	addl	56(%r15), %edx
	movl	%edx, %r8d
	movsbl	14(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$15, %rbp
	je	.L512
	movl	60(%r14), %edx
	addl	60(%r15), %edx
	movl	%edx, %r8d
	movsbl	15(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$16, %rbp
	je	.L513
	movl	64(%r15), %edx
	addl	64(%r14), %edx
	movl	%edx, %r8d
	movsbl	16(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	movl	$17, %edx
.L372:
	cmpq	%rbp, %r12
	je	.L373
.L371:
	cmpq	$14, (%rsp)
	jbe	.L374
	movq	32(%rsp), %r11
	movq	24(%rsp), %r9
	xorl	%r10d, %r10d
	movq	40(%rsp), %r8
	pxor	%xmm1, %xmm1
.L376:
	pxor	%xmm0, %xmm0
	addq	$1, %r10
	movdqa	(%r11), %xmm2
	addq	$64, %r8
	pxor	%xmm5, %xmm5
	addq	$64, %r9
	pcmpgtb	%xmm2, %xmm0
	movdqa	%xmm2, %xmm3
	movdqu	-64(%r9), %xmm4
	addq	$16, %r11
	punpcklbw	%xmm0, %xmm3
	punpckhbw	%xmm0, %xmm2
	movdqu	-64(%r8), %xmm0
	pcmpgtw	%xmm3, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm5, %xmm4
	punpckhwd	%xmm5, %xmm3
	pxor	%xmm5, %xmm5
	paddd	%xmm4, %xmm0
	movdqu	-48(%r9), %xmm4
	paddd	%xmm0, %xmm1
	movdqu	-48(%r8), %xmm0
	pcmpgtw	%xmm2, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm2, %xmm4
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	movdqu	-32(%r8), %xmm1
	movdqa	%xmm3, %xmm0
	punpcklwd	%xmm5, %xmm4
	movdqu	-32(%r9), %xmm3
	punpckhwd	%xmm5, %xmm2
	paddd	%xmm3, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	movdqu	-16(%r9), %xmm1
	paddd	%xmm0, %xmm3
	movdqu	-16(%r8), %xmm0
	cmpq	%r10, 48(%rsp)
	paddd	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	paddd	%xmm3, %xmm1
	ja	.L376
	movdqa	%xmm1, %xmm0
	movq	8(%rsp), %rsi
	psrldq	$8, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	pshufd	$255, %xmm0, %xmm2
	addq	%rsi, %rdx
	pshufd	$85, %xmm0, %xmm1
	punpckhdq	%xmm0, %xmm3
	movd	%xmm2, %r8d
	punpckldq	%xmm3, %xmm1
	movd	%r8d, %xmm2
	punpcklqdq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r8d
	addl	%r8d, %eax
	cmpq	16(%rsp), %rsi
	je	.L373
	.p2align 4,,10
	.p2align 3
.L374:
	movl	(%r14,%rdx,4), %r8d
	movl	(%r15,%rdx,4), %r9d
	addl	%r8d, %r9d
	movsbl	(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	1(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	1(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	2(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	2(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	3(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	3(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	4(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	4(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	5(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	5(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	6(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	6(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	7(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	7(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	8(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	8(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	9(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	9(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	10(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	10(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	11(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	11(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	12(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	12(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	13(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L373
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	13(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	14(%rdx), %r8
	cmpq	%r8, %r12
	jbe	.L373
	movl	(%r15,%r8,4), %r9d
	movsbl	14(%rbx,%rdx), %edx
	addl	(%r14,%r8,4), %r9d
	addl	%r9d, %edx
	addl	%edx, %eax
.L373:
	movl	%eax, _ZL13render_output(%rip)
	addl	$1, %r13d
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$199999999, %rax
	jle	.L380
	pxor	%xmm0, %xmm0
	leaq	400(%rsp), %rsi
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm0
	movq	56(%rsp), %rax
	cvtsi2sd	%r13d, %xmm1
	addq	$8, %rax
	divsd	.LC14(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	cmpq	%rax, %rsi
	movq	%rax, 56(%rsp)
	jne	.L381
	leaq	320(%rsp), %rdi
	leaq	328(%rsp), %r13
	movq	%rbp, %rax
	movl	$6, %edx
	movq	%r14, %rbp
	movq	%r12, %r14
	movq	%rax, %r12
	call	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71
.L382:
	movsd	0(%r13), %xmm1
	movsd	320(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L813
	movsd	-8(%r13), %xmm0
	leaq	-8(%r13), %rax
	ucomisd	%xmm1, %xmm0
	ja	.L667
	jmp	.L814
	.p2align 4,,10
	.p2align 3
.L515:
	movq	%rdx, %rax
.L667:
	movsd	%xmm0, 8(%rax)
	leaq	-8(%rax), %rdx
	movsd	-8(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L515
.L388:
	movsd	%xmm1, (%rax)
.L387:
	leaq	400(%rsp), %rax
	addq	$8, %r13
	cmpq	%rax, %r13
	jne	.L382
	pxor	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	addsd	336(%rsp), %xmm0
	addsd	344(%rsp), %xmm0
	addsd	352(%rsp), %xmm0
	addsd	360(%rsp), %xmm0
	addsd	368(%rsp), %xmm0
	addsd	376(%rsp), %xmm0
	divsd	.LC16(%rip), %xmm0
	divsd	88(%rsp), %xmm0
	mulsd	.LC17(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	320(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	%r12, %rax
	movq	%r14, %r12
	movq	%rbp, %r14
	movq	%rax, %rbp
.L402:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	xorl	%r13d, %r13d
	movq	%rax, measure_start(%rip)
	.p2align 4,,10
	.p2align 3
.L401:
	testq	%rbp, %rbp
	je	.L516
	movl	(%r14), %eax
	movsbl	(%rbx), %edx
	addl	(%r15), %eax
	addl	%edx, %eax
	cmpq	$1, %rbp
	je	.L517
	movl	4(%r14), %edx
	addl	4(%r15), %edx
	movl	%edx, %r8d
	movsbl	1(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$2, %rbp
	je	.L518
	movl	8(%r14), %edx
	addl	8(%r15), %edx
	movl	%edx, %r8d
	movsbl	2(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$3, %rbp
	je	.L519
	movl	12(%r14), %edx
	addl	12(%r15), %edx
	movl	%edx, %r8d
	movsbl	3(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$4, %rbp
	je	.L520
	movl	16(%r14), %edx
	addl	16(%r15), %edx
	movl	%edx, %r8d
	movsbl	4(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$5, %rbp
	je	.L521
	movl	20(%r14), %edx
	addl	20(%r15), %edx
	movl	%edx, %r8d
	movsbl	5(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$6, %rbp
	je	.L522
	movl	24(%r14), %edx
	addl	24(%r15), %edx
	movl	%edx, %r8d
	movsbl	6(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$7, %rbp
	je	.L523
	movl	28(%r14), %edx
	addl	28(%r15), %edx
	movl	%edx, %r8d
	movsbl	7(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$8, %rbp
	je	.L524
	movl	32(%r14), %edx
	addl	32(%r15), %edx
	movl	%edx, %r8d
	movsbl	8(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$9, %rbp
	je	.L525
	movl	36(%r14), %edx
	addl	36(%r15), %edx
	movl	%edx, %r8d
	movsbl	9(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$10, %rbp
	je	.L526
	movl	40(%r14), %edx
	addl	40(%r15), %edx
	movl	%edx, %r8d
	movsbl	10(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$11, %rbp
	je	.L527
	movl	44(%r14), %edx
	addl	44(%r15), %edx
	movl	%edx, %r8d
	movsbl	11(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$12, %rbp
	je	.L528
	movl	48(%r14), %edx
	addl	48(%r15), %edx
	movl	%edx, %r8d
	movsbl	12(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$13, %rbp
	je	.L529
	movl	52(%r14), %edx
	addl	52(%r15), %edx
	movl	%edx, %r8d
	movsbl	13(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$14, %rbp
	je	.L530
	movl	56(%r14), %edx
	addl	56(%r15), %edx
	movl	%edx, %r8d
	movsbl	14(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$15, %rbp
	je	.L531
	movl	60(%r14), %edx
	addl	60(%r15), %edx
	movl	%edx, %r8d
	movsbl	15(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	cmpq	$16, %rbp
	je	.L532
	movl	64(%r15), %edx
	addl	64(%r14), %edx
	movl	%edx, %r8d
	movsbl	16(%rbx), %edx
	addl	%r8d, %edx
	addl	%edx, %eax
	movl	$17, %edx
.L393:
	cmpq	%rbp, %r12
	je	.L394
.L392:
	cmpq	$14, (%rsp)
	jbe	.L395
	movq	24(%rsp), %r9
	movq	32(%rsp), %r11
	xorl	%r10d, %r10d
	movq	40(%rsp), %r8
	pxor	%xmm1, %xmm1
.L397:
	pxor	%xmm0, %xmm0
	addq	$1, %r10
	movdqa	(%r11), %xmm2
	addq	$64, %r8
	pxor	%xmm5, %xmm5
	addq	$16, %r11
	pcmpgtb	%xmm2, %xmm0
	movdqa	%xmm2, %xmm3
	movdqu	-64(%r8), %xmm4
	addq	$64, %r9
	punpcklbw	%xmm0, %xmm3
	punpckhbw	%xmm0, %xmm2
	movdqu	-64(%r9), %xmm0
	pcmpgtw	%xmm3, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm5, %xmm4
	punpckhwd	%xmm5, %xmm3
	pxor	%xmm5, %xmm5
	paddd	%xmm4, %xmm0
	movdqu	-48(%r8), %xmm4
	paddd	%xmm0, %xmm1
	movdqu	-48(%r9), %xmm0
	pcmpgtw	%xmm2, %xmm5
	paddd	%xmm4, %xmm0
	movdqa	%xmm2, %xmm4
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	movdqu	-32(%r8), %xmm1
	movdqa	%xmm3, %xmm0
	punpcklwd	%xmm5, %xmm4
	movdqu	-32(%r9), %xmm3
	punpckhwd	%xmm5, %xmm2
	paddd	%xmm3, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	movdqu	-16(%r9), %xmm1
	paddd	%xmm0, %xmm3
	movdqu	-16(%r8), %xmm0
	cmpq	48(%rsp), %r10
	paddd	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	paddd	%xmm3, %xmm1
	jb	.L397
	movdqa	%xmm1, %xmm0
	movq	8(%rsp), %rsi
	psrldq	$8, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	pshufd	$255, %xmm0, %xmm2
	addq	%rsi, %rdx
	pshufd	$85, %xmm0, %xmm1
	punpckhdq	%xmm0, %xmm3
	movd	%xmm2, %r8d
	punpckldq	%xmm3, %xmm1
	movd	%r8d, %xmm2
	punpcklqdq	%xmm2, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r8d
	addl	%r8d, %eax
	cmpq	16(%rsp), %rsi
	je	.L394
	.p2align 4,,10
	.p2align 3
.L395:
	movl	(%r14,%rdx,4), %r8d
	movl	(%r15,%rdx,4), %r9d
	addl	%r8d, %r9d
	movsbl	(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	1(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L394
	movl	(%r15,%r9,4), %r8d
	addl	(%r14,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	1(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	2(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r12, %r9
	jnb	.L394
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	2(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	3(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r12, %r9
	jnb	.L394
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	3(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	4(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L394
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	4(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	5(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r12, %r9
	jnb	.L394
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	5(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	6(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r12, %r9
	jnb	.L394
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	6(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	7(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r12, %r9
	jnb	.L394
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	7(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	8(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L394
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	8(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	9(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L394
	movl	(%r15,%r9,4), %r8d
	addl	(%r14,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	9(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	10(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L394
	movl	(%r15,%r9,4), %r8d
	addl	(%r14,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	10(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	11(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r12, %r9
	jnb	.L394
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	11(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	12(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r12, %r9
	jnb	.L394
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	12(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	leaq	13(%rdx), %r9
	addl	%r8d, %eax
	cmpq	%r9, %r12
	jbe	.L394
	movl	(%r14,%r9,4), %r8d
	addl	(%r15,%r9,4), %r8d
	movl	%r8d, %r9d
	movsbl	13(%rbx,%rdx), %r8d
	addl	%r9d, %r8d
	addl	%r8d, %eax
	leaq	14(%rdx), %r8
	cmpq	%r8, %r12
	jbe	.L394
	movl	(%r15,%r8,4), %r9d
	movsbl	14(%rbx,%rdx), %edx
	addl	(%r14,%r8,4), %r9d
	addl	%r9d, %edx
	addl	%edx, %eax
.L394:
	movl	%eax, _ZL13render_output(%rip)
	addl	$1, %r13d
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$199999999, %rax
	jle	.L401
	pxor	%xmm0, %xmm0
	leaq	400(%rsp), %rsi
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm0
	movq	56(%rsp), %rax
	cvtsi2sd	%r13d, %xmm1
	addq	$8, %rax
	divsd	.LC14(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rax)
	cmpq	%rax, %rsi
	movq	%rax, 56(%rsp)
	jne	.L402
	movq	%r12, %r14
	leaq	320(%rsp), %rdi
	leaq	328(%rsp), %r12
	movl	$6, %edx
	movl	$8, %ebp
	call	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.71
.L403:
	movsd	(%r12), %xmm1
	movsd	320(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L815
	movsd	-8(%r12), %xmm0
	leaq	-8(%r12), %rax
	ucomisd	%xmm1, %xmm0
	ja	.L668
	jmp	.L816
	.p2align 4,,10
	.p2align 3
.L534:
	movq	%rdx, %rax
.L668:
	movsd	%xmm0, 8(%rax)
	leaq	-8(%rax), %rdx
	movsd	-8(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L534
.L409:
	movsd	%xmm1, (%rax)
.L408:
	leaq	400(%rsp), %rax
	addq	$8, %r12
	cmpq	%rax, %r12
	jne	.L403
	pxor	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	addsd	336(%rsp), %xmm0
	addsd	344(%rsp), %xmm0
	addsd	352(%rsp), %xmm0
	addsd	360(%rsp), %xmm0
	addsd	368(%rsp), %xmm0
	addsd	376(%rsp), %xmm0
	divsd	.LC16(%rip), %xmm0
	divsd	88(%rsp), %xmm0
	mulsd	.LC17(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	.L817
	cmpb	$0, 56(%rbp)
	je	.L414
	movsbl	67(%rbp), %esi
.L415:
	movq	%r12, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movq	288(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L416
	call	_ZdlPv
.L416:
	movq	256(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L417
	call	_ZdlPv
.L417:
	movq	224(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L418
	call	_ZdlPv
.L418:
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L419
	call	_ZdlPv
.L419:
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L420
	call	_ZdlPv
.L420:
	testq	%rbx, %rbx
	je	.L421
	movq	%rbx, %rdi
	call	_ZdlPv
.L421:
	subl	$1, 132(%rsp)
	leaq	(%r14,%r14,4), %rax
	leaq	(%rax,%rax), %r14
	jne	.L422
	addq	$408, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L241:
	.cfi_restore_state
	leaq	152(%rsp), %rsi
	leaq	224(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	jmp	.L243
.L238:
	leaq	148(%rsp), %rsi
	leaq	192(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	jmp	.L240
.L235:
	leaq	144(%rsp), %rsi
	leaq	160(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_
	jmp	.L237
.L799:
	movq	(%rsp), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rcx, 8(%rsp)
	call	memmove
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %r12
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L516:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L392
	.p2align 4,,10
	.p2align 3
.L497:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L478:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L350
	.p2align 4,,10
	.p2align 3
.L457:
	movq	%rbx, %rcx
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.L316
	.p2align 4,,10
	.p2align 3
.L438:
	movq	%rbx, %rcx
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L434:
	movq	%rbp, %rsi
	movq	%r15, %rcx
	movq	%rbx, %rdx
	xorl	%eax, %eax
	jmp	.L268
.L517:
	movl	$1, %edx
	jmp	.L392
.L499:
	movl	$2, %edx
	jmp	.L372
.L498:
	movl	$1, %edx
	jmp	.L371
.L503:
	movl	$6, %edx
	jmp	.L372
.L502:
	movl	$5, %edx
	jmp	.L372
.L501:
	movl	$4, %edx
	jmp	.L372
.L500:
	movl	$3, %edx
	jmp	.L372
.L511:
	movl	$14, %edx
	jmp	.L372
.L510:
	movl	$13, %edx
	jmp	.L372
.L509:
	movl	$12, %edx
	jmp	.L372
.L508:
	movl	$11, %edx
	jmp	.L372
.L507:
	movl	$10, %edx
	jmp	.L372
.L506:
	movl	$9, %edx
	jmp	.L372
.L505:
	movl	$8, %edx
	jmp	.L372
.L504:
	movl	$7, %edx
	jmp	.L372
.L532:
	movl	$16, %edx
	jmp	.L393
.L531:
	movl	$15, %edx
	jmp	.L393
.L530:
	movl	$14, %edx
	jmp	.L393
.L529:
	movl	$13, %edx
	jmp	.L393
.L528:
	movl	$12, %edx
	jmp	.L393
.L527:
	movl	$11, %edx
	jmp	.L393
.L526:
	movl	$10, %edx
	jmp	.L393
.L525:
	movl	$9, %edx
	jmp	.L393
.L524:
	movl	$8, %edx
	jmp	.L393
.L523:
	movl	$7, %edx
	jmp	.L393
.L522:
	movl	$6, %edx
	jmp	.L393
.L521:
	movl	$5, %edx
	jmp	.L393
.L520:
	movl	$4, %edx
	jmp	.L393
.L513:
	movl	$16, %edx
	jmp	.L372
.L512:
	movl	$15, %edx
	jmp	.L372
.L479:
	movl	$1, %edx
	jmp	.L350
.L519:
	movl	$3, %edx
	jmp	.L393
.L518:
	movl	$2, %edx
	jmp	.L393
.L494:
	movl	$16, %edx
	jmp	.L351
.L493:
	movl	$15, %edx
	jmp	.L351
.L492:
	movl	$14, %edx
	jmp	.L351
.L491:
	movl	$13, %edx
	jmp	.L351
.L490:
	movl	$12, %edx
	jmp	.L351
.L489:
	movl	$11, %edx
	jmp	.L351
.L488:
	movl	$10, %edx
	jmp	.L351
.L487:
	movl	$9, %edx
	jmp	.L351
.L486:
	movl	$8, %edx
	jmp	.L351
.L485:
	movl	$7, %edx
	jmp	.L351
.L484:
	movl	$6, %edx
	jmp	.L351
.L483:
	movl	$5, %edx
	jmp	.L351
.L482:
	movl	$4, %edx
	jmp	.L351
.L481:
	movl	$3, %edx
	jmp	.L351
.L480:
	movl	$2, %edx
	jmp	.L351
.L458:
	movq	80(%rsp), %rcx
	movl	$1, %edi
	movl	$1, %edx
	jmp	.L317
.L473:
	movl	$16, %edi
	movl	$16, %edx
	jmp	.L317
.L472:
	movl	$15, %edi
	movl	$15, %edx
	jmp	.L317
.L471:
	movl	$14, %edi
	movl	$14, %edx
	jmp	.L317
.L470:
	movl	$13, %edi
	movl	$13, %edx
	jmp	.L317
.L469:
	movl	$12, %edi
	movl	$12, %edx
	jmp	.L317
.L468:
	movl	$11, %edi
	movl	$11, %edx
	jmp	.L317
.L467:
	movl	$10, %edi
	movl	$10, %edx
	jmp	.L317
.L466:
	movl	$9, %edi
	movl	$9, %edx
	jmp	.L317
.L465:
	movl	$8, %edi
	movl	$8, %edx
	jmp	.L317
.L464:
	movl	$7, %edi
	movl	$7, %edx
	jmp	.L317
.L463:
	movl	$6, %edi
	movl	$6, %edx
	jmp	.L317
.L462:
	movl	$5, %edi
	movl	$5, %edx
	jmp	.L317
.L461:
	movl	$4, %edi
	movl	$4, %edx
	jmp	.L317
.L460:
	movl	$3, %edi
	movl	$3, %edx
	jmp	.L317
.L459:
	movl	$2, %edi
	movl	$2, %edx
	jmp	.L317
.L435:
	movq	80(%rsp), %rdx
	jmp	.L269
.L454:
	movl	$16, %edi
	movl	$16, %edx
	jmp	.L293
.L453:
	movl	$15, %edi
	movl	$15, %edx
	jmp	.L293
.L452:
	movl	$14, %edi
	movl	$14, %edx
	jmp	.L293
.L451:
	movl	$13, %edi
	movl	$13, %edx
	jmp	.L293
.L450:
	movl	$12, %edi
	movl	$12, %edx
	jmp	.L293
.L449:
	movl	$11, %edi
	movl	$11, %edx
	jmp	.L293
.L448:
	movl	$10, %edi
	movl	$10, %edx
	jmp	.L293
.L447:
	movl	$9, %edi
	movl	$9, %edx
	jmp	.L293
.L446:
	movl	$8, %edi
	movl	$8, %edx
	jmp	.L293
.L445:
	movl	$7, %edi
	movl	$7, %edx
	jmp	.L293
.L444:
	movl	$6, %edi
	movl	$6, %edx
	jmp	.L293
.L443:
	movl	$5, %edi
	movl	$5, %edx
	jmp	.L293
.L442:
	movl	$4, %edi
	movl	$4, %edx
	jmp	.L293
.L441:
	movl	$3, %edi
	movl	$3, %edx
	jmp	.L293
.L440:
	movl	$2, %edi
	movl	$2, %edx
	jmp	.L293
.L439:
	movq	80(%rsp), %rcx
	movl	$1, %edi
	movl	$1, %edx
	jmp	.L293
.L805:
	leaq	320(%rsp), %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L307
	movl	$8, %edi
	leaq	320(%rsp), %rsi
	movsd	%xmm1, 72(%rsp)
	subq	%rdx, %rdi
	movq	%rcx, 64(%rsp)
	addq	%rcx, %rdi
	call	memmove
	movq	64(%rsp), %rcx
	movsd	72(%rsp), %xmm1
.L307:
	movsd	%xmm1, 320(%rsp)
	jmp	.L308
.L807:
	leaq	320(%rsp), %rax
	movq	%r13, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L331
	movq	%r12, %rdi
	leaq	320(%rsp), %rsi
	movsd	%xmm1, (%rsp)
	subq	%rdx, %rdi
	addq	%r13, %rdi
	call	memmove
	movsd	(%rsp), %xmm1
.L331:
	movsd	%xmm1, 320(%rsp)
	jmp	.L332
.L801:
	leaq	320(%rsp), %rax
	movq	%r12, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L259
	movl	$8, %edi
	leaq	320(%rsp), %rsi
	movsd	%xmm1, (%rsp)
	subq	%rdx, %rdi
	addq	%r12, %rdi
	call	memmove
	movsd	(%rsp), %xmm1
.L259:
	movsd	%xmm1, 320(%rsp)
	jmp	.L260
.L803:
	leaq	320(%rsp), %rax
	movq	%r12, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L283
	movl	$8, %edi
	leaq	320(%rsp), %rsi
	movsd	%xmm1, 8(%rsp)
	subq	%rdx, %rdi
	addq	%r12, %rdi
	call	memmove
	movsd	8(%rsp), %xmm1
.L283:
	movsd	%xmm1, 320(%rsp)
	jmp	.L284
.L813:
	leaq	320(%rsp), %rax
	movq	%r13, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L386
	movl	$8, %edi
	leaq	320(%rsp), %rsi
	movsd	%xmm1, 56(%rsp)
	subq	%rdx, %rdi
	addq	%r13, %rdi
	call	memmove
	movsd	56(%rsp), %xmm1
.L386:
	movsd	%xmm1, 320(%rsp)
	jmp	.L387
.L811:
	leaq	320(%rsp), %rax
	movq	%r13, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L365
	movl	$8, %edi
	leaq	320(%rsp), %rsi
	movsd	%xmm1, 56(%rsp)
	subq	%rdx, %rdi
	addq	%r13, %rdi
	call	memmove
	movsd	56(%rsp), %xmm1
.L365:
	movsd	%xmm1, 320(%rsp)
	jmp	.L366
.L809:
	leaq	320(%rsp), %rax
	movq	%r13, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L344
	movq	%r12, %rdi
	leaq	320(%rsp), %rsi
	movsd	%xmm1, (%rsp)
	subq	%rdx, %rdi
	addq	%r13, %rdi
	call	memmove
	movsd	(%rsp), %xmm1
.L344:
	movsd	%xmm1, 320(%rsp)
	jmp	.L345
.L815:
	leaq	320(%rsp), %rax
	movq	%r12, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L407
	movq	%rbp, %rdi
	leaq	320(%rsp), %rsi
	movsd	%xmm1, (%rsp)
	subq	%rdx, %rdi
	addq	%r12, %rdi
	call	memmove
	movsd	(%rsp), %xmm1
.L407:
	movsd	%xmm1, 320(%rsp)
	jmp	.L408
.L812:
	movq	%r13, %rax
	jmp	.L367
.L806:
	movq	%rcx, %rax
	jmp	.L309
.L810:
	movq	%r13, %rax
	jmp	.L346
.L414:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L415
	movq	%rbp, %rdi
	call	*%rax
.LEHE1:
	movsbl	%al, %esi
	jmp	.L415
.L816:
	movq	%r12, %rax
	jmp	.L409
.L804:
	movq	%r12, %rax
	jmp	.L285
.L814:
	movq	%r13, %rax
	jmp	.L388
.L808:
	movq	%r13, %rax
	jmp	.L333
.L802:
	movq	%r12, %rax
	jmp	.L261
.L536:
	movq	288(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	je	.L424
	call	_ZdlPv
.L424:
	movq	256(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L425
	call	_ZdlPv
.L425:
	movq	224(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L426
	call	_ZdlPv
.L426:
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L427
	call	_ZdlPv
.L427:
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L428
	call	_ZdlPv
.L428:
	testq	%rbx, %rbx
	je	.L429
	movq	%rbx, %rdi
	call	_ZdlPv
.L429:
	movq	%rbp, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L817:
.LEHB3:
	call	_ZSt16__throw_bad_castv
.L798:
	movl	$.LC12, %edi
	call	_ZSt20__throw_length_errorPKc
.LEHE3:
	.cfi_endproc
.LFE8192:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8192:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8192-.LLSDACSB8192
.LLSDACSB8192:
	.uleb128 .LEHB0-.LFB8192
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8192
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L536-.LFB8192
	.uleb128 0
	.uleb128 .LEHB2-.LFB8192
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8192
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L536-.LFB8192
	.uleb128 0
.LLSDACSE8192:
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE18:
	.section	.text.startup
.LHOTE18:
	.section	.text.unlikely
.LCOLDB19:
	.section	.text.startup
.LHOTB19:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_measure_start, @function
_GLOBAL__sub_I_measure_start:
.LFB8870:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE8870:
	.size	_GLOBAL__sub_I_measure_start, .-_GLOBAL__sub_I_measure_start
	.section	.text.unlikely
.LCOLDE19:
	.section	.text.startup
.LHOTE19:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_measure_start
	.local	_ZL13render_output
	.comm	_ZL13render_output,4,4
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	measure_pause
	.bss
	.align 8
	.type	measure_pause, @object
	.size	measure_pause, 8
measure_pause:
	.zero	8
	.globl	measure_start
	.align 8
	.type	measure_start, @object
	.size	measure_start, 8
measure_start:
	.zero	8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC14:
	.long	0
	.long	1104006501
	.align 8
.LC16:
	.long	0
	.long	1075314688
	.align 8
.LC17:
	.long	0
	.long	1097011920
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 5.2.0"
	.section	.note.GNU-stack,"",@progbits
