; ModuleID = 'mutable_borrow_of_mutable_variable.209b4f42cd23fbbf-cgu.0'
source_filename = "mutable_borrow_of_mutable_variable.209b4f42cd23fbbf-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { ptr, [1 x i64] }

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0INtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_once6vtableCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable, ptr @_RNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0Cs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable, ptr @_RNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0Cs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable }>, align 8
@alloc_22c2a97efb3305f3a6a390d1ba6d211a = private unnamed_addr constant [76 x i8] c"/rustc/c78a29473a68f07012904af11c92ecffa68fcc75/library/core/src/ptr/mod.rs\00", align 1
@alloc_0870987817d5409f894b6b8eb55c74e6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_22c2a97efb3305f3a6a390d1ba6d211a, [16 x i8] c"K\00\00\00\00\00\00\00\0F\02\00\00\05\00\00\00" }>, align 8
@alloc_040d0660529e9e48e8593682a93bad41 = private unnamed_addr constant [77 x i8] c"/rustc/c78a29473a68f07012904af11c92ecffa68fcc75/library/alloc/src/vec/mod.rs\00", align 1
@alloc_095ddbce36f8d74c351bda459b44c686 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_040d0660529e9e48e8593682a93bad41, [16 x i8] c"L\00\00\00\00\00\00\001\08\00\00\09\00\00\00" }>, align 8
@alloc_3edef0b68cfa9c8c95e6d4fe1a68842b = private unnamed_addr constant [5 x i8] c"Hello", align 1
@alloc_bcfe78ae3a11ee4dc9d23d32b5e0c4ca = private unnamed_addr constant [8 x i8] c", world!", align 1
@alloc_38f7561a1e08933acd4594936de9b8a4 = private unnamed_addr constant [9 x i8] c"\04y = \C0\01\0A\00", align 1
@alloc_d8a5efae60cd7ac4c397300cf29f8c00 = private unnamed_addr constant [29 x i8] c"! Welcome to borrowing rules.", align 1
@alloc_d683d9ba965e15a9df815af2255b4e29 = private unnamed_addr constant [9 x i8] c"\04x = \C0\01\0A\00", align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant [42 x i8] c"is_aligned_to: align is not a power-of-two", align 1
@alloc_dfcc1270912c3c2dd53e8d6c9102bcc4 = private unnamed_addr constant [82 x i8] c"/rustc/c78a29473a68f07012904af11c92ecffa68fcc75/library/core/src/ptr/const_ptr.rs\00", align 1
@alloc_64fed8c4fbee673024022ff55cd8de6d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_dfcc1270912c3c2dd53e8d6c9102bcc4, [16 x i8] c"Q\00\00\00\00\00\00\00^\05\00\00\0D\00\00\00" }>, align 8
@alloc_69039b4430833c69028b88fddaeb4236 = private unnamed_addr constant [81 x i8] c"/rustc/c78a29473a68f07012904af11c92ecffa68fcc75/library/core/src/ptr/non_null.rs\00", align 1
@alloc_f6103491b3ee992b4172e8c24b00ba9c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_69039b4430833c69028b88fddaeb4236, [16 x i8] c"P\00\00\00\00\00\00\00\BA\03\00\00 \00\00\00" }>, align 8
@alloc_ec595fc0e82ef92fc59bd74f68296eae = private unnamed_addr constant [73 x i8] c"assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize", align 1
@alloc_69e7e9d25ab0686249bef83149488693 = private unnamed_addr constant [79 x i8] c"/rustc/c78a29473a68f07012904af11c92ecffa68fcc75/library/core/src/slice/iter.rs\00", align 1
@alloc_b6df5aca7a46eb5b28e310233e1687c4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_69e7e9d25ab0686249bef83149488693, [16 x i8] c"N\00\00\00\00\00\00\00\8E\00\00\00\01\00\00\00" }>, align 8
@alloc_fd1c219e1b46fa0465b3fa2077bf9bc3 = private unnamed_addr constant [81 x i8] c"/rustc/c78a29473a68f07012904af11c92ecffa68fcc75/library/alloc/src/raw_vec/mod.rs\00", align 1
@alloc_242a9c289f160b6b04536fa4553bb5fd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fd1c219e1b46fa0465b3fa2077bf9bc3, [16 x i8] c"P\00\00\00\00\00\00\00\A6\01\00\00\15\00\00\00" }>, align 8
@alloc_de4e626d456b04760e72bc785ed7e52a = private unnamed_addr constant [201 x i8] c"unsafe precondition(s) violated: ptr::offset_from_unsigned requires `self >= origin`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_57d70e9d94c65ecfc15225d29a5ed72b = private unnamed_addr constant [198 x i8] c"unsafe precondition(s) violated: Vec::set_len requires that new_len <= capacity()\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_bd3468a7b96187f70c1ce98a3e7a63bf = private unnamed_addr constant [283 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_64e308ef4babfeb8b6220184de794a17 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize", align 1
@alloc_a28e8c8fd5088943a8b5d44af697ff83 = private unnamed_addr constant [279 x i8] c"unsafe precondition(s) violated: slice::from_raw_parts requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1

; <core::fmt::rt::Argument>::new_display::<alloc::string::String>
; Function Attrs: inlinehint uwtable
define internal void @_RINvMNtNtCskGIogOxDTKR_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsh6vJiAMAlSt_5alloc6string6StringECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #0 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %x, ptr %_2, align 8
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr @_RNvXsq_NtCsh6vJiAMAlSt_5alloc6stringNtB5_6StringNtNtCskGIogOxDTKR_4core3fmt7Display3fmtCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 16, i1 false)
  ret void
}

