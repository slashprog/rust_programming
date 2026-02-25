enum Coin {
    Penny,
    Nickel,
    Dime,
    Quarter(String),  // Quarter with state
}

fn value_in_cents(coin: Coin) -> u8 {
    match coin {
        Coin::Penny => {
            println!("Lucky penny!");
            1
        }
        Coin::Nickel => 5,
        Coin::Dime => 10,
        Coin::Quarter(state) => {
            println!("Quarter from {}!", state);
            25
        }
    }
}

// Matching with multiple patterns
fn describe_number(n: i32) -> &'static str {
    match n {
        0 => "zero",
        1 | 2 => "one or two",         // Multiple patterns
        3..=10 => "three through ten", // Range pattern
        n if n < 0 => "negative",       // Guard
        _ => "something else",          // Default
    }
}
