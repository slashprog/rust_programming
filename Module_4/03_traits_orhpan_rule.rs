// IMPORTANT: The Orphan Rule
// You can implement a trait for a type if EITHER:
// 1. The trait is defined in your crate, OR
// 2. The type is defined in your crate

// ✅ Allowed: Trait from std on our type
struct MyType;
impl std::fmt::Display for MyType {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "MyType")
    }
}

// ✅ Allowed: Our trait on std type
trait MyTrait {}
impl MyTrait for i32 {}

// ❌ NOT Allowed: std trait on std type
// impl std::fmt::Display for i32 {}  // ERROR!

// Reason: Prevents conflicting implementations across crates
// This ensures trait coherence
