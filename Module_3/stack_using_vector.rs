fn main() {
    let mut stack = Vec::new();
    println!("Stack: {:?}", stack);

    stack.push(1);
    stack.push(2);
    stack.push(3);
    println!("Stack after pushes: {:?}", stack);

    // Recommended way to pop elements from the stack
    while let Some(top) = stack.pop() {
        println!("Popped: {}", top);
        println!("Stack after pop: {:?}", stack);
    }

    println!("------------------------");

    stack.push(10);
    stack.push(20);
    stack.push(30);
    println!("Stack after pushes: {:?}", stack);

    while stack.len() > 0 {
        let top = stack.pop().unwrap();
        println!("Popped: {}", top);
        println!("Stack after pop: {:?}", stack);
    }


}