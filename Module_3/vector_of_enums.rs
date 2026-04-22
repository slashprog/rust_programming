enum StringOrInt {
    Str(String),
    Int(i32),
}

fn main() {
    let v = vec![
        StringOrInt::Str(String::from("Hello")),
        StringOrInt::Int(42),
    ];

    for item in v {
        match item {
            StringOrInt::Str(s) => println!("String: {}", s),
            StringOrInt::Int(i) => println!("Integer: {}", i),
        }
    }
}