use std::cell::RefCell;

// Refcell provides interior mutability with dynamic borrow checking at runtime.
// The borrow rules are enforced at runtime, 
// allowing for mutable borrows even when we have an immutable 
// reference to the RefCell itself.

fn main() {
    let ref_cell = RefCell::new(5);
    
    // To access the value, we need to borrow it immutably
    {
         let value = ref_cell.borrow(); // Borrow the value immutably
         println!("Value in RefCell: {}", value);
    }

    // To mutate the value, we need to borrow it mutably
    {
        let mut mutable_value = ref_cell.borrow_mut(); // Borrow the value mutably
        *mutable_value += 10; // Modify the value through the mutable reference
    }

    println!("Value in RefCell after mutation: {}", ref_cell.borrow());
}