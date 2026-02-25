// Generic struct with one type parameter
struct Point<T> {
    x: T,
    y: T,
}

// Generic struct with multiple type parameters
struct Pair<X, Y> {
    first: X,
    second: Y,
}

// Enum with generics (like Option and Result!)
enum MyOption<T> {
    Some(T),
    None,
}

enum MyResult<T, E> {
    Ok(T),
    Err(E),
}

fn main() {
    // Both fields same type
    let integer_point = Point { x: 5, y: 10 };
    let float_point = Point { x: 1.0, y: 4.0 };
    
    // Different types allowed
    let pair = Pair { first: 5, second: "hello" };
    
    // Type inference works
    let inferred = Point { x: 5, y: 10 };  // Point<i32>
    
    // But you can be explicit
    let explicit: Point<f64> = Point { x: 1.0, y: 4.0 };
}
