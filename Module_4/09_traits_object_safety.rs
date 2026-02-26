// A trait is "object-safe" if:
// 1. All methods don't return Self
// 2. All methods don't have generic type parameters

// Object-safe trait
trait Safe {
    fn method(&self);              // OK
    fn method2(&self) -> i32;       // OK
}

// NOT object-safe (returns Self)
trait Unsafe1 {
    fn new() -> Self;               // Can't use in trait objects
}

// NOT object-safe (generic method)
trait Unsafe2 {
    fn generic<T>(&self, t: T);      // Can't use in trait objects
}

// But can have both object-safe and unsafe parts
trait Mixed {
    fn safe(&self);                  // OK
    fn generic<T>(&self, t: T) {}    // Provided impl is OK
}

// Using trait objects
fn accept_safe(item: &dyn Safe) {}   // OK
// fn accept_unsafe(item: &dyn Unsafe1) {}  // ERROR!

// Common object-safe traits: Display, Debug, Iterator, etc.
