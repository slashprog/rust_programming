; ModuleID = 'add_test.5f949a07b9e5b261-cgu.0'
source_filename = "add_test.5f949a07b9e5b261-cgu.0"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { ptr, [1 x i64] }

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0INtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_once6vtableCs8cLTYIAtgjJ_8add_test, ptr @_RNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0Cs8cLTYIAtgjJ_8add_test, ptr @_RNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0Cs8cLTYIAtgjJ_8add_test }>, align 8
@alloc_531f1d06ce460d7d3505c6b92e4a5739 = private unnamed_addr constant [12 x i8] c"add_test.rs\00", align 1
@alloc_b44d60225f0ea5da3b97236de6a3b2dd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_531f1d06ce460d7d3505c6b92e4a5739, [16 x i8] c"\0B\00\00\00\00\00\00\00\02\00\00\00\05\00\00\00" }>, align 8
@alloc_765dcfd3c51dc36652fffc193831230b = private unnamed_addr constant [14 x i8] c"\C0\03 + \C0\03 = \C0\01\0A\00", align 1
@alloc_75fb06c2453febd814e73f5f2e72ae38 = private unnamed_addr constant [199 x i8] c"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@anon.4b517f74d57ff0b65b55cb0e1f04d875.0 = private unnamed_addr constant <{ [4 x i8], [4 x i8] }> <{ [4 x i8] zeroinitializer, [4 x i8] undef }>, align 4
@alloc_4cc92d4000a6cb1b48b7adfe0e9fe795 = private unnamed_addr constant [79 x i8] c"/rustc/c78a29473a68f07012904af11c92ecffa68fcc75/library/core/src/iter/range.rs\00", align 1
@alloc_bcb37826af4fe9dc95b748dff7ff3bab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4cc92d4000a6cb1b48b7adfe0e9fe795, [16 x i8] c"N\00\00\00\00\00\00\00\B2\01\00\00\01\00\00\00" }>, align 8

; <core::fmt::rt::Argument>::new_display::<i32>
; Function Attrs: inlinehint uwtable
define internal void @_RINvMNtNtCskGIogOxDTKR_4core3fmt2rtNtB3_8Argument11new_displaylECs8cLTYIAtgjJ_8add_test(ptr sret([16 x i8]) align 8 %_0, ptr align 4 %x) unnamed_addr #0 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %x, ptr %_2, align 8
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr @_RNvXs9_NtNtNtCskGIogOxDTKR_4core3fmt3num3implNtB9_7Display3fmt, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 16, i1 false)
  ret void
}

; <core::fmt::Arguments>::new::<14, 3>
; Function Attrs: inlinehint uwtable
define internal { ptr, ptr } @_RINvMs2_NtCskGIogOxDTKR_4core3fmtNtB6_9Arguments3newKje_Kj3_ECs8cLTYIAtgjJ_8add_test(ptr align 1 %template, ptr align 8 %args) unnamed_addr #0 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %template, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %args, 1
  ret { ptr, ptr } %1
}

; std::rt::lang_start::<()>
; Function Attrs: uwtable
define hidden i64 @_RINvNtCs9sWpqdd8Yre_3std2rt10lang_startuECs8cLTYIAtgjJ_8add_test(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #1 {
start:
  %_7 = alloca [8 x i8], align 8
  store ptr %main, ptr %_7, align 8
; call std::rt::lang_start_internal
  %_0 = call i64 @_RNvNtCs9sWpqdd8Yre_3std2rt19lang_start_internal(ptr align 1 %_7, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe)
  ret i64 %_0
}

; std::sys::backtrace::__rust_begin_short_backtrace::<fn(), ()>
; Function Attrs: noinline uwtable
define internal void @_RINvNtNtCs9sWpqdd8Yre_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs8cLTYIAtgjJ_8add_test(ptr %f) unnamed_addr #2 {
start:
; call <fn() as core::ops::function::FnOnce<()>>::call_once
  call void @_RNvYFEuINtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_onceCs8cLTYIAtgjJ_8add_test(ptr %f) #11
  call void asm sideeffect "", "~{memory}"(), !srcloc !3
  ret void
}

