enum Data {
    Integer(i32),
    Text(String),
    Floating(f64),
}

fn main() {
    // This vector holds the 'Data' type, but the content varies
    let items = vec![
        Data::Integer(42),
        Data::Text(String::from("Hello")),
        Data::Floating(3.14),
    ];
}