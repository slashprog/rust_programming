fn main() {
    {
      let x = Box::new(10); // the value is stored on the heap
      let mut y = x; // x is moved to y, x is no longer valid

       println!("y: {}", y);
       *y += 5;
       println!("After modification - y: {}", y);

      // println!("x = {}", x); // This will cause a compile-time error because x has been moved to y

    }
}