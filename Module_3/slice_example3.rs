fn main() {
    let mut arr = vec!(Box::new(11), Box::new(23), Box::new(32), Box::new(45), Box::new(66), Box::new(78), Box::new(58), Box::new(16), Box::new(43), Box::new(27));
    let slice = &mut arr[2..=6];
    
    slice[0] = Box::new(100);
    println!("Slice after modification: {:?}", slice);
    println!("Array after modification: {:?}", arr);

}