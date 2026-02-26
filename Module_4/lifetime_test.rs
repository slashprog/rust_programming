fn longest<'a, 'b>(x: &'a str, y: &'b str) -> &'b str {
    if x.len() > y.len() {
        y
    } else {
        y
    }
}

fn main() {
    let string1 = String::from("long string is long");
    let string2 = "xyz";
    
    let result = longest(string1.as_str(), string2);
    println!("The longest string is {}", result);
}