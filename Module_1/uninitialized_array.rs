fn main() {
    let mut arr :[i32; 5];

    arr = [10, 20, 30, 40, 50];

    arr[0] = 10;
    println!("Array: {:?}", arr);

    let mut arr2 :[i32; 10] = [0; 10];  // Initialize with default values (0 for i32)
    println!("Uninitialized array (default values): {:?}", arr2);

    arr2[4] = 100;
    println!("Modified array: {:?}", arr2);
}