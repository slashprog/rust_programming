	.build_version macos, 11, 0
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsbtOAwDxaP7e_5alloc6string6StringECs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	adrp	x9, __RNvXsq_NtCsbtOAwDxaP7e_5alloc6stringNtB5_6StringNtNtCs1zi9xk0MYTQ_4core3fmt7Display3fmtCs9AKyCTe7XkI_18dangling_reference@PAGE
	add	x9, x9, __RNvXsq_NtCsbtOAwDxaP7e_5alloc6stringNtB5_6StringNtNtCs1zi9xk0MYTQ_4core3fmt7Display3fmtCs9AKyCTe7XkI_18dangling_reference@PAGEOFF
	str	x9, [sp, #8]
	ldr	q0, [sp]
	str	q0, [x8]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc

	.p2align	2
__RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument11new_displayReECs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	adrp	x9, __RNvXs1i_NtCs1zi9xk0MYTQ_4core3fmtReNtB6_7Display3fmtCsh9KRQCfTnKG_14rustc_demangle@GOTPAGE
	ldr	x9, [x9, __RNvXs1i_NtCs1zi9xk0MYTQ_4core3fmtReNtB6_7Display3fmtCsh9KRQCfTnKG_14rustc_demangle@GOTPAGEOFF]
	str	x9, [sp, #8]
	ldr	q0, [sp]
	str	q0, [x8]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc

	.p2align	2
__RINvMs2_NtCs1zi9xk0MYTQ_4core3fmtNtB6_9Arguments3newKj8_Kj1_ECs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	ret
	.cfi_endproc

	.p2align	2
__RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeINtNtCsbtOAwDxaP7e_5alloc3vec3VechEECs9AKyCTe7XkI_18dangling_reference:
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception0
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x0, [sp, #8]
Ltmp2:
	bl	__RNvXso_NtCsbtOAwDxaP7e_5alloc3vecINtB5_3VechENtNtNtCs1zi9xk0MYTQ_4core3ops4drop4Drop4dropCs75GnhmR9V8L_5gimli
Ltmp3:
	b	LBB3_3
LBB3_1:
Ltmp5:
	ldr	x0, [sp, #8]
	bl	__RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeINtNtCsbtOAwDxaP7e_5alloc7raw_vec6RawVechEECs9AKyCTe7XkI_18dangling_reference
Ltmp6:
	b	LBB3_5
LBB3_2:
Ltmp4:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #24]
	b	LBB3_1
LBB3_3:
	ldr	x0, [sp, #8]
	bl	__RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeINtNtCsbtOAwDxaP7e_5alloc7raw_vec6RawVechEECs9AKyCTe7XkI_18dangling_reference
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB3_4:
	.cfi_restore_state
Ltmp7:
	bl	__RNvNtCs1zi9xk0MYTQ_4core9panicking16panic_in_cleanup
LBB3_5:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception0:
	.byte	255
	.byte	155
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp2-Lfunc_begin0
	.uleb128 Ltmp3-Ltmp2
	.uleb128 Ltmp4-Lfunc_begin0
	.byte	0
	.uleb128 Ltmp5-Lfunc_begin0
	.uleb128 Ltmp6-Ltmp5
	.uleb128 Ltmp7-Lfunc_begin0
	.byte	1
	.uleb128 Ltmp6-Lfunc_begin0
	.uleb128 Lfunc_end0-Ltmp6
	.byte	0
	.byte	0
Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeINtNtCsbtOAwDxaP7e_5alloc7raw_vec6RawVechEECs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__RNvXs1_NtCsbtOAwDxaP7e_5alloc7raw_vecINtB5_6RawVechENtNtNtCs1zi9xk0MYTQ_4core3ops4drop4Drop4dropCs75GnhmR9V8L_5gimli
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeNtNtCsbtOAwDxaP7e_5alloc6string6StringECs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeINtNtCsbtOAwDxaP7e_5alloc3vec3VechEECs9AKyCTe7XkI_18dangling_reference
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.private_extern	__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECs9AKyCTe7XkI_18dangling_reference
	.globl	__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECs9AKyCTe7XkI_18dangling_reference
	.p2align	2
__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECs9AKyCTe7XkI_18dangling_reference:
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
	adrp	x1, l_anon.95906b9b37cf7559b13929d405a74bd3.0@PAGE
	add	x1, x1, l_anon.95906b9b37cf7559b13929d405a74bd3.0@PAGEOFF
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
__RINvNtNtCs5EOoPIk3vm1_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__RNvYFEuINtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs9AKyCTe7XkI_18dangling_reference
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
__RINvXs_NvMNtCsbtOAwDxaP7e_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x8, [sp, #24]
	str	x0, [sp, #16]
	mov	x0, x1
	stur	x0, [x29, #-16]
	mov	w8, #1
	mov	x2, x8
	mov	x1, x2
	bl	__RNvMs4_NtCsbtOAwDxaP7e_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9AKyCTe7XkI_18dangling_reference
	ldr	x8, [sp, #24]
	mov	x9, x1
	ldur	x1, [x29, #-16]
	str	x0, [x8]
	str	x9, [x8, #8]
	str	xzr, [x8, #16]
	subs	x8, x1, #0
	b.hi	LBB8_2
	b	LBB8_1
LBB8_1:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB8_2:
	.cfi_restore_state
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	b	LBB8_3
LBB8_3:
	ldur	x4, [x29, #-16]
	ldr	x1, [sp, #8]
	ldr	x0, [sp, #16]
	mov	w8, #1
	mov	x3, x8
	mov	x2, x3
	adrp	x5, l_anon.95906b9b37cf7559b13929d405a74bd3.2@PAGE
	add	x5, x5, l_anon.95906b9b37cf7559b13929d405a74bd3.2@PAGEOFF
	bl	__RNvNvNtCs1zi9xk0MYTQ_4core3ptr19copy_nonoverlapping18precondition_checkCs9AKyCTe7XkI_18dangling_reference
	b	LBB8_4
LBB8_4:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	ldur	x8, [x29, #-16]
	lsr	x2, x8, #0
	bl	_memcpy
	b	LBB8_5
LBB8_5:
	b	LBB8_6
LBB8_6:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	LBB8_7
LBB8_7:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	adrp	x2, l_anon.95906b9b37cf7559b13929d405a74bd3.4@PAGE
	add	x2, x2, l_anon.95906b9b37cf7559b13929d405a74bd3.4@PAGEOFF
	bl	__RNvNvMs_NtCsbtOAwDxaP7e_5alloc3vecINtB6_3VecppE7set_len18precondition_checkCs9AKyCTe7XkI_18dangling_reference
	b	LBB8_8
LBB8_8:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	str	x8, [x9, #16]
	b	LBB8_1
	.cfi_endproc

	.p2align	2
__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__RINvNtNtCs5EOoPIk3vm1_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs9AKyCTe7XkI_18dangling_reference
	bl	__RNvXsZ_NtCs5EOoPIk3vm1_3std7processuNtB5_11Termination6reportCs9AKyCTe7XkI_18dangling_reference
	and	w0, w0, #0xff
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNSNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_once6vtableCs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__RNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs9AKyCTe7XkI_18dangling_reference
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNvCs9AKyCTe7XkI_18dangling_reference3bar:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_anon.95906b9b37cf7559b13929d405a74bd3.5@PAGE
	add	x0, x0, l_anon.95906b9b37cf7559b13929d405a74bd3.5@PAGEOFF
	mov	w9, #13
	mov	x1, x9
	bl	__RNvXsK_NtCsbtOAwDxaP7e_5alloc6stringNtB5_6StringINtNtCs1zi9xk0MYTQ_4core7convert4FromReE4fromCs9AKyCTe7XkI_18dangling_reference
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNvCs9AKyCTe7XkI_18dangling_reference3foo:
	.cfi_startproc
	adrp	x0, l_anon.95906b9b37cf7559b13929d405a74bd3.6@PAGE
	add	x0, x0, l_anon.95906b9b37cf7559b13929d405a74bd3.6@PAGEOFF
	mov	w8, #11
	mov	x1, x8
	ret
	.cfi_endproc

	.private_extern	__RNvCs9AKyCTe7XkI_18dangling_reference4main
	.globl	__RNvCs9AKyCTe7XkI_18dangling_reference4main
	.p2align	2
__RNvCs9AKyCTe7XkI_18dangling_reference4main:
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception1
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, #160]
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	bl	__RNvCs9AKyCTe7XkI_18dangling_reference3foo
	mov	x8, x0
	add	x0, sp, #32
	str	x8, [sp, #32]
	str	x1, [sp, #40]
	add	x8, sp, #72
	bl	__RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument11new_displayReECs9AKyCTe7XkI_18dangling_reference
	ldur	q0, [sp, #72]
	add	x1, sp, #48
	str	q0, [sp, #48]
	adrp	x0, l_anon.95906b9b37cf7559b13929d405a74bd3.7@PAGE
	add	x0, x0, l_anon.95906b9b37cf7559b13929d405a74bd3.7@PAGEOFF
	bl	__RINvMs2_NtCs1zi9xk0MYTQ_4core3fmtNtB6_9Arguments3newKj8_Kj1_ECs9AKyCTe7XkI_18dangling_reference
	bl	__RNvNtNtCs5EOoPIk3vm1_3std2io5stdio6__print
	sub	x8, x29, #72
	str	x8, [sp, #24]
	bl	__RNvCs9AKyCTe7XkI_18dangling_reference3bar
	ldr	x0, [sp, #24]
Ltmp8:
	sub	x8, x29, #32
	bl	__RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsbtOAwDxaP7e_5alloc6string6StringECs9AKyCTe7XkI_18dangling_reference
Ltmp9:
	b	LBB13_3
LBB13_1:
Ltmp15:
	sub	x0, x29, #72
	bl	__RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeNtNtCsbtOAwDxaP7e_5alloc6string6StringECs9AKyCTe7XkI_18dangling_reference
Ltmp16:
	b	LBB13_7
LBB13_2:
Ltmp14:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-8]
	b	LBB13_1
LBB13_3:
	ldur	q0, [x29, #-32]
	sub	x1, x29, #48
	stur	q0, [x29, #-48]
Ltmp10:
	adrp	x0, l_anon.95906b9b37cf7559b13929d405a74bd3.7@PAGE
	add	x0, x0, l_anon.95906b9b37cf7559b13929d405a74bd3.7@PAGEOFF
	bl	__RINvMs2_NtCs1zi9xk0MYTQ_4core3fmtNtB6_9Arguments3newKj8_Kj1_ECs9AKyCTe7XkI_18dangling_reference
	str	x0, [sp, #8]
	str	x1, [sp, #16]
Ltmp11:
	b	LBB13_4
LBB13_4:
Ltmp12:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	bl	__RNvNtNtCs5EOoPIk3vm1_3std2io5stdio6__print
Ltmp13:
	b	LBB13_5
LBB13_5:
	sub	x0, x29, #72
	bl	__RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeNtNtCsbtOAwDxaP7e_5alloc6string6StringECs9AKyCTe7XkI_18dangling_reference
	.cfi_def_cfa wsp, 176
	ldp	x29, x30, [sp, #160]
	add	sp, sp, #176
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB13_6:
	.cfi_restore_state
Ltmp17:
	bl	__RNvNtCs1zi9xk0MYTQ_4core9panicking16panic_in_cleanup
LBB13_7:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table13:
Lexception1:
	.byte	255
	.byte	155
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1
	.uleb128 Ltmp8-Lfunc_begin1
	.byte	0
	.byte	0
	.uleb128 Ltmp8-Lfunc_begin1
	.uleb128 Ltmp9-Ltmp8
	.uleb128 Ltmp14-Lfunc_begin1
	.byte	0
	.uleb128 Ltmp15-Lfunc_begin1
	.uleb128 Ltmp16-Ltmp15
	.uleb128 Ltmp17-Lfunc_begin1
	.byte	1
	.uleb128 Ltmp10-Lfunc_begin1
	.uleb128 Ltmp13-Ltmp10
	.uleb128 Ltmp14-Lfunc_begin1
	.byte	0
	.uleb128 Ltmp13-Lfunc_begin1
	.uleb128 Lfunc_end1-Ltmp13
	.byte	0
	.byte	0
Lcst_end1:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__RNvMNtNtCs1zi9xk0MYTQ_4core3ptr9const_ptrPu13is_aligned_toCs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	fmov	d0, x1
	cnt.8b	v0, v0
	uaddlv.8b	h0, v0
	stur	s0, [x29, #-4]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	b.ne	LBB14_2
	b	LBB14_1
LBB14_1:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x9, x9, #1
	ands	x8, x8, x9
	cset	w0, eq
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB14_2:
	.cfi_restore_state
	adrp	x0, l_anon.95906b9b37cf7559b13929d405a74bd3.8@PAGE
	add	x0, x0, l_anon.95906b9b37cf7559b13929d405a74bd3.8@PAGEOFF
	mov	w8, #85
	mov	x1, x8
	adrp	x2, l_anon.95906b9b37cf7559b13929d405a74bd3.10@PAGE
	add	x2, x2, l_anon.95906b9b37cf7559b13929d405a74bd3.10@PAGEOFF
	bl	__RNvNtCs1zi9xk0MYTQ_4core9panicking9panic_fmt
	.cfi_endproc

	.p2align	2
__RNvMs4_NtCsbtOAwDxaP7e_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #32]
	mov	x3, x2
	ldr	x2, [sp, #32]
	str	x3, [sp, #40]
	sub	x8, x29, #32
	mov	w9, #0
	and	w1, w9, #0x1
	bl	__RNvMs4_NtCsbtOAwDxaP7e_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs75GnhmR9V8L_5gimli
	ldur	x8, [x29, #-32]
	tbz	w8, #0, LBB15_2
	b	LBB15_1
LBB15_1:
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	__RNvNtCsbtOAwDxaP7e_5alloc7raw_vec12handle_error
LBB15_2:
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-24]
	str	x9, [sp, #8]
	ldur	x9, [x29, #-16]
	str	x9, [sp, #16]
	cbnz	x8, LBB15_4
	b	LBB15_3
LBB15_3:
	mov	x8, #-1
	stur	x8, [x29, #-8]
	b	LBB15_5
LBB15_4:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB15_5
LBB15_5:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-8]
	add	x9, x9, #0
	subs	x8, x8, x9
	cset	w8, ls
	str	w8, [sp, #4]
	b	LBB15_6
LBB15_6:
	ldr	w0, [sp, #4]
	adrp	x1, l_anon.95906b9b37cf7559b13929d405a74bd3.12@PAGE
	add	x1, x1, l_anon.95906b9b37cf7559b13929d405a74bd3.12@PAGEOFF
	bl	__RNvNvNtCs1zi9xk0MYTQ_4core4hint16assert_unchecked18precondition_checkCs9AKyCTe7XkI_18dangling_reference
	b	LBB15_7
LBB15_7:
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #8]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNvNtCs1zi9xk0MYTQ_4core10intrinsics9cold_pathCs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	ret
	.cfi_endproc

	.p2align	2
__RNvNvMs_NtCsbtOAwDxaP7e_5alloc3vecINtB6_3VecppE7set_len18precondition_checkCs9AKyCTe7XkI_18dangling_reference:
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
	b.ls	LBB17_2
	b	LBB17_1
LBB17_1:
	ldr	x3, [sp, #8]
	adrp	x0, l_anon.95906b9b37cf7559b13929d405a74bd3.13@PAGE
	add	x0, x0, l_anon.95906b9b37cf7559b13929d405a74bd3.13@PAGEOFF
	mov	w8, #397
	mov	x1, x8
	mov	w8, #0
	and	w2, w8, #0x1
	bl	__RNvNtCs1zi9xk0MYTQ_4core9panicking18panic_nounwind_fmt
LBB17_2:
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNvNvNtCs1zi9xk0MYTQ_4core3ptr19copy_nonoverlapping18precondition_checkCs9AKyCTe7XkI_18dangling_reference:
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
	str	x0, [sp, #24]
	str	x1, [sp, #32]
	str	x2, [sp, #40]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-24]
	stur	x5, [x29, #-16]
	cbnz	x4, LBB18_2
	b	LBB18_1
LBB18_1:
	mov	w8, #1
	sturb	w8, [x29, #-1]
	b	LBB18_3
LBB18_2:
	ldr	x8, [sp, #40]
	subs	x8, x8, #0
	cset	w8, eq
	sturb	w8, [x29, #-1]
	b	LBB18_3
LBB18_3:
	ldur	x1, [x29, #-32]
	ldr	x0, [sp, #24]
	ldurb	w8, [x29, #-1]
	str	w8, [sp, #16]
Ltmp18:
	bl	__RNvMNtNtCs1zi9xk0MYTQ_4core3ptr9const_ptrPu13is_aligned_toCs9AKyCTe7XkI_18dangling_reference
	str	w0, [sp, #20]
Ltmp19:
	b	LBB18_5
LBB18_4:
Ltmp24:
	bl	__RNvNtCs1zi9xk0MYTQ_4core9panicking19panic_cannot_unwind
LBB18_5:
	ldr	w8, [sp, #20]
	tbnz	w8, #0, LBB18_7
	b	LBB18_6
LBB18_6:
	b	LBB18_8
LBB18_7:
	ldr	w8, [sp, #16]
	tbnz	w8, #0, LBB18_10
	b	LBB18_9
LBB18_8:
	b	LBB18_12
LBB18_9:
	ldr	x8, [sp, #24]
	cbnz	x8, LBB18_11
	b	LBB18_8
LBB18_10:
	b	LBB18_11
LBB18_11:
Ltmp20:
	ldur	x1, [x29, #-32]
	ldr	x0, [sp, #32]
	bl	__RNvMNtNtCs1zi9xk0MYTQ_4core3ptr9const_ptrPu13is_aligned_toCs9AKyCTe7XkI_18dangling_reference
	str	w0, [sp, #12]
Ltmp21:
	b	LBB18_13
LBB18_12:
	b	LBB18_20
LBB18_13:
	ldr	w8, [sp, #12]
	tbnz	w8, #0, LBB18_15
	b	LBB18_14
LBB18_14:
	b	LBB18_16
LBB18_15:
	ldurb	w8, [x29, #-1]
	tbnz	w8, #0, LBB18_18
	b	LBB18_17
LBB18_16:
	b	LBB18_12
LBB18_17:
	ldr	x8, [sp, #32]
	cbnz	x8, LBB18_19
	b	LBB18_16
LBB18_18:
	b	LBB18_19
LBB18_19:
Ltmp22:
	ldur	x3, [x29, #-24]
	ldr	x2, [sp, #40]
	ldr	x1, [sp, #32]
	ldr	x0, [sp, #24]
	bl	__RNvNvNtCs1zi9xk0MYTQ_4core9ub_checks23maybe_is_nonoverlapping7runtimeCs9AKyCTe7XkI_18dangling_reference
	str	w0, [sp, #8]
Ltmp23:
	b	LBB18_21
LBB18_20:
	ldur	x3, [x29, #-16]
	adrp	x0, l_anon.95906b9b37cf7559b13929d405a74bd3.14@PAGE
	add	x0, x0, l_anon.95906b9b37cf7559b13929d405a74bd3.14@PAGEOFF
	mov	w8, #567
	mov	x1, x8
	mov	w8, #0
	and	w2, w8, #0x1
	bl	__RNvNtCs1zi9xk0MYTQ_4core9panicking18panic_nounwind_fmt
LBB18_21:
	ldr	w8, [sp, #8]
	tbz	w8, #0, LBB18_20
	b	LBB18_22
LBB18_22:
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
GCC_except_table18:
Lexception2:
	.byte	255
	.byte	155
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp18-Lfunc_begin2
	.uleb128 Ltmp23-Ltmp18
	.uleb128 Ltmp24-Lfunc_begin2
	.byte	1
Lcst_end2:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__RNvNvNtCs1zi9xk0MYTQ_4core4hint16assert_unchecked18precondition_checkCs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #8]
	tbnz	w0, #0, LBB19_2
	b	LBB19_1
LBB19_1:
	ldr	x3, [sp, #8]
	adrp	x0, l_anon.95906b9b37cf7559b13929d405a74bd3.15@PAGE
	add	x0, x0, l_anon.95906b9b37cf7559b13929d405a74bd3.15@PAGEOFF
	mov	w8, #443
	mov	x1, x8
	mov	w8, #0
	and	w2, w8, #0x1
	bl	__RNvNtCs1zi9xk0MYTQ_4core9panicking18panic_nounwind_fmt
LBB19_2:
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNvNvNtCs1zi9xk0MYTQ_4core9ub_checks23maybe_is_nonoverlapping7runtimeCs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	umulh	x8, x2, x3
	mul	x9, x2, x3
	str	x9, [sp, #32]
	cbnz	x8, LBB20_2
	b	LBB20_1
LBB20_1:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #32]
	stur	x10, [x29, #-16]
	mov	w10, #1
	stur	x10, [x29, #-24]
	ldur	x10, [x29, #-16]
	str	x10, [sp, #8]
	subs	x8, x8, x9
	b.lo	LBB20_4
	b	LBB20_3
LBB20_2:
	adrp	x0, l_anon.95906b9b37cf7559b13929d405a74bd3.16@PAGE
	add	x0, x0, l_anon.95906b9b37cf7559b13929d405a74bd3.16@PAGEOFF
	mov	w8, #61
	mov	x1, x8
	bl	__RNvNtCs1zi9xk0MYTQ_4core9panicking14panic_nounwind
LBB20_3:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	stur	x8, [x29, #-8]
	b	LBB20_5
LBB20_4:
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	stur	x8, [x29, #-8]
	b	LBB20_5
LBB20_5:
	ldr	x9, [sp, #8]
	ldur	x8, [x29, #-8]
	subs	x8, x8, x9
	cset	w0, hs
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNvXsK_NtCsbtOAwDxaP7e_5alloc6stringNtB5_6StringINtNtCs1zi9xk0MYTQ_4core7convert4FromReE4fromCs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]
	add	x8, sp, #8
	bl	__RINvXs_NvMNtCsbtOAwDxaP7e_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9AKyCTe7XkI_18dangling_reference
	ldr	x9, [sp]
	ldur	q0, [sp, #8]
	str	q0, [x9]
	ldr	x8, [sp, #24]
	str	x8, [x9, #16]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNvXsZ_NtCs5EOoPIk3vm1_3std7processuNtB5_11Termination6reportCs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	mov	w0, #0
	ret
	.cfi_endproc

	.p2align	2
__RNvXsq_NtCsbtOAwDxaP7e_5alloc6stringNtB5_6StringNtNtCs1zi9xk0MYTQ_4core3fmt7Display3fmtCs9AKyCTe7XkI_18dangling_reference:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	mov	x2, x1
	ldr	x0, [x8, #8]
	ldr	x1, [x8, #16]
	bl	__RNvXsi_NtCs1zi9xk0MYTQ_4core3fmteNtB5_7Display3fmt
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__RNvYFEuINtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs9AKyCTe7XkI_18dangling_reference:
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
__RNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs9AKyCTe7XkI_18dangling_reference:
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception3
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
Ltmp25:
	bl	__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs9AKyCTe7XkI_18dangling_reference
	str	w0, [sp, #12]
Ltmp26:
	b	LBB25_3
LBB25_1:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
LBB25_2:
Ltmp27:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-8]
	b	LBB25_1
LBB25_3:
	ldr	w0, [sp, #12]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table25:
Lexception3:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp25-Lfunc_begin3
	.uleb128 Ltmp26-Ltmp25
	.uleb128 Ltmp27-Lfunc_begin3
	.byte	0
	.uleb128 Ltmp26-Lfunc_begin3
	.uleb128 Lfunc_end3-Ltmp26
	.byte	0
	.byte	0
Lcst_end3:
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
	adrp	x0, __RNvCs9AKyCTe7XkI_18dangling_reference4main@PAGE
	add	x0, x0, __RNvCs9AKyCTe7XkI_18dangling_reference4main@PAGEOFF
	mov	w3, #0
	bl	__RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECs9AKyCTe7XkI_18dangling_reference
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.95906b9b37cf7559b13929d405a74bd3.0:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__RNSNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_once6vtableCs9AKyCTe7XkI_18dangling_reference
	.quad	__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs9AKyCTe7XkI_18dangling_reference
	.quad	__RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs9AKyCTe7XkI_18dangling_reference

	.section	__TEXT,__cstring,cstring_literals
l_anon.95906b9b37cf7559b13929d405a74bd3.1:
	.asciz	"/rustc/e22c616e4e87914135c1db261a03e0437255335e/library/core/src/ptr/mod.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.95906b9b37cf7559b13929d405a74bd3.2:
	.quad	l_anon.95906b9b37cf7559b13929d405a74bd3.1
	.asciz	"K\000\000\000\000\000\000\000\023\002\000\000\005\000\000"

	.section	__TEXT,__cstring,cstring_literals
l_anon.95906b9b37cf7559b13929d405a74bd3.3:
	.asciz	"/rustc/e22c616e4e87914135c1db261a03e0437255335e/library/alloc/src/vec/mod.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.95906b9b37cf7559b13929d405a74bd3.4:
	.quad	l_anon.95906b9b37cf7559b13929d405a74bd3.3
	.asciz	"L\000\000\000\000\000\000\000\214\b\000\000\t\000\000"

	.section	__TEXT,__const
l_anon.95906b9b37cf7559b13929d405a74bd3.5:
	.ascii	"Hello, world!"

l_anon.95906b9b37cf7559b13929d405a74bd3.6:
	.ascii	"Hello world"

	.section	__TEXT,__cstring,cstring_literals
l_anon.95906b9b37cf7559b13929d405a74bd3.7:
	.asciz	"\003s: \300\001\n"

	.section	__TEXT,__const
l_anon.95906b9b37cf7559b13929d405a74bd3.8:
	.ascii	"is_aligned_to: align is not a power-of-two"

	.section	__TEXT,__cstring,cstring_literals
l_anon.95906b9b37cf7559b13929d405a74bd3.9:
	.asciz	"/rustc/e22c616e4e87914135c1db261a03e0437255335e/library/core/src/ptr/const_ptr.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.95906b9b37cf7559b13929d405a74bd3.10:
	.quad	l_anon.95906b9b37cf7559b13929d405a74bd3.9
	.asciz	"Q\000\000\000\000\000\000\000^\005\000\000\r\000\000"

	.section	__TEXT,__cstring,cstring_literals
l_anon.95906b9b37cf7559b13929d405a74bd3.11:
	.asciz	"/rustc/e22c616e4e87914135c1db261a03e0437255335e/library/alloc/src/raw_vec/mod.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l_anon.95906b9b37cf7559b13929d405a74bd3.12:
	.quad	l_anon.95906b9b37cf7559b13929d405a74bd3.11
	.asciz	"P\000\000\000\000\000\000\000\266\001\000\000\025\000\000"

	.section	__TEXT,__const
l_anon.95906b9b37cf7559b13929d405a74bd3.13:
	.ascii	"unsafe precondition(s) violated: Vec::set_len requires that new_len <= capacity()\n\nThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety."

l_anon.95906b9b37cf7559b13929d405a74bd3.14:
	.ascii	"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\n\nThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety."

l_anon.95906b9b37cf7559b13929d405a74bd3.15:
	.ascii	"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\n\nThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety."

l_anon.95906b9b37cf7559b13929d405a74bd3.16:
	.ascii	"is_nonoverlapping: `size_of::<T>() * count` overflows a usize"

.subsections_via_symbols
