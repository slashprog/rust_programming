fn main() {
    let mut v = vec![11, 45, 43, 78, 22, 44, 55, 66, 33, 22, 33, 44, 55, 66, 22, 11, 34, 54, 44, 55, 66, 77, 88, 44, 55, 66];
    println!("Vector: {:?}", v);
    println!("First element: {}", v[0]);
    println!("Second element: {}", v[1]);
    println!("Third element: {}", v[2]);
    println!("Fourth element: {}", v[3]);

    println!("Length of vector: {}", v.len());
    println!("Capacity of vector: {}", v.capacity());

    //let r = v[20];
    //println!("This will cause a panic due to out-of-bounds access: {}", r);

    for _ in 0..10 {
        let _1 = v.pop();
    }

    println!("Length of vector: {}", v.len());
    println!("Capacity of vector: {}", v.capacity());

    v.shrink_to_fit();
    println!("Length of vector after shrink_to_fit: {}", v.len());
    println!("Capacity of vector after shrink_to_fit: {}", v.capacity());


    println!("Vector after popping elements: {:?}", v);
    v.sort();
    v.dedup();
    println!("Vector after deduplication: {:?}", v);

 //   let r = v.get(20);
 //   match r {
 //       Some(value) => println!("Element at index 20: {}", value),
 //       None => println!("No element at index 20, out of bounds access prevented."),
//    }

//    let r = v[20];
//    println!("This will cause a panic due to out-of-bounds access: {}", r);

}