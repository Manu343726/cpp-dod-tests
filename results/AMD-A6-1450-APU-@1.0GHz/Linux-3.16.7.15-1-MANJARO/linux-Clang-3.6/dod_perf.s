	.text
	.file	"/home/manu343726/Documentos/joaquin-dod/dod_perf.cpp"
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
	subq	$280, %rsp              # imm = 0x118
.Ltmp82:
	.cfi_def_cfa_offset 336
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
	je	.LBB5_275
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
	je	.LBB5_275
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
	leaq	200(%rsp), %r9
	.align	16, 0x90
.LBB5_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
                                        #     Child Loop BB5_118 Depth 2
                                        #       Child Loop BB5_120 Depth 3
                                        #         Child Loop BB5_121 Depth 4
                                        #       Child Loop BB5_119 Depth 3
                                        #     Child Loop BB5_125 Depth 2
                                        #       Child Loop BB5_144 Depth 3
                                        #     Child Loop BB5_133 Depth 2
                                        #       Child Loop BB5_134 Depth 3
                                        #         Child Loop BB5_135 Depth 4
                                        #     Child Loop BB5_139 Depth 2
                                        #       Child Loop BB5_147 Depth 3
                                        #     Child Loop BB5_153 Depth 2
                                        #       Child Loop BB5_154 Depth 3
                                        #         Child Loop BB5_155 Depth 4
                                        #     Child Loop BB5_159 Depth 2
                                        #       Child Loop BB5_178 Depth 3
                                        #     Child Loop BB5_167 Depth 2
                                        #       Child Loop BB5_168 Depth 3
                                        #         Child Loop BB5_169 Depth 4
                                        #     Child Loop BB5_173 Depth 2
                                        #       Child Loop BB5_181 Depth 3
                                        #     Child Loop BB5_187 Depth 2
                                        #       Child Loop BB5_188 Depth 3
                                        #         Child Loop BB5_189 Depth 4
                                        #     Child Loop BB5_193 Depth 2
                                        #       Child Loop BB5_212 Depth 3
                                        #     Child Loop BB5_201 Depth 2
                                        #       Child Loop BB5_202 Depth 3
                                        #         Child Loop BB5_203 Depth 4
                                        #     Child Loop BB5_207 Depth 2
                                        #       Child Loop BB5_215 Depth 3
                                        #     Child Loop BB5_221 Depth 2
                                        #       Child Loop BB5_222 Depth 3
                                        #         Child Loop BB5_223 Depth 4
                                        #     Child Loop BB5_227 Depth 2
                                        #       Child Loop BB5_246 Depth 3
                                        #     Child Loop BB5_235 Depth 2
                                        #       Child Loop BB5_236 Depth 3
                                        #         Child Loop BB5_237 Depth 4
                                        #     Child Loop BB5_241 Depth 2
                                        #       Child Loop BB5_249 Depth 3
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movq	$0, 192(%rsp)
	testq	%r14, %r14
	movl	$0, %r11d
	movl	$0, %r10d
	movl	$0, %r8d
	movl	$0, %edx
	movl	$0, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$0, %r13d
	movl	$0, %esi
	movl	$0, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$0, %r15d
	movl	$0, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$0, %ebp
	movl	$0, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	$0, %ebx
	movl	$0, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	jne	.LBB5_10
	jmp	.LBB5_115
	.align	16, 0x90
.LBB5_96:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit48._crit_edge
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	184(%rsp), %r10
	movq	192(%rsp), %r8
	addl	$2, %r11d
.LBB5_10:                               # %.lr.ph
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rbx, %rax
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	mulq	%rdx
	movl	%edx, %eax
	shrl	$2, %eax
	leal	(%rax,%rax,4), %eax
	movl	%ebx, %edi
	subl	%eax, %edi
	movq	%rdx, %rax
	shrq	$4, %rax
	imull	$20, %eax, %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	shrq	$3, %rdx
	imull	$10, %edx, %eax
	movb	%dil, 152(%rsp)
	movl	%ebx, 156(%rsp)
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%r11d, 160(%rsp)
	movl	%ecx, 164(%rsp)
	movl	%edx, 168(%rsp)
	cmpq	%r8, %r10
	je	.LBB5_14
# BB#11:                                #   in Loop: Header=BB5_10 Depth=2
	movl	%edi, 64(%rsp)          # 4-byte Spill
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	%r11, 144(%rsp)         # 8-byte Spill
	testq	%r10, %r10
	movl	$0, %eax
	je	.LBB5_13
# BB#12:                                #   in Loop: Header=BB5_10 Depth=2
	movl	168(%rsp), %eax
	movl	%eax, 16(%r10)
	movups	152(%rsp), %xmm0
	movups	%xmm0, (%r10)
	movq	%r10, %rax
.LBB5_13:                               # %_ZNSt16allocator_traitsISaI14plain_particleEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	movl	%edx, 56(%rsp)          # 4-byte Spill
	movq	%r9, %rbx
	addq	$20, %rax
	movq	%rax, 184(%rsp)
	jmp	.LBB5_15
	.align	16, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp7:
	movl	%edi, 64(%rsp)          # 4-byte Spill
	movl	%edx, 56(%rsp)          # 4-byte Spill
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	%r11, 144(%rsp)         # 8-byte Spill
	movq	%r9, %rbx
	leaq	176(%rsp), %rdi
	leaq	152(%rsp), %rsi
	callq	_ZNSt6vectorI14plain_particleSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
.Ltmp8:
.LBB5_15:                               # %_ZNSt6vectorI14plain_particleSaIS0_EE9push_backEOS0_.exit
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	80(%rsp), %rdx          # 8-byte Reload
	cmpq	72(%rsp), %rdx          # 8-byte Folded Reload
	movq	%rbx, %r9
	je	.LBB5_19
# BB#16:                                #   in Loop: Header=BB5_10 Depth=2
	testq	%rdx, %rdx
	movl	$0, %eax
	je	.LBB5_18
# BB#17:                                #   in Loop: Header=BB5_10 Depth=2
	movl	64(%rsp), %eax          # 4-byte Reload
	movb	%al, (%rdx)
	movq	%rdx, %rax
