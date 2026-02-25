fn main() {
    let arr = [1, 2, 34, 4, 5, 6, 7, 8, 9, 23, 44, 55];
    println!("Array: {:?}", arr);
    println!("First element: {}", arr[0]);
    println!("Third element: {}", arr[2]); 
    println!("Last element: {}", arr[arr.len() - 1]);

    let arr = [1; 10];
    println!("Array with 10 elements, all initialized to 1: {:?}", arr);
}