; <core::fmt::rt::Argument>::new_display::<&mut alloc::string::String>
; Function Attrs: inlinehint uwtable
define internal void @_RINvMNtNtCskGIogOxDTKR_4core3fmt2rtNtB3_8Argument11new_displayQNtNtCsh6vJiAMAlSt_5alloc6string6StringECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #0 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %x, ptr %_2, align 8
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr @_RNvXs1j_NtCskGIogOxDTKR_4core3fmtQNtNtCsh6vJiAMAlSt_5alloc6string6StringNtB6_7Display3fmtCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 16, i1 false)
  ret void
}

; <core::fmt::Arguments>::new::<9, 1>
; Function Attrs: inlinehint uwtable
define internal { ptr, ptr } @_RINvMs2_NtCskGIogOxDTKR_4core3fmtNtB6_9Arguments3newKj9_Kj1_ECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 1 %template, ptr align 8 %args) unnamed_addr #0 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %template, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %args, 1
  ret { ptr, ptr } %1
}

; std::rt::lang_start::<()>
; Function Attrs: uwtable
define hidden i64 @_RINvNtCs9sWpqdd8Yre_3std2rt10lang_startuECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #1 {
start:
  %_7 = alloca [8 x i8], align 8
  store ptr %main, ptr %_7, align 8
; call std::rt::lang_start_internal
  %_0 = call i64 @_RNvNtCs9sWpqdd8Yre_3std2rt19lang_start_internal(ptr align 1 %_7, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe)
  ret i64 %_0
}

; core::ptr::drop_in_place::<alloc::vec::Vec<u8>>
; Function Attrs: uwtable
define internal void @_RINvNtCskGIogOxDTKR_4core3ptr13drop_in_placeINtNtCsh6vJiAMAlSt_5alloc3vec3VechEECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
; invoke <alloc::vec::Vec<u8> as core::ops::drop::Drop>::drop
  invoke void @_RNvXso_NtCsh6vJiAMAlSt_5alloc3vecINtB5_3VechENtNtNtCskGIogOxDTKR_4core3ops4drop4Drop4dropCsfAwzcyZjESD_5gimli(ptr align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place::<alloc::raw_vec::RawVec<u8>>
  invoke void @_RINvNtCskGIogOxDTKR_4core3ptr13drop_in_placeINtNtCsh6vJiAMAlSt_5alloc7raw_vec6RawVechEECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %_1) #13
          to label %bb1 unwind label %terminate

cleanup:                                          ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb3

bb4:                                              ; preds = %start
; call core::ptr::drop_in_place::<alloc::raw_vec::RawVec<u8>>
  call void @_RINvNtCskGIogOxDTKR_4core3ptr13drop_in_placeINtNtCsh6vJiAMAlSt_5alloc7raw_vec6RawVechEECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %_1)
  ret void

terminate:                                        ; preds = %bb3
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCskGIogOxDTKR_4core9panicking16panic_in_cleanup() #14
  unreachable

bb1:                                              ; preds = %bb3
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue { ptr, i32 } poison, ptr %6, 0
  %10 = insertvalue { ptr, i32 } %9, i32 %8, 1
  resume { ptr, i32 } %10
}

; core::ptr::drop_in_place::<alloc::raw_vec::RawVec<u8>>
; Function Attrs: uwtable
define internal void @_RINvNtCskGIogOxDTKR_4core3ptr13drop_in_placeINtNtCsh6vJiAMAlSt_5alloc7raw_vec6RawVechEECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %_1) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<u8> as core::ops::drop::Drop>::drop
  call void @_RNvXs1_NtCsh6vJiAMAlSt_5alloc7raw_vecINtB5_6RawVechENtNtNtCskGIogOxDTKR_4core3ops4drop4Drop4dropCsfAwzcyZjESD_5gimli(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place::<alloc::string::String>
; Function Attrs: uwtable
define internal void @_RINvNtCskGIogOxDTKR_4core3ptr13drop_in_placeNtNtCsh6vJiAMAlSt_5alloc6string6StringECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %_1) unnamed_addr #1 {
start:
; call core::ptr::drop_in_place::<alloc::vec::Vec<u8>>
  call void @_RINvNtCskGIogOxDTKR_4core3ptr13drop_in_placeINtNtCsh6vJiAMAlSt_5alloc3vec3VechEECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %_1)
  ret void
}

; std::sys::backtrace::__rust_begin_short_backtrace::<fn(), ()>
; Function Attrs: noinline uwtable
define internal void @_RINvNtNtCs9sWpqdd8Yre_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %f) unnamed_addr #2 {
start:
; call <fn() as core::ops::function::FnOnce<()>>::call_once
  call void @_RNvYFEuINtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_onceCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %f) #15
  call void asm sideeffect "", "~{memory}"(), !srcloc !3
  ret void
}