.LBB5_18:                               # %_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i
                                        #   in Loop: Header=BB5_10 Depth=2
	incq	%rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
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
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	testq	%rcx, %rcx
	movl	$0, %ebx
	je	.LBB5_24
# BB#22:                                #   in Loop: Header=BB5_10 Depth=2
.Ltmp9:
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp10:
# BB#23:                                #   in Loop: Header=BB5_10 Depth=2
	movq	80(%rsp), %rdx          # 8-byte Reload
.LBB5_24:                               # %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rbx, %rax
	addq	%r12, %rax
	je	.LBB5_26
# BB#25:                                #   in Loop: Header=BB5_10 Depth=2
	movl	64(%rsp), %ecx          # 4-byte Reload
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
	movq	%rax, 80(%rsp)          # 8-byte Spill
	addq	%rbx, 72(%rsp)          # 8-byte Folded Spill
	movq	%rbx, %rbp
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	200(%rsp), %rdi
	movq	%rdi, %r9
.LBB5_31:                               # %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	144(%rsp), %r11         # 8-byte Reload
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	128(%rsp), %rsi         # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	cmpq	48(%rsp), %rcx          # 8-byte Folded Reload
	je	.LBB5_35
# BB#32:                                #   in Loop: Header=BB5_10 Depth=2
	testq	%rcx, %rcx
	je	.LBB5_34
# BB#33:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%rcx, %rbx
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, (%rbx)
	movq	%rbx, %rcx
.LBB5_34:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i
                                        #   in Loop: Header=BB5_10 Depth=2
	addq	$4, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	jmp	.LBB5_47
	.align	16, 0x90
.LBB5_35:                               #   in Loop: Header=BB5_10 Depth=2
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	%r11, 144(%rsp)         # 8-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	subq	%r15, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rcx, %rsi
	sarq	$2, %rsi
	movl	$1, %ebx
	cmovneq	%rsi, %rbx
	addq	%rsi, %rbx
	setb	%al
	movabsq	$4611686018427387903, %rcx # imm = 0x3FFFFFFFFFFFFFFF
	movq	%rcx, %rdx
	cmpq	%rbx, %rdx
	setb	%cl
	orb	%al, %cl
	cmovneq	%rdx, %rbx
	testq	%rbx, %rbx
	movl	$0, %r12d
	je	.LBB5_40
# BB#36:                                #   in Loop: Header=BB5_10 Depth=2
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	.LBB5_37
.LBB5_38:                               # %_ZNSt16allocator_traitsISaIiEE8allocateERS0_m.exit.i.i
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	leaq	(,%rbx,4), %rdi
.Ltmp11:
	callq	_Znwm
	movq	%rax, %r12
.Ltmp12:
# BB#39:                                # %.noexc17
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	64(%rsp), %rsi          # 8-byte Reload
.LBB5_40:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%rsi,4), %rax
	addq	%r12, %rax
	je	.LBB5_42
# BB#41:                                #   in Loop: Header=BB5_10 Depth=2
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, (%rax)
.LBB5_42:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i14
                                        #   in Loop: Header=BB5_10 Depth=2
	testq	%rsi, %rsi
	je	.LBB5_44
# BB#43:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r12, %rdi
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%r15, %rsi
	movq	96(%rsp), %rdx          # 8-byte Reload
	callq	memmove
	movq	64(%rsp), %rsi          # 8-byte Reload
.LBB5_44:                               #   in Loop: Header=BB5_10 Depth=2
	testq	%r15, %r15
	je	.LBB5_46
# BB#45:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r15, %rdi
	movq	%rsi, %r15
	callq	_ZdlPv
	movq	%r15, %rsi
.LBB5_46:                               # %.noexc10
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	4(%r12,%rsi,4), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	(%r12,%rbx,4), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r12, %r15
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	200(%rsp), %rdi
	movq	%rdi, %r9
	movq	144(%rsp), %r11         # 8-byte Reload
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	128(%rsp), %rsi         # 8-byte Reload
.LBB5_47:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	40(%rsp), %rsi          # 8-byte Folded Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	je	.LBB5_51
# BB#48:                                #   in Loop: Header=BB5_10 Depth=2
	testq	%rsi, %rsi
	je	.LBB5_50
# BB#49:                                #   in Loop: Header=BB5_10 Depth=2
	movl	%r11d, (%rsi)
.LBB5_50:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i18
                                        #   in Loop: Header=BB5_10 Depth=2
	addq	$4, %rsi
	jmp	.LBB5_63
	.align	16, 0x90
.LBB5_51:                               #   in Loop: Header=BB5_10 Depth=2
	movq	%r11, 144(%rsp)         # 8-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	subq	%r13, %rsi
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	sarq	$2, %rsi
	movl	$1, %ebx
	cmovneq	%rsi, %rbx
	addq	%rsi, %rbx
	setb	%al
	movabsq	$4611686018427387903, %rcx # imm = 0x3FFFFFFFFFFFFFFF
	movq	%rcx, %rdx
	cmpq	%rbx, %rdx
	setb	%cl
	orb	%al, %cl
	cmovneq	%rdx, %rbx
	testq	%rbx, %rbx
	movl	$0, %r12d
	je	.LBB5_56
# BB#52:                                #   in Loop: Header=BB5_10 Depth=2
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	.LBB5_53
.LBB5_54:                               # %_ZNSt16allocator_traitsISaIiEE8allocateERS0_m.exit.i.i25
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	leaq	(,%rbx,4), %rdi
.Ltmp15:
	callq	_Znwm
	movq	%rax, %r12
.Ltmp16:
# BB#55:                                # %.noexc30
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	64(%rsp), %rsi          # 8-byte Reload
.LBB5_56:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i26
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%rsi,4), %rax
	addq	%r12, %rax
	je	.LBB5_58
# BB#57:                                #   in Loop: Header=BB5_10 Depth=2
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, (%rax)
.LBB5_58:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i27
                                        #   in Loop: Header=BB5_10 Depth=2
	testq	%rsi, %rsi
	je	.LBB5_60
# BB#59:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r12, %rdi
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%r13, %rsi
	movq	128(%rsp), %rdx         # 8-byte Reload
	callq	memmove
	movq	64(%rsp), %rsi          # 8-byte Reload
