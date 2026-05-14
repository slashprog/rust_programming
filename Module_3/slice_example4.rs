fn main() {
    let s = "This is a test string with a couple of words.";
    
    let r = s.chars().nth(0).unwrap();

    println!("r = {:?}, Type of r: {}", r, std::any::type_name_of_val(&r));
    println!("r = {}", r);

    //let s1 = &mut s[10..14];

    // println!("Type of s: {}", std::any::type_name_of_val(&s));

    // println!("s = {:?}", s);

    for c in s.chars() {
        println!("c = {}", c);
    }

    for b in s.bytes() {
        println!("b = {}", b);
    }
}