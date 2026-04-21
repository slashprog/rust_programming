; ModuleID = 'dangling_reference.6fbb973163d6883a-cgu.0'
source_filename = "dangling_reference.6fbb973163d6883a-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { ptr, [1 x i64] }

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_once6vtableCs9AKyCTe7XkI_18dangling_reference, ptr @_RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs9AKyCTe7XkI_18dangling_reference, ptr @_RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs9AKyCTe7XkI_18dangling_reference }>, align 8
@alloc_16102bbdcac053b4b87e18ae6a078332 = private unnamed_addr constant [76 x i8] c"/rustc/e22c616e4e87914135c1db261a03e0437255335e/library/core/src/ptr/mod.rs\00", align 1
@alloc_8ecaa32c2b7b8b98968be578719c6ce6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_16102bbdcac053b4b87e18ae6a078332, [16 x i8] c"K\00\00\00\00\00\00\00\13\02\00\00\05\00\00\00" }>, align 8
@alloc_65c3fdb942db316b03a00eb3ff682f58 = private unnamed_addr constant [77 x i8] c"/rustc/e22c616e4e87914135c1db261a03e0437255335e/library/alloc/src/vec/mod.rs\00", align 1
@alloc_af8d9ccfee7cb5867046376d3b3f1f59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_65c3fdb942db316b03a00eb3ff682f58, [16 x i8] c"L\00\00\00\00\00\00\00\8C\08\00\00\09\00\00\00" }>, align 8
@alloc_e32c27c863c288e99cffe88ec48b3a85 = private unnamed_addr constant [13 x i8] c"Hello, world!", align 1
@alloc_86a55ed91ff7f4fc5793c8fefd7c6dad = private unnamed_addr constant [11 x i8] c"Hello world", align 1
@alloc_6801cf1015b67565d2d15cc7734a831a = private unnamed_addr constant [8 x i8] c"\03s: \C0\01\0A\00", align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant [42 x i8] c"is_aligned_to: align is not a power-of-two", align 1
@alloc_53ee676a8f0f6768af2d1c8104466ecc = private unnamed_addr constant [82 x i8] c"/rustc/e22c616e4e87914135c1db261a03e0437255335e/library/core/src/ptr/const_ptr.rs\00", align 1
@alloc_e102780db6355762ed17e49b779142de = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_53ee676a8f0f6768af2d1c8104466ecc, [16 x i8] c"Q\00\00\00\00\00\00\00^\05\00\00\0D\00\00\00" }>, align 8
@alloc_caa327bc320ad9b8c67d78e62e750b82 = private unnamed_addr constant [81 x i8] c"/rustc/e22c616e4e87914135c1db261a03e0437255335e/library/alloc/src/raw_vec/mod.rs\00", align 1
@alloc_b008722628342b66f733a207dd561eb3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_caa327bc320ad9b8c67d78e62e750b82, [16 x i8] c"P\00\00\00\00\00\00\00\B6\01\00\00\15\00\00\00" }>, align 8
@alloc_57d70e9d94c65ecfc15225d29a5ed72b = private unnamed_addr constant [198 x i8] c"unsafe precondition(s) violated: Vec::set_len requires that new_len <= capacity()\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_bd3468a7b96187f70c1ce98a3e7a63bf = private unnamed_addr constant [283 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_64e308ef4babfeb8b6220184de794a17 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize", align 1

; <core::fmt::rt::Argument>::new_display::<alloc::string::String>
; Function Attrs: inlinehint uwtable
define internal void @_RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsbtOAwDxaP7e_5alloc6string6StringECs9AKyCTe7XkI_18dangling_reference(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #0 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %x, ptr %_2, align 8
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr @_RNvXsq_NtCsbtOAwDxaP7e_5alloc6stringNtB5_6StringNtNtCs1zi9xk0MYTQ_4core3fmt7Display3fmtCs9AKyCTe7XkI_18dangling_reference, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 16, i1 false)
  ret void
}