.LBB5_60:                               #   in Loop: Header=BB5_10 Depth=2
	testq	%r13, %r13
	je	.LBB5_62
# BB#61:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r13, %rdi
	movq	%rsi, %r13
	callq	_ZdlPv
	movq	%r13, %rsi
.LBB5_62:                               # %.noexc19
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	4(%r12,%rsi,4), %rsi
	leaq	(%r12,%rbx,4), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r12, %r13
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	200(%rsp), %rdi
	movq	%rdi, %r9
	movq	144(%rsp), %r11         # 8-byte Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	112(%rsp), %rdx         # 8-byte Reload
.LBB5_63:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit20
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	32(%rsp), %rdx          # 8-byte Folded Reload
	je	.LBB5_67
# BB#64:                                #   in Loop: Header=BB5_10 Depth=2
	testq	%rdx, %rdx
	je	.LBB5_66
# BB#65:                                #   in Loop: Header=BB5_10 Depth=2
	movl	60(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, (%rdx)
.LBB5_66:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i32
                                        #   in Loop: Header=BB5_10 Depth=2
	addq	$4, %rdx
	jmp	.LBB5_79
	.align	16, 0x90
.LBB5_67:                               #   in Loop: Header=BB5_10 Depth=2
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	%r11, 144(%rsp)         # 8-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	subq	16(%rsp), %rdx          # 8-byte Folded Reload
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%rdx, %rbx
	sarq	$2, %rbx
	movl	$1, %r12d
	cmovneq	%rbx, %r12
	addq	%rbx, %r12
	setb	%al
	movabsq	$4611686018427387903, %rcx # imm = 0x3FFFFFFFFFFFFFFF
	movq	%rcx, %rdx
	cmpq	%r12, %rdx
	setb	%cl
	orb	%al, %cl
	cmovneq	%rdx, %r12
	testq	%r12, %r12
	movl	$0, %eax
	je	.LBB5_72
# BB#68:                                #   in Loop: Header=BB5_10 Depth=2
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %r12
	ja	.LBB5_69
.LBB5_70:                               # %_ZNSt16allocator_traitsISaIiEE8allocateERS0_m.exit.i.i39
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	leaq	(,%r12,4), %rdi
.Ltmp19:
	callq	_Znwm
.Ltmp20:
# BB#71:                                # %.noexc44
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	64(%rsp), %rbx          # 8-byte Reload
.LBB5_72:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i40
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	(,%rbx,4), %rdx
	addq	%rax, %rdx
	je	.LBB5_74
# BB#73:                                #   in Loop: Header=BB5_10 Depth=2
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rdx)
.LBB5_74:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i41
                                        #   in Loop: Header=BB5_10 Depth=2
	testq	%rbx, %rbx
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rsi
	movq	112(%rsp), %rdx         # 8-byte Reload
	je	.LBB5_76
# BB#75:                                #   in Loop: Header=BB5_10 Depth=2
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	callq	memmove
	movq	%rbx, %rsi
	movq	64(%rsp), %rbx          # 8-byte Reload
.LBB5_76:                               #   in Loop: Header=BB5_10 Depth=2
	testq	%rsi, %rsi
	je	.LBB5_78
# BB#77:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%rsi, %rdi
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	callq	_ZdlPv
	movq	64(%rsp), %rbx          # 8-byte Reload
.LBB5_78:                               # %.noexc33
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	4(%rcx,%rbx,4), %rdx
	leaq	(%rcx,%r12,4), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	200(%rsp), %rdi
	movq	%rdi, %r9
	movq	144(%rsp), %r11         # 8-byte Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	128(%rsp), %rsi         # 8-byte Reload
.LBB5_79:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit34
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	24(%rsp), %rcx          # 8-byte Folded Reload
	je	.LBB5_83
# BB#80:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB5_82
# BB#81:                                #   in Loop: Header=BB5_10 Depth=2
	movl	56(%rsp), %edx          # 4-byte Reload
	movl	%edx, (%rcx)
.LBB5_82:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i46
                                        #   in Loop: Header=BB5_10 Depth=2
	addq	$4, %rcx
	jmp	.LBB5_95
	.align	16, 0x90
.LBB5_83:                               #   in Loop: Header=BB5_10 Depth=2
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%r11, 144(%rsp)         # 8-byte Spill
	subq	%rax, %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	%rcx, %rsi
	sarq	$2, %rsi
	movl	$1, %ebx
	cmovneq	%rsi, %rbx
	addq	%rsi, %rbx
	setb	%al
	movabsq	$4611686018427387903, %rcx # imm = 0x3FFFFFFFFFFFFFFF
	movq	%rcx, %rdx
	cmpq	%rbx, %rdx
	setb	%cl
	orb	%al, %cl
	cmovneq	%rdx, %rbx
	testq	%rbx, %rbx
	movl	$0, %r12d
	je	.LBB5_88
# BB#84:                                #   in Loop: Header=BB5_10 Depth=2
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	.LBB5_85
.LBB5_86:                               # %_ZNSt16allocator_traitsISaIiEE8allocateERS0_m.exit.i.i53
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	leaq	(,%rbx,4), %rdi
.Ltmp23:
	callq	_Znwm
	movq	%rax, %r12
.Ltmp24:
# BB#87:                                # %.noexc58
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	64(%rsp), %rsi          # 8-byte Reload
.LBB5_88:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i54
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	(,%rsi,4), %rax
	addq	%r12, %rax
	je	.LBB5_90
# BB#89:                                #   in Loop: Header=BB5_10 Depth=2
	movl	56(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rax)
.LBB5_90:                               # %_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit.i55
                                        #   in Loop: Header=BB5_10 Depth=2
	testq	%rsi, %rsi
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
	je	.LBB5_92
# BB#91:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%r12, %rdi
	callq	memmove
	movq	136(%rsp), %rsi         # 8-byte Reload
.LBB5_92:                               #   in Loop: Header=BB5_10 Depth=2
	testq	%rsi, %rsi
	je	.LBB5_94
# BB#93:                                #   in Loop: Header=BB5_10 Depth=2
	movq	%rsi, %rdi
	callq	_ZdlPv
