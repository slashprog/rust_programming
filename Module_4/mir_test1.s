	.build_version macos, 11, 0
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZN3std2rt10lang_start17h501752c76b5f7a75E
	.globl	__ZN3std2rt10lang_start17h501752c76b5f7a75E
	.p2align	2
__ZN3std2rt10lang_start17h501752c76b5f7a75E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	str	x1, [sp, #8]
	mov	x0, x2
	ldr	x2, [sp, #8]
	str	x0, [sp, #16]
	mov	x4, x3
	ldr	x3, [sp, #16]
	sub	x0, x29, #8
	stur	x8, [x29, #-8]
	adrp	x1, l_anon.0df5f3f80e8dd9fa27378e6f61dea37c.0@PAGE
	add	x1, x1, l_anon.0df5f3f80e8dd9fa27378e6f61dea37c.0@PAGEOFF
	bl	__ZN3std2rt19lang_start_internal17h48672da3ca81ba76E
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hee8991285a327accE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN3std3sys9backtrace28__rust_begin_short_backtrace17hee4c192fa2ad825bE
	bl	__ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h42def5ee669570c3E
	and	w0, w0, #0xff
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN3std3sys9backtrace28__rust_begin_short_backtrace17hee4c192fa2ad825bE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN4core3ops8function6FnOnce9call_once17h7611f1a370bae645E
	; InlineAsm Start
	; InlineAsm End
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h7604e4ed524fc213E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN4core3ops8function6FnOnce9call_once17h7c456c98cb28db40E
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce9call_once17h7611f1a370bae645E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	blr	x0
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce9call_once17h7c456c98cb28db40E:
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception0
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	add	x0, sp, #16
	str	x8, [sp, #16]
Ltmp0:
	bl	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hee8991285a327accE
	str	w0, [sp, #12]
Ltmp1:
	b	LBB5_3
LBB5_1:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
LBB5_2:
Ltmp2:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-8]
	b	LBB5_1
LBB5_3:
	ldr	w0, [sp, #12]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0
	.uleb128 Ltmp1-Ltmp0
	.uleb128 Ltmp2-Lfunc_begin0
	.byte	0
	.uleb128 Ltmp1-Lfunc_begin0
	.uleb128 Lfunc_end0-Ltmp1
	.byte	0
	.byte	0
Lcst_end0:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h42def5ee669570c3E:
	.cfi_startproc
	mov	w0, #0
	ret
	.cfi_endproc

	.private_extern	__ZN9mir_test14main17h39e308af67748f4dE
	.globl	__ZN9mir_test14main17h39e308af67748f4dE
	.p2align	2
__ZN9mir_test14main17h39e308af67748f4dE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	mov	w8, #100
	adds	w8, w8, #200
	cset	w8, vs
	tbnz	w8, #0, LBB7_2
	b	LBB7_1
LBB7_1:
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB7_2:
	.cfi_restore_state
	adrp	x0, l_anon.0df5f3f80e8dd9fa27378e6f61dea37c.2@PAGE
	add	x0, x0, l_anon.0df5f3f80e8dd9fa27378e6f61dea37c.2@PAGEOFF
	bl	__ZN4core9panicking11panic_const24panic_const_add_overflow17h176493eeac452e6fE
	.cfi_endproc

	.globl	_main
	.p2align	2
_main:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x2, x1
	mov	x8, x0
	sxtw	x1, w8
	adrp	x0, __ZN9mir_test14main17h39e308af67748f4dE@PAGE
	add	x0, x0, __ZN9mir_test14main17h39e308af67748f4dE@PAGEOFF
	mov	w3, #0
	bl	__ZN3std2rt10lang_start17h501752c76b5f7a75E
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.0df5f3f80e8dd9fa27378e6f61dea37c.0:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h7604e4ed524fc213E
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hee8991285a327accE
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hee8991285a327accE

	.section	__TEXT,__cstring,cstring_literals
l_anon.0df5f3f80e8dd9fa27378e6f61dea37c.1:
	.asciz	"mir_test1.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.0df5f3f80e8dd9fa27378e6f61dea37c.2:
	.quad	l_anon.0df5f3f80e8dd9fa27378e6f61dea37c.1
	.asciz	"\f\000\000\000\000\000\000\000\005\000\000\000\r\000\000"

.subsections_via_symbols
