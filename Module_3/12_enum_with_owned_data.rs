enum ConnectionStatus {
    Connected(String), // The enum owns this String
    Disconnected,
}

fn main() {
    let status = ConnectionStatus::Connected(String::from("192.168.1.1"));
    
    match status {
        ConnectionStatus::Connected(ip) => println!("Connected to {}", ip),
        ConnectionStatus::Disconnected => println!("Offline"),
    }
} // 'status' is dropped here, and the IP string is freed from the heap.