	.text
	.file	"/home/manu343726/Documentos/joaquin-dod/dod_perfv2.cpp"
	.globl	_Z12pause_timingv
	.align	16, 0x90
	.type	_Z12pause_timingv,@function
_Z12pause_timingv:                      # @_Z12pause_timingv
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_pause(%rip)
	popq	%rax
	retq
.Ltmp1:
	.size	_Z12pause_timingv, .Ltmp1-_Z12pause_timingv
	.cfi_endproc

	.globl	_Z13resume_timingv
	.align	16, 0x90
	.type	_Z13resume_timingv,@function
_Z13resume_timingv:                     # @_Z13resume_timingv
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 16
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_pause(%rip), %rax
	addq	%rax, measure_start(%rip)
	popq	%rax
	retq
.Ltmp3:
	.size	_Z13resume_timingv, .Ltmp3-_Z13resume_timingv
	.cfi_endproc

	.globl	_Z9do_renderiic
	.align	16, 0x90
	.type	_Z9do_renderiic,@function
_Z9do_renderiic:                        # @_Z9do_renderiic
	.cfi_startproc
# BB#0:
	addl	%esi, %edi
	addl	%edx, %edi
	addl	%edi, _ZL13render_output(%rip)
	retq
.Ltmp4:
	.size	_Z9do_renderiic, .Ltmp4-_Z9do_renderiic
	.cfi_endproc

	.globl	_Z6renderPcS_PiS0_
	.align	16, 0x90
	.type	_Z6renderPcS_PiS0_,@function
_Z6renderPcS_PiS0_:                     # @_Z6renderPcS_PiS0_
	.cfi_startproc
# BB#0:
	movl	$0, _ZL13render_output(%rip)
	xorl	%eax, %eax
	cmpq	%rsi, %rdi
	je	.LBB3_2
	.align	16, 0x90
.LBB3_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %r8d
	addq	$4, %rcx
	addl	(%rdx), %r8d
	addq	$4, %rdx
	movsbl	(%rdi), %r9d
	incq	%rdi
	addl	%r8d, %r9d
	addl	%r9d, %eax
	movl	%eax, _ZL13render_output(%rip)
	cmpq	%rdi, %rsi
	jne	.LBB3_1
.LBB3_2:                                # %._crit_edge
	retq
.Ltmp5:
	.size	_Z6renderPcS_PiS0_, .Ltmp5-_Z6renderPcS_PiS0_
	.cfi_endproc

	.globl	_Z6renderPcPiS0_m
	.align	16, 0x90
	.type	_Z6renderPcPiS0_m,@function
_Z6renderPcPiS0_m:                      # @_Z6renderPcPiS0_m
	.cfi_startproc
# BB#0:
	movl	$0, _ZL13render_output(%rip)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB4_2
	.align	16, 0x90
.LBB4_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %r8d
	addl	(%rsi), %r8d
	movsbl	(%rdi), %r9d
	addl	%r8d, %r9d
	addl	%r9d, %eax
	movl	%eax, _ZL13render_output(%rip)
	addq	$4, %rsi
	addq	$4, %rdx
	incq	%rdi
	decq	%rcx
	jne	.LBB4_1
.LBB4_2:                                # %._crit_edge
	retq
.Ltmp6:
	.size	_Z6renderPcPiS0_m, .Ltmp6-_Z6renderPcPiS0_m
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4741671816366391296     # double 1.0E+9
.LCPI5_1:
	.quad	4618441417868443648     # double 6
.LCPI5_4:
	.quad	4711630319722168320     # double 1.0E+7
.LCPI5_6:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_2:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI5_3:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
.LCPI5_5:
	.zero	16
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
.Leh_func_begin5:
	.cfi_lsda 3, .Lexception5
# BB#0:
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp82:
	.cfi_def_cfa_offset 352
.Ltmp83:
	.cfi_offset %rbx, -56
.Ltmp84:
	.cfi_offset %r12, -48
.Ltmp85:
	.cfi_offset %r13, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movl	$_ZSt4cout, %edi
	movl	$.L.str, %esi
	movl	$7, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_272
# BB#1:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit63
	cmpb	$0, 56(%rbx)
	je	.LBB5_3
# BB#2:
	movb	67(%rbx), %al
	jmp	.LBB5_4
.LBB5_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB5_4:                                # %_ZNKSt5ctypeIcE5widenEc.exit4
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str1, %esi
	movl	$59, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_272
# BB#5:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 56(%rbx)
	je	.LBB5_7
# BB#6:
	movb	67(%rbx), %al
	jmp	.LBB5_8
.LBB5_7:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB5_8:                                # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$10000, %r14d           # imm = 0x2710
	.align	16, 0x90
.LBB5_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
                                        #     Child Loop BB5_114 Depth 2
                                        #       Child Loop BB5_116 Depth 3
                                        #         Child Loop BB5_117 Depth 4
                                        #       Child Loop BB5_115 Depth 3
                                        #     Child Loop BB5_121 Depth 2
                                        #       Child Loop BB5_132 Depth 3
                                        #     Child Loop BB5_129 Depth 2
                                        #       Child Loop BB5_134 Depth 3
                                        #         Child Loop BB5_135 Depth 4
                                        #       Child Loop BB5_130 Depth 3
                                        #     Child Loop BB5_139 Depth 2
                                        #       Child Loop BB5_158 Depth 3
                                        #     Child Loop BB5_147 Depth 2
                                        #       Child Loop BB5_148 Depth 3
                                        #         Child Loop BB5_149 Depth 4
                                        #     Child Loop BB5_153 Depth 2
                                        #       Child Loop BB5_161 Depth 3
                                        #     Child Loop BB5_167 Depth 2
                                        #       Child Loop BB5_168 Depth 3
                                        #         Child Loop BB5_169 Depth 4
                                        #     Child Loop BB5_173 Depth 2
                                        #       Child Loop BB5_192 Depth 3
                                        #     Child Loop BB5_181 Depth 2
                                        #       Child Loop BB5_182 Depth 3
                                        #         Child Loop BB5_183 Depth 4
                                        #     Child Loop BB5_187 Depth 2
                                        #       Child Loop BB5_195 Depth 3
                                        #     Child Loop BB5_201 Depth 2
                                        #       Child Loop BB5_202 Depth 3
                                        #         Child Loop BB5_203 Depth 4
                                        #     Child Loop BB5_207 Depth 2
                                        #       Child Loop BB5_226 Depth 3
                                        #     Child Loop BB5_215 Depth 2
                                        #       Child Loop BB5_216 Depth 3
                                        #         Child Loop BB5_217 Depth 4
                                        #     Child Loop BB5_221 Depth 2
                                        #       Child Loop BB5_229 Depth 3
                                        #     Child Loop BB5_235 Depth 2
                                        #       Child Loop BB5_236 Depth 3
                                        #         Child Loop BB5_237 Depth 4
                                        #     Child Loop BB5_241 Depth 2
                                        #       Child Loop BB5_252 Depth 3
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 192(%rsp)
	movq	$0, 208(%rsp)
	testq	%r14, %r14
	movl	$0, %edi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$0, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$0, %r15d
	movl	$0, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$0, %ebp
	movl	$0, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$0, %ebx
	movl	$0, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	jne	.LBB5_10
	jmp	.LBB5_111
	.align	16, 0x90
.LBB5_93:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit48._crit_edge
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	200(%rsp), %r9
	movq	208(%rsp), %r8
	addl	$2, %edi
.LBB5_10:                               # %.lr.ph
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rbx, %rax
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	mulq	%rdx
	movl	%edx, %eax
	shrl	$2, %eax
	leal	(%rax,%rax,4), %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movq	%rdx, %rax
	shrq	$4, %rax
	imull	$20, %eax, %eax
	movl	%ebx, %esi
	subl	%eax, %esi
	movl	%esi, 76(%rsp)          # 4-byte Spill
	shrq	$3, %rdx
	imull	$10, %edx, %eax
	movb	%cl, 168(%rsp)
	movl	%ebx, 172(%rsp)
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%edi, 176(%rsp)
	movl	%esi, 180(%rsp)
	movl	%edx, 184(%rsp)
	cmpq	%r8, %r9
	je	.LBB5_14
