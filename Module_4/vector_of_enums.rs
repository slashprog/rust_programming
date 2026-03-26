
#[derive(Debug)]
enum MyData {
    Integer(i32),
    Float(f64),
    Text(String),
}
fn main() {
    let v = vec![MyData::Integer(10), MyData::Float(5.6), MyData::Text(String::from("hello"))];
    for item in &v {
        println!("{:?}", item);
        match item {
            MyData::Integer(i) => println!("Integer: {}", i),
            MyData::Float(f) => println!("Float: {}", f),
            MyData::Text(s) => println!("Text: {}", s),
        }
    }
}