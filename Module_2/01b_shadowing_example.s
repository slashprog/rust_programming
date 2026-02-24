	.build_version macos, 11, 0
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN102_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h787aaeb447abea13E:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x0, [sp, #24]
	bl	__ZN4core3str11validations23next_code_point_reverse17hece45715dfbd4e37E
	stur	w0, [x29, #-24]
	stur	w1, [x29, #-20]
	ldur	w8, [x29, #-24]
	mov	x0, x8
	mov	x8, x0
	tbz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #20]
	b	LBB0_4
LBB0_2:
	ldr	x8, [sp, #24]
	mov	w9, #1114112
	stur	w9, [x29, #-44]
	mov	x9, x8
	add	x9, x9, #16
	stur	x9, [x29, #-40]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	adrp	x9, l_anon.537bde3dfe4d16e36ac4f849a705fea8.0@PAGE
	adrp	x8, l_anon.537bde3dfe4d16e36ac4f849a705fea8.0@PAGE
	add	x8, x8, l_anon.537bde3dfe4d16e36ac4f849a705fea8.0@PAGEOFF
	ldr	x9, [x9, l_anon.537bde3dfe4d16e36ac4f849a705fea8.0@PAGEOFF]
	ldr	w8, [x8, #8]
	str	x9, [sp, #32]
	str	w8, [sp, #40]
	b	LBB0_3
LBB0_3:
	ldr	x0, [sp, #32]
	ldr	w1, [sp, #40]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB0_4:
	.cfi_restore_state
	ldr	w0, [sp, #20]
	adrp	x1, l_anon.537bde3dfe4d16e36ac4f849a705fea8.2@PAGE
	add	x1, x1, l_anon.537bde3dfe4d16e36ac4f849a705fea8.2@PAGEOFF
	bl	__ZN4core4char7convert18from_u32_unchecked18precondition_check17he86840445e40c122E
	b	LBB0_5
LBB0_5:
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #20]
	stur	w9, [x29, #-44]
	mov	x9, x8
	add	x9, x9, #16
	stur	x9, [x29, #-40]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	ldur	w8, [x29, #-44]
	str	w8, [sp, #16]
	ldur	x8, [x29, #-40]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-32]
	ldr	x0, [x8, #8]
	ldur	x8, [x29, #-32]
	ldr	x1, [x8]
	bl	__ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h2d8ee6837f0d446fE
	ldr	x9, [sp, #8]
	ldr	w8, [sp, #16]
	add	x9, x9, x0
	str	x9, [sp, #32]
	str	w8, [sp, #40]
	b	LBB0_3
	.cfi_endproc

	.p2align	2
__ZN104_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h934c334ca737aef2E:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #32]
	mov	x8, x0
	str	x8, [sp, #40]
	ldr	x0, [x8, #24]
	add	x9, x8, #16
	stur	x9, [x29, #-32]
	ldr	x1, [x8, #16]
	bl	__ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h2d8ee6837f0d446fE
	mov	x8, x0
	ldur	x0, [x29, #-32]
	stur	x8, [x29, #-24]
	bl	__ZN102_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h787aaeb447abea13E
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-8]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #272, lsl #12
	cset	x8, ne
	tbz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-16]
	str	x9, [sp, #8]
	ldur	w9, [x29, #-8]
	str	w9, [sp, #20]
	ldr	x0, [x8, #24]
	ldr	x1, [x8, #16]
	bl	__ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h2d8ee6837f0d446fE
	ldur	x9, [x29, #-24]
	ldr	x8, [sp, #40]
	ldr	w1, [sp, #20]
	subs	x9, x9, x0
	str	x9, [sp, #24]
	add	x0, x8, #40
	bl	__ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h52e527808362b7f9E
	tbnz	w0, #0, LBB1_4
	b	LBB1_3
LBB1_2:
	ldr	x9, [sp, #32]
	mov	w8, #2
	str	x8, [x9]
	b	LBB1_6
LBB1_3:
	ldr	x9, [sp, #32]
	ldr	x10, [sp, #8]
	ldr	x8, [sp, #24]
	add	x8, x10, x8
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	mov	w8, #1
	str	x8, [x9]
	b	LBB1_5
LBB1_4:
	ldr	x8, [sp, #32]
	ldr	x10, [sp, #8]
	ldr	x9, [sp, #24]
	add	x9, x10, x9
	str	x10, [x8, #8]
	str	x9, [x8, #16]
	str	xzr, [x8]
	b	LBB1_5
LBB1_5:
	b	LBB1_6
LBB1_6:
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h778158d6a1404fd3E:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	b	LBB2_1
LBB2_1:
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #8]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	sturb	w8, [x29, #-17]
	b	LBB2_2
LBB2_2:
	ldurb	w8, [x29, #-17]
	tbnz	w8, #0, LBB2_4
	b	LBB2_3
LBB2_3:
	b	LBB2_5
LBB2_4:
	str	xzr, [sp, #16]
	b	LBB2_11
LBB2_5:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-8]
	b	LBB2_6
LBB2_6:
	b	LBB2_7
LBB2_7:
	mov	w8, #1
	mov	x0, x8
	adrp	x1, l_anon.537bde3dfe4d16e36ac4f849a705fea8.4@PAGE
	add	x1, x1, l_anon.537bde3dfe4d16e36ac4f849a705fea8.4@PAGEOFF
	bl	__ZN4core3num23_$LT$impl$u20$isize$GT$13unchecked_neg18precondition_check17h682fc63dd1163fc6E
	b	LBB2_8
LBB2_8:
	ldur	x8, [x29, #-8]
	subs	x8, x8, #1
	stur	x8, [x29, #-8]
	b	LBB2_9
LBB2_9:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	x9, [x8, #8]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-16]
	b	LBB2_10
LBB2_10:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	b	LBB2_11
LBB2_11:
	ldr	x0, [sp, #16]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN106_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..ReverseSearcher$GT$16next_reject_back17hf0fcb7a9952227c1E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN4core3str7pattern15ReverseSearcher16next_reject_back17h960402acb9d3489aE
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.private_extern	__ZN22_01b_shadowing_example4main17ha17493ca427a9998E
	.globl	__ZN22_01b_shadowing_example4main17ha17493ca427a9998E
	.p2align	2
__ZN22_01b_shadowing_example4main17ha17493ca427a9998E:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.5@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.5@PAGEOFF
	mov	w8, #28
	mov	x1, x8
	bl	__ZN4core3str21_$LT$impl$u20$str$GT$4trim17hf77c0b7a3068e29eE
	bl	__ZN4core3str21_$LT$impl$u20$str$GT$3len17h3e1047fe09c0af70E
	mov	x8, x0
	add	x0, sp, #8
	str	x8, [sp, #8]
	sub	x8, x29, #16
	bl	__ZN4core3fmt2rt8Argument11new_display17ha742fedbcce86ceeE
	ldur	q0, [x29, #-16]
	add	x1, sp, #16
	str	q0, [sp, #16]
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.6@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.6@PAGEOFF
	bl	__ZN4core3fmt9Arguments3new17h691d840fbb39134aE
	bl	__ZN3std2io5stdio6_print17h171e44f9366e5f4bE
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.private_extern	__ZN3std2rt10lang_start17h9a8bab96b2119203E
	.globl	__ZN3std2rt10lang_start17h9a8bab96b2119203E
	.p2align	2
__ZN3std2rt10lang_start17h9a8bab96b2119203E:
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
	adrp	x1, l_anon.537bde3dfe4d16e36ac4f849a705fea8.7@PAGE
	add	x1, x1, l_anon.537bde3dfe4d16e36ac4f849a705fea8.7@PAGEOFF
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
__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd41df88a7ea6572aE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN3std3sys9backtrace28__rust_begin_short_backtrace17h962554694f435408E
	bl	__ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h5dff39977f7dff8aE
	and	w0, w0, #0xff
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN3std3sys9backtrace28__rust_begin_short_backtrace17h962554694f435408E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN4core3ops8function6FnOnce9call_once17h5b5b9e186ae2483aE
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
__ZN49_$LT$F$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h8c8385805053b595E:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]
	add	x8, sp, #24
	str	x8, [sp, #16]
	bl	__ZN95_$LT$core..str..pattern..MultiCharEqPattern$LT$C$GT$$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h3c9d66e59e756c79E
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	mov	w8, #40
	mov	x2, x8
	bl	_memcpy
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core10intrinsics9cold_path17hba94cc452cc02579E:
	.cfi_startproc
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt2rt8Argument11new_display17ha742fedbcce86ceeE:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	adrp	x9, __ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17heae098f376c58bb2E@GOTPAGE
	ldr	x9, [x9, __ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17heae098f376c58bb2E@GOTPAGEOFF]
	str	x9, [sp, #8]
	ldr	q0, [sp]
	str	q0, [x8]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt9Arguments3new17h691d840fbb39134aE:
	.cfi_startproc
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3num23_$LT$impl$u20$isize$GT$13unchecked_neg18precondition_check17h682fc63dd1163fc6E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x1, [sp, #8]
	mov	x8, #-9223372036854775808
	subs	x8, x0, x8
	b.eq	LBB12_2
	b	LBB12_1
LBB12_1:
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB12_2:
	.cfi_restore_state
	ldr	x3, [sp, #8]
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.8@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.8@PAGEOFF
	mov	w8, #373
	mov	x1, x8
	mov	w8, #0
	and	w2, w8, #0x1
	bl	__ZN4core9panicking18panic_nounwind_fmt17hfedd79672ae387c8E
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function5FnMut8call_mut17h682c2025efc2d581E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w1, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	__ZN4core4char7methods22_$LT$impl$u20$char$GT$13is_whitespace17heab899f1a6c3301cE
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd3600c9702c505ceE:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN4core3ops8function6FnOnce9call_once17he40acf2851d205d1E
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce9call_once17h5b5b9e186ae2483aE:
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
__ZN4core3ops8function6FnOnce9call_once17he40acf2851d205d1E:
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
	bl	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd41df88a7ea6572aE
	str	w0, [sp, #12]
Ltmp2:
	b	LBB16_3
LBB16_1:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
LBB16_2:
Ltmp3:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-8]
	b	LBB16_1
LBB16_3:
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
GCC_except_table16:
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
__ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h2d8ee6837f0d446fE:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	b	LBB17_1
LBB17_1:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	adrp	x2, l_anon.537bde3dfe4d16e36ac4f849a705fea8.9@PAGE
	add	x2, x2, l_anon.537bde3dfe4d16e36ac4f849a705fea8.9@PAGEOFF
	bl	__ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h3a1c2392d91a7717E
	b	LBB17_2
LBB17_2:
	b	LBB17_3
LBB17_3:
	b	LBB17_4
LBB17_4:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	mov	w9, #1
	udiv	x8, x8, x9
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h3a1c2392d91a7717E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x2, [sp, #8]
	subs	x8, x0, x1
	b.hs	LBB18_2
	b	LBB18_1
LBB18_1:
	ldr	x3, [sp, #8]
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.11@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.11@PAGEOFF
	mov	w8, #403
	mov	x1, x8
	mov	w8, #0
	and	w2, w8, #0x1
	bl	__ZN4core9panicking18panic_nounwind_fmt17hfedd79672ae387c8E
LBB18_2:
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3str11validations15next_code_point17hcc6d2684f6d0c0faE:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x0, [sp, #16]
	bl	__ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h98177d3bfa3a9fadE
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	subs	x8, x8, #0
	cset	x8, ne
	tbz	w8, #0, LBB19_2
	b	LBB19_1
LBB19_1:
	ldr	x8, [sp, #40]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	str	w8, [sp, #12]
	subs	w8, w8, #128
	b.lo	LBB19_5
	b	LBB19_4
LBB19_2:
	adrp	x9, l_anon.537bde3dfe4d16e36ac4f849a705fea8.12@PAGE
	adrp	x8, l_anon.537bde3dfe4d16e36ac4f849a705fea8.12@PAGE
	add	x8, x8, l_anon.537bde3dfe4d16e36ac4f849a705fea8.12@PAGEOFF
	ldr	w9, [x9, l_anon.537bde3dfe4d16e36ac4f849a705fea8.12@PAGEOFF]
	ldr	w8, [x8, #4]
	str	w9, [sp, #24]
	str	w8, [sp, #28]
	b	LBB19_3
LBB19_3:
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #28]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB19_4:
	.cfi_restore_state
	ldr	x0, [sp, #16]
	ldr	w8, [sp, #12]
	and	w8, w8, #0x1f
	str	w8, [sp, #8]
	bl	__ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h98177d3bfa3a9fadE
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	cset	x8, ne
	tbnz	w8, #0, LBB19_6
	b	LBB19_7
LBB19_5:
	ldr	w8, [sp, #12]
	str	w8, [sp, #28]
	mov	w8, #1
	str	w8, [sp, #24]
	b	LBB19_3
LBB19_6:
	ldr	w8, [sp, #12]
	ldr	w10, [sp, #8]
	ldur	x9, [x29, #-32]
	ldrb	w9, [x9]
	str	w9, [sp, #4]
	bfi	w9, w10, #6, #26
	stur	w9, [x29, #-20]
	subs	w8, w8, #224
	b.hs	LBB19_10
	b	LBB19_9
LBB19_7:
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.14@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.14@PAGEOFF
	bl	__ZN4core4hint21unreachable_unchecked18precondition_check17hd8fa809e59e3f175E
	b	LBB19_8
LBB19_8:
	brk	#0x1
LBB19_9:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #28]
	mov	w8, #1
	str	w8, [sp, #24]
	b	LBB19_3
LBB19_10:
	ldr	x0, [sp, #16]
	bl	__ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h98177d3bfa3a9fadE
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	x8, ne
	tbz	w8, #0, LBB19_12
	b	LBB19_11
LBB19_11:
	ldr	w8, [sp, #12]
	ldr	w10, [sp, #8]
	ldr	w11, [sp, #4]
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9]
	mov	w12, #63
	and	w11, w11, #0x3f
	and	w9, w9, w12
	orr	w9, w9, w11, lsl #6
	str	w9, [sp]
	orr	w9, w9, w10, lsl #12
	stur	w9, [x29, #-20]
	subs	w8, w8, #240
	b.hs	LBB19_14
	b	LBB19_13
LBB19_12:
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.15@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.15@PAGEOFF
	bl	__ZN4core4hint21unreachable_unchecked18precondition_check17hd8fa809e59e3f175E
	b	LBB19_8
LBB19_13:
	b	LBB19_9
LBB19_14:
	ldr	x0, [sp, #16]
	bl	__ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h98177d3bfa3a9fadE
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	subs	x8, x8, #0
	cset	x8, ne
	tbz	w8, #0, LBB19_16
	b	LBB19_15
LBB19_15:
	ldr	w10, [sp]
	ldr	w9, [sp, #8]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	and	w9, w9, #0x7
	bfi	w8, w10, #6, #26
	orr	w8, w8, w9, lsl #18
	stur	w8, [x29, #-20]
	b	LBB19_13
LBB19_16:
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.16@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.16@PAGEOFF
	bl	__ZN4core4hint21unreachable_unchecked18precondition_check17hd8fa809e59e3f175E
	b	LBB19_8
	.cfi_endproc

	.p2align	2
__ZN4core3str11validations23next_code_point_reverse17hece45715dfbd4e37E:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #32]
	bl	__ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h778158d6a1404fd3E
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	subs	x8, x8, #0
	cset	x8, ne
	tbz	w8, #0, LBB20_2
	b	LBB20_1
LBB20_1:
	ldur	x8, [x29, #-40]
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	str	x8, [sp, #16]
	ldrb	w8, [x8]
	str	w8, [sp, #28]
	subs	w8, w8, #128
	b.lo	LBB20_5
	b	LBB20_4
LBB20_2:
	adrp	x9, l_anon.537bde3dfe4d16e36ac4f849a705fea8.12@PAGE
	adrp	x8, l_anon.537bde3dfe4d16e36ac4f849a705fea8.12@PAGE
	add	x8, x8, l_anon.537bde3dfe4d16e36ac4f849a705fea8.12@PAGEOFF
	ldr	w9, [x9, l_anon.537bde3dfe4d16e36ac4f849a705fea8.12@PAGEOFF]
	ldr	w8, [x8, #4]
	str	w9, [sp, #40]
	str	w8, [sp, #44]
	b	LBB20_3
LBB20_3:
	b	LBB20_19
LBB20_4:
	ldr	x0, [sp, #32]
	bl	__ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h778158d6a1404fd3E
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	cset	x8, ne
	tbnz	w8, #0, LBB20_6
	b	LBB20_7
LBB20_5:
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	str	w8, [sp, #44]
	mov	w8, #1
	str	w8, [sp, #40]
	b	LBB20_3
LBB20_6:
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	str	w8, [sp, #12]
	and	w9, w8, #0x1f
	stur	w9, [x29, #-4]
	sxtb	w8, w8
	adds	w8, w8, #64
	b.lt	LBB20_10
	b	LBB20_9
LBB20_7:
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.17@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.17@PAGEOFF
	bl	__ZN4core4hint21unreachable_unchecked18precondition_check17hd8fa809e59e3f175E
	b	LBB20_8
LBB20_8:
	brk	#0x1
LBB20_9:
	b	LBB20_11
LBB20_10:
	ldr	x0, [sp, #32]
	bl	__ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h778158d6a1404fd3E
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	x8, ne
	tbnz	w8, #0, LBB20_12
	b	LBB20_13
LBB20_11:
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-4]
	bfi	w8, w9, #6, #26
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #44]
	mov	w8, #1
	str	w8, [sp, #40]
	b	LBB20_19
LBB20_12:
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	str	w8, [sp, #8]
	and	w9, w8, #0xf
	stur	w9, [x29, #-4]
	sxtb	w8, w8
	adds	w8, w8, #64
	b.lt	LBB20_15
	b	LBB20_14
LBB20_13:
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.18@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.18@PAGEOFF
	bl	__ZN4core4hint21unreachable_unchecked18precondition_check17hd8fa809e59e3f175E
	b	LBB20_8
LBB20_14:
	b	LBB20_16
LBB20_15:
	ldr	x0, [sp, #32]
	bl	__ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h778158d6a1404fd3E
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	x8, ne
	tbnz	w8, #0, LBB20_17
	b	LBB20_18
LBB20_16:
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-4]
	bfi	w8, w9, #6, #26
	stur	w8, [x29, #-4]
	b	LBB20_11
LBB20_17:
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9]
	and	w9, w9, #0x7
	stur	w9, [x29, #-4]
	ldur	w9, [x29, #-4]
	bfi	w8, w9, #6, #26
	stur	w8, [x29, #-4]
	b	LBB20_16
LBB20_18:
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.19@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.19@PAGEOFF
	bl	__ZN4core4hint21unreachable_unchecked18precondition_check17hd8fa809e59e3f175E
	b	LBB20_8
LBB20_19:
	ldr	w0, [sp, #40]
	ldr	w1, [sp, #44]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h825dea56146a9912E:
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception1
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	str	x1, [sp, #8]
	stur	xzr, [x29, #-56]
	stur	xzr, [x29, #-24]
	add	x8, sp, #24
	str	x8, [sp, #16]
	bl	__ZN49_$LT$F$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h8c8385805053b595E
	ldr	x0, [sp, #16]
Ltmp4:
	add	x8, sp, #64
	bl	__ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hfde850300ad62d46E
Ltmp5:
	b	LBB21_3
LBB21_1:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
LBB21_2:
Ltmp8:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-8]
	b	LBB21_1
LBB21_3:
	ldr	x8, [sp, #64]
	tbz	w8, #0, LBB21_5
	b	LBB21_4
LBB21_4:
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-56]
	ldr	x8, [sp, #80]
	stur	x8, [x29, #-24]
	b	LBB21_6
LBB21_5:
	b	LBB21_6
LBB21_6:
Ltmp6:
	sub	x8, x29, #48
	add	x0, sp, #24
	bl	__ZN106_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..ReverseSearcher$GT$16next_reject_back17hf0fcb7a9952227c1E
Ltmp7:
	b	LBB21_7
LBB21_7:
	ldur	x8, [x29, #-48]
	tbz	w8, #0, LBB21_9
	b	LBB21_8
LBB21_8:
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-24]
	b	LBB21_10
LBB21_9:
	b	LBB21_10
LBB21_10:
	b	LBB21_11
LBB21_11:
	ldr	x2, [sp, #8]
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-24]
	adrp	x3, l_anon.537bde3dfe4d16e36ac4f849a705fea8.21@PAGE
	add	x3, x3, l_anon.537bde3dfe4d16e36ac4f849a705fea8.21@PAGEOFF
	bl	__ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$13get_unchecked18precondition_check17hcd8dd0b4a300fbf2E
	b	LBB21_12
LBB21_12:
	ldr	x8, [sp]
	ldur	x9, [x29, #-24]
	ldur	x10, [x29, #-56]
	subs	x1, x9, x10
	ldur	x9, [x29, #-56]
	add	x0, x8, x9
	.cfi_def_cfa wsp, 160
	ldp	x29, x30, [sp, #144]
	add	sp, sp, #160
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table21:
Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1
	.uleb128 Ltmp4-Lfunc_begin1
	.byte	0
	.byte	0
	.uleb128 Ltmp4-Lfunc_begin1
	.uleb128 Ltmp5-Ltmp4
	.uleb128 Ltmp8-Lfunc_begin1
	.byte	0
	.uleb128 Ltmp5-Lfunc_begin1
	.uleb128 Ltmp6-Ltmp5
	.byte	0
	.byte	0
	.uleb128 Ltmp6-Lfunc_begin1
	.uleb128 Ltmp7-Ltmp6
	.uleb128 Ltmp8-Lfunc_begin1
	.byte	0
Lcst_end1:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core3str21_$LT$impl$u20$str$GT$3len17h3e1047fe09c0af70E:
	.cfi_startproc
	mov	x0, x1
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3str21_$LT$impl$u20$str$GT$4trim17hf77c0b7a3068e29eE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h825dea56146a9912E
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3str21_$LT$impl$u20$str$GT$5chars17h51fa1663cf7ccb0eE:
	.cfi_startproc
	mov	x8, x0
	mov	x0, x8
	add	x1, x8, x1
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$13get_unchecked18precondition_check17hcd8dd0b4a300fbf2E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #8]
	str	x2, [sp, #16]
	stur	x3, [x29, #-8]
	subs	x8, x1, x0
	b.hs	LBB25_2
	b	LBB25_1
LBB25_1:
	ldur	x3, [x29, #-8]
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.22@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.22@PAGEOFF
	mov	w8, #439
	mov	x1, x8
	mov	w8, #0
	and	w2, w8, #0x1
	bl	__ZN4core9panicking18panic_nounwind_fmt17hfedd79672ae387c8E
LBB25_2:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.hi	LBB25_1
	b	LBB25_3
LBB25_3:
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3str7pattern15ReverseSearcher16next_reject_back17h960402acb9d3489aE:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x8, [sp, #8]
	str	x0, [sp, #16]
	b	LBB26_1
LBB26_1:
	ldr	x0, [sp, #16]
	add	x8, sp, #24
	bl	__ZN104_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h934c334ca737aef2E
	ldr	x8, [sp, #24]
	str	x8, [sp]
	cbz	x8, LBB26_7
	b	LBB26_2
LBB26_2:
	ldr	x8, [sp]
	subs	x8, x8, #1
	b.eq	LBB26_5
	b	LBB26_3
LBB26_3:
	b	LBB26_6
LBB26_5:
	.cfi_restore_state
	ldr	x9, [sp, #8]
	ldr	x10, [sp, #32]
	ldr	x8, [sp, #40]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	mov	w8, #1
	str	x8, [x9]
	b	LBB26_8
LBB26_6:
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	b	LBB26_8
LBB26_7:
	b	LBB26_1
LBB26_8:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3str7pattern8Searcher11next_reject17hc928aeaf3a81e35fE:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x8, [sp, #8]
	str	x0, [sp, #16]
	b	LBB27_1
LBB27_1:
	ldr	x0, [sp, #16]
	add	x8, sp, #24
	bl	__ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h0912c8c8c917371cE
	ldr	x8, [sp, #24]
	str	x8, [sp]
	cbz	x8, LBB27_7
	b	LBB27_2
LBB27_2:
	ldr	x8, [sp]
	subs	x8, x8, #1
	b.eq	LBB27_5
	b	LBB27_3
LBB27_3:
	b	LBB27_6
LBB27_5:
	.cfi_restore_state
	ldr	x9, [sp, #8]
	ldr	x10, [sp, #32]
	ldr	x8, [sp, #40]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	mov	w8, #1
	str	x8, [x9]
	b	LBB27_8
LBB27_6:
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	b	LBB27_8
LBB27_7:
	b	LBB27_1
LBB27_8:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core4char7convert18from_u32_unchecked18precondition_check17he86840445e40c122E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x1, [sp, #8]
	mov	w8, #55296
	eor	w8, w0, w8
	subs	w8, w8, #2048
	mov	w9, #63488
	movk	w9, #16, lsl #16
	subs	w8, w8, w9
	b.hs	LBB28_2
	b	LBB28_1
LBB28_1:
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB28_2:
	.cfi_restore_state
	ldr	x3, [sp, #8]
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.23@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.23@PAGEOFF
	mov	w8, #349
	mov	x1, x8
	mov	w8, #0
	and	w2, w8, #0x1
	bl	__ZN4core9panicking18panic_nounwind_fmt17hfedd79672ae387c8E
	.cfi_endproc

	.p2align	2
__ZN4core4char7methods22_$LT$impl$u20$char$GT$13is_whitespace17heab899f1a6c3301cE:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	subs	w8, w0, #32
	b.ne	LBB29_2
	b	LBB29_1
LBB29_1:
	mov	w8, #1
	sturb	w8, [x29, #-1]
	b	LBB29_8
LBB29_2:
	ldr	w9, [sp, #8]
	mov	w8, #9
	subs	w8, w8, w9
	b.ls	LBB29_4
	b	LBB29_3
LBB29_3:
	ldr	w8, [sp, #8]
	subs	w8, w8, #127
	b.hi	LBB29_6
	b	LBB29_5
LBB29_4:
	ldr	w8, [sp, #8]
	subs	w8, w8, #13
	b.ls	LBB29_1
	b	LBB29_3
LBB29_5:
	sturb	wzr, [x29, #-1]
	b	LBB29_7
LBB29_6:
	ldr	w0, [sp, #8]
	bl	__ZN4core7unicode12unicode_data11white_space6lookup17h85b3934c8242982cE
	sturb	w0, [x29, #-1]
	b	LBB29_7
LBB29_7:
	b	LBB29_8
LBB29_8:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core4hint21unreachable_unchecked18precondition_check17hd8fa809e59e3f175E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x3, x0
	adrp	x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.24@PAGE
	add	x0, x0, l_anon.537bde3dfe4d16e36ac4f849a705fea8.24@PAGEOFF
	mov	w8, #399
	mov	x1, x8
	mov	w8, #0
	and	w2, w8, #0x1
	bl	__ZN4core9panicking18panic_nounwind_fmt17hfedd79672ae387c8E
	.cfi_endproc

	.p2align	2
__ZN4core7unicode12unicode_data11white_space6lookup17h85b3934c8242982cE:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	stur	w0, [x29, #-12]
	lsr	w8, w0, #8
	stur	w8, [x29, #-8]
	cbz	w8, LBB31_5
	b	LBB31_1
LBB31_1:
	ldur	w8, [x29, #-8]
	subs	w8, w8, #22
	b.eq	LBB31_6
	b	LBB31_2
LBB31_2:
	ldur	w8, [x29, #-8]
	subs	w8, w8, #32
	b.eq	LBB31_7
	b	LBB31_3
LBB31_3:
	ldur	w8, [x29, #-8]
	subs	w8, w8, #48
	b.eq	LBB31_8
	b	LBB31_4
LBB31_4:
	sturb	wzr, [x29, #-1]
	b	LBB31_11
LBB31_5:
	ldur	w8, [x29, #-12]
	mov	w8, w8
	and	x8, x8, #0xff
	str	x8, [sp, #8]
	subs	x8, x8, #256
	b.lo	LBB31_9
	b	LBB31_10
LBB31_6:
	ldur	w8, [x29, #-12]
	mov	w9, #5760
	subs	w8, w8, w9
	cset	w8, eq
	sturb	w8, [x29, #-1]
	b	LBB31_11
LBB31_7:
	ldur	w8, [x29, #-12]
	mov	w8, w8
	and	x8, x8, #0xff
	str	x8, [sp]
	subs	x8, x8, #256
	b.lo	LBB31_12
	b	LBB31_13
LBB31_8:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #3, lsl #12
	cset	w8, eq
	sturb	w8, [x29, #-1]
	b	LBB31_11
LBB31_9:
	ldr	x9, [sp, #8]
	adrp	x8, __ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17he40cb999806d7318E@GOTPAGE
	ldr	x8, [x8, __ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17he40cb999806d7318E@GOTPAGEOFF]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ands	w8, w8, #0x1
	cset	w8, ne
	sturb	w8, [x29, #-1]
	b	LBB31_11
LBB31_10:
	ldr	x0, [sp, #8]
	mov	w8, #256
	mov	x1, x8
	adrp	x2, l_anon.537bde3dfe4d16e36ac4f849a705fea8.26@PAGE
	add	x2, x2, l_anon.537bde3dfe4d16e36ac4f849a705fea8.26@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17hd6142ed38f8c399dE
LBB31_11:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB31_12:
	.cfi_restore_state
	ldr	x9, [sp]
	adrp	x8, __ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17he40cb999806d7318E@GOTPAGE
	ldr	x8, [x8, __ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17he40cb999806d7318E@GOTPAGEOFF]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ands	w8, w8, #0x2
	cset	w8, ne
	sturb	w8, [x29, #-1]
	b	LBB31_11
LBB31_13:
	ldr	x0, [sp]
	mov	w8, #256
	mov	x1, x8
	adrp	x2, l_anon.537bde3dfe4d16e36ac4f849a705fea8.27@PAGE
	add	x2, x2, l_anon.537bde3dfe4d16e36ac4f849a705fea8.27@PAGEOFF
	bl	__ZN4core9panicking18panic_bounds_check17hd6142ed38f8c399dE
	.cfi_endproc

	.p2align	2
__ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h52e527808362b7f9E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN4core3ops8function5FnMut8call_mut17h682c2025efc2d581E
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h5dff39977f7dff8aE:
	.cfi_startproc
	mov	w0, #0
	ret
	.cfi_endproc

	.p2align	2
__ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6a70aacb94c7a6e3E:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	mov	x8, x0
	str	x8, [sp, #16]
	ldr	x0, [x8, #8]
	ldr	x1, [x8]
	bl	__ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h2d8ee6837f0d446fE
	mov	x8, x0
	ldr	x0, [sp, #16]
	str	x8, [sp, #24]
	bl	__ZN4core3str11validations15next_code_point17hcc6d2684f6d0c0faE
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-4]
	ldur	w8, [x29, #-8]
	mov	x0, x8
	mov	x8, x0
	tbz	w8, #0, LBB34_2
	b	LBB34_1
LBB34_1:
	ldur	w8, [x29, #-4]
	str	w8, [sp, #12]
	b	LBB34_4
LBB34_2:
	adrp	x9, l_anon.537bde3dfe4d16e36ac4f849a705fea8.0@PAGE
	adrp	x8, l_anon.537bde3dfe4d16e36ac4f849a705fea8.0@PAGE
	add	x8, x8, l_anon.537bde3dfe4d16e36ac4f849a705fea8.0@PAGEOFF
	ldr	x9, [x9, l_anon.537bde3dfe4d16e36ac4f849a705fea8.0@PAGEOFF]
	ldr	w8, [x8, #8]
	str	x9, [sp, #32]
	str	w8, [sp, #40]
	b	LBB34_3
LBB34_3:
	ldr	x0, [sp, #32]
	ldr	w1, [sp, #40]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB34_4:
	.cfi_restore_state
	ldr	w0, [sp, #12]
	adrp	x1, l_anon.537bde3dfe4d16e36ac4f849a705fea8.2@PAGE
	add	x1, x1, l_anon.537bde3dfe4d16e36ac4f849a705fea8.2@PAGEOFF
	bl	__ZN4core4char7convert18from_u32_unchecked18precondition_check17he86840445e40c122E
	b	LBB34_5
LBB34_5:
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #12]
	stur	w9, [x29, #-12]
	ldur	w9, [x29, #-12]
	str	w9, [sp, #8]
	ldr	x9, [x8, #16]
	str	x9, [sp]
	ldr	x0, [x8, #8]
	ldr	x1, [x8]
	bl	__ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h2d8ee6837f0d446fE
	ldr	x10, [sp, #24]
	ldr	x11, [sp, #16]
	ldr	x9, [sp]
	ldr	w8, [sp, #8]
	subs	x12, x10, x0
	ldr	x10, [x11, #16]
	add	x10, x10, x12
	str	x10, [x11, #16]
	str	x9, [sp, #32]
	str	w8, [sp, #40]
	b	LBB34_3
	.cfi_endproc

	.p2align	2
__ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h98177d3bfa3a9fadE:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	.cfi_remember_state
	str	x0, [sp]
	ldr	x8, [x0]
	str	x8, [sp, #8]
	ldr	x8, [x0, #8]
	str	x8, [sp, #16]
	b	LBB35_1
LBB35_1:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.eq	LBB35_3
	b	LBB35_2
LBB35_2:
	ldr	x9, [sp]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [x9]
	b	LBB35_4
LBB35_3:
	str	xzr, [sp, #24]
	b	LBB35_6
LBB35_4:
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	b	LBB35_5
LBB35_5:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
LBB35_6:
	.cfi_restore_state
	b	LBB35_5
	.cfi_endproc

	.p2align	2
__ZN95_$LT$core..str..pattern..MultiCharEqPattern$LT$C$GT$$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17h3c9d66e59e756c79E:
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception2
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]
	str	x0, [sp, #8]
	str	x1, [sp, #16]
Ltmp10:
	bl	__ZN4core3str21_$LT$impl$u20$str$GT$5chars17h51fa1663cf7ccb0eE
	str	x0, [sp, #24]
	str	x1, [sp, #32]
Ltmp11:
	b	LBB36_3
LBB36_1:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
LBB36_2:
Ltmp12:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-8]
	b	LBB36_1
LBB36_3:
	ldr	x9, [sp]
	ldr	x8, [sp, #16]
	ldr	x10, [sp, #8]
	ldr	x11, [sp, #32]
	ldr	x12, [sp, #24]
	str	xzr, [sp, #56]
	str	x12, [sp, #40]
	str	x11, [sp, #48]
	str	x10, [x9]
	str	x8, [x9, #8]
	ldur	q0, [sp, #40]
	str	q0, [x9, #16]
	ldr	x8, [sp, #56]
	str	x8, [x9, #32]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table36:
Lexception2:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp10-Lfunc_begin2
	.uleb128 Ltmp11-Ltmp10
	.uleb128 Ltmp12-Lfunc_begin2
	.byte	0
	.uleb128 Ltmp11-Lfunc_begin2
	.uleb128 Lfunc_end2-Ltmp11
	.byte	0
	.byte	0
Lcst_end2:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h0912c8c8c917371cE:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #32]
	mov	x8, x0
	str	x8, [sp, #40]
	ldr	x0, [x8, #24]
	add	x9, x8, #16
	stur	x9, [x29, #-32]
	ldr	x1, [x8, #16]
	bl	__ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h2d8ee6837f0d446fE
	mov	x8, x0
	ldur	x0, [x29, #-32]
	stur	x8, [x29, #-24]
	bl	__ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6a70aacb94c7a6e3E
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-8]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #272, lsl #12
	cset	x8, ne
	tbz	w8, #0, LBB37_2
	b	LBB37_1
LBB37_1:
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-16]
	str	x9, [sp, #8]
	ldur	w9, [x29, #-8]
	str	w9, [sp, #20]
	ldr	x0, [x8, #24]
	ldr	x1, [x8, #16]
	bl	__ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h2d8ee6837f0d446fE
	ldur	x9, [x29, #-24]
	ldr	x8, [sp, #40]
	ldr	w1, [sp, #20]
	subs	x9, x9, x0
	str	x9, [sp, #24]
	add	x0, x8, #40
	bl	__ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h52e527808362b7f9E
	tbnz	w0, #0, LBB37_4
	b	LBB37_3
LBB37_2:
	ldr	x9, [sp, #32]
	mov	w8, #2
	str	x8, [x9]
	b	LBB37_6
LBB37_3:
	ldr	x9, [sp, #32]
	ldr	x10, [sp, #8]
	ldr	x8, [sp, #24]
	add	x8, x10, x8
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	mov	w8, #1
	str	x8, [x9]
	b	LBB37_5
LBB37_4:
	ldr	x8, [sp, #32]
	ldr	x10, [sp, #8]
	ldr	x9, [sp, #24]
	add	x9, x10, x9
	str	x10, [x8, #8]
	str	x9, [x8, #16]
	str	xzr, [x8]
	b	LBB37_5
LBB37_5:
	b	LBB37_6
LBB37_6:
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hfde850300ad62d46E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN4core3str7pattern8Searcher11next_reject17hc928aeaf3a81e35fE
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
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
	adrp	x0, __ZN22_01b_shadowing_example4main17ha17493ca427a9998E@PAGE
	add	x0, x0, __ZN22_01b_shadowing_example4main17ha17493ca427a9998E@PAGEOFF
	mov	w3, #0
	bl	__ZN3std2rt10lang_start17h9a8bab96b2119203E
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.0:
	.space	8
	.asciz	"\000\000\021"
	.space	4

	.section	__TEXT,__cstring,cstring_literals
l_anon.537bde3dfe4d16e36ac4f849a705fea8.1:
	.asciz	"/rustc/01f6ddf7588f42ae2d7eb0a2f21d44e8e96674cf/library/core/src/char/methods.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.2:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.1
	.asciz	"P\000\000\000\000\000\000\000\357\000\000\000\022\000\000"

	.section	__TEXT,__cstring,cstring_literals
l_anon.537bde3dfe4d16e36ac4f849a705fea8.3:
	.asciz	"/rustc/01f6ddf7588f42ae2d7eb0a2f21d44e8e96674cf/library/core/src/ptr/non_null.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.4:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.3
	.asciz	"P\000\000\000\000\000\000\000\344\002\000\0003\000\000"

	.section	__TEXT,__const
l_anon.537bde3dfe4d16e36ac4f849a705fea8.5:
	.ascii	"this is a test string    \n\n\n"

	.section	__TEXT,__cstring,cstring_literals
l_anon.537bde3dfe4d16e36ac4f849a705fea8.6:
	.asciz	"\035The length of the string is: \300\001\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.7:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd3600c9702c505ceE
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd41df88a7ea6572aE
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd41df88a7ea6572aE

	.section	__TEXT,__const
l_anon.537bde3dfe4d16e36ac4f849a705fea8.8:
	.ascii	"unsafe precondition(s) violated: isize::unchecked_neg cannot overflow\n\nThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety."

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.9:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.3
	.asciz	"P\000\000\000\000\000\000\000\272\003\000\000 \000\000"

	.section	__TEXT,__const
l_anon.537bde3dfe4d16e36ac4f849a705fea8.10:
	.ascii	"assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize"

l_anon.537bde3dfe4d16e36ac4f849a705fea8.11:
	.ascii	"unsafe precondition(s) violated: ptr::offset_from_unsigned requires `self >= origin`\n\nThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety."

	.section	__TEXT,__literal8,8byte_literals
	.p2align	2, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.12:
	.space	4
	.space	4

	.section	__TEXT,__cstring,cstring_literals
l_anon.537bde3dfe4d16e36ac4f849a705fea8.13:
	.asciz	"/rustc/01f6ddf7588f42ae2d7eb0a2f21d44e8e96674cf/library/core/src/str/validations.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.14:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.13
	.asciz	"S\000\000\000\000\000\000\0000\000\000\000$\000\000"

	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.15:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.13
	.asciz	"S\000\000\000\000\000\000\0007\000\000\000(\000\000"

	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.16:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.13
	.asciz	"S\000\000\000\000\000\000\000?\000\000\000,\000\000"

	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.17:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.13
	.asciz	"S\000\000\000\000\000\000\000]\000\000\000)\000\000"

	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.18:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.13
	.asciz	"S\000\000\000\000\000\000\000b\000\000\000-\000\000"

	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.19:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.13
	.asciz	"S\000\000\000\000\000\000\000g\000\000\0001\000\000"

	.section	__TEXT,__cstring,cstring_literals
l_anon.537bde3dfe4d16e36ac4f849a705fea8.20:
	.asciz	"/rustc/01f6ddf7588f42ae2d7eb0a2f21d44e8e96674cf/library/core/src/str/mod.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.21:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.20
	.asciz	"K\000\000\000\000\000\000\000\243\002\000\000\026\000\000"

	.section	__TEXT,__const
l_anon.537bde3dfe4d16e36ac4f849a705fea8.22:
	.ascii	"unsafe precondition(s) violated: str::get_unchecked requires that the range is within the string slice\n\nThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety."

l_anon.537bde3dfe4d16e36ac4f849a705fea8.23:
	.ascii	"unsafe precondition(s) violated: invalid value for `char`\n\nThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety."

l_anon.537bde3dfe4d16e36ac4f849a705fea8.24:
	.ascii	"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\n\nThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety."

	.section	__TEXT,__cstring,cstring_literals
l_anon.537bde3dfe4d16e36ac4f849a705fea8.25:
	.asciz	"/rustc/01f6ddf7588f42ae2d7eb0a2f21d44e8e96674cf/library/core/src/unicode/unicode_data.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.26:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.25
	.asciz	"X\000\000\000\000\000\000\000\356\002\000\000\022\000\000"

	.p2align	3, 0x0
l_anon.537bde3dfe4d16e36ac4f849a705fea8.27:
	.quad	l_anon.537bde3dfe4d16e36ac4f849a705fea8.25
	.asciz	"X\000\000\000\000\000\000\000\360\002\000\000\023\000\000"

.subsections_via_symbols