; <u8 as <[_]>::to_vec_in::ConvertVec>::to_vec::<alloc::alloc::Global>
; Function Attrs: inlinehint uwtable
define internal void @_RINvXs_NvMNtCsh6vJiAMAlSt_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr sret([24 x i8]) align 8 %v, ptr align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %_17 = alloca [8 x i8], align 8
; call <alloc::raw_vec::RawVecInner>::with_capacity_in
  %0 = call { i64, ptr } @_RNvMs4_NtCsh6vJiAMAlSt_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(i64 %s.1, i64 1, i64 1) #15
  %_10.0 = extractvalue { i64, ptr } %0, 0
  %_10.1 = extractvalue { i64, ptr } %0, 1
  store i64 %_10.0, ptr %v, align 8
  %1 = getelementptr inbounds i8, ptr %v, i64 8
  store ptr %_10.1, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 0, ptr %2, align 8
  %_4 = icmp ugt i64 %s.1, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %bb9, %start
  ret void

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds i8, ptr %v, i64 8
  %_12 = load ptr, ptr %3, align 8
  br label %bb4

bb4:                                              ; preds = %bb1
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_RNvNvNtCskGIogOxDTKR_4core3ptr19copy_nonoverlapping18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %s.0, ptr %_12, i64 1, i64 1, i64 %s.1, ptr align 8 @alloc_0870987817d5409f894b6b8eb55c74e6) #16
  br label %bb6

bb6:                                              ; preds = %bb4
  %4 = mul i64 %s.1, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_12, ptr align 1 %s.0, i64 %4, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb12

bb12:                                             ; preds = %bb7
  %self = load i64, ptr %v, align 8
  store i64 %self, ptr %_17, align 8
  br label %bb10

bb10:                                             ; preds = %bb12
  %5 = load i64, ptr %_17, align 8
; call <alloc::vec::Vec<_, _>>::set_len::precondition_check
  call void @_RNvNvMs_NtCsh6vJiAMAlSt_5alloc3vecINtB6_3VecppE7set_len18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(i64 %s.1, i64 %5, ptr align 8 @alloc_095ddbce36f8d74c351bda459b44c686) #16
  br label %bb9

bb9:                                              ; preds = %bb10
  %6 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 %s.1, ptr %6, align 8
  br label %bb2

bb11:                                             ; No predecessors!
  unreachable
}

; std::rt::lang_start::<()>::{closure#0}
; Function Attrs: inlinehint uwtable
define internal i32 @_RNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0Cs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %_1) unnamed_addr #0 {
start:
  %_4 = load ptr, ptr %_1, align 8
; call std::sys::backtrace::__rust_begin_short_backtrace::<fn(), ()>
  call void @_RINvNtNtCs9sWpqdd8Yre_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %_4) #17
; call <() as std::process::Termination>::report
  %self = call i8 @_RNvXsZ_NtCs9sWpqdd8Yre_3std7processuNtB5_11Termination6reportCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable() #15
  %_0 = zext i8 %self to i32
  ret i32 %_0
}

; <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once::{shim:vtable#0}
; Function Attrs: inlinehint uwtable
define internal i32 @_RNSNvYNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0INtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_once6vtableCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %_1) unnamed_addr #0 {
start:
  %_2 = alloca [0 x i8], align 1
  %0 = load ptr, ptr %_1, align 8
; call <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once
  %_0 = call i32 @_RNvYNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0INtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_onceCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %0) #15
  ret i32 %_0
}

; mutable_borrow_of_mutable_variable::main
; Function Attrs: uwtable
define hidden void @_RNvCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable4main() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %args1 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %y = alloca [8 x i8], align 8
  %x = alloca [24 x i8], align 8
; call <alloc::string::String as core::convert::From<&str>>::from
  call void @_RNvXsK_NtCsh6vJiAMAlSt_5alloc6stringNtB5_6StringINtNtCskGIogOxDTKR_4core7convert4FromReE4fromCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr sret([24 x i8]) align 8 %x, ptr align 1 @alloc_3edef0b68cfa9c8c95e6d4fe1a68842b, i64 5) #15
  store ptr %x, ptr %y, align 8
  %1 = load ptr, ptr %y, align 8
; invoke <alloc::string::String>::push_str
  invoke void @_RNvMNtCsh6vJiAMAlSt_5alloc6stringNtB2_6String8push_strCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %1, ptr align 1 @alloc_bcfe78ae3a11ee4dc9d23d32b5e0c4ca, i64 8)
          to label %bb2 unwind label %cleanup

bb11:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place::<alloc::string::String>
  invoke void @_RINvNtCskGIogOxDTKR_4core3ptr13drop_in_placeNtNtCsh6vJiAMAlSt_5alloc6string6StringECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %x) #13
          to label %bb12 unwind label %terminate

cleanup:                                          ; preds = %bb8, %bb7, %bb6, %bb5, %bb4, %bb3, %bb2, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb11

bb2:                                              ; preds = %start
; invoke <core::fmt::rt::Argument>::new_display::<&mut alloc::string::String>
  invoke void @_RINvMNtNtCskGIogOxDTKR_4core3fmt2rtNtB3_8Argument11new_displayQNtNtCsh6vJiAMAlSt_5alloc6string6StringECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr sret([16 x i8]) align 8 %_10, ptr align 8 %y)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %6 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %_10, i64 16, i1 false)
