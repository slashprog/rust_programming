	.build_version macos, 11, 0
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument11new_displaylECs2GEfdtETokJ_5hello:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	adrp	x9, __RNvXs9_NtNtNtCs1zi9xk0MYTQ_4core3fmt3num3implNtB9_7Display3fmt@GOTPAGE
	ldr	x9, [x9, __RNvXs9_NtNtNtCs1zi9xk0MYTQ_4core3fmt3num3implNtB9_7Display3fmt@GOTPAGEOFF]
	str	x9, [sp, #8]
	ldr	q0, [sp]
	str	q0, [x8]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc

	.p2align	2
__RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument13new_lower_hexlECs2GEfdtETokJ_5hello:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	adrp	x9, __RNvXsv_NtNtCs1zi9xk0MYTQ_4core3fmt3numlNtB7_8LowerHex3fmt@GOTPAGE
	ldr	x9, [x9, __RNvXsv_NtNtCs1zi9xk0MYTQ_4core3fmt3numlNtB7_8LowerHex3fmt@GOTPAGEOFF]
	str	x9, [sp, #8]
	ldr	q0, [sp]
	str	q0, [x8]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc

	.p2align	2
__RINvMs2_NtCs1zi9xk0MYTQ_4core3fmtNtB6_9Arguments3newKj1f_Kj2_ECs2GEfdtETokJ_5hello:
	.cfi_startproc
	ret
	.cfi_endproc

	.private_extern	__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECs2GEfdtETokJ_5hello
	.globl	__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECs2GEfdtETokJ_5hello
	.p2align	2
__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECs2GEfdtETokJ_5hello:
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
	adrp	x1, l_anon.438b258bd0c66f7342324ee7914d39f5.0@PAGE
	add	x1, x1, l_anon.438b258bd0c66f7342324ee7914d39f5.0@PAGEOFF
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
__RINvNtNtCs5EOoPIk3vm1_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2GEfdtETokJ_5hello:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__RNvYFEuINtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs2GEfdtETokJ_5hello
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
__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs2GEfdtETokJ_5hello:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__RINvNtNtCs5EOoPIk3vm1_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2GEfdtETokJ_5hello
	bl	__RNvXsZ_NtCs5EOoPIk3vm1_3std7processuNtB5_11Termination6reportCs2GEfdtETokJ_5hello
	and	w0, w0, #0xff
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNSNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_once6vtableCs2GEfdtETokJ_5hello:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__RNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs2GEfdtETokJ_5hello
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.private_extern	__RNvCs2GEfdtETokJ_5hello4main
	.globl	__RNvCs2GEfdtETokJ_5hello4main
	.p2align	2
__RNvCs2GEfdtETokJ_5hello4main:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	add	x0, sp, #12
	str	x0, [sp]
	mov	w8, #5
	str	w8, [sp, #12]
	sub	x8, x29, #32
	bl	__RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument11new_displaylECs2GEfdtETokJ_5hello
	ldr	x0, [sp]
	sub	x8, x29, #16
	bl	__RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument13new_lower_hexlECs2GEfdtETokJ_5hello
	ldur	q0, [x29, #-32]
	add	x1, sp, #16
	str	q0, [sp, #16]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #32]
	adrp	x0, l_anon.438b258bd0c66f7342324ee7914d39f5.1@PAGE
	add	x0, x0, l_anon.438b258bd0c66f7342324ee7914d39f5.1@PAGEOFF
	bl	__RINvMs2_NtCs1zi9xk0MYTQ_4core3fmtNtB6_9Arguments3newKj1f_Kj2_ECs2GEfdtETokJ_5hello
	bl	__RNvNtNtCs5EOoPIk3vm1_3std2io5stdio6__print
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNvXsZ_NtCs5EOoPIk3vm1_3std7processuNtB5_11Termination6reportCs2GEfdtETokJ_5hello:
	.cfi_startproc
	mov	w0, #0
	ret
	.cfi_endproc

	.p2align	2
__RNvYFEuINtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs2GEfdtETokJ_5hello:
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
__RNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs2GEfdtETokJ_5hello:
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
Ltmp2:
	bl	__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs2GEfdtETokJ_5hello
	str	w0, [sp, #12]
Ltmp3:
	b	LBB10_3
LBB10_1:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
LBB10_2:
Ltmp4:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-8]
	b	LBB10_1
LBB10_3:
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
GCC_except_table10:
Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp2-Lfunc_begin0
	.uleb128 Ltmp3-Ltmp2
	.uleb128 Ltmp4-Lfunc_begin0
	.byte	0
	.uleb128 Ltmp3-Lfunc_begin0
	.uleb128 Lfunc_end0-Ltmp3
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
	adrp	x0, __RNvCs2GEfdtETokJ_5hello4main@PAGE
	add	x0, x0, __RNvCs2GEfdtETokJ_5hello4main@PAGEOFF
	mov	w3, #0
	bl	__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECs2GEfdtETokJ_5hello
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.438b258bd0c66f7342324ee7914d39f5.0:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__RNSNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_once6vtableCs2GEfdtETokJ_5hello
	.quad	__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs2GEfdtETokJ_5hello
	.quad	__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs2GEfdtETokJ_5hello

	.section	__TEXT,__cstring,cstring_literals
l_anon.438b258bd0c66f7342324ee7914d39f5.1:
	.asciz	"\022Hello, world! x = \300\006, x = \300\001\n"

.subsections_via_symbols