; <core::fmt::rt::Argument>::new_display::<&str>
; Function Attrs: inlinehint uwtable
define internal void @_RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument11new_displayReECs9AKyCTe7XkI_18dangling_reference(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #0 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %x, ptr %_2, align 8
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr @_RNvXs1i_NtCs1zi9xk0MYTQ_4core3fmtReNtB6_7Display3fmtCsh9KRQCfTnKG_14rustc_demangle, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 16, i1 false)
  ret void
}

; <core::fmt::Arguments>::new::<8, 1>
; Function Attrs: inlinehint uwtable
define internal { ptr, ptr } @_RINvMs2_NtCs1zi9xk0MYTQ_4core3fmtNtB6_9Arguments3newKj8_Kj1_ECs9AKyCTe7XkI_18dangling_reference(ptr %template, ptr align 8 %args) unnamed_addr #0 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %template, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %args, 1
  ret { ptr, ptr } %1
}

; core::ptr::drop_in_place::<alloc::vec::Vec<u8>>
; Function Attrs: uwtable
define internal void @_RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeINtNtCsbtOAwDxaP7e_5alloc3vec3VechEECs9AKyCTe7XkI_18dangling_reference(ptr align 8 %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
; invoke <alloc::vec::Vec<u8> as core::ops::drop::Drop>::drop
  invoke void @_RNvXso_NtCsbtOAwDxaP7e_5alloc3vecINtB5_3VechENtNtNtCs1zi9xk0MYTQ_4core3ops4drop4Drop4dropCs75GnhmR9V8L_5gimli(ptr align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place::<alloc::raw_vec::RawVec<u8>>
  invoke void @_RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeINtNtCsbtOAwDxaP7e_5alloc7raw_vec6RawVechEECs9AKyCTe7XkI_18dangling_reference(ptr align 8 %_1) #13
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
  call void @_RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeINtNtCsbtOAwDxaP7e_5alloc7raw_vec6RawVechEECs9AKyCTe7XkI_18dangling_reference(ptr align 8 %_1)
  ret void

terminate:                                        ; preds = %bb3
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCs1zi9xk0MYTQ_4core9panicking16panic_in_cleanup() #14
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
define internal void @_RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeINtNtCsbtOAwDxaP7e_5alloc7raw_vec6RawVechEECs9AKyCTe7XkI_18dangling_reference(ptr align 8 %_1) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<u8> as core::ops::drop::Drop>::drop
  call void @_RNvXs1_NtCsbtOAwDxaP7e_5alloc7raw_vecINtB5_6RawVechENtNtNtCs1zi9xk0MYTQ_4core3ops4drop4Drop4dropCs75GnhmR9V8L_5gimli(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place::<alloc::string::String>
; Function Attrs: uwtable
define internal void @_RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeNtNtCsbtOAwDxaP7e_5alloc6string6StringECs9AKyCTe7XkI_18dangling_reference(ptr align 8 %_1) unnamed_addr #1 {
start:
; call core::ptr::drop_in_place::<alloc::vec::Vec<u8>>
  call void @_RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeINtNtCsbtOAwDxaP7e_5alloc3vec3VechEECs9AKyCTe7XkI_18dangling_reference(ptr align 8 %_1)
  ret void
}

; std::rt::lang_start::<()>
; Function Attrs: uwtable
define hidden i64 @_RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECs9AKyCTe7XkI_18dangling_reference(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #1 {
start:
  %_7 = alloca [8 x i8], align 8
  store ptr %main, ptr %_7, align 8
; call std::rt::lang_start_internal
  %_0 = call i64 @_RNvNtCs5EOoPIk3vm1_3std2rt19lang_start_internal(ptr %_7, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe)
  ret i64 %_0
}

; std::sys::backtrace::__rust_begin_short_backtrace::<fn(), ()>
; Function Attrs: noinline uwtable
define internal void @_RINvNtNtCs5EOoPIk3vm1_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs9AKyCTe7XkI_18dangling_reference(ptr %f) unnamed_addr #2 {
start:
; call <fn() as core::ops::function::FnOnce<()>>::call_once
  call void @_RNvYFEuINtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs9AKyCTe7XkI_18dangling_reference(ptr %f) #15
  call void asm sideeffect "", "~{memory}"(), !srcloc !3
  ret void
}

; <u8 as <[_]>::to_vec_in::ConvertVec>::to_vec::<alloc::alloc::Global>
; Function Attrs: inlinehint uwtable
define internal void @_RINvXs_NvMNtCsbtOAwDxaP7e_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9AKyCTe7XkI_18dangling_reference(ptr sret([24 x i8]) align 8 %v, ptr %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %_17 = alloca [8 x i8], align 8
; call <alloc::raw_vec::RawVecInner>::with_capacity_in
  %0 = call { i64, ptr } @_RNvMs4_NtCsbtOAwDxaP7e_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9AKyCTe7XkI_18dangling_reference(i64 %s.1, i64 1, i64 1) #15
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
  call void @_RNvNvNtCs1zi9xk0MYTQ_4core3ptr19copy_nonoverlapping18precondition_checkCs9AKyCTe7XkI_18dangling_reference(ptr %s.0, ptr %_12, i64 1, i64 1, i64 %s.1, ptr align 8 @alloc_8ecaa32c2b7b8b98968be578719c6ce6) #16
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
  call void @_RNvNvMs_NtCsbtOAwDxaP7e_5alloc3vecINtB6_3VecppE7set_len18precondition_checkCs9AKyCTe7XkI_18dangling_reference(i64 %s.1, i64 %5, ptr align 8 @alloc_af8d9ccfee7cb5867046376d3b3f1f59) #16
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
define internal i32 @_RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs9AKyCTe7XkI_18dangling_reference(ptr align 8 %_1) unnamed_addr #0 {
start:
  %_4 = load ptr, ptr %_1, align 8
; call std::sys::backtrace::__rust_begin_short_backtrace::<fn(), ()>
  call void @_RINvNtNtCs5EOoPIk3vm1_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs9AKyCTe7XkI_18dangling_reference(ptr %_4) #17
; call <() as std::process::Termination>::report
  %self = call i8 @_RNvXsZ_NtCs5EOoPIk3vm1_3std7processuNtB5_11Termination6reportCs9AKyCTe7XkI_18dangling_reference() #15
  %_0 = zext i8 %self to i32
  ret i32 %_0
}

; <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once::{shim:vtable#0}
; Function Attrs: inlinehint uwtable
define internal i32 @_RNSNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_once6vtableCs9AKyCTe7XkI_18dangling_reference(ptr %_1) unnamed_addr #0 {
start:
  %_2 = alloca [0 x i8], align 1
  %0 = load ptr, ptr %_1, align 8
; call <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once
  %_0 = call i32 @_RNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs9AKyCTe7XkI_18dangling_reference(ptr %0) #15
  ret i32 %_0
}

; dangling_reference::bar
; Function Attrs: uwtable
define internal void @_RNvCs9AKyCTe7XkI_18dangling_reference3bar(ptr sret([24 x i8]) align 8 %s) unnamed_addr #1 {
start:
; call <alloc::string::String as core::convert::From<&str>>::from
  call void @_RNvXsK_NtCsbtOAwDxaP7e_5alloc6stringNtB5_6StringINtNtCs1zi9xk0MYTQ_4core7convert4FromReE4fromCs9AKyCTe7XkI_18dangling_reference(ptr sret([24 x i8]) align 8 %s, ptr @alloc_e32c27c863c288e99cffe88ec48b3a85, i64 13) #15
  ret void
}

