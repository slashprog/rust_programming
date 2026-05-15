use std::cell::Cell;

fn main() {
    //let a = Box::new(5);

    //let c = 5;

    //c = 10;

    // Cell provides interior mutability, 
    // allowing us to mutate data even when we have an immutable reference to it.
    let cell = Cell::new(5);
    let b = cell.get(); // Access the value in the cell (interior data)
    println!("Value in cell: {}", b);

    cell.set(10);  // Mutate the value in the cell using set method - this is interior mutability
    println!("Value in cell after set: {}", cell.get());
}