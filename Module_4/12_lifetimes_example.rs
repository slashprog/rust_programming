// Lifetimes ensure references are always valid
// They're the part of the borrow checker that tracks how long references live

// This function has an implicit lifetime
fn first_word(s: &str) -> &str {  // input and output have same lifetime
    let bytes = s.as_bytes();
    for (i, &item) in bytes.iter().enumerate() {
        if item == b' ' {
            return &s[0..i];
        }
    }
    &s[..]
}

// The explicit version (what compiler sees)
fn first_word<'a>(s: &'a str) -> &'a str {
    // ...
}

// Why? To prevent dangling references:
fn main() {
    let result;
    {
        let s = String::from("hello");
        result = first_word(&s);  // result borrows from s
    }  // s dropped here
    // println!("{}", result);  // ERROR! result would be dangling
}