; dangling_reference::foo
; Function Attrs: uwtable
define internal { ptr, i64 } @_RNvCs9AKyCTe7XkI_18dangling_reference3foo() unnamed_addr #1 {
start:
  ret { ptr, i64 } { ptr @alloc_86a55ed91ff7f4fc5793c8fefd7c6dad, i64 11 }
}

; dangling_reference::main
; Function Attrs: uwtable
define hidden void @_RNvCs9AKyCTe7XkI_18dangling_reference4main() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %args2 = alloca [16 x i8], align 8
  %s1 = alloca [24 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %s = alloca [16 x i8], align 8
; call dangling_reference::foo
  %1 = call { ptr, i64 } @_RNvCs9AKyCTe7XkI_18dangling_reference3foo()
  %2 = extractvalue { ptr, i64 } %1, 0
  %3 = extractvalue { ptr, i64 } %1, 1
  store ptr %2, ptr %s, align 8
  %4 = getelementptr inbounds i8, ptr %s, i64 8
  store i64 %3, ptr %4, align 8
; call <core::fmt::rt::Argument>::new_display::<&str>
  call void @_RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument11new_displayReECs9AKyCTe7XkI_18dangling_reference(ptr sret([16 x i8]) align 8 %_7, ptr align 8 %s) #15
  %5 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %_7, i64 16, i1 false)
