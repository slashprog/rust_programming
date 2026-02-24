	.build_version macos, 11, 0
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZN16_01a_expressions4main17h343c850215a5a06cE
	.globl	__ZN16_01a_expressions4main17h343c850215a5a06cE
	.p2align	2
__ZN16_01a_expressions4main17h343c850215a5a06cE:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	add	x0, sp, #12
	mov	w8, #10
	str	w8, [sp, #12]
	add	x8, sp, #40
	bl	__ZN4core3fmt2rt8Argument11new_display17h84d99a44915b452aE
	ldur	q0, [sp, #40]
	add	x1, sp, #16
	str	q0, [sp, #16]
	adrp	x0, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.0@PAGE
	add	x0, x0, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.0@PAGEOFF
	bl	__ZN4core3fmt9Arguments3new17hbc03532d85dbe498E
	bl	__ZN3std2io5stdio6_print17h171e44f9366e5f4bE
	stur	wzr, [x29, #-40]
	b	LBB0_1
LBB0_1:
	ldur	w8, [x29, #-40]
	adds	w8, w8, #1
	str	w8, [sp, #8]
	cset	w8, vs
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-40]
	ldur	w8, [x29, #-40]
	subs	w8, w8, #8
	b.eq	LBB0_4
	b	LBB0_1
LBB0_3:
	adrp	x0, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.2@PAGE
	add	x0, x0, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.2@PAGEOFF
	bl	__ZN4core9panicking11panic_const24panic_const_add_overflow17h176493eeac452e6fE
LBB0_4:
	ldur	w9, [x29, #-40]
	mov	w10, #2
	mov	w8, #2
	smull	x8, w9, w8
	asr	x8, x8, #32
	mul	w9, w9, w10
	str	w9, [sp, #4]
	subs	w8, w8, w9, asr #31
	b.ne	LBB0_6
	b	LBB0_5
LBB0_5:
	ldr	w8, [sp, #4]
	sub	x0, x29, #36
	stur	w8, [x29, #-36]
	sub	x8, x29, #16
	bl	__ZN4core3fmt2rt8Argument11new_display17h84d99a44915b452aE
	ldur	q0, [x29, #-16]
	sub	x1, x29, #32
	stur	q0, [x29, #-32]
	adrp	x0, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.4@PAGE
	add	x0, x0, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.4@PAGEOFF
	bl	__ZN4core3fmt9Arguments3new17hbc03532d85dbe498E
	bl	__ZN3std2io5stdio6_print17h171e44f9366e5f4bE
	b	LBB0_7
LBB0_6:
	adrp	x0, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.3@PAGE
	add	x0, x0, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.3@PAGEOFF
	bl	__ZN4core9panicking11panic_const24panic_const_mul_overflow17h6045174b652649e1E
LBB0_7:
	b	LBB0_8
LBB0_8:
	b	LBB0_9
LBB0_9:
	b	LBB0_10
LBB0_10:
	adrp	x0, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.6@PAGE
	add	x0, x0, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.6@PAGEOFF
	mov	w8, #18
	mov	x1, x8
	bl	__ZN4core3fmt9Arguments8from_str17h868314813fa22165E
	bl	__ZN3std2io5stdio6_print17h171e44f9366e5f4bE
	b	LBB0_11
LBB0_11:
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.private_extern	__ZN3std2rt10lang_start17h2064dbfa71a616b9E
	.globl	__ZN3std2rt10lang_start17h2064dbfa71a616b9E
	.p2align	2
__ZN3std2rt10lang_start17h2064dbfa71a616b9E:
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
	adrp	x1, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.8@PAGE
	add	x1, x1, l_anon.53b99b26b2b50289d4902e1ff5f52bcf.8@PAGEOFF
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
__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17haa1548905ae3649eE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN3std3sys9backtrace28__rust_begin_short_backtrace17h903e7baf4c1552feE
	bl	__ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h57efe77860d4f8e4E
	and	w0, w0, #0xff
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN3std3sys9backtrace28__rust_begin_short_backtrace17h903e7baf4c1552feE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN4core3ops8function6FnOnce9call_once17h6a192d247549cee2E
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
__ZN4core3fmt2rt8Argument11new_display17h84d99a44915b452aE:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	adrp	x9, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha4620fce5b26d59cE@GOTPAGE
	ldr	x9, [x9, __ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha4620fce5b26d59cE@GOTPAGEOFF]
	str	x9, [sp, #8]
	ldr	q0, [sp]
	str	q0, [x8]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt9Arguments3new17hbc03532d85dbe498E:
	.cfi_startproc
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt9Arguments8from_str17h868314813fa22165E:
	.cfi_startproc
	lsl	x8, x1, #1
	orr	x1, x8, #0x1
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h55b8b896619af47bE:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN4core3ops8function6FnOnce9call_once17h43f364f2cb914ed4E
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce9call_once17h43f364f2cb914ed4E:
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
Ltmp1:
	bl	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17haa1548905ae3649eE
	str	w0, [sp, #12]
Ltmp2:
	b	LBB8_3
LBB8_1:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
LBB8_2:
Ltmp3:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-8]
	b	LBB8_1
LBB8_3:
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
GCC_except_table8:
Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp1-Lfunc_begin0
	.uleb128 Ltmp2-Ltmp1
	.uleb128 Ltmp3-Lfunc_begin0
	.byte	0
	.uleb128 Ltmp2-Lfunc_begin0
	.uleb128 Lfunc_end0-Ltmp2
	.byte	0
	.byte	0
Lcst_end0:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core3ops8function6FnOnce9call_once17h6a192d247549cee2E:
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
__ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h57efe77860d4f8e4E:
	.cfi_startproc
	mov	w0, #0
	ret
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
	adrp	x0, __ZN16_01a_expressions4main17h343c850215a5a06cE@PAGE
	add	x0, x0, __ZN16_01a_expressions4main17h343c850215a5a06cE@PAGEOFF
	mov	w3, #0
	bl	__ZN3std2rt10lang_start17h2064dbfa71a616b9E
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
l_anon.53b99b26b2b50289d4902e1ff5f52bcf.0:
	.asciz	"\023The value of x is: \300\001\n"

l_anon.53b99b26b2b50289d4902e1ff5f52bcf.1:
	.asciz	"01a_expressions.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.53b99b26b2b50289d4902e1ff5f52bcf.2:
	.quad	l_anon.53b99b26b2b50289d4902e1ff5f52bcf.1
	.asciz	"\022\000\000\000\000\000\000\000\n\000\000\000\t\000\000"

	.p2align	3, 0x0
l_anon.53b99b26b2b50289d4902e1ff5f52bcf.3:
	.quad	l_anon.53b99b26b2b50289d4902e1ff5f52bcf.1
	.asciz	"\022\000\000\000\000\000\000\000\f\000\000\000\023\000\000"

	.section	__TEXT,__cstring,cstring_literals
l_anon.53b99b26b2b50289d4902e1ff5f52bcf.4:
	.asciz	"\023The value of z is: \300\001\n"

	.section	__TEXT,__const
l_anon.53b99b26b2b50289d4902e1ff5f52bcf.5:
	.ascii	"You are a senior.\n"

l_anon.53b99b26b2b50289d4902e1ff5f52bcf.6:
	.ascii	"You are an adult.\n"

l_anon.53b99b26b2b50289d4902e1ff5f52bcf.7:
	.ascii	"You are a minor.\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.53b99b26b2b50289d4902e1ff5f52bcf.8:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h55b8b896619af47bE
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17haa1548905ae3649eE
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17haa1548905ae3649eE

.subsections_via_symbols
