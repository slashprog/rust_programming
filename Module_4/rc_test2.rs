use std::rc::Rc;
use std::cell::RefCell;

fn main() {
    let data = Rc::new(RefCell::new(vec![1, 2, 3]));

    // Clone the Rc to create another reference to the same data
    let data_clone = Rc::clone(&data); 
    
    {
      println!("Data: {:?}", data.borrow());
      println!("Data Clone: {:?}", data_clone.borrow());
    }
    println!("Reference Count: {}", Rc::strong_count(&data));

    {
        data_clone.borrow_mut().push(4); // This will mutate the inner data through RefCell
    }

    {
        println!("Data after mutation: {:?}", data.borrow());
        println!("Data Clone after mutation: {:?}", data_clone.borrow());
    }
}