; call <core::fmt::Arguments>::new::<8, 1>
  %6 = call { ptr, ptr } @_RINvMs2_NtCs1zi9xk0MYTQ_4core3fmtNtB6_9Arguments3newKj8_Kj1_ECs9AKyCTe7XkI_18dangling_reference(ptr @alloc_6801cf1015b67565d2d15cc7734a831a, ptr align 8 %args) #15
  %_3.0 = extractvalue { ptr, ptr } %6, 0
  %_3.1 = extractvalue { ptr, ptr } %6, 1
; call std::io::stdio::_print
  call void @_RNvNtNtCs5EOoPIk3vm1_3std2io5stdio6__print(ptr %_3.0, ptr %_3.1)
; call dangling_reference::bar
  call void @_RNvCs9AKyCTe7XkI_18dangling_reference3bar(ptr sret([24 x i8]) align 8 %s1)
; invoke <core::fmt::rt::Argument>::new_display::<alloc::string::String>
  invoke void @_RINvMNtNtCs1zi9xk0MYTQ_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsbtOAwDxaP7e_5alloc6string6StringECs9AKyCTe7XkI_18dangling_reference(ptr sret([16 x i8]) align 8 %_16, ptr align 8 %s1)
          to label %bb6 unwind label %cleanup

bb10:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place::<alloc::string::String>
  invoke void @_RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeNtNtCsbtOAwDxaP7e_5alloc6string6StringECs9AKyCTe7XkI_18dangling_reference(ptr align 8 %s1) #13
          to label %bb11 unwind label %terminate

cleanup:                                          ; preds = %bb7, %bb6, %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb10

bb6:                                              ; preds = %start
  %11 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args2, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %_16, i64 16, i1 false)
; invoke <core::fmt::Arguments>::new::<8, 1>
  %12 = invoke { ptr, ptr } @_RINvMs2_NtCs1zi9xk0MYTQ_4core3fmtNtB6_9Arguments3newKj8_Kj1_ECs9AKyCTe7XkI_18dangling_reference(ptr @alloc_6801cf1015b67565d2d15cc7734a831a, ptr align 8 %args2)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %_12.0 = extractvalue { ptr, ptr } %12, 0
  %_12.1 = extractvalue { ptr, ptr } %12, 1
; invoke std::io::stdio::_print
  invoke void @_RNvNtNtCs5EOoPIk3vm1_3std2io5stdio6__print(ptr %_12.0, ptr %_12.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
; call core::ptr::drop_in_place::<alloc::string::String>
  call void @_RINvNtCs1zi9xk0MYTQ_4core3ptr13drop_in_placeNtNtCsbtOAwDxaP7e_5alloc6string6StringECs9AKyCTe7XkI_18dangling_reference(ptr align 8 %s1)
  ret void

terminate:                                        ; preds = %bb10
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_RNvNtCs1zi9xk0MYTQ_4core9panicking16panic_in_cleanup() #14
  unreachable

bb11:                                             ; preds = %bb10
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  %16 = load i32, ptr %15, align 8
  %17 = insertvalue { ptr, i32 } poison, ptr %14, 0
  %18 = insertvalue { ptr, i32 } %17, i32 %16, 1
  resume { ptr, i32 } %18
}