# BB#11:                                #   in Loop: Header=BB5_10 Depth=2
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	testq	%r9, %r9
	movl	$0, %eax
	je	.LBB5_13
# BB#12:                                #   in Loop: Header=BB5_10 Depth=2
	movl	184(%rsp), %eax
	movl	%eax, 16(%r9)
	movups	168(%rsp), %xmm0
	movups	%xmm0, (%r9)
	movq	%r9, %rax
.LBB5_13:                               # %_ZNSt16allocator_traitsISaI14plain_particleEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	movl	%edx, 72(%rsp)          # 4-byte Spill
	addq	$20, %rax
	movq	%rax, 200(%rsp)
	jmp	.LBB5_15
	.align	16, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp7:
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movl	%edx, 72(%rsp)          # 4-byte Spill
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	leaq	192(%rsp), %rdi
	leaq	168(%rsp), %rsi
	callq	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
.Ltmp8:
.LBB5_15:                               # %_ZNSt6vectorI14plain_particleSaIS0_EE9push_backEOS0_.exit
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	96(%rsp), %rdx          # 8-byte Reload
	cmpq	88(%rsp), %rdx          # 8-byte Folded Reload
	je	.LBB5_19
# BB#16:                                #   in Loop: Header=BB5_10 Depth=2
	testq	%rdx, %rdx
	movl	$0, %eax
	je	.LBB5_18
# BB#17:                                #   in Loop: Header=BB5_10 Depth=2
	movl	80(%rsp), %eax          # 4-byte Reload
	movb	%al, (%rdx)
	movq	%rdx, %rax
.LBB5_18:                               # %_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i
                                        #   in Loop: Header=BB5_10 Depth=2
	incq	%rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	jmp	.LBB5_31
	.align	16, 0x90
.LBB5_19:                               #   in Loop: Header=BB5_10 Depth=2
	movq	%rdx, %r12
	subq	%rbp, %r12
	cmpq	$-1, %r12
	je	.LBB5_20
.LBB5_21:                               # %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	%rbp, %rdx
	movq	%r12, %rcx
	movl	$1, %eax
	cmoveq	%rax, %rcx
	addq	%r12, %rcx
	movq	$-1, %rax
	cmovbq	%rax, %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	testq	%rcx, %rcx
	movl	$0, %ebx
	je	.LBB5_24
# BB#22:                                #   in Loop: Header=BB5_10 Depth=2
.Ltmp9:
	movq	%rdx, %r13
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp10:
# BB#23:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r13, %rdx
.LBB5_24:                               # %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rbx, %rax
	addq	%r12, %rax
	je	.LBB5_26
# BB#25:                                #   in Loop: Header=BB5_10 Depth=2
	movl	80(%rsp), %ecx          # 4-byte Reload
	movb	%cl, (%rax)
.LBB5_26:                               # %_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i7
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	%rbp, %rdx
	je	.LBB5_28
# BB#27:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	memmove
.LBB5_28:                               #   in Loop: Header=BB5_10 Depth=2
	testq	%rbp, %rbp
	je	.LBB5_30
# BB#29:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%rbp, %rdi
	callq	_ZdlPv
.LBB5_30:                               # %.noexc5
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	1(%r12,%rbx), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	addq	%rbx, 88(%rsp)          # 8-byte Folded Spill
	movq	%rbx, %rbp
.LBB5_31:                               # %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
	movq	144(%rsp), %rdx         # 8-byte Reload
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpq	64(%rsp), %rax          # 8-byte Folded Reload
	je	.LBB5_35
# BB#32:                                #   in Loop: Header=BB5_10 Depth=2
	testq	%rax, %rax
	je	.LBB5_34
# BB#33:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%rax, %rsi
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rsi, %rax
.LBB5_34:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i
                                        #   in Loop: Header=BB5_10 Depth=2
	addq	$4, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	jmp	.LBB5_46
	.align	16, 0x90
.LBB5_35:                               #   in Loop: Header=BB5_10 Depth=2
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	subq	%r15, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rax, %r13
	sarq	$2, %r13
	movl	$1, %ebx
	cmovneq	%r13, %rbx
	addq	%r13, %rbx
	setb	%al
	movabsq	$4611686018427387903, %rcx # imm = 0x3FFFFFFFFFFFFFFF
	movq	%rcx, %rdx
	cmpq	%rbx, %rdx
	setb	%cl
	orb	%al, %cl
	cmovneq	%rdx, %rbx
	testq	%rbx, %rbx
	movl	$0, %r12d
	je	.LBB5_39
# BB#36:                                #   in Loop: Header=BB5_10 Depth=2
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	.LBB5_37
.LBB5_38:                               # %_ZNSt16allocator_traitsISaIiEE8allocateERS0_m.exit.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%rbx,4), %rdi
.Ltmp11:
	callq	_Znwm
	movq	%rax, %r12
.Ltmp12:
.LBB5_39:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%r13,4), %rax
	addq	%r12, %rax
	je	.LBB5_41
# BB#40:                                #   in Loop: Header=BB5_10 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, (%rax)
.LBB5_41:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i14
                                        #   in Loop: Header=BB5_10 Depth=2
	testq	%r13, %r13
	je	.LBB5_43
# BB#42:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	memmove
.LBB5_43:                               #   in Loop: Header=BB5_10 Depth=2
	testq	%r15, %r15
	je	.LBB5_45
# BB#44:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB5_45:                               # %.noexc10
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	4(%r12,%r13,4), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	(%r12,%rbx,4), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r12, %r15
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
	movq	144(%rsp), %rdx         # 8-byte Reload
.LBB5_46:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	56(%rsp), %rdx          # 8-byte Folded Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	je	.LBB5_50
# BB#47:                                #   in Loop: Header=BB5_10 Depth=2
	testq	%rdx, %rdx
	je	.LBB5_49
# BB#48:                                #   in Loop: Header=BB5_10 Depth=2
	movl	%edi, (%rdx)
.LBB5_49:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i18
                                        #   in Loop: Header=BB5_10 Depth=2
	addq	$4, %rdx
	jmp	.LBB5_61
	.align	16, 0x90
.LBB5_50:                               #   in Loop: Header=BB5_10 Depth=2
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	subq	160(%rsp), %rdx         # 8-byte Folded Reload
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%rdx, %r13
	sarq	$2, %r13
	movl	$1, %ebx
	cmovneq	%r13, %rbx
	addq	%r13, %rbx
	setb	%al
	movabsq	$4611686018427387903, %rcx # imm = 0x3FFFFFFFFFFFFFFF
	movq	%rcx, %rdx
	cmpq	%rbx, %rdx
	setb	%cl
	orb	%al, %cl
	cmovneq	%rdx, %rbx
	testq	%rbx, %rbx
	movl	$0, %r12d
	je	.LBB5_54
# BB#51:                                #   in Loop: Header=BB5_10 Depth=2
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	.LBB5_52
.LBB5_53:                               # %_ZNSt16allocator_traitsISaIiEE8allocateERS0_m.exit.i.i25
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%rbx,4), %rdi
.Ltmp15:
	callq	_Znwm
	movq	%rax, %r12
.Ltmp16:
.LBB5_54:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i26
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%r13,4), %rax
	addq	%r12, %rax
	je	.LBB5_56
