use std::collections::HashMap;
use std::net::SocketAddr;
use std::sync::{Arc, Mutex};
use std::io::Write;
use log::{info, warn, error, debug};

use crate::common::protocol::{Message, FramedMessage};

/// Represents a connected client
pub struct ClientConnection {
    pub username: String,
    pub addr: SocketAddr,
    pub writer: Arc<Mutex<std::net::TcpStream>>,
}

/// Manages all active client connections
#[derive(Clone)]
pub struct ConnectionManager {
    clients: Arc<Mutex<HashMap<SocketAddr, ClientConnection>>>,
}

impl ConnectionManager {
    pub fn new() -> Self {
        ConnectionManager {
            clients: Arc::new(Mutex::new(HashMap::new())),
        }
    }
    
    /// Add a new client connection
    pub fn add_client(
        &self,
        addr: SocketAddr,
        username: String,
        stream: std::net::TcpStream,
    ) {
        let mut clients = self.clients.lock().unwrap();
        let client = ClientConnection {
            username,
            addr,
            writer: Arc::new(Mutex::new(stream.try_clone().unwrap())),
        };
        clients.insert(addr, client);
        info!("Client added: {} at {}", username, addr);
    }
    
    /// Remove a client connection
    pub fn remove_client(&self, addr: &SocketAddr) -> Option<ClientConnection> {
        let mut clients = self.clients.lock().unwrap();
        let client = clients.remove(addr);
        if let Some(ref c) = client {
            info!("Client removed: {} at {}", c.username, addr);
        }
        client
    }
    
    /// Get username by address
    pub fn get_username(&self, addr: &SocketAddr) -> Option<String> {
        let clients = self.clients.lock().unwrap();
        clients.get(addr).map(|c| c.username.clone())
    }
    
    /// Get all connected usernames
    pub fn get_all_usernames(&self) -> Vec<String> {
        let clients = self.clients.lock().unwrap();
        clients.values().map(|c| c.username.clone()).collect()
    }
    
    /// Get count of connected clients
    pub fn client_count(&self) -> usize {
        let clients = self.clients.lock().unwrap();
        clients.len()
    }
    
    /// Broadcast message to all connected clients
    pub fn broadcast(&self, message: &Message, exclude_addr: Option<&SocketAddr>) {
        let clients = self.clients.lock().unwrap();
        let message_bytes = match FramedMessage::encode(message) {
            Ok(bytes) => bytes,
            Err(e) => {
                error!("Failed to encode broadcast message: {}", e);
                return;
            }
        };
        
        for (addr, client) in clients.iter() {
            if let Some(exclude) = exclude_addr {
                if addr == exclude {
                    continue;
                }
            }
            
            let mut writer = client.writer.lock().unwrap();
            if let Err(e) = writer.write_all(&message_bytes) {
                warn!("Failed to send to {}: {}", addr, e);
            }
        }
    }
    
    /// Send message to specific client
    pub fn send_to(&self, addr: &SocketAddr, message: &Message) -> bool {
        let clients = self.clients.lock().unwrap();
        if let Some(client) = clients.get(addr) {
            let mut writer = client.writer.lock().unwrap();
            match FramedMessage::encode(message).and_then(|bytes| {
                writer.write_all(&bytes)?;
                writer.flush()?;
                Ok(())
            }) {
                Ok(_) => true,
                Err(e) => {
                    warn!("Failed to send to {}: {}", addr, e);
                    false
                }
            }
        } else {
            false
        }
    }
}
