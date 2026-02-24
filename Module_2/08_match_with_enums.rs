enum Coin {
    Penny,
    Nickel,
    Dime,
    Quarter(String),  // Quarter with state name
}

fn value_in_cents(coin: Coin) -> u8 {
    match coin {
        Coin::Penny => {
            println!("Lucky penny!");
            1
        },
        Coin::Nickel => 5,
        Coin::Dime => 10,
        Coin::Quarter(state) => {
            println!("Quarter from {}!", state);
            25
        },
    }
}

fn main() {
    let coin = Coin::Quarter("California".to_string());
    println!("Value: {} cents", value_in_cents(coin));
}