; invoke <core::fmt::Arguments>::new::<9, 1>
  %7 = invoke { ptr, ptr } @_RINvMs2_NtCskGIogOxDTKR_4core3fmtNtB6_9Arguments3newKj9_Kj1_ECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 1 @alloc_38f7561a1e08933acd4594936de9b8a4, ptr align 8 %args)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_6.0 = extractvalue { ptr, ptr } %7, 0
  %_6.1 = extractvalue { ptr, ptr } %7, 1
; invoke std::io::stdio::_print
  invoke void @_RNvNtNtCs9sWpqdd8Yre_3std2io5stdio6__print(ptr %_6.0, ptr %_6.1)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
; invoke <alloc::string::String>::push_str
  invoke void @_RNvMNtCsh6vJiAMAlSt_5alloc6stringNtB2_6String8push_strCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %x, ptr align 1 @alloc_d8a5efae60cd7ac4c397300cf29f8c00, i64 29)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <core::fmt::rt::Argument>::new_display::<alloc::string::String>
  invoke void @_RINvMNtNtCskGIogOxDTKR_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsh6vJiAMAlSt_5alloc6string6StringECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr sret([16 x i8]) align 8 %_21, ptr align 8 %x)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %8 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args1, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %_21, i64 16, i1 false)
; invoke <core::fmt::Arguments>::new::<9, 1>
  %9 = invoke { ptr, ptr } @_RINvMs2_NtCskGIogOxDTKR_4core3fmtNtB6_9Arguments3newKj9_Kj1_ECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 1 @alloc_d683d9ba965e15a9df815af2255b4e29, ptr align 8 %args1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  %_17.0 = extractvalue { ptr, ptr } %9, 0
  %_17.1 = extractvalue { ptr, ptr } %9, 1
; invoke std::io::stdio::_print
  invoke void @_RNvNtNtCs9sWpqdd8Yre_3std2io5stdio6__print(ptr %_17.0, ptr %_17.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
; call core::ptr::drop_in_place::<alloc::string::String>
  call void @_RINvNtCskGIogOxDTKR_4core3ptr13drop_in_placeNtNtCsh6vJiAMAlSt_5alloc6string6StringECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %x)
  ret void

terminate:                                        ; preds = %bb11
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCskGIogOxDTKR_4core9panicking16panic_in_cleanup() #14
  unreachable

bb12:                                             ; preds = %bb11
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  %13 = load i32, ptr %12, align 8
  %14 = insertvalue { ptr, i32 } poison, ptr %11, 0
  %15 = insertvalue { ptr, i32 } %14, i32 %13, 1
  resume { ptr, i32 } %15
}

; <alloc::string::String>::push_str
; Function Attrs: inlinehint uwtable
define internal void @_RNvMNtCsh6vJiAMAlSt_5alloc6stringNtB2_6String8push_strCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %self, ptr align 1 %string.0, i64 %string.1) unnamed_addr #0 {
start:
  %len.i = alloca [8 x i8], align 8
  %iterator = alloca [16 x i8], align 8
  %_9 = getelementptr inbounds nuw i8, ptr %string.0, i64 %string.1
  store ptr %string.0, ptr %iterator, align 8
  %0 = getelementptr inbounds i8, ptr %iterator, i64 8
  store ptr %_9, ptr %0, align 8
  %self1.i = load ptr, ptr %iterator, align 8
  %1 = getelementptr inbounds i8, ptr %iterator, i64 8
  %_7.i = load ptr, ptr %1, align 8
; call <*const _>::offset_from_unsigned::precondition_check
  call void @_RNvNvMNtNtCskGIogOxDTKR_4core3ptr9const_ptrPp20offset_from_unsigned18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %_7.i, ptr %self1.i, ptr align 8 @alloc_f6103491b3ee992b4172e8c24b00ba9c) #16
  %2 = ptrtoint ptr %_7.i to i64
  %3 = ptrtoint ptr %self1.i to i64
  %4 = sub nuw i64 %2, %3
  store i64 %4, ptr %len.i, align 8
  %5 = load i64, ptr %len.i, align 8
; call core::slice::raw::from_raw_parts::precondition_check
  call void @_RNvNvNtNtCskGIogOxDTKR_4core5slice3raw14from_raw_parts18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %self1.i, i64 1, i64 1, i64 %5, ptr align 8 @alloc_b6df5aca7a46eb5b28e310233e1687c4) #16
  %_19.1.i = load i64, ptr %len.i, align 8
  %6 = insertvalue { ptr, i64 } poison, ptr %self1.i, 0
  %7 = insertvalue { ptr, i64 } %6, i64 %_19.1.i, 1
  %slice.0 = extractvalue { ptr, i64 } %7, 0
  %slice.1 = extractvalue { ptr, i64 } %7, 1
; call <alloc::vec::Vec<u8>>::append_elements
  call void @_RNvMs_NtCsh6vJiAMAlSt_5alloc3vecINtB4_3VechE15append_elementsCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %self, ptr %slice.0, i64 %slice.1) #15
  ret void
}

