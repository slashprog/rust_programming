fn calc_length(s: &String) -> usize {  // s is REFERENCE
    s.len()  // No need to return ownership
}  // s goes out of scope, but since it's a reference,
   // nothing happens to the value it points to


fn main() {
    let mut s1 = String::from("hello");
    let r1 = &s1;  // r1 is a REFERENCE to s1

    let sz = calc_length(&s1);  // Pass REFERENCE to function
    println!("'{}' length is {}", s1, sz);  // s1 still
    println!("s1 = {}", s1);  // OK, s1 valid

    s1.push_str(", world");  // ERROR: cannot modify through immutable reference r1
    println!("s1 = {}", s1);  
    // println!("s1 = {}, r1 = {}", s1, r1);  // OK, both valid

}