; std::rt::lang_start::<()>::{closure#0}
; Function Attrs: inlinehint uwtable
define internal i32 @_RNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0Cs8cLTYIAtgjJ_8add_test(ptr align 8 %_1) unnamed_addr #0 {
start:
  %_4 = load ptr, ptr %_1, align 8
; call std::sys::backtrace::__rust_begin_short_backtrace::<fn(), ()>
  call void @_RINvNtNtCs9sWpqdd8Yre_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs8cLTYIAtgjJ_8add_test(ptr %_4) #12
; call <() as std::process::Termination>::report
  %self = call i8 @_RNvXsZ_NtCs9sWpqdd8Yre_3std7processuNtB5_11Termination6reportCs8cLTYIAtgjJ_8add_test() #11
  %_0 = zext i8 %self to i32
  ret i32 %_0
}

; <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once::{shim:vtable#0}
; Function Attrs: inlinehint uwtable
define internal i32 @_RNSNvYNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0INtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_once6vtableCs8cLTYIAtgjJ_8add_test(ptr %_1) unnamed_addr #0 {
start:
  %_2 = alloca [0 x i8], align 1
  %0 = load ptr, ptr %_1, align 8
; call <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once
  %_0 = call i32 @_RNvYNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0INtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_onceCs8cLTYIAtgjJ_8add_test(ptr %0) #11
  ret i32 %_0
}

; add_test::add
; Function Attrs: uwtable
define internal i32 @_RNvCs8cLTYIAtgjJ_8add_test3add(i32 %x, i32 %y) unnamed_addr #1 {
start:
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %x, i32 %y)
  %_3.0 = extractvalue { i32, i1 } %0, 0
  %_3.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_3.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  ret i32 %_3.0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_RNvNtNtCskGIogOxDTKR_4core9panicking11panic_const24panic_const_add_overflow(ptr align 8 @alloc_b44d60225f0ea5da3b97236de6a3b2dd) #13
  unreachable
}

; add_test::main
; Function Attrs: uwtable
define hidden void @_RNvCs8cLTYIAtgjJ_8add_test4main() unnamed_addr #1 {
start:
  %_18 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %args1 = alloca [48 x i8], align 8
  %_14 = alloca [4 x i8], align 4
  %args = alloca [24 x i8], align 8
  %i = alloca [4 x i8], align 4
  %_4 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
; call <core::ops::range::Range<i32> as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i32, i32 } @_RNvXNtNtNtCskGIogOxDTKR_4core4iter6traits7collectINtNtNtB8_3ops5range5RangelENtB2_12IntoIterator9into_iterCs8cLTYIAtgjJ_8add_test(i32 0, i32 10) #11
  %_1.0 = extractvalue { i32, i32 } %0, 0
  %_1.1 = extractvalue { i32, i32 } %0, 1
  store i32 %_1.0, ptr %iter, align 4
  %1 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_1.1, ptr %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb5, %start
; call <core::ops::range::Range<i32> as core::iter::traits::iterator::Iterator>::next
  %2 = call { i32, i32 } @_RNvXs4_NtNtCskGIogOxDTKR_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCs8cLTYIAtgjJ_8add_test(ptr align 4 %iter) #11
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = extractvalue { i32, i32 } %2, 1
  store i32 %3, ptr %_4, align 4
  %5 = getelementptr inbounds i8, ptr %_4, i64 4
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %_4, align 4
  %7 = getelementptr inbounds i8, ptr %_4, i64 4
  %8 = load i32, ptr %7, align 4
  %_6 = zext i32 %6 to i64
  %9 = trunc nuw i64 %_6 to i1
  br i1 %9, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  %10 = getelementptr inbounds i8, ptr %_4, i64 4
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %i, align 4
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %i, align 4
; call add_test::add
  %14 = call i32 @_RNvCs8cLTYIAtgjJ_8add_test3add(i32 %12, i32 %13)
  store i32 %14, ptr %_14, align 4
  store ptr %i, ptr %args, align 8
  %15 = getelementptr inbounds i8, ptr %args, i64 8
  store ptr %i, ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %args, i64 16
  store ptr %_14, ptr %16, align 8
  %_21 = load ptr, ptr %args, align 8
