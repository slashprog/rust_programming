use std::net::{TcpStream, SocketAddr};
use std::sync::Arc;
use std::io::{Read, Write};
use std::thread;
use log::{info, warn, error, debug};

use crate::common::protocol::{Message, FramedMessage};
use crate::server::connection_manager::ConnectionManager;

/// Handle a single client connection
pub fn handle_client(
    mut stream: TcpStream,
    addr: SocketAddr,
    manager: ConnectionManager,
) -> thread::JoinHandle<()> {
    thread::spawn(move || {
        info!("New connection from: {}", addr);
        
        let mut buffer = Vec::new();
        let mut username = String::new();
        
        // Wait for join message
        match wait_for_join(&mut stream, &mut buffer, &addr) {
            Ok(name) => {
                username = name.clone();
                manager.add_client(addr, username.clone(), stream.try_clone().unwrap());
                
                // Send welcome message
                let welcome = Message::Welcome {
                    message: format!("Welcome, {}!", username),
                    connected_clients: manager.get_all_usernames(),
                };
                let _ = manager.send_to(&addr, &welcome);
                
                // Notify others
                let joined_msg = Message::UserJoined {
                    username: username.clone(),
                };
                manager.broadcast(&joined_msg, Some(&addr));
                
                // Handle incoming messages
                handle_incoming_messages(&mut stream, &mut buffer, &addr, &manager, &username);
            }
            Err(e) => {
                error!("Failed to get join message from {}: {}", addr, e);
            }
        }
        
        // Cleanup on disconnect
        if let Some(client) = manager.remove_client(&addr) {
            let leave_msg = Message::UserLeft {
                username: client.username.clone(),
            };
            manager.broadcast(&leave_msg, Some(&addr));
            info!("Client disconnected: {} at {}", client.username, addr);
        }
    })
}

/// Wait for the initial join message
fn wait_for_join(
    stream: &mut TcpStream,
    buffer: &mut Vec<u8>,
    addr: &SocketAddr,
) -> Result<String, anyhow::Error> {
    let mut read_buf = [0u8; 1024];
    
    loop {
        match stream.read(&mut read_buf) {
            Ok(0) => anyhow::bail!("Connection closed"),
            Ok(n) => {
                buffer.extend_from_slice(&read_buf[..n]);
                
                while let Some(msg) = FramedMessage::decode(buffer)? {
                    match msg {
                        Message::Join { username } => {
                            return Ok(username);
                        }
                        _ => {
                            warn!("Expected Join message from {}, got {:?}", addr, msg);
                            // Send error and continue waiting
                            let error = Message::Error {
                                code: 400,
                                message: "Expected Join message".to_string(),
                            };
                            if let Ok(bytes) = FramedMessage::encode(&error) {
                                let _ = stream.write_all(&bytes);
                            }
                        }
                    }
                }
            }
            Err(e) => anyhow::bail!("Read error: {}", e),
        }
    }
}

/// Handle incoming messages from a client
fn handle_incoming_messages(
    stream: &mut TcpStream,
    buffer: &mut Vec<u8>,
    addr: &SocketAddr,
    manager: &ConnectionManager,
    username: &str,
) {
    let mut read_buf = [0u8; 1024];
    
    loop {
        match stream.read(&mut read_buf) {
            Ok(0) => {
                debug!("Connection closed by client: {}", addr);
                break;
            }
            Ok(n) => {
                buffer.extend_from_slice(&read_buf[..n]);
                
                while let Ok(Some(msg)) = FramedMessage::decode(buffer) {
                    match process_message(msg, addr, manager, username) {
                        ProcessResult::Continue => continue,
                        ProcessResult::Disconnect => return,
                        ProcessResult::Error(e) => {
                            error!("Error processing message: {}", e);
                        }
                    }
                }
            }
            Err(e) => {
                error!("Error reading from {}: {}", addr, e);
                break;
            }
        }
    }
}

/// Result of message processing
enum ProcessResult {
    Continue,
    Disconnect,
    Error(anyhow::Error),
}

/// Process a single message
fn process_message(
    msg: Message,
    addr: &SocketAddr,
    manager: &ConnectionManager,
    username: &str,
) -> ProcessResult {
    match msg {
        Message::Chat { content, .. } => {
            debug!("Chat from {}: {}", username, content);
            let broadcast = Message::broadcast(username.to_string(), content);
            manager.broadcast(&broadcast, Some(addr));
            ProcessResult::Continue
        }
        
        Message::Private { to, content, .. } => {
            debug!("Private from {} to {}: {}", username, to, content);
            
            // Find recipient address
            let clients = manager.clients.lock().unwrap();
            let recipient_addr = clients.iter()
                .find(|(_, c)| c.username == to)
                .map(|(addr, _)| *addr);
            
            if let Some(recipient) = recipient_addr {
                drop(clients); // Release lock before sending
                
                let private = Message::private(
                    username.to_string(),
                    to.clone(),
                    content,
                );
                
                if !manager.send_to(&recipient, &private) {
                    let error = Message::Error {
                        code: 404,
                        message: format!("User {} is offline", to),
                    };
                    let _ = manager.send_to(addr, &error);
                }
            } else {
                let error = Message::Error {
                    code: 404,
                    message: format!("User {} not found", to),
                };
                let _ = manager.send_to(addr, &error);
            }
            ProcessResult::Continue
        }
        
        Message::Leave { .. } => {
            info!("Client {} requested disconnect", username);
            ProcessResult::Disconnect
        }
        
        Message::Ping => {
            let pong = Message::Pong;
            let _ = manager.send_to(addr, &pong);
            ProcessResult::Continue
        }
        
        _ => {
            warn!("Unexpected message from {}: {:?}", addr, msg);
            ProcessResult::Continue
        }
    }
}