; <*const ()>::is_aligned_to
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_RNvMNtNtCskGIogOxDTKR_4core3ptr9const_ptrPu13is_aligned_toCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %self, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca [4 x i8], align 4
  %1 = call i64 @llvm.ctpop.i64(i64 %align)
  %2 = trunc i64 %1 to i32
  store i32 %2, ptr %0, align 4
  %_8 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %_8, 1
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %_6 = ptrtoint ptr %self to i64
  %_7 = sub i64 %align, 1
  %_5 = and i64 %_6, %_7
  %_0 = icmp eq i64 %_5, 0
  ret i1 %_0

bb2:                                              ; preds = %start
; call core::panicking::panic_fmt
  call void @_RNvNtCskGIogOxDTKR_4core9panicking9panic_fmt(ptr @alloc_fad0cd83b7d1858a846a172eb260e593, ptr inttoptr (i64 85 to ptr), ptr align 8 @alloc_64fed8c4fbee673024022ff55cd8de6d) #18
  unreachable
}

; <alloc::raw_vec::RawVecInner>::with_capacity_in
; Function Attrs: inlinehint uwtable
define internal { i64, ptr } @_RNvMs4_NtCsh6vJiAMAlSt_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(i64 %capacity, i64 %elem_layout.0, i64 %elem_layout.1) unnamed_addr #0 {
start:
  %self = alloca [8 x i8], align 8
  %_4 = alloca [24 x i8], align 8
; call <alloc::raw_vec::RawVecInner>::try_allocate_in
  call void @_RNvMs4_NtCsh6vJiAMAlSt_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfAwzcyZjESD_5gimli(ptr sret([24 x i8]) align 8 %_4, i64 %capacity, i1 zeroext false, i64 %elem_layout.0, i64 %elem_layout.1)
  %_5 = load i64, ptr %_4, align 8
  %0 = trunc nuw i64 %_5 to i1
  br i1 %0, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_4, i64 8
  %err.0 = load i64, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %err.1 = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  call void @_RNvNtCsh6vJiAMAlSt_5alloc7raw_vec12handle_error(i64 %err.0, i64 %err.1) #19
  unreachable

bb4:                                              ; preds = %start
  %3 = getelementptr inbounds i8, ptr %_4, i64 8
  %this.0 = load i64, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  %this.1 = load ptr, ptr %4, align 8
  %5 = icmp eq i64 %elem_layout.1, 0
  br i1 %5, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  store i64 -1, ptr %self, align 8
  br label %bb5

bb7:                                              ; preds = %bb4
  store i64 %this.0, ptr %self, align 8
  br label %bb5

bb5:                                              ; preds = %bb7, %bb6
  %6 = load i64, ptr %self, align 8
  %_11 = sub i64 %6, 0
  %_7 = icmp ugt i64 %capacity, %_11
  %cond = xor i1 %_7, true
  br label %bb8

bb8:                                              ; preds = %bb5
; call core::hint::assert_unchecked::precondition_check
  call void @_RNvNvNtCskGIogOxDTKR_4core4hint16assert_unchecked18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(i1 zeroext %cond, ptr align 8 @alloc_242a9c289f160b6b04536fa4553bb5fd) #16
  br label %bb9

bb9:                                              ; preds = %bb8
  %7 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %this.1, 1
  ret { i64, ptr } %8

bb2:                                              ; No predecessors!
  unreachable
}

; <alloc::vec::Vec<u8>>::append_elements
; Function Attrs: inlinehint uwtable
define internal void @_RNvMs_NtCsh6vJiAMAlSt_5alloc3vecINtB4_3VechE15append_elementsCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %self, ptr %other.0, i64 %other.1) unnamed_addr #0 {
start:
; call <alloc::vec::Vec<u8>>::reserve
  call void @_RNvMs_NtCsh6vJiAMAlSt_5alloc3vecINtB4_3VechE7reserveCs8HOFqohJ1wx_9addr2line(ptr align 8 %self, i64 %other.1)
  %0 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %0, align 8
  %_10 = icmp ule i64 %len, 9223372036854775807
  %_6 = icmp ugt i64 %other.1, 0
  br i1 %_6, label %bb2, label %bb3

bb3:                                              ; preds = %bb6, %start
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %2 = getelementptr inbounds i8, ptr %self, i64 16
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %other.1
  store i64 %4, ptr %1, align 8
  ret void

bb2:                                              ; preds = %start
  %5 = getelementptr inbounds i8, ptr %self, i64 8
  %_11 = load ptr, ptr %5, align 8
  %dst = getelementptr inbounds nuw i8, ptr %_11, i64 %len
  br label %bb4

bb4:                                              ; preds = %bb2
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_RNvNvNtCskGIogOxDTKR_4core3ptr19copy_nonoverlapping18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %other.0, ptr %dst, i64 1, i64 1, i64 %other.1, ptr align 8 @alloc_0870987817d5409f894b6b8eb55c74e6) #16
  br label %bb6

bb6:                                              ; preds = %bb4
  %6 = mul i64 %other.1, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %dst, ptr align 1 %other.0, i64 %6, i1 false)
  br label %bb3
}

