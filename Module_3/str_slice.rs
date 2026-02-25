fn main() {
    let s1 = "Hello, world!";  // string literal, type &str
    let mut s2 = String::from(s1);  // convert to String, type String

    // s1.push_str(" How are you?");  // ERROR: cannot modify string literal
    s2.push_str(" How are you?");  // OK, s2 is String
    println!("s1: '{}', s2: '{}'", s1, s2);

    let mut s3 = String::from("This is a test string.");
    let s4 = &s3[10..];  // string slice, type &str
    println!("s3: '{}', s4: '{}'", s3, s4);
    
    s3.push_str(" More text."); 
    println!("s3: '{}'", s3);

    let s5 = &s3[..];  // string slice of entire s3


  //  let s5 = "Hello, Rust!";
  //  let s6 = &s5[..5];

  let s7 = String::new();
  s7.push_str("Hello");
  
}   