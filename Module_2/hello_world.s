	.build_version macos, 11, 0
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECsjayq76G1gIO_11hello_world
	.globl	__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECsjayq76G1gIO_11hello_world
	.p2align	2
__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECsjayq76G1gIO_11hello_world:
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
	adrp	x1, l_anon.12c2142efe070f47ff247f76617bd2a2.0@PAGE
	add	x1, x1, l_anon.12c2142efe070f47ff247f76617bd2a2.0@PAGEOFF
	bl	__RNvNtCs5EOoPIk3vm1_3std2rt19lang_start_internal
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RINvNtNtCs5EOoPIk3vm1_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsjayq76G1gIO_11hello_world:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__RNvYFEuINtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCsjayq76G1gIO_11hello_world
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
__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Csjayq76G1gIO_11hello_world:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__RINvNtNtCs5EOoPIk3vm1_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsjayq76G1gIO_11hello_world
	bl	__RNvXsZ_NtCs5EOoPIk3vm1_3std7processuNtB5_11Termination6reportCsjayq76G1gIO_11hello_world
	and	w0, w0, #0xff
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNSNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_once6vtableCsjayq76G1gIO_11hello_world:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__RNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCsjayq76G1gIO_11hello_world
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.private_extern	__RNvCsjayq76G1gIO_11hello_world4main
	.globl	__RNvCsjayq76G1gIO_11hello_world4main
	.p2align	2
__RNvCsjayq76G1gIO_11hello_world4main:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_anon.12c2142efe070f47ff247f76617bd2a2.1@PAGE
	add	x0, x0, l_anon.12c2142efe070f47ff247f76617bd2a2.1@PAGEOFF
	mov	w8, #14
	mov	x1, x8
	bl	__RNvMs4_NtCs1zi9xk0MYTQ_4core3fmtNtB5_9Arguments8from_strCsjayq76G1gIO_11hello_world
	bl	__RNvNtNtCs5EOoPIk3vm1_3std2io5stdio6__print
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNvMs4_NtCs1zi9xk0MYTQ_4core3fmtNtB5_9Arguments8from_strCsjayq76G1gIO_11hello_world:
	.cfi_startproc
	lsl	x8, x1, #1
	orr	x1, x8, #0x1
	ret
	.cfi_endproc

	.p2align	2
__RNvXsZ_NtCs5EOoPIk3vm1_3std7processuNtB5_11Termination6reportCsjayq76G1gIO_11hello_world:
	.cfi_startproc
	mov	w0, #0
	ret
	.cfi_endproc

	.p2align	2
__RNvYFEuINtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCsjayq76G1gIO_11hello_world:
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
__RNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCsjayq76G1gIO_11hello_world:
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
	bl	__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Csjayq76G1gIO_11hello_world
	str	w0, [sp, #12]
Ltmp1:
	b	LBB8_3
LBB8_1:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
LBB8_2:
Ltmp2:
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
	adrp	x0, __RNvCsjayq76G1gIO_11hello_world4main@PAGE
	add	x0, x0, __RNvCsjayq76G1gIO_11hello_world4main@PAGEOFF
	mov	w3, #0
	bl	__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECsjayq76G1gIO_11hello_world
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.12c2142efe070f47ff247f76617bd2a2.0:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__RNSNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_once6vtableCsjayq76G1gIO_11hello_world
	.quad	__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Csjayq76G1gIO_11hello_world
	.quad	__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Csjayq76G1gIO_11hello_world

	.section	__TEXT,__const
l_anon.12c2142efe070f47ff247f76617bd2a2.1:
	.ascii	"Hello, world!\n"

.subsections_via_symbols
