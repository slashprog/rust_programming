fn main() {
    // Mutable slices
    let mut arr = [1, 2, 3, 4, 5];
    let slice = &mut arr[1..4];  // &mut [i32]
    
    slice[0] = 10;  // Modify through slice
    println!("{:?}", arr);  // [1, 10, 3, 4, 5]
    
    // Vector slices work the same
    let mut v = vec![1, 2, 3, 4, 5];
    let slice = &v[1..4];
    println!("{:?}", slice);
    
    // Even custom types can have slices
    #[derive(Debug)]
    struct Point(i32, i32);
    
    let points = [Point(1, 1), Point(2, 2), Point(3, 3)];
    let slice = &points[1..];
    println!("{:?}", slice);  // [Point(2, 2), Point(3, 3)]
    
    // Empty slice
    let empty: &[i32] = &[];
}
