use std::net::{TcpListener, TcpStream};
use std::sync::Arc;
use std::thread;
use std::time::Duration;
use log::{info, warn, error};

use crate::server::connection_manager::ConnectionManager;
use crate::server::handler::handle_client;

/// Server configuration
pub struct ServerConfig {
    pub bind_addr: String,
    pub max_connections: usize,
    pub connection_timeout: Duration,
}

impl Default for ServerConfig {
    fn default() -> Self {
        ServerConfig {
            bind_addr: "127.0.0.1:8080".to_string(),
            max_connections: 100,
            connection_timeout: Duration::from_secs(30),
        }
    }
}

/// Main server that listens for connections
pub struct Server {
    config: ServerConfig,
    manager: ConnectionManager,
}

impl Server {
    pub fn new(config: ServerConfig) -> Self {
        Server {
            config,
            manager: ConnectionManager::new(),
        }
    }
    
    /// Start the server
    pub fn run(&self) -> Result<(), anyhow::Error> {
        let listener = TcpListener::bind(&self.config.bind_addr)?;
        info!("Server listening on {}", self.config.bind_addr);
        
        // Set non-blocking mode with timeout
        listener.set_nonblocking(true)?;
        
        let mut handles = vec![];
        
        for stream in listener.incoming() {
            match stream {
                Ok(stream) => {
                    if self.manager.client_count() >= self.config.max_connections {
                        warn!("Max connections reached, rejecting new client");
                        continue;
                    }
                    
                    let addr = match stream.peer_addr() {
                        Ok(addr) => addr,
                        Err(e) => {
                            error!("Failed to get peer address: {}", e);
                            continue;
                        }
                    };
                    
                    // Configure stream
                    if let Err(e) = stream.set_read_timeout(Some(self.config.connection_timeout)) {
                        error!("Failed to set read timeout: {}", e);
                    }
                    if let Err(e) = stream.set_write_timeout(Some(self.config.connection_timeout)) {
                        error!("Failed to set write timeout: {}", e);
                    }
                    
                    // Spawn handler
                    let handle = handle_client(stream, addr, self.manager.clone());
                    handles.push(handle);
                }
                Err(ref e) if e.kind() == std::io::ErrorKind::WouldBlock => {
                    // No connection ready, yield and continue
                    thread::sleep(Duration::from_millis(100));
                }
                Err(e) => {
                    error!("Connection failed: {}", e);
                }
            }
            
            // Clean up finished threads
            handles.retain(|h| !h.is_finished());
        }
        
        Ok(())
    }
}