.LBB5_94:                               # %.noexc47
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	4(%r12,%rax,4), %rcx
	leaq	(%r12,%rbx,4), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r12, %rax
	leaq	200(%rsp), %rdi
	movq	%rdi, %r9
	movq	144(%rsp), %r11         # 8-byte Reload
	movq	128(%rsp), %rsi         # 8-byte Reload
.LBB5_95:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit48
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	incq	%rax
	cmpq	%r14, %rax
	movq	%rax, %rdx
	jb	.LBB5_96
	jmp	.LBB5_114
.LBB5_20:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp28:
	movl	$.L.str3, %edi
	movq	16(%rsp), %rbx          # 8-byte Reload
	callq	_ZSt20__throw_length_errorPKc
.Ltmp29:
	jmp	.LBB5_21
.LBB5_37:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp13:
	movq	16(%rsp), %rbx          # 8-byte Reload
	callq	_ZSt17__throw_bad_allocv
.Ltmp14:
	jmp	.LBB5_38
.LBB5_53:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp17:
	movq	16(%rsp), %rbx          # 8-byte Reload
	callq	_ZSt17__throw_bad_allocv
.Ltmp18:
	jmp	.LBB5_54
.LBB5_69:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp21:
	movq	16(%rsp), %rbx          # 8-byte Reload
	callq	_ZSt17__throw_bad_allocv
.Ltmp22:
	jmp	.LBB5_70
.LBB5_85:                               #   in Loop: Header=BB5_10 Depth=2
.Ltmp26:
	movq	16(%rsp), %rbx          # 8-byte Reload
	callq	_ZSt17__throw_bad_allocv
.Ltmp27:
	jmp	.LBB5_86
	.align	16, 0x90
.LBB5_114:                              # %._crit_edge
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	176(%rsp), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rbx
.LBB5_115:                              #   in Loop: Header=BB5_9 Depth=1
.Ltmp30:
	movl	$_ZSt4cout, %edi
	movq	%r14, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
.Ltmp31:
# BB#116:                               # %_ZNSolsEm.exit
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp32:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp33:
# BB#117:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB5_118:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_120 Depth 3
                                        #         Child Loop BB5_121 Depth 4
                                        #       Child Loop BB5_119 Depth 3
	movq	%rax, 128(%rsp)         # 8-byte Spill
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%r12d, %r12d
	cmpq	%rbx, 144(%rsp)         # 8-byte Folded Reload
	je	.LBB5_119
	.align	16, 0x90