; core::intrinsics::cold_path
; Function Attrs: cold nounwind uwtable
define internal void @_RNvNtCskGIogOxDTKR_4core10intrinsics9cold_pathCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable() unnamed_addr #3 {
start:
  ret void
}

; <*const _>::offset_from_unsigned::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_RNvNvMNtNtCskGIogOxDTKR_4core3ptr9const_ptrPp20offset_from_unsigned18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %this, ptr %origin, ptr align 8 %0) unnamed_addr #4 {
start:
  %_3 = icmp uge ptr %this, %origin
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCskGIogOxDTKR_4core9panicking18panic_nounwind_fmt(ptr @alloc_de4e626d456b04760e72bc785ed7e52a, ptr inttoptr (i64 403 to ptr), i1 zeroext false, ptr align 8 %0) #20
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; <alloc::vec::Vec<_, _>>::set_len::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_RNvNvMs_NtCsh6vJiAMAlSt_5alloc3vecINtB6_3VecppE7set_len18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(i64 %new_len, i64 %capacity, ptr align 8 %0) unnamed_addr #4 {
start:
  %_3 = icmp ule i64 %new_len, %capacity
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCskGIogOxDTKR_4core9panicking18panic_nounwind_fmt(ptr @alloc_57d70e9d94c65ecfc15225d29a5ed72b, ptr inttoptr (i64 397 to ptr), i1 zeroext false, ptr align 8 %0) #20
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_RNvNvNtCskGIogOxDTKR_4core3ptr19copy_nonoverlapping18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %src, ptr %dst, i64 %size, i64 %align, i64 %count, ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %zero_size = alloca [1 x i8], align 1
  %1 = icmp eq i64 %count, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, ptr %zero_size, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %2 = icmp eq i64 %size, 0
  %3 = zext i1 %2 to i8
  store i8 %3, ptr %zero_size, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i8, ptr %zero_size, align 1
  %is_zst = trunc nuw i8 %4 to i1
; invoke <*const ()>::is_aligned_to
  %_15 = invoke zeroext i1 @_RNvMNtNtCskGIogOxDTKR_4core3ptr9const_ptrPu13is_aligned_toCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %src, i64 %align)
          to label %bb15 unwind label %terminate

terminate:                                        ; preds = %bb5, %bb4, %bb3
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_RNvNtCskGIogOxDTKR_4core9panicking19panic_cannot_unwind() #14
  unreachable

bb15:                                             ; preds = %bb3
  br i1 %_15, label %bb11, label %bb12

bb12:                                             ; preds = %bb15
  br label %bb7

bb11:                                             ; preds = %bb15
  br i1 %is_zst, label %bb13, label %bb14

bb7:                                              ; preds = %bb14, %bb12
  br label %bb8

bb14:                                             ; preds = %bb11
  %_17 = ptrtoint ptr %src to i64
  %_16 = icmp eq i64 %_17, 0
  %_8 = xor i1 %_16, true
  br i1 %_8, label %bb4, label %bb7

bb13:                                             ; preds = %bb11
  br label %bb4

bb4:                                              ; preds = %bb13, %bb14
; invoke <*const ()>::is_aligned_to
  %_18 = invoke zeroext i1 @_RNvMNtNtCskGIogOxDTKR_4core3ptr9const_ptrPu13is_aligned_toCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %dst, i64 %align)
          to label %bb20 unwind label %terminate

bb8:                                              ; preds = %bb6, %bb7
  br label %bb9

bb20:                                             ; preds = %bb4
  br i1 %_18, label %bb16, label %bb17

bb17:                                             ; preds = %bb20
  br label %bb6

bb16:                                             ; preds = %bb20
  %6 = load i8, ptr %zero_size, align 1
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %bb18, label %bb19

bb6:                                              ; preds = %bb19, %bb17
  br label %bb8

bb19:                                             ; preds = %bb16
  %_20 = ptrtoint ptr %dst to i64
  %_19 = icmp eq i64 %_20, 0
  %_10 = xor i1 %_19, true
  br i1 %_10, label %bb5, label %bb6

bb18:                                             ; preds = %bb16
  br label %bb5

bb5:                                              ; preds = %bb18, %bb19
; invoke core::ub_checks::maybe_is_nonoverlapping::runtime
  %_6 = invoke zeroext i1 @_RNvNvNtCskGIogOxDTKR_4core9ub_checks23maybe_is_nonoverlapping7runtimeCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %src, ptr %dst, i64 %size, i64 %count)
          to label %bb21 unwind label %terminate

bb9:                                              ; preds = %bb21, %bb8
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCskGIogOxDTKR_4core9panicking18panic_nounwind_fmt(ptr @alloc_bd3468a7b96187f70c1ce98a3e7a63bf, ptr inttoptr (i64 567 to ptr), i1 zeroext false, ptr align 8 %0) #20
  unreachable

bb21:                                             ; preds = %bb5
  br i1 %_6, label %bb10, label %bb9

bb10:                                             ; preds = %bb21
  ret void
}