# BB#55:                                #   in Loop: Header=BB5_10 Depth=2
	movq	152(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, (%rax)
.LBB5_56:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i27
                                        #   in Loop: Header=BB5_10 Depth=2
	testq	%r13, %r13
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	160(%rsp), %r13         # 8-byte Reload
	movq	144(%rsp), %rdx         # 8-byte Reload
	je	.LBB5_58
# BB#57:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memmove
.LBB5_58:                               #   in Loop: Header=BB5_10 Depth=2
	testq	%r13, %r13
	je	.LBB5_60
# BB#59:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB5_60:                               # %.noexc19
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	4(%r12,%rax,4), %rdx
	leaq	(%r12,%rbx,4), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
.LBB5_61:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit20
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	48(%rsp), %rcx          # 8-byte Folded Reload
	je	.LBB5_65
# BB#62:                                #   in Loop: Header=BB5_10 Depth=2
	testq	%rcx, %rcx
	je	.LBB5_64
# BB#63:                                #   in Loop: Header=BB5_10 Depth=2
	movl	76(%rsp), %esi          # 4-byte Reload
	movl	%esi, (%rcx)
.LBB5_64:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i32
                                        #   in Loop: Header=BB5_10 Depth=2
	addq	$4, %rcx
	jmp	.LBB5_76
	.align	16, 0x90
.LBB5_65:                               #   in Loop: Header=BB5_10 Depth=2
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	subq	32(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%rcx, %r13
	sarq	$2, %r13
	movl	$1, %ebx
	cmovneq	%r13, %rbx
	addq	%r13, %rbx
	setb	%al
	movabsq	$4611686018427387903, %rcx # imm = 0x3FFFFFFFFFFFFFFF
	movq	%rcx, %rdx
	cmpq	%rbx, %rdx
	setb	%cl
	orb	%al, %cl
	cmovneq	%rdx, %rbx
	testq	%rbx, %rbx
	movl	$0, %r12d
	je	.LBB5_69
# BB#66:                                #   in Loop: Header=BB5_10 Depth=2
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	.LBB5_67
.LBB5_68:                               # %_ZNSt16allocator_traitsISaIiEE8allocateERS0_m.exit.i.i39
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%rbx,4), %rdi
.Ltmp19:
	callq	_Znwm
	movq	%rax, %r12
.Ltmp20:
.LBB5_69:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i40
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%r13,4), %rax
	addq	%r12, %rax
	je	.LBB5_71
# BB#70:                                #   in Loop: Header=BB5_10 Depth=2
	movl	76(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rax)
.LBB5_71:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i41
                                        #   in Loop: Header=BB5_10 Depth=2
	testq	%r13, %r13
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	128(%rsp), %rdx         # 8-byte Reload
	je	.LBB5_73
# BB#72:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memmove
.LBB5_73:                               #   in Loop: Header=BB5_10 Depth=2
	testq	%r13, %r13
	je	.LBB5_75
# BB#74:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB5_75:                               # %.noexc33
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	4(%r12,%rax,4), %rcx
	leaq	(%r12,%rbx,4), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	144(%rsp), %rdx         # 8-byte Reload
.LBB5_76:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit34
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	40(%rsp), %rax          # 8-byte Folded Reload
	je	.LBB5_80
# BB#77:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB5_79
# BB#78:                                #   in Loop: Header=BB5_10 Depth=2
	movl	72(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rax)
.LBB5_79:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i46
                                        #   in Loop: Header=BB5_10 Depth=2
	addq	$4, %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	jmp	.LBB5_92
	.align	16, 0x90
.LBB5_80:                               #   in Loop: Header=BB5_10 Depth=2
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	movq	24(%rsp), %rsi          # 8-byte Reload
	subq	%rsi, %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%rax, %r13
	sarq	$2, %r13
	movl	$1, %ebx
	cmovneq	%r13, %rbx
	addq	%r13, %rbx
	setb	%al
	movabsq	$4611686018427387903, %rcx # imm = 0x3FFFFFFFFFFFFFFF
	movq	%rcx, %rdx
	cmpq	%rbx, %rdx
	setb	%cl
	orb	%al, %cl
	cmovneq	%rdx, %rbx
	testq	%rbx, %rbx
	movl	$0, %r12d
	je	.LBB5_85
# BB#81:                                #   in Loop: Header=BB5_10 Depth=2
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	.LBB5_82
.LBB5_83:                               # %_ZNSt16allocator_traitsISaIiEE8allocateERS0_m.exit.i.i53
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%rbx,4), %rdi
.Ltmp23:
	callq	_Znwm
	movq	%rax, %r12
.Ltmp24:
# BB#84:                                # %.noexc58
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB5_85:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i54
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%r13,4), %rax
	addq	%r12, %rax
	je	.LBB5_87
# BB#86:                                #   in Loop: Header=BB5_10 Depth=2
	movl	72(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rax)
.LBB5_87:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i55
                                        #   in Loop: Header=BB5_10 Depth=2
	testq	%r13, %r13
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
	je	.LBB5_89
# BB#88:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	callq	memmove
.LBB5_89:                               #   in Loop: Header=BB5_10 Depth=2
	testq	%r13, %r13
	je	.LBB5_91
# BB#90:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB5_91:                               # %.noexc47
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	4(%r12,%rax,4), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leaq	(%r12,%rbx,4), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
.LBB5_92:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit48
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	incq	%rax
	cmpq	%r14, %rax
	movq	%rax, %rdx
	jb	.LBB5_93
	jmp	.LBB5_110
.LBB5_20:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp28:
	movl	$.L.str3, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp29:
	jmp	.LBB5_21
.LBB5_37:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp13:
	callq	_ZSt17__throw_bad_allocv
.Ltmp14:
	jmp	.LBB5_38
.LBB5_52:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp17:
	callq	_ZSt17__throw_bad_allocv
.Ltmp18:
	jmp	.LBB5_53
.LBB5_67:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp21:
	callq	_ZSt17__throw_bad_allocv
.Ltmp22:
	jmp	.LBB5_68
.LBB5_82:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp26:
	callq	_ZSt17__throw_bad_allocv
.Ltmp27:
	jmp	.LBB5_83
	.align	16, 0x90
.LBB5_110:                              # %._crit_edge
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	192(%rsp), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rbx
.LBB5_111:                              #   in Loop: Header=BB5_9 Depth=1
.Ltmp30:
	movl	$_ZSt4cout, %edi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
.Ltmp31:
# BB#112:                               # %_ZNSolsEm.exit
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp32:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp33:
# BB#113:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB5_114:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_116 Depth 3
                                        #         Child Loop BB5_117 Depth 4
                                        #       Child Loop BB5_115 Depth 3
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%r12d, %r12d
	cmpq	%rbx, 152(%rsp)         # 8-byte Folded Reload
	je	.LBB5_115
	.align	16, 0x90
