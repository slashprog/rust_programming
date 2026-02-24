	.build_version macos, 11, 0
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZN16str_literal_test4main17h9b4e6123512e18bcE
	.globl	__ZN16str_literal_test4main17h9b4e6123512e18bcE
	.p2align	2
__ZN16str_literal_test4main17h9b4e6123512e18bcE:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	add	x0, sp, #16
	adrp	x9, l_anon.6c9de8a911cf8e820757205a852636b8.0@PAGE
	add	x9, x9, l_anon.6c9de8a911cf8e820757205a852636b8.0@PAGEOFF
	mov	x8, x9
	str	x8, [sp, #16]
	mov	w8, #11
	str	x8, [sp, #24]
	add	x10, sp, #32
	str	x10, [sp, #8]
	str	x9, [sp, #32]
	str	x8, [sp, #40]
	sub	x8, x29, #32
	bl	__ZN4core3fmt2rt8Argument11new_display17hf486033c1a5d45d3E
	ldr	x0, [sp, #8]
	sub	x8, x29, #16
	bl	__ZN4core3fmt2rt8Argument11new_display17hf486033c1a5d45d3E
	ldur	q0, [x29, #-32]
	add	x1, sp, #48
	str	q0, [sp, #48]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #64]
	adrp	x0, l_anon.6c9de8a911cf8e820757205a852636b8.1@PAGE
	add	x0, x0, l_anon.6c9de8a911cf8e820757205a852636b8.1@PAGEOFF
	bl	__ZN4core3fmt9Arguments3new17h0b862845c2f933caE
	bl	__ZN3std2io5stdio6_print17h171e44f9366e5f4bE
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.private_extern	__ZN3std2rt10lang_start17h41d0519de54ae7d8E
	.globl	__ZN3std2rt10lang_start17h41d0519de54ae7d8E
	.p2align	2
__ZN3std2rt10lang_start17h41d0519de54ae7d8E:
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
	adrp	x1, l_anon.6c9de8a911cf8e820757205a852636b8.2@PAGE
	add	x1, x1, l_anon.6c9de8a911cf8e820757205a852636b8.2@PAGEOFF
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
__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hec60d7dcdcb3acb3E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha461fd3a5630a876E
	bl	__ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h01171b053cf7f9c1E
	and	w0, w0, #0xff
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha461fd3a5630a876E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN4core3ops8function6FnOnce9call_once17h08996da9c4918d0cE
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
__ZN4core3fmt2rt8Argument11new_display17hf486033c1a5d45d3E:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	adrp	x9, __ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb47f8ab5532d632dE@GOTPAGE
	ldr	x9, [x9, __ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb47f8ab5532d632dE@GOTPAGEOFF]
	str	x9, [sp, #8]
	ldr	q0, [sp]
	str	q0, [x8]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt9Arguments3new17h0b862845c2f933caE:
	.cfi_startproc
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h59076f999dda8a36E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN4core3ops8function6FnOnce9call_once17hf58937f0f4a957ddE
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce9call_once17h08996da9c4918d0cE:
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
__ZN4core3ops8function6FnOnce9call_once17hf58937f0f4a957ddE:
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
	bl	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hec60d7dcdcb3acb3E
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
__ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h01171b053cf7f9c1E:
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
	adrp	x0, __ZN16str_literal_test4main17h9b4e6123512e18bcE@PAGE
	add	x0, x0, __ZN16str_literal_test4main17h9b4e6123512e18bcE@PAGEOFF
	mov	w3, #0
	bl	__ZN3std2rt10lang_start17h41d0519de54ae7d8E
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.section	__TEXT,__const
l_anon.6c9de8a911cf8e820757205a852636b8.0:
	.ascii	"Hello world"

	.section	__TEXT,__cstring,cstring_literals
l_anon.6c9de8a911cf8e820757205a852636b8.1:
	.asciz	"\003s: \300\006, s1: \300\001\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.6c9de8a911cf8e820757205a852636b8.2:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h59076f999dda8a36E
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hec60d7dcdcb3acb3E
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hec60d7dcdcb3acb3E

.subsections_via_symbols