; core::hint::assert_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_RNvNvNtCskGIogOxDTKR_4core4hint16assert_unchecked18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(i1 zeroext %cond, ptr align 8 %0) unnamed_addr #4 {
start:
  br i1 %cond, label %bb2, label %bb1

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCskGIogOxDTKR_4core9panicking18panic_nounwind_fmt(ptr @alloc_64e308ef4babfeb8b6220184de794a17, ptr inttoptr (i64 443 to ptr), i1 zeroext false, ptr align 8 %0) #20
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::ub_checks::maybe_is_nonoverlapping::runtime
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_RNvNvNtCskGIogOxDTKR_4core9ub_checks23maybe_is_nonoverlapping7runtimeCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %src, ptr %dst, i64 %size, i64 %count) unnamed_addr #0 {
start:
  %diff = alloca [8 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %src_usize = ptrtoint ptr %src to i64
  %dst_usize = ptrtoint ptr %dst to i64
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %size, i64 %count)
  %_13.0 = extractvalue { i64, i1 } %0, 0
  %_13.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_13.1, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %_13.0, ptr %1, align 8
  store i64 1, ptr %_9, align 8
  %2 = getelementptr inbounds i8, ptr %_9, i64 8
  %size1 = load i64, ptr %2, align 8
  %_21 = icmp ult i64 %src_usize, %dst_usize
  br i1 %_21, label %bb4, label %bb5

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_RNvNtCskGIogOxDTKR_4core9panicking14panic_nounwind(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i64 61) #20
  unreachable

bb5:                                              ; preds = %bb3
  %3 = sub i64 %src_usize, %dst_usize
  store i64 %3, ptr %diff, align 8
  br label %bb6

bb4:                                              ; preds = %bb3
  %4 = sub i64 %dst_usize, %src_usize
  store i64 %4, ptr %diff, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %5 = load i64, ptr %diff, align 8
  %_0 = icmp uge i64 %5, %size1
  ret i1 %_0
}

; core::slice::raw::from_raw_parts::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_RNvNvNtNtCskGIogOxDTKR_4core5slice3raw14from_raw_parts18precondition_checkCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %data, i64 %size, i64 %align, i64 %len, ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %max_len = alloca [8 x i8], align 8
; invoke <*const ()>::is_aligned_to
  %_11 = invoke zeroext i1 @_RNvMNtNtCskGIogOxDTKR_4core3ptr9const_ptrPu13is_aligned_toCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %data, i64 %align)
          to label %bb8 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_RNvNtCskGIogOxDTKR_4core9panicking19panic_cannot_unwind() #14
  unreachable

bb8:                                              ; preds = %start
  br i1 %_11, label %bb6, label %bb7

bb7:                                              ; preds = %bb8
  br label %bb4

bb6:                                              ; preds = %bb8
  %_13 = ptrtoint ptr %data to i64
  %_12 = icmp eq i64 %_13, 0
  %_5 = xor i1 %_12, true
  br i1 %_5, label %bb1, label %bb4

bb4:                                              ; preds = %bb6, %bb7
  br label %bb5

bb1:                                              ; preds = %bb6
  %2 = icmp eq i64 %size, 0
  br i1 %2, label %bb9, label %bb10

bb5:                                              ; preds = %bb3, %bb4
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCskGIogOxDTKR_4core9panicking18panic_nounwind_fmt(ptr @alloc_a28e8c8fd5088943a8b5d44af697ff83, ptr inttoptr (i64 559 to ptr), i1 zeroext false, ptr align 8 %0) #20
  unreachable

bb9:                                              ; preds = %bb1
  store i64 -1, ptr %max_len, align 8
  br label %bb11

bb10:                                             ; preds = %bb1
  %3 = udiv i64 9223372036854775807, %size
  store i64 %3, ptr %max_len, align 8
  br label %bb11

bb11:                                             ; preds = %bb10, %bb9
  %4 = load i64, ptr %max_len, align 8
  %_7 = icmp ule i64 %len, %4
  br i1 %_7, label %bb2, label %bb3

bb3:                                              ; preds = %bb11
  br label %bb5

bb2:                                              ; preds = %bb11
  ret void
}

; <&mut alloc::string::String as core::fmt::Display>::fmt
; Function Attrs: uwtable
define internal zeroext i1 @_RNvXs1j_NtCskGIogOxDTKR_4core3fmtQNtNtCsh6vJiAMAlSt_5alloc6string6StringNtB6_7Display3fmtCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %self, ptr align 8 %f) unnamed_addr #1 {
start:
  %_4 = load ptr, ptr %self, align 8
; call <alloc::string::String as core::fmt::Display>::fmt
  %_0 = call zeroext i1 @_RNvXsq_NtCsh6vJiAMAlSt_5alloc6stringNtB5_6StringNtNtCskGIogOxDTKR_4core3fmt7Display3fmtCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %_4, ptr align 8 %f) #15
  ret i1 %_0
}

; <alloc::string::String as core::convert::From<&str>>::from
; Function Attrs: inlinehint uwtable
define internal void @_RNvXsK_NtCsh6vJiAMAlSt_5alloc6stringNtB5_6StringINtNtCskGIogOxDTKR_4core7convert4FromReE4fromCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %bytes = alloca [24 x i8], align 8
; call <u8 as <[_]>::to_vec_in::ConvertVec>::to_vec::<alloc::alloc::Global>
  call void @_RINvXs_NvMNtCsh6vJiAMAlSt_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr sret([24 x i8]) align 8 %bytes, ptr align 1 %s.0, i64 %s.1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %bytes, i64 24, i1 false)
  ret void
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint uwtable
define internal i8 @_RNvXsZ_NtCs9sWpqdd8Yre_3std7processuNtB5_11Termination6reportCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable() unnamed_addr #0 {
start:
  ret i8 0
}