; <*const ()>::is_aligned_to
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_RNvMNtNtCs1zi9xk0MYTQ_4core3ptr9const_ptrPu13is_aligned_toCs9AKyCTe7XkI_18dangling_reference(ptr %self, i64 %align) unnamed_addr #0 {
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
  call void @_RNvNtCs1zi9xk0MYTQ_4core9panicking9panic_fmt(ptr @alloc_fad0cd83b7d1858a846a172eb260e593, ptr inttoptr (i64 85 to ptr), ptr align 8 @alloc_e102780db6355762ed17e49b779142de) #18
  unreachable
}

; <alloc::raw_vec::RawVecInner>::with_capacity_in
; Function Attrs: inlinehint uwtable
define internal { i64, ptr } @_RNvMs4_NtCsbtOAwDxaP7e_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9AKyCTe7XkI_18dangling_reference(i64 %capacity, i64 %elem_layout.0, i64 %elem_layout.1) unnamed_addr #0 {
start:
  %self = alloca [8 x i8], align 8
  %_4 = alloca [24 x i8], align 8
; call <alloc::raw_vec::RawVecInner>::try_allocate_in
  call void @_RNvMs4_NtCsbtOAwDxaP7e_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs75GnhmR9V8L_5gimli(ptr sret([24 x i8]) align 8 %_4, i64 %capacity, i1 zeroext false, i64 %elem_layout.0, i64 %elem_layout.1)
  %_5 = load i64, ptr %_4, align 8
  %0 = trunc nuw i64 %_5 to i1
  br i1 %0, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_4, i64 8
  %err.0 = load i64, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %err.1 = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  call void @_RNvNtCsbtOAwDxaP7e_5alloc7raw_vec12handle_error(i64 %err.0, i64 %err.1) #19
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
  call void @_RNvNvNtCs1zi9xk0MYTQ_4core4hint16assert_unchecked18precondition_checkCs9AKyCTe7XkI_18dangling_reference(i1 zeroext %cond, ptr align 8 @alloc_b008722628342b66f733a207dd561eb3) #16
  br label %bb9

bb9:                                              ; preds = %bb8
  %7 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %this.1, 1
  ret { i64, ptr } %8

bb2:                                              ; No predecessors!
  unreachable
}

; core::intrinsics::cold_path
; Function Attrs: cold nounwind uwtable
define internal void @_RNvNtCs1zi9xk0MYTQ_4core10intrinsics9cold_pathCs9AKyCTe7XkI_18dangling_reference() unnamed_addr #3 {
start:
  ret void
}

; <alloc::vec::Vec<_, _>>::set_len::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_RNvNvMs_NtCsbtOAwDxaP7e_5alloc3vecINtB6_3VecppE7set_len18precondition_checkCs9AKyCTe7XkI_18dangling_reference(i64 %new_len, i64 %capacity, ptr align 8 %0) unnamed_addr #4 {
start:
  %_3 = icmp ule i64 %new_len, %capacity
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCs1zi9xk0MYTQ_4core9panicking18panic_nounwind_fmt(ptr @alloc_57d70e9d94c65ecfc15225d29a5ed72b, ptr inttoptr (i64 397 to ptr), i1 zeroext false, ptr align 8 %0) #20
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_RNvNvNtCs1zi9xk0MYTQ_4core3ptr19copy_nonoverlapping18precondition_checkCs9AKyCTe7XkI_18dangling_reference(ptr %src, ptr %dst, i64 %size, i64 %align, i64 %count, ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  %_15 = invoke zeroext i1 @_RNvMNtNtCs1zi9xk0MYTQ_4core3ptr9const_ptrPu13is_aligned_toCs9AKyCTe7XkI_18dangling_reference(ptr %src, i64 %align)
          to label %bb15 unwind label %terminate

terminate:                                        ; preds = %bb5, %bb4, %bb3
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_RNvNtCs1zi9xk0MYTQ_4core9panicking19panic_cannot_unwind() #14
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
  %_18 = invoke zeroext i1 @_RNvMNtNtCs1zi9xk0MYTQ_4core3ptr9const_ptrPu13is_aligned_toCs9AKyCTe7XkI_18dangling_reference(ptr %dst, i64 %align)
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
  %_6 = invoke zeroext i1 @_RNvNvNtCs1zi9xk0MYTQ_4core9ub_checks23maybe_is_nonoverlapping7runtimeCs9AKyCTe7XkI_18dangling_reference(ptr %src, ptr %dst, i64 %size, i64 %count)
          to label %bb21 unwind label %terminate

bb9:                                              ; preds = %bb21, %bb8
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCs1zi9xk0MYTQ_4core9panicking18panic_nounwind_fmt(ptr @alloc_bd3468a7b96187f70c1ce98a3e7a63bf, ptr inttoptr (i64 567 to ptr), i1 zeroext false, ptr align 8 %0) #20
  unreachable

bb21:                                             ; preds = %bb5
  br i1 %_6, label %bb10, label %bb9

bb10:                                             ; preds = %bb21
  ret void
}

