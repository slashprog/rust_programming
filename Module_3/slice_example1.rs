fn main() {
    let mut arr = [11, 23, 32, 45, 66, 78, 58, 16, 43, 27];
    let slice = &arr[2..=6];

    arr[8] = 100; // This is cause a compile-time error.
    println!("Slice: {:?}", slice);
    //arr[3] = 100; // This is allowed because we are modifying the original array, not the slice.
    println!("Array: {:?}", arr);

}