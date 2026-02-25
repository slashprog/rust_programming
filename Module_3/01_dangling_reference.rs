fn main() {
    let reference_to_nothing = create_dangling_reference();
}

fn create_dangling_reference() -> &String { // Error!
    let s = String::from("hello"); // 's' is created on the heap

    &s // We try to return a reference to 's'
} // 's' goes out of scope and is DROPPED here! 
  // The heap memory is freed.