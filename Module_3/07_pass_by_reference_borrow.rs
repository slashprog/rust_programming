fn main() {
    let s = String::from("Hello");
    borrow_string(&s); 

    println!("{} still exists!", s); // VALID! s is still the owner.
}

fn borrow_string(some_string: &String) {
    println!("Reading: {}", some_string);
} // The borrow ends here, but nothing is freed.