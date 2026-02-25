enum Message<'a> {
    Quit,
    Write(&'a str), // This variant borrows a string slice
}

fn main() {
    let text = String::from("Hello Enum");
    let msg = Message::Write(&text); // msg borrows from text

    // drop(text); // ERROR: If you did this, msg would be invalid!
}