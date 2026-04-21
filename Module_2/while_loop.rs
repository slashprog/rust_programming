fn main() {
    let mut counter = 0;


    // There is no point of using while loop as expression.
    // As its return value will always be () (unit type) and it cannot be used to return values like loop can.
    let r = while counter < 10 {
        println!("Counter: {}", counter);
        counter += 1;
        if counter == 5 {
            // This will cause compile error because while loops do not return values like loop does
            //break "Counter reached five!"; // This will break the loop and return a value
        }
    };

    println!("r after loop: {:?}", r);
}

// int i = 10;
// int j = 11;
// ...
// j += j++ + ++i;
