fn main() {
    let arr = [1, 2, 3, 4, 5];
    
    // Slice of array
    let slice = &arr[1..4];  // type: &[i32]
    
    println!("slice: {:?}", slice);  // [2, 3, 4]
    println!("length: {}", slice.len());  // 3
    
    // Functions can take slices
    fn print_first_element(slice: &[i32]) {
        if let Some(first) = slice.first() {
            println!("First: {}", first);
        }
    }
    
    print_first_element(&arr[..]);  // Works with full array
    print_first_element(&[10, 20, 30]);  // Works with array literal
    print_first_element(slice);  // Works with another slice
    
    // Slices are fat pointers: (ptr, len)
    println!("Size of &[i32]: {} bytes", std::mem::size_of::<&[i32]>());  // 16 (on 64-bit)
    println!("Size of &i32: {} bytes", std::mem::size_of::<&i32>());      // 8
}
