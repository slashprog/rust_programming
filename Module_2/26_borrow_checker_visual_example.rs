fn main() {
    let mut s = String::from("hello");
    //    │                                    s scope
    //    ├───────────────────────────────────────┐
    //    ↓                                       │
    let r1 = &s;  // immutable borrow starts      │
    //    ├────────────────────────────┐          │
    let r2 = &s;  // another immutable │          │
    //    ├───────────────────────┐    │          │
    println!("{} {}", r1, r2); // │    │          │
    //    └───────────────────────┴────┘          │
    // immutable borrows end here                 │
    //                                            │
    let r3 = &mut s;  // mutable borrow starts    │
    //    ├───────────────────────────────┐       │
    r3.push_str(" world");   //           │       │
    //                                    │       │
    println!("{}", r3);     //            │       │
    //    └───────────────────────────────┘       │
    // mutable borrow ends here                   │
    //                                            │
}  // ←───────────────────────────────────────────┘
