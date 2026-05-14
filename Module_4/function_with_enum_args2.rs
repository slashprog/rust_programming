enum Operation {
    Pay(String, i32),
    Refund(String, i32),
    Cancel(String),
    Charge(i32),
    Reset,
}

fn process_transaction(operation: Operation) {
    match operation {
        Operation::Pay(name, amount) => println!("Processing payment of ${} for {}", amount, name),
        Operation::Refund(name, amount) => println!("Processing refund of ${} for {}", amount, name),
        Operation::Cancel(name) => println!("Cancelling transaction for {}", name),
        Operation::Charge(amount) => println!("Charging ${}", amount),
        Operation::Reset => println!("Resetting transaction system"),
    }
}

fn main() {
    let transaction = Operation::Pay(String::from("Alice"), 100);
    process_transaction(transaction);

    let transaction = Operation::Refund(String::from("Bob"), 50);
    process_transaction(transaction);

    let transaction = Operation::Cancel(String::from("Charlie"));
    process_transaction(transaction);

    let transaction = Operation::Charge(200);
    process_transaction(transaction);

    let transaction = Operation::Reset;
    process_transaction(transaction);
}