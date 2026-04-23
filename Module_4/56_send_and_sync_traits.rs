// These are marker traits (no methods)
// Send: Type can be transferred across threads
// Sync: Type can be shared across threads (&T is Send)

use std::thread;

// Most types are Send + Sync automatically
fn main() {
    let x = 5;  // i32 is Send + Sync
    let handle = thread::spawn(move || {
        println!("{}", x);  // OK
    });
    
    // Rc is NOT Send
    // let rc = std::rc::Rc::new(5);
    // thread::spawn(move || {
    //     println!("{}", rc);  // ERROR: Rc not Send
    // });
    
    // Mutex is Sync (can share references)
    use std::sync::Mutex;
    let m = Mutex::new(5);
    
    // Cell/RefCell are NOT Sync
    // use std::cell::RefCell;
    // let cell = RefCell::new(5);
    // thread::spawn(move || {
    //     println!("{}", cell.borrow());  // ERROR
    // });
}
