fn main() {
   let s1 = String::from("Hello");
   
   println!("s1: {}, {:p}", s1, &s1);

   // let s2 = s1; // Move occurs here, s1 is no longer valid
  
   let s2 = s1; // Explicitly clone the string, s1 remains valid   
   println!("s2: {}, {:p}", s2, &s2);

  // println!("s1: {}, {:p}", s1, &s1); // ERROR: use of moved value: `s1`

}