; call <core::fmt::rt::Argument>::new_display::<i32>
  call void @_RINvMNtNtCskGIogOxDTKR_4core3fmt2rtNtB3_8Argument11new_displaylECs8cLTYIAtgjJ_8add_test(ptr sret([16 x i8]) align 8 %_16, ptr align 4 %_21) #11
  %17 = getelementptr inbounds i8, ptr %args, i64 8
  %_22 = load ptr, ptr %17, align 8
; call <core::fmt::rt::Argument>::new_display::<i32>
  call void @_RINvMNtNtCskGIogOxDTKR_4core3fmt2rtNtB3_8Argument11new_displaylECs8cLTYIAtgjJ_8add_test(ptr sret([16 x i8]) align 8 %_17, ptr align 4 %_22) #11
  %18 = getelementptr inbounds i8, ptr %args, i64 16
  %_23 = load ptr, ptr %18, align 8
; call <core::fmt::rt::Argument>::new_display::<i32>
  call void @_RINvMNtNtCskGIogOxDTKR_4core3fmt2rtNtB3_8Argument11new_displaylECs8cLTYIAtgjJ_8add_test(ptr sret([16 x i8]) align 8 %_18, ptr align 4 %_23) #11
  %19 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args1, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %_16, i64 16, i1 false)
  %20 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args1, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %_17, i64 16, i1 false)
  %21 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %_18, i64 16, i1 false)
; call <core::fmt::Arguments>::new::<14, 3>
  %22 = call { ptr, ptr } @_RINvMs2_NtCskGIogOxDTKR_4core3fmtNtB6_9Arguments3newKje_Kj3_ECs8cLTYIAtgjJ_8add_test(ptr align 1 @alloc_765dcfd3c51dc36652fffc193831230b, ptr align 8 %args1) #11
  %_9.0 = extractvalue { ptr, ptr } %22, 0
  %_9.1 = extractvalue { ptr, ptr } %22, 1
; call std::io::stdio::_print
  call void @_RNvNtNtCs9sWpqdd8Yre_3std2io5stdio6__print(ptr %_9.0, ptr %_9.1)
  br label %bb2

bb6:                                              ; preds = %bb2
  ret void

bb4:                                              ; No predecessors!
  unreachable
}

; core::intrinsics::cold_path
; Function Attrs: cold nounwind uwtable
define internal void @_RNvNtCskGIogOxDTKR_4core10intrinsics9cold_pathCs8cLTYIAtgjJ_8add_test() unnamed_addr #3 {
start:
  ret void
}

; core::hint::unreachable_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_RNvNvNtCskGIogOxDTKR_4core4hint21unreachable_unchecked18precondition_checkCs8cLTYIAtgjJ_8add_test(ptr align 8 %0) unnamed_addr #4 {
start:
; call core::panicking::panic_nounwind_fmt
  call void @_RNvNtCskGIogOxDTKR_4core9panicking18panic_nounwind_fmt(ptr @alloc_75fb06c2453febd814e73f5f2e72ae38, ptr inttoptr (i64 399 to ptr), i1 zeroext false, ptr align 8 %0) #14
  unreachable
}

; <core::ops::range::Range<i32> as core::iter::traits::collect::IntoIterator>::into_iter
; Function Attrs: inlinehint uwtable
define internal { i32, i32 } @_RNvXNtNtNtCskGIogOxDTKR_4core4iter6traits7collectINtNtNtB8_3ops5range5RangelENtB2_12IntoIterator9into_iterCs8cLTYIAtgjJ_8add_test(i32 %self.0, i32 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i32, i32 } poison, i32 %self.0, 0
  %1 = insertvalue { i32, i32 } %0, i32 %self.1, 1
  ret { i32, i32 } %1
}

