// Simple generic function
fn identity<T>(value: T) -> T {
    value
}

// Generic with multiple parameters
fn swap<A, B>(a: A, b: B) -> (B, A) {
    (b, a)
}

// Generic with trait bounds (most common)
fn print_slice<T: std::fmt::Debug>(slice: &[T]) {
    for item in slice {
        println!("{:?}", item);
    }
}

// Generic with where clause (more readable for complex bounds)
fn complex_generic<T, U>(t: T, u: U) -> String 
where
    T: std::fmt::Display + Clone,
    U: std::fmt::Debug + PartialEq,
{
    let t_clone = t.clone();
    format!("{} {:?} equal? {}", t, u, t_clone == t)
}

fn main() {
    let x = identity(5);
    let y = identity("hello");
    
    let swapped = swap(5, "hello");  // ( "hello", 5 )
    
    print_slice(&[1, 2, 3]);
    print_slice(&["a", "b", "c"]);
}
