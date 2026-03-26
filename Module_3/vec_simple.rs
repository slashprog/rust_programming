fn main() {
    let mut vec = vec![34, 56, 32, 12];
    println!("Original vector: {:?}", vec);

    // vec[10] = 100;  // This will cause a panic due to out-of-bounds access
    // println!("Modified vector: {:?}", vec);

    // println!("Length of vector: {}", vec[10]);
    println!("Length of vector: {}", vec.len());
    println!("Capacity of vector: {}", vec.capacity());

    vec.push(100);
    vec.push(200);
    vec.push(300);
    vec.push(400);
    println!("Vector after pushing new elements: {:?}, Length: {}, Capacity: {}", vec, vec.len(), vec.capacity());

    let _v = vec.pop();
    println!("Vector after popping an element: {:?}, Length: {}, Capacity: {}", vec, vec.len(), vec.capacity());

    let _v1 = vec.pop();
    println!("Vector after popping another element: {:?}, Length: {}, Capacity: {}", vec, vec.len(), vec.capacity());

    vec.pop();
    vec.pop();
    vec.pop();
    println!("Vector after popping all elements: {:?}, Length: {}, Capacity: {}", vec, vec.len(), vec.capacity());

}