.LBB5_120:                              # %.lr.ph.i.i.preheader.i.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_118 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_121 Depth 4
	movl	$0, _ZL13render_output(%rip)
	xorl	%eax, %eax
	movq	144(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB5_121:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_118 Depth=2
                                        #       Parent Loop BB5_120 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	(%rcx), %edx
	addl	4(%rcx), %eax
	addl	8(%rcx), %eax
	leaq	20(%rcx), %rcx
	addl	%edx, %eax
	movl	%eax, _ZL13render_output(%rip)
	cmpq	%rcx, %rbx
	jne	.LBB5_121
# BB#122:                               # %_ZZ4mainENK3$_0clEv.exit.i.i
                                        #   in Loop: Header=BB5_120 Depth=3
	incl	%r12d
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	jl	.LBB5_120
	jmp	.LBB5_123
	.align	16, 0x90
.LBB5_119:                              # %_ZZ4mainENK3$_0clEv.exit.us.i.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, _ZL13render_output(%rip)
	incl	%r12d
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	jl	.LBB5_119
.LBB5_123:                              # %.us-lcssa.us.i.i
                                        #   in Loop: Header=BB5_118 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%r12d, %xmm1
	divsd	%xmm1, %xmm0
	movq	128(%rsp), %rax         # 8-byte Reload
	movsd	%xmm0, 200(%rsp,%rax,8)
	incq	%rax
	cmpq	$10, %rax
	jne	.LBB5_118
# BB#124:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	200(%rsp), %r8
	movq	%r8, %r12
	leaq	208(%rsp), %rbx
	leaq	280(%rsp), %rsi
	.align	16, 0x90
.LBB5_125:                              # %.preheader472
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_144 Depth 3
	movsd	(%rbx), %xmm1
	movsd	200(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_143
# BB#126:                               #   in Loop: Header=BB5_125 Depth=2
	movq	%rbx, %rdx
	subq	%r8, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_128
# BB#127:                               #   in Loop: Header=BB5_125 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r8, %rsi
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	128(%rsp), %xmm1        # 8-byte Reload
	leaq	200(%rsp), %r8
	leaq	280(%rsp), %rsi
.LBB5_128:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i
                                        #   in Loop: Header=BB5_125 Depth=2
	movsd	%xmm1, 200(%rsp)
	jmp	.LBB5_129
	.align	16, 0x90
.LBB5_143:                              #   in Loop: Header=BB5_125 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_145
	.align	16, 0x90
.LBB5_144:                              # %.lr.ph.i.i10.i.i.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_144
.LBB5_145:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i
                                        #   in Loop: Header=BB5_125 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_129:                              # %.backedge.i7.i.i.i
                                        #   in Loop: Header=BB5_125 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rsi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_125
# BB#130:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	216(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	224(%rsp), %xmm0
	addsd	232(%rsp), %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	movd	%r14, %xmm1
	punpckldq	.LCPI5_2(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI5_3(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm2
	movapd	%xmm2, 112(%rsp)        # 16-byte Spill
	divsd	%xmm2, %xmm0
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp34:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp35:
# BB#131:                               # %_ZNSolsEd.exit
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp36:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp37:
# BB#132:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_133:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_134 Depth 3
                                        #         Child Loop BB5_135 Depth 4
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_134:                              # %.lr.ph.i.i.i.preheader.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_133 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_135 Depth 4
	movl	$0, _ZL13render_output(%rip)
	movl	$1, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_135:                              # %.lr.ph.i.i.i.i83
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_133 Depth=2
                                        #       Parent Loop BB5_134 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	-1(%rbp,%rax), %edx
	addl	-4(%r15,%rax,4), %ecx
	addl	-4(%r13,%rax,4), %ecx
	addl	%edx, %ecx
	movl	%ecx, _ZL13render_output(%rip)
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB5_135
# BB#136:                               # %_ZZ4mainENK3$_1clEv.exit.i.i
                                        #   in Loop: Header=BB5_134 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	jl	.LBB5_134
# BB#137:                               # %.us-lcssa.us.i
                                        #   in Loop: Header=BB5_133 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 200(%rsp,%r12,8)
	incq	%r12
	cmpq	$10, %r12
	jne	.LBB5_133
# BB#138:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	200(%rsp), %r8
	movq	%r8, %r12
	leaq	208(%rsp), %rbx
	leaq	280(%rsp), %rsi
	.align	16, 0x90
.LBB5_139:                              # %.preheader471
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_147 Depth 3
	movsd	(%rbx), %xmm1
	movsd	200(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_146
# BB#140:                               #   in Loop: Header=BB5_139 Depth=2
	movq	%rbx, %rdx
	subq	%r8, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_142
# BB#141:                               #   in Loop: Header=BB5_139 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r8, %rsi
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	128(%rsp), %xmm1        # 8-byte Reload
	leaq	200(%rsp), %r8
	leaq	280(%rsp), %rsi
.LBB5_142:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i90
                                        #   in Loop: Header=BB5_139 Depth=2
	movsd	%xmm1, 200(%rsp)
	jmp	.LBB5_149
	.align	16, 0x90
.LBB5_146:                              #   in Loop: Header=BB5_139 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_148
	.align	16, 0x90
.LBB5_147:                              # %.lr.ph.i.i10.i.i.i95
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
	ja	.LBB5_147
.LBB5_148:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i97
                                        #   in Loop: Header=BB5_139 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_149:                              # %.backedge.i7.i.i.i92
                                        #   in Loop: Header=BB5_139 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rsi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_139
# BB#150:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	216(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	224(%rsp), %xmm0
	addsd	232(%rsp), %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp38:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp39:
# BB#151:                               # %_ZNSolsEd.exit99
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp40:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp41:
# BB#152:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB5_153:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_154 Depth 3
                                        #         Child Loop BB5_155 Depth 4
	movq	%rax, 128(%rsp)         # 8-byte Spill
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_154:                              #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_153 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_155 Depth 4
	testq	%r14, %r14
	movl	$0, _ZL13render_output(%rip)
	movq	%r14, %rax
	movl	$0, %ecx
	movq	%r13, %rdx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	movq	%rbp, %r12
	je	.LBB5_156
	.align	16, 0x90
.LBB5_155:                              # %.lr.ph.i.i.i.i105
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_153 Depth=2
                                        #       Parent Loop BB5_154 Depth=3
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
	jne	.LBB5_155
.LBB5_156:                              # %_ZZ4mainENK3$_2clEv.exit.i.i
                                        #   in Loop: Header=BB5_154 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	movq	%r12, %rbp
	jl	.LBB5_154
# BB#157:                               #   in Loop: Header=BB5_153 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movq	128(%rsp), %rax         # 8-byte Reload
	movsd	%xmm0, 200(%rsp,%rax,8)
	incq	%rax
	cmpq	$10, %rax
	jne	.LBB5_153
# BB#158:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	200(%rsp), %r8
	movq	%r8, %r12
	leaq	208(%rsp), %rbx
	leaq	280(%rsp), %rsi
	.align	16, 0x90
.LBB5_159:                              # %.preheader470
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_178 Depth 3
	movsd	(%rbx), %xmm1
	movsd	200(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_177
# BB#160:                               #   in Loop: Header=BB5_159 Depth=2
	movq	%rbx, %rdx
	subq	%r8, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_162
# BB#161:                               #   in Loop: Header=BB5_159 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r8, %rsi
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	128(%rsp), %xmm1        # 8-byte Reload
	leaq	200(%rsp), %r8
	leaq	280(%rsp), %rsi
.LBB5_162:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i112
                                        #   in Loop: Header=BB5_159 Depth=2
	movsd	%xmm1, 200(%rsp)
	jmp	.LBB5_163
	.align	16, 0x90
.LBB5_177:                              #   in Loop: Header=BB5_159 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_179
	.align	16, 0x90
.LBB5_178:                              # %.lr.ph.i.i10.i.i.i117
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_178
.LBB5_179:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i119
                                        #   in Loop: Header=BB5_159 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_163:                              # %.backedge.i7.i.i.i114
                                        #   in Loop: Header=BB5_159 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rsi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_159
# BB#164:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	216(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	224(%rsp), %xmm0
	addsd	232(%rsp), %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp42:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp43:
# BB#165:                               # %_ZNSolsEd.exit121
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp44:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp45:
# BB#166:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB5_167:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_168 Depth 3
                                        #         Child Loop BB5_169 Depth 4
	movq	%rax, 128(%rsp)         # 8-byte Spill
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
	movq	%r14, %rax
	movl	$0, %ecx
	movq	%r13, %rdx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	movq	%rbp, %r12
	je	.LBB5_170
	.align	16, 0x90
.LBB5_169:                              # %.lr.ph.i.i.i.i127
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_167 Depth=2
                                        #       Parent Loop BB5_168 Depth=3
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
	jne	.LBB5_169
.LBB5_170:                              # %_ZZ4mainENK3$_3clEv.exit.i.i
                                        #   in Loop: Header=BB5_168 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	movq	%r12, %rbp
	jl	.LBB5_168
# BB#171:                               #   in Loop: Header=BB5_167 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movq	128(%rsp), %rax         # 8-byte Reload
	movsd	%xmm0, 200(%rsp,%rax,8)
	incq	%rax
	cmpq	$10, %rax
	jne	.LBB5_167
# BB#172:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	200(%rsp), %r8
	movq	%r8, %r12
	leaq	208(%rsp), %rbx
	leaq	280(%rsp), %rsi
	.align	16, 0x90
.LBB5_173:                              # %.preheader469
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_181 Depth 3
	movsd	(%rbx), %xmm1
	movsd	200(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_180
# BB#174:                               #   in Loop: Header=BB5_173 Depth=2
	movq	%rbx, %rdx
	subq	%r8, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_176
# BB#175:                               #   in Loop: Header=BB5_173 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r8, %rsi
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	128(%rsp), %xmm1        # 8-byte Reload
	leaq	200(%rsp), %r8
	leaq	280(%rsp), %rsi
.LBB5_176:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i134
                                        #   in Loop: Header=BB5_173 Depth=2
	movsd	%xmm1, 200(%rsp)
	jmp	.LBB5_183
	.align	16, 0x90
.LBB5_180:                              #   in Loop: Header=BB5_173 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_182
	.align	16, 0x90
.LBB5_181:                              # %.lr.ph.i.i10.i.i.i139
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
	ja	.LBB5_181
.LBB5_182:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i141
                                        #   in Loop: Header=BB5_173 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_183:                              # %.backedge.i7.i.i.i136
                                        #   in Loop: Header=BB5_173 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rsi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_173
# BB#184:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	216(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	224(%rsp), %xmm0
	addsd	232(%rsp), %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp46:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp47:
# BB#185:                               # %_ZNSolsEd.exit143
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp48:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp49:
# BB#186:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
                                        #   in Loop: Header=BB5_9 Depth=1
	addq	$8, 144(%rsp)           # 8-byte Folded Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_187:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_188 Depth 3
                                        #         Child Loop BB5_189 Depth 4
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_188:                              #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_187 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_189 Depth 4
	testq	%r14, %r14
	movl	$0, _ZL13render_output(%rip)
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%r14, %rcx
	movl	$0, %edx
	je	.LBB5_190
	.align	16, 0x90
.LBB5_189:                              # %.lr.ph.i.i.i.i149
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_187 Depth=2
                                        #       Parent Loop BB5_188 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	-8(%rax), %esi
	addl	-4(%rax), %edx
	addl	(%rax), %edx
	addl	%esi, %edx
	movl	%edx, _ZL13render_output(%rip)
	addq	$20, %rax
	decq	%rcx
	jne	.LBB5_189
.LBB5_190:                              # %_ZZ4mainENK3$_4clEv.exit.i.i
                                        #   in Loop: Header=BB5_188 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	jl	.LBB5_188
# BB#191:                               #   in Loop: Header=BB5_187 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 200(%rsp,%r12,8)
	incq	%r12
	cmpq	$10, %r12
	jne	.LBB5_187
# BB#192:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	200(%rsp), %r8
	movq	%r8, %r12
	leaq	208(%rsp), %rbx
	leaq	280(%rsp), %rsi
	.align	16, 0x90
.LBB5_193:                              # %.preheader468
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_212 Depth 3
	movsd	(%rbx), %xmm1
	movsd	200(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_211
# BB#194:                               #   in Loop: Header=BB5_193 Depth=2
	movq	%rbx, %rdx
	subq	%r8, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_196
# BB#195:                               #   in Loop: Header=BB5_193 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r8, %rsi
	movsd	%xmm1, 144(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	144(%rsp), %xmm1        # 8-byte Reload
	leaq	200(%rsp), %r8
	leaq	280(%rsp), %rsi
.LBB5_196:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i156
                                        #   in Loop: Header=BB5_193 Depth=2
	movsd	%xmm1, 200(%rsp)
	jmp	.LBB5_197
	.align	16, 0x90
.LBB5_211:                              #   in Loop: Header=BB5_193 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_213
	.align	16, 0x90
.LBB5_212:                              # %.lr.ph.i.i10.i.i.i161
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_193 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_212
.LBB5_213:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i163
                                        #   in Loop: Header=BB5_193 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_197:                              # %.backedge.i7.i.i.i158
                                        #   in Loop: Header=BB5_193 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rsi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_193
# BB#198:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	216(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	224(%rsp), %xmm0
	addsd	232(%rsp), %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp50:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp51:
# BB#199:                               # %_ZNSolsEd.exit165
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp52:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp53:
# BB#200:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB5_201:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_202 Depth 3
                                        #         Child Loop BB5_203 Depth 4
	movq	%rax, 144(%rsp)         # 8-byte Spill
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
	movq	%r13, %rcx
	movq	%rbp, %rdx
	movq	%rbp, %r12
	movq	%r14, %rsi
	movl	$0, %edi
	je	.LBB5_204
	.align	16, 0x90
.LBB5_203:                              # %.lr.ph.i.i.i.i173
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
	movq	%r12, %rbp
	jl	.LBB5_202
# BB#205:                               #   in Loop: Header=BB5_201 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movq	144(%rsp), %rax         # 8-byte Reload
	movsd	%xmm0, 200(%rsp,%rax,8)
	incq	%rax
	cmpq	$10, %rax
	jne	.LBB5_201
# BB#206:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	200(%rsp), %r8
	movq	%r8, %r12
	leaq	208(%rsp), %rbx
	leaq	280(%rsp), %rsi
	.align	16, 0x90
.LBB5_207:                              # %.preheader467
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_215 Depth 3
	movsd	(%rbx), %xmm1
	movsd	200(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_214
# BB#208:                               #   in Loop: Header=BB5_207 Depth=2
	movq	%rbx, %rdx
	subq	%r8, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_210
# BB#209:                               #   in Loop: Header=BB5_207 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r8, %rsi
	movsd	%xmm1, 144(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	144(%rsp), %xmm1        # 8-byte Reload
	leaq	200(%rsp), %r8
	leaq	280(%rsp), %rsi
.LBB5_210:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i180
                                        #   in Loop: Header=BB5_207 Depth=2
	movsd	%xmm1, 200(%rsp)
	jmp	.LBB5_217
	.align	16, 0x90
.LBB5_214:                              #   in Loop: Header=BB5_207 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_216
	.align	16, 0x90
.LBB5_215:                              # %.lr.ph.i.i10.i.i.i185
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
	ja	.LBB5_215
.LBB5_216:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i187
                                        #   in Loop: Header=BB5_207 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_217:                              # %.backedge.i7.i.i.i182
                                        #   in Loop: Header=BB5_207 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rsi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_207
# BB#218:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	216(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	224(%rsp), %xmm0
	addsd	232(%rsp), %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp54:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp55:
# BB#219:                               # %_ZNSolsEd.exit189
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp56:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp57:
# BB#220:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB5_221:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_222 Depth 3
                                        #         Child Loop BB5_223 Depth 4
	movq	%rax, 144(%rsp)         # 8-byte Spill
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, measure_start(%rip)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_222:                              #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_221 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_223 Depth 4
	testq	%r14, %r14
	movl	$0, _ZL13render_output(%rip)
	movq	%rbp, %rax
	movq	%rbp, %r12
	movq	%r15, %rcx
	movq	%r13, %rdx
	movq	%r14, %rsi
	movl	$0, %edi
	je	.LBB5_224
	.align	16, 0x90
.LBB5_223:                              # %.lr.ph.i.i.i.i197
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_221 Depth=2
                                        #       Parent Loop BB5_222 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	(%rax), %ebp
	addl	(%rcx), %edi
	addl	(%rdx), %edi
	addl	%ebp, %edi
	movl	%edi, _ZL13render_output(%rip)
	addq	$4, %rdx
	addq	$4, %rcx
	incq	%rax
	decq	%rsi
	jne	.LBB5_223
.LBB5_224:                              # %_ZZ4mainENK3$_6clEv.exit.i.i
                                        #   in Loop: Header=BB5_222 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	movq	%r12, %rbp
	jl	.LBB5_222
# BB#225:                               #   in Loop: Header=BB5_221 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movq	144(%rsp), %rax         # 8-byte Reload
	movsd	%xmm0, 200(%rsp,%rax,8)
	incq	%rax
	cmpq	$10, %rax
	jne	.LBB5_221
# BB#226:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	200(%rsp), %r8
	movq	%r8, %r12
	leaq	208(%rsp), %rbx
	leaq	280(%rsp), %rsi
	.align	16, 0x90
.LBB5_227:                              # %.preheader466
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_246 Depth 3
	movsd	(%rbx), %xmm1
	movsd	200(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_245
# BB#228:                               #   in Loop: Header=BB5_227 Depth=2
	movq	%rbx, %rdx
	subq	%r8, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_230
# BB#229:                               #   in Loop: Header=BB5_227 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r8, %rsi
	movsd	%xmm1, 144(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	144(%rsp), %xmm1        # 8-byte Reload
	leaq	200(%rsp), %r8
	leaq	280(%rsp), %rsi
.LBB5_230:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i204
                                        #   in Loop: Header=BB5_227 Depth=2
	movsd	%xmm1, 200(%rsp)
	jmp	.LBB5_231
	.align	16, 0x90
.LBB5_245:                              #   in Loop: Header=BB5_227 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_247
	.align	16, 0x90
.LBB5_246:                              # %.lr.ph.i.i10.i.i.i209
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_227 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm0, (%rax)
	movsd	-16(%rax), %xmm0
	movq	%rax, %rdx
	addq	$-16, %rdx
	ucomisd	%xmm1, %xmm0
	movq	%rcx, %rax
	movq	%rdx, %rcx
	ja	.LBB5_246
.LBB5_247:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i211
                                        #   in Loop: Header=BB5_227 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_231:                              # %.backedge.i7.i.i.i206
                                        #   in Loop: Header=BB5_227 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rsi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_227
# BB#232:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	216(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	224(%rsp), %xmm0
	addsd	232(%rsp), %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp58:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp59:
# BB#233:                               # %_ZNSolsEd.exit213
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp60:
	movl	$.L.str2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp61:
# BB#234:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB5_235:                              #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_236 Depth 3
                                        #         Child Loop BB5_237 Depth 4
	movq	%rax, 144(%rsp)         # 8-byte Spill
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
	movq	%rbp, %rax
	movq	%rbp, %r12
	movq	%r15, %rcx
	movq	%r13, %rdx
	movq	%r14, %rsi
	movl	$0, %edi
	je	.LBB5_238
	.align	16, 0x90
.LBB5_237:                              # %.lr.ph.i.i.i.i221
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_235 Depth=2
                                        #       Parent Loop BB5_236 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	(%rax), %ebp
	addl	(%rcx), %edi
	addl	(%rdx), %edi
	addl	%ebp, %edi
	movl	%edi, _ZL13render_output(%rip)
	addq	$4, %rdx
	addq	$4, %rcx
	incq	%rax
	decq	%rsi
	jne	.LBB5_237
.LBB5_238:                              # %_ZZ4mainENK3$_7clEv.exit.i.i
                                        #   in Loop: Header=BB5_236 Depth=3
	incl	%ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	measure_start(%rip), %rax
	cmpq	$200000000, %rax        # imm = 0xBEBC200
	movq	%r12, %rbp
	jl	.LBB5_236
# BB#239:                               #   in Loop: Header=BB5_235 Depth=2
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm1, %xmm0
	movq	144(%rsp), %rax         # 8-byte Reload
	movsd	%xmm0, 200(%rsp,%rax,8)
	incq	%rax
	cmpq	$10, %rax
	jne	.LBB5_235
# BB#240:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	200(%rsp), %r8
	movq	%r8, %r12
	leaq	208(%rsp), %rbx
	leaq	280(%rsp), %rsi
	.align	16, 0x90
.LBB5_241:                              # %.preheader
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_249 Depth 3
	movsd	(%rbx), %xmm1
	movsd	200(%rsp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_248
# BB#242:                               #   in Loop: Header=BB5_241 Depth=2
	movq	%rbx, %rdx
	subq	%r8, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB5_244
# BB#243:                               #   in Loop: Header=BB5_241 Depth=2
	movl	$2, %ecx
	subq	%rax, %rcx
	leaq	(%r12,%rcx,8), %rdi
	movq	%r8, %rsi
	movsd	%xmm1, 144(%rsp)        # 8-byte Spill
	callq	memmove
	movsd	144(%rsp), %xmm1        # 8-byte Reload
	leaq	200(%rsp), %r8
	leaq	280(%rsp), %rsi
.LBB5_244:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i5.i.i.i228
                                        #   in Loop: Header=BB5_241 Depth=2
	movsd	%xmm1, 200(%rsp)
	jmp	.LBB5_251
	.align	16, 0x90
.LBB5_248:                              #   in Loop: Header=BB5_241 Depth=2
	movsd	(%r12), %xmm0
	ucomisd	%xmm1, %xmm0
	movq	%rbx, %rax
	movq	%r12, %rcx
	jbe	.LBB5_250
	.align	16, 0x90
.LBB5_249:                              # %.lr.ph.i.i10.i.i.i233
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
	ja	.LBB5_249
.LBB5_250:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i235
                                        #   in Loop: Header=BB5_241 Depth=2
	movsd	%xmm1, (%rax)
.LBB5_251:                              # %.backedge.i7.i.i.i230
                                        #   in Loop: Header=BB5_241 Depth=2
	movq	%r12, %rax
	addq	$16, %rax
	cmpq	%rsi, %rax
	movq	%rbx, %r12
	movq	%rax, %rbx
	jne	.LBB5_241
# BB#252:                               #   in Loop: Header=BB5_9 Depth=1
	movsd	216(%rsp), %xmm0
	addsd	.LCPI5_6, %xmm0
	addsd	224(%rsp), %xmm0
	addsd	232(%rsp), %xmm0
	addsd	240(%rsp), %xmm0
	addsd	248(%rsp), %xmm0
	addsd	256(%rsp), %xmm0
	divsd	.LCPI5_1(%rip), %xmm0
	divsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI5_4(%rip), %xmm0
.Ltmp62:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
.Ltmp63:
# BB#253:                               # %_ZNSolsEd.exit237
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB5_254
.LBB5_255:                              # %.noexc238
                                        #   in Loop: Header=BB5_9 Depth=1
	cmpb	$0, 56(%rbx)
	je	.LBB5_257
# BB#256:                               #   in Loop: Header=BB5_9 Depth=1
	movb	67(%rbx), %al
	jmp	.LBB5_259
	.align	16, 0x90
.LBB5_257:                              #   in Loop: Header=BB5_9 Depth=1
.Ltmp64:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp65:
# BB#258:                               # %.noexc241
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	(%rbx), %rax
	movq	48(%rax), %rax
.Ltmp66:
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*%rax
.Ltmp67:
.LBB5_259:                              # %.noexc71
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp68:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
.Ltmp69:
# BB#260:                               # %.noexc72
                                        #   in Loop: Header=BB5_9 Depth=1
.Ltmp70:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp71:
# BB#261:                               # %_ZNSolsEPFRSoS_E.exit
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_263
# BB#262:                               #   in Loop: Header=BB5_9 Depth=1
	callq	_ZdlPv
.LBB5_263:                              # %_ZNSt6vectorI14plain_particleSaIS0_EED2Ev.exit69
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	136(%rsp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB5_265
# BB#264:                               #   in Loop: Header=BB5_9 Depth=1
	callq	_ZdlPv
.LBB5_265:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit68
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB5_267
# BB#266:                               #   in Loop: Header=BB5_9 Depth=1
	callq	_ZdlPv
.LBB5_267:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit67
                                        #   in Loop: Header=BB5_9 Depth=1
	testq	%r13, %r13
	je	.LBB5_269
# BB#268:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB5_269:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit66
                                        #   in Loop: Header=BB5_9 Depth=1
	testq	%r15, %r15
	je	.LBB5_271
# BB#270:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB5_271:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit65
                                        #   in Loop: Header=BB5_9 Depth=1
	testq	%rbp, %rbp
	je	.LBB5_273
# BB#272:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%rbp, %rdi
	callq	_ZdlPv
.LBB5_273:                              # %_ZNSt6vectorIcSaIcEED2Ev.exit64
                                        #   in Loop: Header=BB5_9 Depth=1
	addq	%r14, %r14
	leaq	(%r14,%r14,4), %r14
	cmpq	$10000001, %r14         # imm = 0x989681
	leaq	200(%rsp), %rdi
	movq	%rdi, %r9
	jb	.LBB5_9
	jmp	.LBB5_274
.LBB5_254:                              #   in Loop: Header=BB5_9 Depth=1
.Ltmp73:
	movq	16(%rsp), %rbx          # 8-byte Reload
	callq	_ZSt16__throw_bad_castv
.Ltmp74:
	jmp	.LBB5_255
.LBB5_100:                              # %.nonloopexit.nonloopexit
.Ltmp75:
	movq	%rbp, %r14
	movq	%rax, %rbp
	jmp	.LBB5_101
.LBB5_274:
	xorl	%eax, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_97:                               # %.loopexit
.Ltmp25:
	jmp	.LBB5_98
.LBB5_99:                               # %.nonloopexit.loopexit
.Ltmp72:
.LBB5_98:                               # %.nonloopexit
	movq	%rbp, %r14
	movq	%rax, %rbp
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB5_101:                              # %.nonloopexit
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_103
# BB#102:
	callq	_ZdlPv
.LBB5_103:                              # %_ZNSt6vectorI14plain_particleSaIS0_EED2Ev.exit
	movq	136(%rsp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB5_105
# BB#104:
	callq	_ZdlPv
.LBB5_105:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	testq	%rbx, %rbx
	je	.LBB5_107
# BB#106:
	movq	%rbx, %rdi
	callq	_ZdlPv
.LBB5_107:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit60
	testq	%r13, %r13
	je	.LBB5_109
# BB#108:
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB5_109:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit61
	testq	%r15, %r15
	je	.LBB5_111
# BB#110:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB5_111:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit62
	movq	%r14, %rdi
	testq	%rdi, %rdi
	je	.LBB5_113
# BB#112:
	callq	_ZdlPv
.LBB5_113:                              # %_ZNSt6vectorIcSaIcEED2Ev.exit
	movq	%rbp, %rdi
	callq	_Unwind_Resume
.LBB5_275:
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
	.type	_GLOBAL__sub_I_dod_perf.cpp,@function
_GLOBAL__sub_I_dod_perf.cpp:            # @_GLOBAL__sub_I_dod_perf.cpp
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
	.size	_GLOBAL__sub_I_dod_perf.cpp, .Ltmp105-_GLOBAL__sub_I_dod_perf.cpp
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
	.quad	_GLOBAL__sub_I_dod_perf.cpp

	.ident	"clang version 3.6.2 (tags/RELEASE_362/final)"
	.section	".note.GNU-stack","",@progbits