; <core::ops::range::Range<i32> as core::iter::range::RangeIteratorImpl>::spec_next
; Function Attrs: inlinehint uwtable
define internal { i32, i32 } @_RNvXs3_NtNtCskGIogOxDTKR_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCs8cLTYIAtgjJ_8add_test(ptr align 4 %self) unnamed_addr #0 {
start:
  %_0 = alloca [8 x i8], align 4
  %_4 = getelementptr inbounds i8, ptr %self, i64 4
  %_3.i = load i32, ptr %self, align 4
  %_4.i = load i32, ptr %_4, align 4
  %_0.i = icmp slt i32 %_3.i, %_4.i
  br i1 %_0.i, label %bb2, label %bb4

bb4:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb5

bb2:                                              ; preds = %start
  %old = load i32, ptr %self, align 4
; call <i32 as core::iter::range::Step>::forward_unchecked
  %_6 = call i32 @_RNvXsC_NtNtCskGIogOxDTKR_4core4iter5rangelNtB5_4Step17forward_uncheckedCs8cLTYIAtgjJ_8add_test(i32 %old, i64 1) #11
  store i32 %_6, ptr %self, align 4
  %0 = getelementptr inbounds i8, ptr %_0, i64 4
  store i32 %old, ptr %0, align 4
  store i32 1, ptr %_0, align 4
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %1 = load i32, ptr %_0, align 4
  %2 = getelementptr inbounds i8, ptr %_0, i64 4
  %3 = load i32, ptr %2, align 4
  %4 = insertvalue { i32, i32 } poison, i32 %1, 0
  %5 = insertvalue { i32, i32 } %4, i32 %3, 1
  ret { i32, i32 } %5
}

; <core::ops::range::Range<i32> as core::iter::traits::iterator::Iterator>::next
; Function Attrs: inlinehint uwtable
define internal { i32, i32 } @_RNvXs4_NtNtCskGIogOxDTKR_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtNtNtB7_6traits8iterator8Iterator4nextCs8cLTYIAtgjJ_8add_test(ptr align 4 %self) unnamed_addr #0 {
start:
; call <core::ops::range::Range<i32> as core::iter::range::RangeIteratorImpl>::spec_next
  %0 = call { i32, i32 } @_RNvXs3_NtNtCskGIogOxDTKR_4core4iter5rangeINtNtNtB9_3ops5range5RangelENtB5_17RangeIteratorImpl9spec_nextCs8cLTYIAtgjJ_8add_test(ptr align 4 %self) #11
  %_0.0 = extractvalue { i32, i32 } %0, 0
  %_0.1 = extractvalue { i32, i32 } %0, 1
  %1 = insertvalue { i32, i32 } poison, i32 %_0.0, 0
  %2 = insertvalue { i32, i32 } %1, i32 %_0.1, 1
  ret { i32, i32 } %2
}

; <i32 as core::iter::range::Step>::forward_unchecked
; Function Attrs: inlinehint uwtable
define internal i32 @_RNvXsC_NtNtCskGIogOxDTKR_4core4iter5rangelNtB5_4Step17forward_uncheckedCs8cLTYIAtgjJ_8add_test(i32 %start1, i64 %n) unnamed_addr #0 {
start:
  %self = alloca [8 x i8], align 4
  %rhs = trunc i64 %n to i32
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %start1, i32 %rhs)
  %_8.0 = extractvalue { i32, i1 } %0, 0
  %_8.1 = extractvalue { i32, i1 } %0, 1
  %_10 = icmp slt i32 %rhs, 0
  %b = xor i1 %_8.1, %_10
  br i1 %b, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %self, i64 4
  store i32 %_8.0, ptr %1, align 4
  store i32 1, ptr %self, align 4
  %2 = getelementptr inbounds i8, ptr %self, i64 4
  %val = load i32, ptr %2, align 4
  ret i32 %val