; core::hint::assert_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_RNvNvNtCs1zi9xk0MYTQ_4core4hint16assert_unchecked18precondition_checkCs9AKyCTe7XkI_18dangling_reference(i1 zeroext %cond, ptr align 8 %0) unnamed_addr #4 {
start:
  br i1 %cond, label %bb2, label %bb1

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCs1zi9xk0MYTQ_4core9panicking18panic_nounwind_fmt(ptr @alloc_64e308ef4babfeb8b6220184de794a17, ptr inttoptr (i64 443 to ptr), i1 zeroext false, ptr align 8 %0) #20
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::ub_checks::maybe_is_nonoverlapping::runtime
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_RNvNvNtCs1zi9xk0MYTQ_4core9ub_checks23maybe_is_nonoverlapping7runtimeCs9AKyCTe7XkI_18dangling_reference(ptr %src, ptr %dst, i64 %size, i64 %count) unnamed_addr #0 {
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
  call void @_RNvNtCs1zi9xk0MYTQ_4core9panicking14panic_nounwind(ptr @alloc_763310d78c99c2c1ad3f8a9821e942f3, i64 61) #20
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

; <alloc::string::String as core::convert::From<&str>>::from
; Function Attrs: inlinehint uwtable
define internal void @_RNvXsK_NtCsbtOAwDxaP7e_5alloc6stringNtB5_6StringINtNtCs1zi9xk0MYTQ_4core7convert4FromReE4fromCs9AKyCTe7XkI_18dangling_reference(ptr sret([24 x i8]) align 8 %_0, ptr %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %bytes = alloca [24 x i8], align 8
; call <u8 as <[_]>::to_vec_in::ConvertVec>::to_vec::<alloc::alloc::Global>
  call void @_RINvXs_NvMNtCsbtOAwDxaP7e_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9AKyCTe7XkI_18dangling_reference(ptr sret([24 x i8]) align 8 %bytes, ptr %s.0, i64 %s.1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %bytes, i64 24, i1 false)
  ret void
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint uwtable
define internal i8 @_RNvXsZ_NtCs5EOoPIk3vm1_3std7processuNtB5_11Termination6reportCs9AKyCTe7XkI_18dangling_reference() unnamed_addr #0 {
start:
  ret i8 0
}

; <alloc::string::String as core::fmt::Display>::fmt
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_RNvXsq_NtCsbtOAwDxaP7e_5alloc6stringNtB5_6StringNtNtCs1zi9xk0MYTQ_4core3fmt7Display3fmtCs9AKyCTe7XkI_18dangling_reference(ptr align 8 %self, ptr align 8 %f) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_8 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %_7 = load i64, ptr %1, align 8
; call <str as core::fmt::Display>::fmt
  %_0 = call zeroext i1 @_RNvXsi_NtCs1zi9xk0MYTQ_4core3fmteNtB5_7Display3fmt(ptr %_8, i64 %_7, ptr align 8 %f)
  ret i1 %_0
}

