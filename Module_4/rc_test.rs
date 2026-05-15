use std::rc::Rc;

fn main() {
    let data = Rc::new(vec![1, 2, 3]);

    // Clone the Rc to create another reference to the same data
    let data_clone = Rc::clone(&data); 
    
    println!("Data: {:?}", data);
    println!("Data Clone: {:?}", data_clone);
    println!("Reference Count: {}", Rc::strong_count(&data));

    data_clone.push(4); // This will cause a compile-time error because Rc does not allow mutation of the inner data.

    println!("Data after mutation: {:?}", data);
}