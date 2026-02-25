fn main() {
    let mut arr = [1, 2, 3, 4, 5, 6, 7, 8];

    println!("Original array: {:?}", arr);

    let slice = &mut arr[2..5];
    println!("Mutable slice: {:?}", slice);

    for i in 0..slice.len() {
        slice[i] *= 2;  // Modify the slice
    }

    println!("Modified slice: {:?}", slice);
    println!("Modified array: {:?}", arr);
}