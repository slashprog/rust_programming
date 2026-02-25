fn main() {
    let s1 = String::from("Rust");
    let s2 = s1; // Move: s2 now owns the data.

    // println!("{}", s1); // ERROR: borrow of moved value: `s1`
}