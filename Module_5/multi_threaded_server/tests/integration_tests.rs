use std::thread;
use std::time::Duration;
use serial_test::serial;

use multi_threaded_server::common::protocol::Message;
use multi_threaded_server::client::client::{Client, ClientConfig};
use multi_threaded_server::server::listener::{Server, ServerConfig};

#[test]
#[serial]
fn test_client_server_communication() {
    // Start server in background thread
    let server_config = ServerConfig {
        bind_addr: "127.0.0.1:0".to_string(), // Let OS assign port
        max_connections: 10,
        connection_timeout: Duration::from_secs(5),
    };
    
    let server = Server::new(server_config);
    let server_handle = thread::spawn(move || {
        server.run().unwrap();
    });
    
    // Give server time to start
    thread::sleep(Duration::from_millis(100));
    
    // Connect client
    let client_config = ClientConfig {
        server_addr: "127.0.0.1:8080".to_string(),
        username: "test_user".to_string(),
        heartbeat_interval: Duration::from_secs(1),
    };
    
    let mut client = Client::connect(client_config).unwrap();
    
    // Run client briefly
    thread::sleep(Duration::from_secs(2));
    
    // Clean shutdown
    drop(client);
    drop(server_handle);
}

#[test]
fn test_message_serialization() {
    let original = Message::Chat {
        sender: "alice".to_string(),
        content: "Hello, world!".to_string(),
        timestamp: 1234567890,
    };
    
    let bytes = original.to_bytes().unwrap();
    let decoded = Message::from_bytes(&bytes).unwrap();
    
    assert_eq!(original, decoded);
}