bb1:                                              ; preds = %start
  %3 = load i32, ptr @anon.4b517f74d57ff0b65b55cb0e1f04d875.0, align 4
  %4 = load i32, ptr getelementptr inbounds (i8, ptr @anon.4b517f74d57ff0b65b55cb0e1f04d875.0, i64 4), align 4
  store i32 %3, ptr %self, align 4
  %5 = getelementptr inbounds i8, ptr %self, i64 4
  store i32 %4, ptr %5, align 4
; call core::hint::unreachable_unchecked::precondition_check
  call void @_RNvNvNtCskGIogOxDTKR_4core4hint21unreachable_unchecked18precondition_checkCs8cLTYIAtgjJ_8add_test(ptr align 8 @alloc_bcb37826af4fe9dc95b748dff7ff3bab) #15
  unreachable
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint uwtable
define internal i8 @_RNvXsZ_NtCs9sWpqdd8Yre_3std7processuNtB5_11Termination6reportCs8cLTYIAtgjJ_8add_test() unnamed_addr #0 {
start:
  ret i8 0
}

; <fn() as core::ops::function::FnOnce<()>>::call_once
; Function Attrs: inlinehint uwtable
define internal void @_RNvYFEuINtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_onceCs8cLTYIAtgjJ_8add_test(ptr %_1) unnamed_addr #0 {
start:
  %_2 = alloca [0 x i8], align 1
  call void %_1()
  ret void
}

; <std::rt::lang_start<()>::{closure#0} as core::ops::function::FnOnce<()>>::call_once
; Function Attrs: inlinehint uwtable
define internal i32 @_RNvYNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0INtNtNtCskGIogOxDTKR_4core3ops8function6FnOnceuE9call_onceCs8cLTYIAtgjJ_8add_test(ptr %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  %_1 = alloca [8 x i8], align 8
  store ptr %0, ptr %_1, align 8
; invoke std::rt::lang_start::<()>::{closure#0}
  %_0 = invoke i32 @_RNCINvNtCs9sWpqdd8Yre_3std2rt10lang_startuE0Cs8cLTYIAtgjJ_8add_test(ptr align 8 %_1)
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

; <i32 as core::fmt::Display>::fmt
; Function Attrs: uwtable
declare zeroext i1 @_RNvXs9_NtNtNtCskGIogOxDTKR_4core3fmt3num3implNtB9_7Display3fmt(ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; std::rt::lang_start_internal
; Function Attrs: uwtable
declare i64 @_RNvNtCs9sWpqdd8Yre_3std2rt19lang_start_internal(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #6

; core::panicking::panic_const::panic_const_add_overflow
; Function Attrs: cold noinline noreturn uwtable
declare void @_RNvNtNtCskGIogOxDTKR_4core9panicking11panic_const24panic_const_add_overflow(ptr align 8) unnamed_addr #7

; std::io::stdio::_print
; Function Attrs: uwtable
declare void @_RNvNtNtCs9sWpqdd8Yre_3std2io5stdio6__print(ptr, ptr) unnamed_addr #1

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_RNvNtCskGIogOxDTKR_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #8

; Function Attrs: nounwind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #9

define i32 @main(i32 %0, ptr %1) unnamed_addr #10 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start::<()>
  %3 = call i64 @_RINvNtCs9sWpqdd8Yre_3std2rt10lang_startuECs8cLTYIAtgjJ_8add_test(ptr @_RNvCs8cLTYIAtgjJ_8add_test4main, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #2 = { noinline uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #3 = { cold nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #8 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #9 = { nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #10 = { "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #11 = { inlinehint }
attributes #12 = { noinline }
attributes #13 = { noinline noreturn }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"rustc version 1.95.0-nightly (c78a29473 2026-02-22)"}
!3 = !{i64 8330724727691421}
