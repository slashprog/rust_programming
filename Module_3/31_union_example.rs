// Unions are UNSAFE and rarely used!
// They provide C-like union behavior

#[repr(C)]
union MyUnion {
    i: i32,
    f: f32,
    b: [u8; 4],
}

fn main() {
    let u = MyUnion { i: 42 };
    
    // Accessing union fields is UNSAFE!
    unsafe {
        println!("As i32: {}", u.i);
        println!("As f32: {}", u.f);  // Garbage! Same bits interpreted as f32
        println!("As bytes: {:?}", u.b);
    }
    
    // When would you use this?
    // - FFI with C unions
    // - Extremely memory-constrained environments
    // - Implementing low-level type punning
    // 99.9% of Rust code never needs unions!
}
