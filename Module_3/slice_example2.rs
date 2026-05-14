fn main() {
    let mut arr = [11, 23, 32, 45, 66, 78, 58, 16, 43, 27];
    let slice = &mut arr[2..=6];

    
    slice[0] = 100;
    //println!("Slice after modification: {:?}", slice);
    //println!("Array after modification: {:?}", arr);

    //println!("Address of slice[0]: {:p}", &slice[0]);
    //println!("Address of arr[2]: {:p}", &arr[2]);

    //println!("Value of slice[0]: {}", slice[0]);
    //println!("Value of arr[2]: {}", arr[2]);

    println!("Slice: {:?}", slice);
    println!("Array: {:?}", arr);
}