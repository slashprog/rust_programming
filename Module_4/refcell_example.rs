use std::cell::RefCell;
use std::rc::Rc;

fn testfn(v: Rc<RefCell<Box<i32>>>) {
    println!("In testfn: v = {}", v.borrow());
    **v.borrow_mut() += 5;
    println!("In testfn after increment: v = {}", v.borrow());
}

fn testfn2(v: Box<i32>) {
    println!("In testfn2: v = {}", v);
    let mut v_mut = v;
    *v_mut += 5;
    println!("In testfn2 after increment: v = {}", v_mut);
}


fn main() {
    let counter = Rc::new(RefCell::new(Box::new(10)));
    let counter2 = Box::new(10);
    println!("In main: counter = {}, counter2 = {}", counter.borrow(), counter2);
    testfn(counter.clone());
    testfn2(counter2.clone());
    println!("In main: after testfn: counter = {}, counter2 = {}", counter.borrow(), counter2);
}