; <alloc::string::String as core::fmt::Display>::fmt
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_RNvXsq_NtCsh6vJiAMAlSt_5alloc6stringNtB5_6StringNtNtCskGIogOxDTKR_4core3fmt7Display3fmtCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %self, ptr align 8 %f) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_8 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %_7 = load i64, ptr %1, align 8
; call <str as core::fmt::Display>::fmt
  %_0 = call zeroext i1 @_RNvXsi_NtCskGIogOxDTKR_4core3fmteNtB5_7Display3fmt(ptr align 1 %_8, i64 %_7, ptr align 8 %f)
  ret i1 %_0
}

; <fn() as core::ops::function::FnOnce<()>>::call_once
; Function Attrs: inlinehint uwtable
define internal void @_RNvYFEuINtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_onceCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %_1) unnamed_addr #0 {
start:
  %_2 = alloca [0 x i8], align 1
  call void %_1()
  ret void
}

; <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once
; Function Attrs: inlinehint uwtable
define internal i32 @_RNvYNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0INtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_onceCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  %_1 = alloca [8 x i8], align 8
  store ptr %0, ptr %_1, align 8
; invoke std::rt::lang_start::<()>::{closure#0}
  %_0 = invoke i32 @_RNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0Cs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr align 8 %_1)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = load i32, ptr %3, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1
  resume { ptr, i32 } %6

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %1, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret i32 %_0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; std::rt::lang_start_internal
; Function Attrs: uwtable
declare i64 @_RNvNtCs9sWpqdd8Yre_3std2rt19lang_start_internal(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #1

; Function Attrs: nounwind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #6

; <alloc::vec::Vec<u8> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
declare void @_RNvXso_NtCsh6vJiAMAlSt_5alloc3vecINtB5_3VechENtNtNtCskGIogOxDTKR_4core3ops4drop4Drop4dropCsfAwzcyZjESD_5gimli(ptr align 8) unnamed_addr #1

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind optsize uwtable
declare void @_RNvNtCskGIogOxDTKR_4core9panicking16panic_in_cleanup() unnamed_addr #7

; <alloc::raw_vec::RawVec<u8> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
declare void @_RNvXs1_NtCsh6vJiAMAlSt_5alloc7raw_vecINtB5_6RawVechENtNtNtCskGIogOxDTKR_4core3ops4drop4Drop4dropCsfAwzcyZjESD_5gimli(ptr align 8) unnamed_addr #1

; std::io::stdio::_print
; Function Attrs: uwtable
declare void @_RNvNtNtCs9sWpqdd8Yre_3std2io5stdio6__print(ptr, ptr) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @_RNvNtCskGIogOxDTKR_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #9

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_RNvNtCskGIogOxDTKR_4core9panicking5panic(ptr align 1, i64, ptr align 8) unnamed_addr #9

; <alloc::raw_vec::RawVecInner>::try_allocate_in
; Function Attrs: uwtable
declare void @_RNvMs4_NtCsh6vJiAMAlSt_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfAwzcyZjESD_5gimli(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #1

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn optsize uwtable
declare void @_RNvNtCsh6vJiAMAlSt_5alloc7raw_vec12handle_error(i64, i64) unnamed_addr #10

; <alloc::vec::Vec<u8>>::reserve
; Function Attrs: uwtable
declare void @_RNvMs_NtCsh6vJiAMAlSt_5alloc3vecINtB4_3VechE7reserveCs8HOFqohJ1wx_9addr2line(ptr align 8, i64) unnamed_addr #1

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_RNvNtCskGIogOxDTKR_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #11

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind optsize uwtable
declare void @_RNvNtCskGIogOxDTKR_4core9panicking19panic_cannot_unwind() unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_RNvNtCskGIogOxDTKR_4core9panicking14panic_nounwind(ptr align 1, i64) unnamed_addr #11

; <str as core::fmt::Display>::fmt
; Function Attrs: uwtable
declare zeroext i1 @_RNvXsi_NtCskGIogOxDTKR_4core3fmteNtB5_7Display3fmt(ptr align 1, i64, ptr align 8) unnamed_addr #1

define i32 @main(i32 %0, ptr %1) unnamed_addr #12 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start::<()>
  %3 = call i64 @_RINvNtCs9sWpqdd8Yre_3std2rt10lang_startuECs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable(ptr @_RNvCs2Nz0fTn9gmx_34mutable_borrow_of_mutable_variable4main, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #2 = { noinline uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #3 = { cold nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #7 = { cold minsize noinline noreturn nounwind optsize uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #10 = { cold minsize noreturn optsize uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #11 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #12 = { "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { inlinehint }
attributes #16 = { inlinehint nounwind }
attributes #17 = { noinline }
attributes #18 = { noinline noreturn }
attributes #19 = { noreturn }
attributes #20 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"rustc version 1.95.0-nightly (c78a29473 2026-02-22)"}
!3 = !{i64 13652992367558960}
