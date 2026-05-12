enum State {
    Connected(String),
    Disconnected,
}

fn main() {
    let state = State::Connected("192.168.1.1".to_string());

    let status = if let State::Connected(ip) = state {
        format!("Connected to {}", ip)
    } else {
        "Disconnected".to_string()
    };
    println!("{}", status);


    let state = State::Connected("192.168.1.2".to_string());


    let status = match state {
        State::Connected(ip) => format!("Connected to {}", ip),
        State::Disconnected => "Disconnected".to_string(),
    };
    println!("{}", status);
}
