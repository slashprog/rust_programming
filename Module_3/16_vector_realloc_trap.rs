fn main() {
    let mut v = vec![1, 2, 3];
    let first = &v[0]; // Immutable borrow of an element

    v.push(4); // ERROR: Cannot borrow 'v' as mutable (to push) 
               // because it is already borrowed (by 'first')

    println!("{}", first);
}