.LBB5_116:                              # %.lr.ph.i.i.preheader.i.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_114 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_117 Depth 4
	movl	$0, _ZL13render_output(%rip)
	xorl	%eax, %eax
	movq	152(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB5_117:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_114 Depth=2
                                        #       Parent Loop BB5_116 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	(%rcx), %edx
	addl	4(%rcx), %eax
	addl	8(%rcx), %eax
	addl	%edx, %eax
	movl	%eax, _ZL13render_output(%rip)
	addq	$20, %rcx
	cmpq	%rcx, %rbx
	jne	.LBB5_117
# BB#118:                               # %_ZZ4mainENK3$_0clEv.exit.i.i
                                        #   in Loop: Header=BB5_116 Depth=3
	incl	%r12d
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	jl	.LBB5_116
	jmp	.LBB5_119
	.align	16, 0x90
.LBB5_115:                              # %_ZZ4mainENK3$_0clEv.exit.us.i.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_114 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, _ZL13render_output(%rip)
	incl	%r12d
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	jl	.LBB5_115
.LBB5_119:                              # %.us-lcssa.us.i.i
                                        #   in Loop: Header=BB5_114 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%r12d, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 216(%rsp,%r13,8)
	incq	%r13
	cmpq	$10, %r13
	jne	.LBB5_114
# BB#120:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	216(%rsp), %r13
	movq	%r13, %r12
	leaq	224(%rsp), %rbx
	leaq	296(%rsp), %rsi
	.align	16, 0x90
.LBB5_121:                              # %.preheader482
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_132 Depth 3
	movsd	(%rbx), %xmm1
	movsd	216(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_131
# BB#122:                               #   in Loop: Header=BB5_121 Depth=2
	movq	%rbx, %rdx
	subq	%r13, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_124
# BB#123:                               #   in Loop: Header=BB5_121 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r13, %rsi
	movsd	%xmm1, 144(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	144(%rsp), %xmm1        # 8-byte Reload
	leaq	296(%rsp), %rsi
.LBB5_124:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i
                                        #   in Loop: Header=BB5_121 Depth=2
	movsd	%xmm1, 216(%rsp)
	jmp	.LBB5_125
	.align	16, 0x90
.LBB5_131:                              #   in Loop: Header=BB5_121 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_133
	.align	16, 0x90
.LBB5_132:                              # %.lr.ph.i.i10.i.i.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_132
.LBB5_133:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i
                                        #   in Loop: Header=BB5_121 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_125:                              # %.backedge.i7.i.i.i
                                        #   in Loop: Header=BB5_121 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rsi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_121
# BB#126:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	232(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	addsd	264(%rsp), %xmm0
	addsd	272(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	movd	%r14, %xmm1
	punpckldq	.LCPI5_2(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI5_3(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm2
	movapd	%xmm2, 128(%rsp)        # 16-byte Spill
	divsd	%xmm2, %xmm0
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp34:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp35:
# BB#127:                               # %_ZNSolsEd.exit
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp36:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp37:
# BB#128:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_129:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_134 Depth 3
                                        #         Child Loop BB5_135 Depth 4
                                        #       Child Loop BB5_130 Depth 3
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB5_130
	.align	16, 0x90
.LBB5_134:                              # %.lr.ph.i.i.i.preheader.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_129 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_135 Depth 4
	movl	$0, _ZL13render_output(%rip)
	movq	%r14, %rax
	xorl	%ecx, %ecx
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	%r15, %rsi
	movq	%r15, %r13
	movq	%rbp, %rdi
	movq	%rbp, %r15
	.align	16, 0x90
.LBB5_135:                              # %.lr.ph.i.i.i.i78
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_129 Depth=2
                                        #       Parent Loop BB5_134 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	(%rdi), %ebp
	incq	%rdi
	addl	(%rsi), %ecx
	addq	$4, %rsi
	addl	(%rdx), %ecx
	addq	$4, %rdx
	addl	%ebp, %ecx
	movl	%ecx, _ZL13render_output(%rip)
	decq	%rax
	jne	.LBB5_135
# BB#136:                               # %_ZZ4mainENK3$_1clEv.exit.i.i
                                        #   in Loop: Header=BB5_134 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	movq	%r15, %rbp
	movq	%r13, %r15
	jl	.LBB5_134
	jmp	.LBB5_137
	.align	16, 0x90
.LBB5_130:                              # %_ZZ4mainENK3$_1clEv.exit.i.us.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, _ZL13render_output(%rip)
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	jl	.LBB5_130
.LBB5_137:                              # %.us-lcssa.us.i
                                        #   in Loop: Header=BB5_129 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 216(%rsp,%r12,8)
	incq	%r12
	cmpq	$10, %r12
	jne	.LBB5_129
# BB#138:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	216(%rsp), %rsi
	movq	%rsi, %r12
	leaq	224(%rsp), %rbx
	leaq	296(%rsp), %r13
	movq	%r13, %rdi
	.align	16, 0x90
.LBB5_139:                              # %.preheader481
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_158 Depth 3
	movsd	(%rbx), %xmm1
	movsd	216(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_157
# BB#140:                               #   in Loop: Header=BB5_139 Depth=2
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_142
# BB#141:                               #   in Loop: Header=BB5_139 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%rsi, %r13
                                        # kill: RSI<def> R13<kill>
	movsd	%xmm1, 144(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	144(%rsp), %xmm1        # 8-byte Reload
	leaq	296(%rsp), %rdi
	movq	%r13, %rsi
.LBB5_142:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i85
                                        #   in Loop: Header=BB5_139 Depth=2
	movsd	%xmm1, 216(%rsp)
	jmp	.LBB5_143
	.align	16, 0x90
.LBB5_157:                              #   in Loop: Header=BB5_139 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_159
	.align	16, 0x90
.LBB5_158:                              # %.lr.ph.i.i10.i.i.i90
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_158
.LBB5_159:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i92
                                        #   in Loop: Header=BB5_139 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_143:                              # %.backedge.i7.i.i.i87
                                        #   in Loop: Header=BB5_139 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rdi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_139
# BB#144:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	232(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	addsd	264(%rsp), %xmm0
	addsd	272(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	128(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp38:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp39:
# BB#145:                               # %_ZNSolsEd.exit94
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp40:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp41:
# BB#146:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_147:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_148 Depth 3
                                        #         Child Loop BB5_149 Depth 4
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_148:                              #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_147 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_149 Depth 4
	testq	%r14, %r14
	movl	$0, _ZL13render_output(%rip)
	movq	%r15, %rax
	movq	%r15, %r13
	movq	160(%rsp), %rcx         # 8-byte Reload
	movq	%rbp, %rdx
	movq	%rbp, %r15
	movq	%r14, %rsi
	movl	$0, %edi
	je	.LBB5_150
	.align	16, 0x90
.LBB5_149:                              # %.lr.ph.i.i.i.i100
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_147 Depth=2
                                        #       Parent Loop BB5_148 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	(%rdx), %ebp
	addl	(%rax), %edi
	addl	(%rcx), %edi
	addl	%ebp, %edi
	movl	%edi, _ZL13render_output(%rip)
	incq	%rdx
	addq	$4, %rcx
	addq	$4, %rax
	decq	%rsi
	jne	.LBB5_149
.LBB5_150:                              # %_ZZ4mainENK3$_2clEv.exit.i.i
                                        #   in Loop: Header=BB5_148 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	movq	%r15, %rbp
	movq	%r13, %r15
	jl	.LBB5_148
# BB#151:                               #   in Loop: Header=BB5_147 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 216(%rsp,%r12,8)
	incq	%r12
	cmpq	$10, %r12
	jne	.LBB5_147
# BB#152:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	216(%rsp), %rsi
	movq	%rsi, %r12
	leaq	224(%rsp), %rbx
	leaq	296(%rsp), %r13
	movq	%r13, %rdi
	.align	16, 0x90
.LBB5_153:                              # %.preheader480
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_161 Depth 3
	movsd	(%rbx), %xmm1
	movsd	216(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_160
# BB#154:                               #   in Loop: Header=BB5_153 Depth=2
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_156
# BB#155:                               #   in Loop: Header=BB5_153 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%rsi, %r13
                                        # kill: RSI<def> R13<kill>
	movsd	%xmm1, 144(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	144(%rsp), %xmm1        # 8-byte Reload
	leaq	296(%rsp), %rdi
	movq	%r13, %rsi
.LBB5_156:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i107
                                        #   in Loop: Header=BB5_153 Depth=2
	movsd	%xmm1, 216(%rsp)
	jmp	.LBB5_163
	.align	16, 0x90
.LBB5_160:                              #   in Loop: Header=BB5_153 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_162
	.align	16, 0x90
.LBB5_161:                              # %.lr.ph.i.i10.i.i.i112
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_161
.LBB5_162:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i114
                                        #   in Loop: Header=BB5_153 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_163:                              # %.backedge.i7.i.i.i109
                                        #   in Loop: Header=BB5_153 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rdi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_153
# BB#164:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	232(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	addsd	264(%rsp), %xmm0
	addsd	272(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	128(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp42:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp43:
# BB#165:                               # %_ZNSolsEd.exit116
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp44:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp45:
# BB#166:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_167:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_168 Depth 3
                                        #         Child Loop BB5_169 Depth 4
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_168:                              #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_167 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_169 Depth 4
	testq	%r14, %r14
	movl	$0, _ZL13render_output(%rip)
	movq	%r15, %rax
	movq	%r15, %r13
	movq	160(%rsp), %rcx         # 8-byte Reload
	movq	%rbp, %rdx
	movq	%rbp, %r15
	movq	%r14, %rsi
	movl	$0, %edi
	je	.LBB5_170
	.align	16, 0x90
.LBB5_169:                              # %.lr.ph.i.i.i.i122
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_167 Depth=2
                                        #       Parent Loop BB5_168 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	(%rdx), %ebp
	addl	(%rax), %edi
	addl	(%rcx), %edi
	addl	%ebp, %edi
	movl	%edi, _ZL13render_output(%rip)
	incq	%rdx
	addq	$4, %rcx
	addq	$4, %rax
	decq	%rsi
	jne	.LBB5_169
.LBB5_170:                              # %_ZZ4mainENK3$_3clEv.exit.i.i
                                        #   in Loop: Header=BB5_168 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	movq	%r15, %rbp
	movq	%r13, %r15
	jl	.LBB5_168
# BB#171:                               #   in Loop: Header=BB5_167 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 216(%rsp,%r12,8)
	incq	%r12
	cmpq	$10, %r12
	jne	.LBB5_167
# BB#172:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	216(%rsp), %rsi
	movq	%rsi, %r12
	leaq	224(%rsp), %rbx
	leaq	296(%rsp), %r13
	movq	%r13, %rdi
	.align	16, 0x90
.LBB5_173:                              # %.preheader479
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_192 Depth 3
	movsd	(%rbx), %xmm1
	movsd	216(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_191
# BB#174:                               #   in Loop: Header=BB5_173 Depth=2
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_176
# BB#175:                               #   in Loop: Header=BB5_173 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%rsi, %r13
                                        # kill: RSI<def> R13<kill>
	movsd	%xmm1, 144(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	144(%rsp), %xmm1        # 8-byte Reload
	leaq	296(%rsp), %rdi
	movq	%r13, %rsi
.LBB5_176:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i129
                                        #   in Loop: Header=BB5_173 Depth=2
	movsd	%xmm1, 216(%rsp)
	jmp	.LBB5_177
	.align	16, 0x90
.LBB5_191:                              #   in Loop: Header=BB5_173 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_193
	.align	16, 0x90
.LBB5_192:                              # %.lr.ph.i.i10.i.i.i134
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_173 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_192
.LBB5_193:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i136
                                        #   in Loop: Header=BB5_173 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_177:                              # %.backedge.i7.i.i.i131
                                        #   in Loop: Header=BB5_173 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rdi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_173
# BB#178:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%rsi, %r13
	movsd	232(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	addsd	264(%rsp), %xmm0
	addsd	272(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	128(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp46:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp47:
# BB#179:                               # %_ZNSolsEd.exit138
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp48:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp49:
# BB#180:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140
                                        #   in Loop: Header=BB5_9 Depth=1
	addq	$8, 152(%rsp)           # 8-byte Folded Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_181:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_182 Depth 3
                                        #         Child Loop BB5_183 Depth 4
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_182:                              #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_181 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_183 Depth 4
	testq	%r14, %r14
	movl	$0, _ZL13render_output(%rip)
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	%r14, %rcx
	movl	$0, %edx
	je	.LBB5_184
	.align	16, 0x90
.LBB5_183:                              # %.lr.ph.i.i.i.i144
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_181 Depth=2
                                        #       Parent Loop BB5_182 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	-8(%rax), %esi
	addl	-4(%rax), %edx
	addl	(%rax), %edx
	addl	%esi, %edx
	movl	%edx, _ZL13render_output(%rip)
	addq	$20, %rax
	decq	%rcx
	jne	.LBB5_183
.LBB5_184:                              # %_ZZ4mainENK3$_4clEv.exit.i.i
                                        #   in Loop: Header=BB5_182 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	jl	.LBB5_182
# BB#185:                               #   in Loop: Header=BB5_181 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 216(%rsp,%r12,8)
	incq	%r12
	cmpq	$10, %r12
	jne	.LBB5_181
# BB#186:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%r13, %r12
	leaq	224(%rsp), %rbx
	leaq	296(%rsp), %rsi
	.align	16, 0x90
.LBB5_187:                              # %.preheader478
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_195 Depth 3
	movsd	(%rbx), %xmm1
	movsd	216(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_194
# BB#188:                               #   in Loop: Header=BB5_187 Depth=2
	movq	%rbx, %rdx
	subq	%r13, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_190
# BB#189:                               #   in Loop: Header=BB5_187 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r13, %rsi
	movsd	%xmm1, 152(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	152(%rsp), %xmm1        # 8-byte Reload
	leaq	296(%rsp), %rsi
.LBB5_190:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i151
                                        #   in Loop: Header=BB5_187 Depth=2
	movsd	%xmm1, 216(%rsp)
	jmp	.LBB5_197
	.align	16, 0x90
.LBB5_194:                              #   in Loop: Header=BB5_187 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_196
	.align	16, 0x90
.LBB5_195:                              # %.lr.ph.i.i10.i.i.i156
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_195
.LBB5_196:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i158
                                        #   in Loop: Header=BB5_187 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_197:                              # %.backedge.i7.i.i.i153
                                        #   in Loop: Header=BB5_187 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rsi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_187
# BB#198:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	232(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	addsd	264(%rsp), %xmm0
	addsd	272(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	128(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp50:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp51:
# BB#199:                               # %_ZNSolsEd.exit160
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp52:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp53:
# BB#200:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_201:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_202 Depth 3
                                        #         Child Loop BB5_203 Depth 4
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_202:                              #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_201 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_203 Depth 4
	testq	%r14, %r14
	movl	$0, _ZL13render_output(%rip)
	movq	%r15, %rax
	movq	%r15, %r13
	movq	160(%rsp), %rcx         # 8-byte Reload
	movq	%rbp, %rdx
	movq	%rbp, %r15
	movq	%r14, %rsi
	movl	$0, %edi
	je	.LBB5_204
	.align	16, 0x90
.LBB5_203:                              # %.lr.ph.i.i.i.i168
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_201 Depth=2
                                        #       Parent Loop BB5_202 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	(%rdx), %ebp
	addl	(%rax), %edi
	addl	(%rcx), %edi
	addl	%ebp, %edi
	movl	%edi, _ZL13render_output(%rip)
	incq	%rdx
	addq	$4, %rcx
	addq	$4, %rax
	decq	%rsi
	jne	.LBB5_203
.LBB5_204:                              # %_ZZ4mainENK3$_5clEv.exit.i.i
                                        #   in Loop: Header=BB5_202 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	movq	%r15, %rbp
	movq	%r13, %r15
	jl	.LBB5_202
# BB#205:                               #   in Loop: Header=BB5_201 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 216(%rsp,%r12,8)
	incq	%r12
	cmpq	$10, %r12
	jne	.LBB5_201
# BB#206:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	216(%rsp), %rsi
	movq	%rsi, %r12
	leaq	224(%rsp), %rbx
	leaq	296(%rsp), %r13
	movq	%r13, %rdi
	.align	16, 0x90
.LBB5_207:                              # %.preheader477
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_226 Depth 3
	movsd	(%rbx), %xmm1
	movsd	216(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_225
# BB#208:                               #   in Loop: Header=BB5_207 Depth=2
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_210
# BB#209:                               #   in Loop: Header=BB5_207 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%rsi, %r13
                                        # kill: RSI<def> R13<kill>
	movsd	%xmm1, 152(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	152(%rsp), %xmm1        # 8-byte Reload
	leaq	296(%rsp), %rdi
	movq	%r13, %rsi
.LBB5_210:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i175
                                        #   in Loop: Header=BB5_207 Depth=2
	movsd	%xmm1, 216(%rsp)
	jmp	.LBB5_211
	.align	16, 0x90
.LBB5_225:                              #   in Loop: Header=BB5_207 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_227
	.align	16, 0x90
.LBB5_226:                              # %.lr.ph.i.i10.i.i.i180
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_207 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_226
.LBB5_227:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i182
                                        #   in Loop: Header=BB5_207 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_211:                              # %.backedge.i7.i.i.i177
                                        #   in Loop: Header=BB5_207 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rdi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_207
# BB#212:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	232(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	addsd	264(%rsp), %xmm0
	addsd	272(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	128(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp54:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp55:
# BB#213:                               # %_ZNSolsEd.exit184
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp56:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp57:
# BB#214:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	%r15, %r13
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_215:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_216 Depth 3
                                        #         Child Loop BB5_217 Depth 4
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_216:                              #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_215 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_217 Depth 4
	testq	%r14, %r14
	movl	$0, _ZL13render_output(%rip)
	movq	%r14, %rax
	movq	%rbp, %rcx
	movq	%rbp, %r15
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rsi
	movl	$0, %edi
	je	.LBB5_218
	.align	16, 0x90
.LBB5_217:                              # %.lr.ph.i.i.i.i192
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_215 Depth=2
                                        #       Parent Loop BB5_216 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	(%rcx), %ebp
	addl	(%rsi), %edi
	addl	(%rdx), %edi
	addl	%ebp, %edi
	movl	%edi, _ZL13render_output(%rip)
	addq	$4, %rsi
	addq	$4, %rdx
	incq	%rcx
	decq	%rax
	jne	.LBB5_217
.LBB5_218:                              # %_ZZ4mainENK3$_6clEv.exit.i.i
                                        #   in Loop: Header=BB5_216 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	movq	%r15, %rbp
	jl	.LBB5_216
# BB#219:                               #   in Loop: Header=BB5_215 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 216(%rsp,%r12,8)
	incq	%r12
	cmpq	$10, %r12
	jne	.LBB5_215
# BB#220:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	216(%rsp), %r15
	movq	%r15, %r12
	leaq	224(%rsp), %rbx
	.align	16, 0x90
.LBB5_221:                              # %.preheader476
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_229 Depth 3
	movsd	(%rbx), %xmm1
	movsd	216(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_228
# BB#222:                               #   in Loop: Header=BB5_221 Depth=2
	movq	%rbx, %rdx
	subq	%r15, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_224
# BB#223:                               #   in Loop: Header=BB5_221 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r15, %rsi
	movsd	%xmm1, 152(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	152(%rsp), %xmm1        # 8-byte Reload
.LBB5_224:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i199
                                        #   in Loop: Header=BB5_221 Depth=2
	movsd	%xmm1, 216(%rsp)
	jmp	.LBB5_231
	.align	16, 0x90
.LBB5_228:                              #   in Loop: Header=BB5_221 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_230
	.align	16, 0x90
.LBB5_229:                              # %.lr.ph.i.i10.i.i.i204
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_229
.LBB5_230:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i206
                                        #   in Loop: Header=BB5_221 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_231:                              # %.backedge.i7.i.i.i201
                                        #   in Loop: Header=BB5_221 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	leaq	296(%rsp), %rcx
	cmpq	%rcx, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_221
# BB#232:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	232(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	addsd	264(%rsp), %xmm0
	addsd	272(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	128(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp58:
	movl	$_ZSt4cout, %edi
	movq	%r13, %r15
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp59:
# BB#233:                               # %_ZNSolsEd.exit208
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp60:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp61:
# BB#234:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	%r15, %r13
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_235:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_236 Depth 3
                                        #         Child Loop BB5_237 Depth 4
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_236:                              #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_235 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_237 Depth 4
	testq	%r14, %r14
	movl	$0, _ZL13render_output(%rip)
	movq	%r14, %rax
	movq	%rbp, %rcx
	movq	%rbp, %r15
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rsi
	movl	$0, %edi
	je	.LBB5_238
	.align	16, 0x90
.LBB5_237:                              # %.lr.ph.i.i.i.i216
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_235 Depth=2
                                        #       Parent Loop BB5_236 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	(%rcx), %ebp
	addl	(%rsi), %edi
	addl	(%rdx), %edi
	addl	%ebp, %edi
	movl	%edi, _ZL13render_output(%rip)
	addq	$4, %rsi
	addq	$4, %rdx
	incq	%rcx
	decq	%rax
	jne	.LBB5_237
.LBB5_238:                              # %_ZZ4mainENK3$_7clEv.exit.i.i
                                        #   in Loop: Header=BB5_236 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	movq	%r15, %rbp
	jl	.LBB5_236
# BB#239:                               #   in Loop: Header=BB5_235 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 216(%rsp,%r12,8)
	incq	%r12
	cmpq	$10, %r12
	jne	.LBB5_235
# BB#240:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	216(%rsp), %r15
	movq	%r15, %r12
	leaq	224(%rsp), %rbx
	.align	16, 0x90
.LBB5_241:                              # %.preheader
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_252 Depth 3
	movsd	(%rbx), %xmm1
	movsd	216(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_251
# BB#242:                               #   in Loop: Header=BB5_241 Depth=2
	movq	%rbx, %rdx
	subq	%r15, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_244
# BB#243:                               #   in Loop: Header=BB5_241 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r15, %rsi
	movsd	%xmm1, 152(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	152(%rsp), %xmm1        # 8-byte Reload
.LBB5_244:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i223
                                        #   in Loop: Header=BB5_241 Depth=2
	movsd	%xmm1, 216(%rsp)
	jmp	.LBB5_245
	.align	16, 0x90
.LBB5_251:                              #   in Loop: Header=BB5_241 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_253
	.align	16, 0x90
.LBB5_252:                              # %.lr.ph.i.i10.i.i.i228
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_241 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_252
.LBB5_253:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i230
                                        #   in Loop: Header=BB5_241 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_245:                              # %.backedge.i7.i.i.i225
                                        #   in Loop: Header=BB5_241 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	leaq	296(%rsp), %rcx
	cmpq	%rcx, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_241
# BB#246:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	232(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	addsd	264(%rsp), %xmm0
	addsd	272(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	128(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp62:
	movl	$_ZSt4cout, %edi
	movq	%r13, %r15
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
.Ltmp63:
# BB#247:                               # %_ZNSolsEd.exit232
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB5_248
.LBB5_249:                              # %.noexc238
                                        #   in Loop: Header=BB5_9 Depth=1
	cmpb	$0, 56(%rbx)
	je	.LBB5_254
# BB#250:                               #   in Loop: Header=BB5_9 Depth=1
	movb	67(%rbx), %al
	jmp	.LBB5_256
	.align	16, 0x90
.LBB5_254:                              #   in Loop: Header=BB5_9 Depth=1
.Ltmp64:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp65:
# BB#255:                               # %.noexc241
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	(%rbx), %rax
	movq	48(%rax), %rax
.Ltmp66:
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*%rax
.Ltmp67:
.LBB5_256:                              # %.noexc234
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp68:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
.Ltmp69:
# BB#257:                               # %.noexc235
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp70:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp71:
# BB#258:                               # %_ZNSolsEPFRSoS_E.exit
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_260
# BB#259:                               #   in Loop: Header=BB5_9 Depth=1
	callq	_ZdlPv
.LBB5_260:                              # %_ZNSt6vectorI14plain_particleSaIS0_EED2Ev.exit69
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	movq	160(%rsp), %r12         # 8-byte Reload
	movq	32(%rsp), %rbx          # 8-byte Reload
	je	.LBB5_262
# BB#261:                               #   in Loop: Header=BB5_9 Depth=1
	callq	_ZdlPv
.LBB5_262:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit68
                                        #   in Loop: Header=BB5_9 Depth=1
	testq	%rbx, %rbx
	je	.LBB5_264
# BB#263:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%rbx, %rdi
	callq	_ZdlPv
.LBB5_264:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit67
                                        #   in Loop: Header=BB5_9 Depth=1
	testq	%r12, %r12
	je	.LBB5_266
# BB#265:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB5_266:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit66
                                        #   in Loop: Header=BB5_9 Depth=1
	testq	%r15, %r15
	je	.LBB5_268
# BB#267:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB5_268:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit65
                                        #   in Loop: Header=BB5_9 Depth=1
	testq	%rbp, %rbp
	je	.LBB5_270
# BB#269:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%rbp, %rdi
	callq	_ZdlPv
.LBB5_270:                              # %_ZNSt6vectorIcSaIcEED2Ev.exit64
                                        #   in Loop: Header=BB5_9 Depth=1
	addq	%r14, %r14
	leaq	(%r14,%r14,4), %r14
	cmpq	$10000001, %r14         # imm = 0x989681
	jb	.LBB5_9
	jmp	.LBB5_271
.LBB5_248:                              #   in Loop: Header=BB5_9 Depth=1
.Ltmp73:
	callq	_ZSt16__throw_bad_castv
.Ltmp74:
	jmp	.LBB5_249
.LBB5_96:                               # %.nonloopexit.nonloopexit
.Ltmp75:
	jmp	.LBB5_97
.LBB5_271:
	xorl	%eax, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_94:                               # %.loopexit
.Ltmp25:
	jmp	.LBB5_97
.LBB5_95:                               # %.nonloopexit.loopexit
.Ltmp72:
.LBB5_97:                               # %.nonloopexit
	movq	%rbp, %r14
	movq	%rax, %rbp
	movq	160(%rsp), %rbx         # 8-byte Reload
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_99
# BB#98:
	callq	_ZdlPv
.LBB5_99:                               # %_ZNSt6vectorI14plain_particleSaIS0_EED2Ev.exit
	movq	24(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB5_101
# BB#100:
	callq	_ZdlPv
.LBB5_101:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	movq	32(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB5_103
# BB#102:
	callq	_ZdlPv
.LBB5_103:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit60
	testq	%rbx, %rbx
	je	.LBB5_105
# BB#104:
	movq	%rbx, %rdi
	callq	_ZdlPv
.LBB5_105:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit61
	testq	%r15, %r15
	je	.LBB5_107
# BB#106:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB5_107:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit62
	movq	%r14, %rdi
	testq	%rdi, %rdi
	je	.LBB5_109
# BB#108:
	callq	_ZdlPv
.LBB5_109:                              # %_ZNSt6vectorIcSaIcEED2Ev.exit
	movq	%rbp, %rdi
	callq	_Unwind_Resume
.LBB5_272:
	callq	_ZSt16__throw_bad_castv
.Ltmp89:
	.size	main, .Ltmp89-main
	.cfi_endproc
.Leh_func_end5:
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table5:
.Lexception5:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\226\203\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\223\003"              # Call site table length
	.long	.Leh_func_begin5-.Leh_func_begin5 # >> Call Site 1 <<
	.long	.Ltmp7-.Leh_func_begin5 #   Call between .Leh_func_begin5 and .Ltmp7
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp7-.Leh_func_begin5 # >> Call Site 2 <<
	.long	.Ltmp10-.Ltmp7          #   Call between .Ltmp7 and .Ltmp10
	.long	.Ltmp25-.Leh_func_begin5 #     jumps to .Ltmp25
	.byte	0                       #   On action: cleanup
	.long	.Ltmp10-.Leh_func_begin5 # >> Call Site 3 <<
	.long	.Ltmp11-.Ltmp10         #   Call between .Ltmp10 and .Ltmp11
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp11-.Leh_func_begin5 # >> Call Site 4 <<
	.long	.Ltmp12-.Ltmp11         #   Call between .Ltmp11 and .Ltmp12
	.long	.Ltmp25-.Leh_func_begin5 #     jumps to .Ltmp25
	.byte	0                       #   On action: cleanup
	.long	.Ltmp12-.Leh_func_begin5 # >> Call Site 5 <<
	.long	.Ltmp15-.Ltmp12         #   Call between .Ltmp12 and .Ltmp15
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp15-.Leh_func_begin5 # >> Call Site 6 <<
	.long	.Ltmp16-.Ltmp15         #   Call between .Ltmp15 and .Ltmp16
	.long	.Ltmp25-.Leh_func_begin5 #     jumps to .Ltmp25
	.byte	0                       #   On action: cleanup
	.long	.Ltmp16-.Leh_func_begin5 # >> Call Site 7 <<
	.long	.Ltmp19-.Ltmp16         #   Call between .Ltmp16 and .Ltmp19
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp19-.Leh_func_begin5 # >> Call Site 8 <<
	.long	.Ltmp20-.Ltmp19         #   Call between .Ltmp19 and .Ltmp20
	.long	.Ltmp25-.Leh_func_begin5 #     jumps to .Ltmp25
	.byte	0                       #   On action: cleanup
	.long	.Ltmp20-.Leh_func_begin5 # >> Call Site 9 <<
	.long	.Ltmp23-.Ltmp20         #   Call between .Ltmp20 and .Ltmp23
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp23-.Leh_func_begin5 # >> Call Site 10 <<
	.long	.Ltmp24-.Ltmp23         #   Call between .Ltmp23 and .Ltmp24
	.long	.Ltmp25-.Leh_func_begin5 #     jumps to .Ltmp25
	.byte	0                       #   On action: cleanup
	.long	.Ltmp24-.Leh_func_begin5 # >> Call Site 11 <<
	.long	.Ltmp28-.Ltmp24         #   Call between .Ltmp24 and .Ltmp28
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp28-.Leh_func_begin5 # >> Call Site 12 <<
	.long	.Ltmp27-.Ltmp28         #   Call between .Ltmp28 and .Ltmp27
	.long	.Ltmp75-.Leh_func_begin5 #     jumps to .Ltmp75
	.byte	0                       #   On action: cleanup
	.long	.Ltmp30-.Leh_func_begin5 # >> Call Site 13 <<
	.long	.Ltmp33-.Ltmp30         #   Call between .Ltmp30 and .Ltmp33
	.long	.Ltmp72-.Leh_func_begin5 #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp33-.Leh_func_begin5 # >> Call Site 14 <<
	.long	.Ltmp34-.Ltmp33         #   Call between .Ltmp33 and .Ltmp34
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp34-.Leh_func_begin5 # >> Call Site 15 <<
	.long	.Ltmp37-.Ltmp34         #   Call between .Ltmp34 and .Ltmp37
	.long	.Ltmp72-.Leh_func_begin5 #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp37-.Leh_func_begin5 # >> Call Site 16 <<
	.long	.Ltmp38-.Ltmp37         #   Call between .Ltmp37 and .Ltmp38
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp38-.Leh_func_begin5 # >> Call Site 17 <<
	.long	.Ltmp41-.Ltmp38         #   Call between .Ltmp38 and .Ltmp41
	.long	.Ltmp72-.Leh_func_begin5 #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp41-.Leh_func_begin5 # >> Call Site 18 <<
	.long	.Ltmp42-.Ltmp41         #   Call between .Ltmp41 and .Ltmp42
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp42-.Leh_func_begin5 # >> Call Site 19 <<
	.long	.Ltmp45-.Ltmp42         #   Call between .Ltmp42 and .Ltmp45
	.long	.Ltmp72-.Leh_func_begin5 #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp45-.Leh_func_begin5 # >> Call Site 20 <<
	.long	.Ltmp46-.Ltmp45         #   Call between .Ltmp45 and .Ltmp46
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp46-.Leh_func_begin5 # >> Call Site 21 <<
	.long	.Ltmp49-.Ltmp46         #   Call between .Ltmp46 and .Ltmp49
	.long	.Ltmp72-.Leh_func_begin5 #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp49-.Leh_func_begin5 # >> Call Site 22 <<
	.long	.Ltmp50-.Ltmp49         #   Call between .Ltmp49 and .Ltmp50
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp50-.Leh_func_begin5 # >> Call Site 23 <<
	.long	.Ltmp53-.Ltmp50         #   Call between .Ltmp50 and .Ltmp53
	.long	.Ltmp72-.Leh_func_begin5 #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp53-.Leh_func_begin5 # >> Call Site 24 <<
	.long	.Ltmp54-.Ltmp53         #   Call between .Ltmp53 and .Ltmp54
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp54-.Leh_func_begin5 # >> Call Site 25 <<
	.long	.Ltmp57-.Ltmp54         #   Call between .Ltmp54 and .Ltmp57
	.long	.Ltmp72-.Leh_func_begin5 #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp57-.Leh_func_begin5 # >> Call Site 26 <<
	.long	.Ltmp58-.Ltmp57         #   Call between .Ltmp57 and .Ltmp58
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp58-.Leh_func_begin5 # >> Call Site 27 <<
	.long	.Ltmp61-.Ltmp58         #   Call between .Ltmp58 and .Ltmp61
	.long	.Ltmp72-.Leh_func_begin5 #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp61-.Leh_func_begin5 # >> Call Site 28 <<
	.long	.Ltmp62-.Ltmp61         #   Call between .Ltmp61 and .Ltmp62
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp62-.Leh_func_begin5 # >> Call Site 29 <<
	.long	.Ltmp71-.Ltmp62         #   Call between .Ltmp62 and .Ltmp71
	.long	.Ltmp72-.Leh_func_begin5 #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp73-.Leh_func_begin5 # >> Call Site 30 <<
	.long	.Ltmp74-.Ltmp73         #   Call between .Ltmp73 and .Ltmp74
	.long	.Ltmp75-.Leh_func_begin5 #     jumps to .Ltmp75
	.byte	0                       #   On action: cleanup
	.long	.Ltmp74-.Leh_func_begin5 # >> Call Site 31 <<
	.long	.Leh_func_end5-.Ltmp74  #   Call between .Ltmp74 and .Leh_func_end5
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,comdat
	.weak	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.align	16, 0x90
	.type	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,@function
_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_: # @_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.cfi_startproc
# BB#0:                                 # %_ZNKSt6vectorI14plain_particleSaIS0_EE12_M_check_lenEmPKc.exit
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp93:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp94:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp96:
	.cfi_def_cfa_offset 64
.Ltmp97:
	.cfi_offset %rbx, -56
.Ltmp98:
	.cfi_offset %r12, -48
.Ltmp99:
	.cfi_offset %r13, -40
.Ltmp100:
	.cfi_offset %r14, -32
.Ltmp101:
	.cfi_offset %r15, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movq	8(%r14), %rcx
	movq	%rcx, %rdx
	subq	%rdi, %rdx
	sarq	$2, %rdx
	movabsq	$-3689348814741910323, %r13 # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%r13, %rdx
	cmpq	%rdi, %rcx
	movabsq	$922337203685477580, %rax # imm = 0xCCCCCCCCCCCCCCC
	movl	$1, %ebp
	cmovneq	%rdx, %rbp
	addq	%rdx, %rbp
	setb	%dl
	cmpq	%rax, %rbp
	seta	%bl
	orb	%dl, %bl
	cmovneq	%rax, %rbp
	xorl	%r12d, %r12d
	testq	%rbp, %rbp
	je	.LBB6_3
# BB#1:
	cmpq	%rax, %rbp
	ja	.LBB6_15
# BB#2:                                 # %_ZNSt16allocator_traitsISaI14plain_particleEE8allocateERS1_m.exit.i
	leaq	(,%rbp,4), %rax
	leaq	(%rax,%rax,4), %rdi
	callq	_Znwm
	movq	%rax, %r12
	movq	(%r14), %rdi
	movq	8(%r14), %rcx
.LBB6_3:                                # %_ZNSt12_Vector_baseI14plain_particleSaIS0_EE11_M_allocateEm.exit
	movq	%rcx, %rax
	subq	%rdi, %rax
	andq	$-4, %rax
	addq	%r12, %rax
	je	.LBB6_5
# BB#4:
	movl	16(%r15), %edx
	movl	%edx, 16(%rax)
	movups	(%r15), %xmm0
	movups	%xmm0, (%rax)
.LBB6_5:                                # %_ZNSt16allocator_traitsISaI14plain_particleEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit
	cmpq	%rcx, %rdi
	je	.LBB6_6
# BB#7:                                 # %.lr.ph.i.i.i.i
	leaq	-20(%rcx), %rax
	movq	%r12, %rdx
	movq	%rdi, %rsi
	.align	16, 0x90
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	je	.LBB6_10
# BB#9:                                 #   in Loop: Header=BB6_8 Depth=1
	movl	16(%rsi), %ebx
	movl	%ebx, 16(%rdx)
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rdx)
.LBB6_10:                               # %_ZSt10_ConstructI14plain_particleJS0_EEvPT_DpOT0_.exit.i.i.i.i
                                        #   in Loop: Header=BB6_8 Depth=1
	addq	$20, %rsi
	addq	$20, %rdx
	cmpq	%rsi, %rcx
	jne	.LBB6_8
# BB#11:                                # %._crit_edge.i.i.i.i
	subq	%rdi, %rax
	mulq	%r13
	shrq	$4, %rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	20(%r12,%rax,4), %rbx
	movq	(%r14), %rdi
	jmp	.LBB6_12
.LBB6_6:
	movq	%r12, %rbx
.LBB6_12:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP14plain_particleS1_SaIS0_EET0_T_S4_S3_RT1_.exit
	addq	$20, %rbx
	testq	%rdi, %rdi
	je	.LBB6_14
# BB#13:
	callq	_ZdlPv
.LBB6_14:                               # %_ZNSt12_Vector_baseI14plain_particleSaIS0_EE13_M_deallocateEPS0_m.exit1
	movq	%r12, (%r14)
	movq	%rbx, 8(%r14)
	leaq	(%rbp,%rbp,4), %rax
	leaq	(%r12,%rax,4), %rax
	movq	%rax, 16(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_15:
	callq	_ZSt17__throw_bad_allocv
.Ltmp103:
	.size	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_, .Ltmp103-_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_dod_perfv2.cpp,@function
_GLOBAL__sub_I_dod_perfv2.cpp:          # @_GLOBAL__sub_I_dod_perfv2.cpp
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp104:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Ltmp105:
	.size	_GLOBAL__sub_I_dod_perfv2.cpp, .Ltmp105-_GLOBAL__sub_I_dod_perfv2.cpp
	.cfi_endproc

	.type	measure_start,@object   # @measure_start
	.bss
	.globl	measure_start
	.align	8
measure_start:
	.zero	8
	.size	measure_start, 8

	.type	measure_pause,@object   # @measure_pause
	.globl	measure_pause
	.align	8
measure_pause:
	.zero	8
	.size	measure_pause, 8

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_ZL13render_output,@object # @_ZL13render_output
	.local	_ZL13render_output
	.comm	_ZL13render_output,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"render:"
	.size	.L.str, 8

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"n;oop;raw;dod;render_dod;oop[i];raw[i];dod[i];render_dod[i]"
	.size	.L.str1, 60

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	";"
	.size	.L.str2, 2

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"vector::_M_emplace_back_aux"
	.size	.L.str3, 28

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_dod_perfv2.cpp

	.ident	"clang version 3.6.2 (tags/RELEASE_362/final)"
	.section	".note.GNU-stack","",@progbits
