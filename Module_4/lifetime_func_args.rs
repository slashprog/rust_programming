fn largest<'a>(x: &'a str, y: &'a str) -> &'a str {
    if x.len() > y.len() {
        x
    } else {
        y
    }
}


fn testfn(x: &str) -> &str {
    x
}

fn testfn2() -> String {
    String::from("hello")
}

fn main() {
    let string1 = "long string is long";
    let string2 = "xyz";

    let result = largest(string1, string2);
    println!("The largest string is {}", result);

    let result2 = testfn(string1);
    println!("The result of testfn is {}", result2);

}