; <fn() as core::ops::function::FnOnce<()>>::call_once
; Function Attrs: inlinehint uwtable
define internal void @_RNvYFEuINtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs9AKyCTe7XkI_18dangling_reference(ptr %_1) unnamed_addr #0 {
start:
  %_2 = alloca [0 x i8], align 1
  call void %_1()
  ret void
}

; <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once
; Function Attrs: inlinehint uwtable
define internal i32 @_RNvYNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0INtNtNtCs1zi9xk0MYTQ_4core3ops8function6FnOnceuE9call_onceCs9AKyCTe7XkI_18dangling_reference(ptr %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  %_1 = alloca [8 x i8], align 8
  store ptr %0, ptr %_1, align 8
; invoke std::rt::lang_start::<()>::{closure#0}
  %_0 = invoke i32 @_RNCINvNtCs5EOoPIk3vm1_3std2rt10lang_startuE0Cs9AKyCTe7XkI_18dangling_reference(ptr align 8 %_1)
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

; <&str as core::fmt::Display>::fmt
; Function Attrs: uwtable
declare zeroext i1 @_RNvXs1i_NtCs1zi9xk0MYTQ_4core3fmtReNtB6_7Display3fmtCsh9KRQCfTnKG_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nounwind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #6

; <alloc::vec::Vec<u8> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
declare void @_RNvXso_NtCsbtOAwDxaP7e_5alloc3vecINtB5_3VechENtNtNtCs1zi9xk0MYTQ_4core3ops4drop4Drop4dropCs75GnhmR9V8L_5gimli(ptr align 8) unnamed_addr #1

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind optsize uwtable
declare void @_RNvNtCs1zi9xk0MYTQ_4core9panicking16panic_in_cleanup() unnamed_addr #7

; <alloc::raw_vec::RawVec<u8> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
declare void @_RNvXs1_NtCsbtOAwDxaP7e_5alloc7raw_vecINtB5_6RawVechENtNtNtCs1zi9xk0MYTQ_4core3ops4drop4Drop4dropCs75GnhmR9V8L_5gimli(ptr align 8) unnamed_addr #1

; std::rt::lang_start_internal
; Function Attrs: uwtable
declare i64 @_RNvNtCs5EOoPIk3vm1_3std2rt19lang_start_internal(ptr, ptr align 8, i64, ptr, i8) unnamed_addr #1

; std::io::stdio::_print
; Function Attrs: uwtable
declare void @_RNvNtNtCs5EOoPIk3vm1_3std2io5stdio6__print(ptr, ptr) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @_RNvNtCs1zi9xk0MYTQ_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #9

; <alloc::raw_vec::RawVecInner>::try_allocate_in
; Function Attrs: uwtable
declare void @_RNvMs4_NtCsbtOAwDxaP7e_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs75GnhmR9V8L_5gimli(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #1

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn optsize uwtable
declare void @_RNvNtCsbtOAwDxaP7e_5alloc7raw_vec12handle_error(i64, i64) unnamed_addr #10

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_RNvNtCs1zi9xk0MYTQ_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #11

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind optsize uwtable
declare void @_RNvNtCs1zi9xk0MYTQ_4core9panicking19panic_cannot_unwind() unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_RNvNtCs1zi9xk0MYTQ_4core9panicking14panic_nounwind(ptr, i64) unnamed_addr #11

; <str as core::fmt::Display>::fmt
; Function Attrs: uwtable
declare zeroext i1 @_RNvXsi_NtCs1zi9xk0MYTQ_4core3fmteNtB5_7Display3fmt(ptr, i64, ptr align 8) unnamed_addr #1

define i32 @main(i32 %0, ptr %1) unnamed_addr #12 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start::<()>
  %3 = call i64 @_RINvNtCs5EOoPIk3vm1_3std2rt10lang_startuECs9AKyCTe7XkI_18dangling_reference(ptr @_RNvCs9AKyCTe7XkI_18dangling_reference4main, i64 %2, ptr %1, i8 0)
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
!2 = !{!"rustc version 1.97.0-nightly (e22c616e4 2026-04-19)"}
!3 = !{i64 13806945470319925}
