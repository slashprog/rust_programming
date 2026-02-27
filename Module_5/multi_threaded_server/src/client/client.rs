use std::net::TcpStream;
use std::io::{Read, Write, stdin, stdout};
use std::sync::Arc;
use std::sync::atomic::{AtomicBool, Ordering};
use std::thread;
use std::time::Duration;
use log::{info, warn, error, debug};
use crossbeam_channel::{bounded, select, tick, Receiver};

use crate::common::protocol::{Message, FramedMessage};

/// Client configuration
pub struct ClientConfig {
    pub server_addr: String,
    pub username: String,
    pub heartbeat_interval: Duration,
}

/// Chat client
pub struct Client {
    config: ClientConfig,
    stream: TcpStream,
    running: Arc<AtomicBool>,
}

impl Client {
    /// Connect to server and create a new client
    pub fn connect(config: ClientConfig) -> Result<Self, anyhow::Error> {
        let stream = TcpStream::connect(&config.server_addr)?;
        stream.set_nodelay(true)?;
        
        Ok(Client {
            config,
            stream,
            running: Arc::new(AtomicBool::new(true)),
        })
    }
    
    /// Run the client (blocking)
    pub fn run(&mut self) -> Result<(), anyhow::Error> {
        info!("Connected to {}", self.config.server_addr);
        
        // Send join message
        let join_msg = Message::Join {
            username: self.config.username.clone(),
        };
        self.send_message(&join_msg)?;
        
        // Create channels for coordination
        let (shutdown_tx, shutdown_rx) = bounded(0);
        let running = self.running.clone();
        
        // Spawn receiver thread
        let mut reader_stream = self.stream.try_clone()?;
        let reader_handle = thread::spawn(move || {
            Self::receiver_loop(&mut reader_stream, running, shutdown_tx);
        });
        
        // Spawn heartbeat thread
        let heartbeat_interval = self.config.heartbeat_interval;
        let heartbeat_stream = self.stream.try_clone()?;
        let heartbeat_running = self.running.clone();
        let heartbeat_handle = thread::spawn(move || {
            Self::heartbeat_loop(heartbeat_stream, heartbeat_interval, heartbeat_running);
        });
        
        // Main thread handles user input
        let result = self.input_loop(&shutdown_rx);
        
        // Shutdown
        self.running.store(false, Ordering::SeqCst);
        let _ = reader_handle.join();
        let _ = heartbeat_handle.join();
        
        result
    }
    
    /// Send a message to the server
    fn send_message(&mut self, message: &Message) -> Result<(), anyhow::Error> {
        let bytes = FramedMessage::encode(message)?;
        self.stream.write_all(&bytes)?;
        self.stream.flush()?;
        Ok(())
    }
    
    /// Receiver thread function
    fn receiver_loop(
        stream: &mut TcpStream,
        running: Arc<AtomicBool>,
        shutdown_tx: crossbeam_channel::Sender<()>,
    ) {
        let mut buffer = Vec::new();
        let mut read_buf = [0u8; 1024];
        
        while running.load(Ordering::SeqCst) {
            match stream.read(&mut read_buf) {
                Ok(0) => {
                    info!("Server closed connection");
                    break;
                }
                Ok(n) => {
                    buffer.extend_from_slice(&read_buf[..n]);
                    
                    while let Ok(Some(message)) = FramedMessage::decode(&mut buffer) {
                        Self::handle_incoming_message(message);
                    }
                }
                Err(ref e) if e.kind() == std::io::ErrorKind::WouldBlock => {
                    thread::sleep(Duration::from_millis(100));
                }
                Err(e) => {
                    error!("Receive error: {}", e);
                    break;
                }
            }
        }
        
        let _ = shutdown_tx.send(());
    }
    
    /// Heartbeat thread function
    fn heartbeat_loop(mut stream: TcpStream, interval: Duration, running: Arc<AtomicBool>) {
        let ticker = tick(interval);
        
        while running.load(Ordering::SeqCst) {
            select! {
                recv(ticker) -> _ => {
                    let ping = Message::Ping;
                    if let Ok(bytes) = FramedMessage::encode(&ping) {
                        if stream.write_all(&bytes).is_err() {
                            break;
                        }
                        let _ = stream.flush();
                    }
                }
                default(Duration::from_millis(100)) => {}
            }
        }
    }
    
    /// Handle incoming messages
    fn handle_incoming_message(message: Message) {
        match message {
            Message::Welcome { message, connected_clients } => {
                println!("\n*** {} ***", message);
                println!("Connected users: {}", connected_clients.join(", "));
            }
            
            Message::Broadcast { from, content, timestamp } => {
                println!("\n[{}] {}: {}", format_timestamp(timestamp), from, content);
            }
            
            Message::Private { from, content, timestamp, .. } => {
                println!("\n[PM from {}] {}: {}", from, format_timestamp(timestamp), content);
            }
            
            Message::UserJoined { username } => {
                println!("\n*** {} joined the chat ***", username);
            }
            
            Message::UserLeft { username } => {
                println!("\n*** {} left the chat ***", username);
            }
            
            Message::Pong => {
                debug!("Heartbeat response received");
            }
            
            Message::Error { code, message } => {
                println!("\n*** Error {}: {} ***", code, message);
            }
            
            _ => {
                debug!("Received: {:?}", message);
            }
        }
        
        // Print prompt
        print!("> ");
        let _ = stdout().flush();
    }
    
    /// Handle user input
    fn input_loop(&mut self, shutdown_rx: &Receiver<()>) -> Result<(), anyhow::Error> {
        let mut input = String::new();
        
        println!("Connected as {}. Type /help for commands.", self.config.username);
        print!("> ");
        let _ = stdout().flush();
        
        loop {
            select! {
                recv(shutdown_rx) -> _ => {
                    info!("Shutting down...");
                    break;
                }
                default(Duration::from_millis(100)) => {
                    // Check for input
                    if wait_for_input(Duration::from_millis(10)) {
                        input.clear();
                        match stdin().read_line(&mut input) {
                            Ok(0) => break,
                            Ok(_) => {
                                let cmd = input.trim();
                                if cmd.is_empty() {
                                    print!("> ");
                                    let _ = stdout().flush();
                                    continue;
                                }
                                
                                if !self.handle_command(cmd)? {
                                    break;
                                }
                                
                                print!("> ");
                                let _ = stdout().flush();
                            }
                            Err(e) => {
                                error!("Input error: {}", e);
                                break;
                            }
                        }
                    }
                }
            }
        }
        
        Ok(())
    }
    
    /// Handle user commands
    fn handle_command(&mut self, input: &str) -> Result<bool, anyhow::Error> {
        if input.starts_with('/') {
            let parts: Vec<&str> = input.split_whitespace().collect();
            match parts[0] {
                "/quit" | "/exit" => {
                    self.send_message(&Message::Leave {
                        username: self.config.username.clone(),
                    })?;
                    return Ok(false);
                }
                "/help" => {
                    println!("Commands:");
                    println!("  /quit or /exit - Disconnect");
                    println!("  /msg <user> <message> - Send private message");
                    println!("  /users - List connected users");
                    println!("  /help - Show this help");
                }
                "/users" => {
                    // Server doesn't have a direct command for this yet
                    // Could be implemented as a special message
                }
                "/msg" if parts.len() >= 3 => {
                    let to = parts[1];
                    let content = parts[2..].join(" ");
                    self.send_message(&Message::private(
                        self.config.username.clone(),
                        to.to_string(),
                        content,
                    ))?;
                }
                _ => {
                    println!("Unknown command: {}", parts[0]);
                }
            }
        } else if !input.is_empty() {
            self.send_message(&Message::chat(
                self.config.username.clone(),
                input.to_string(),
            ))?;
        }
        
        Ok(true)
    }
}

/// Helper to check if input is available
fn wait_for_input(timeout: Duration) -> bool {
    use std::os::fd::AsRawFd;
    use std::os::unix::io::RawFd;
    
    let stdin_fd = std::io::stdin().as_raw_fd();
    let mut fds = unsafe {
        let mut fds = std::mem::zeroed::<libc::fd_set>();
        libc::FD_ZERO(&mut fds);
        libc::FD_SET(stdin_fd, &mut fds);
        fds
    };
    
    let mut timeout = libc::timeval {
        tv_sec: timeout.as_secs() as _,
        tv_usec: timeout.subsec_micros() as _,
    };
    
    let result = unsafe {
        libc::select(
            stdin_fd + 1,
            &mut fds,
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            &mut timeout,
        )
    };
    
    result > 0
}

/// Format timestamp for display
fn format_timestamp(timestamp: u64) -> String {
    // Simple formatting - in production, use chrono
    format!("{}", timestamp)
}
```

## Step 9: Client Main Entry Point

```rust
// src/bin/client.rs
use std::time::Duration;
use log::info;
use env_logger::Env;

use multi_threaded_server::client::client::{Client, ClientConfig};

fn main() -> Result<(), anyhow::Error> {
    // Initialize logging
    env_logger::Builder::from_env(Env::default().default_filter_or("info")).init();
    
    info!("Starting chat client...");
    
    // Parse command line arguments
    let args: Vec<String> = std::env::args().collect();
    
    let server_addr = args.get(1).map(|s| s.as_str()).unwrap_or("127.0.0.1:8080");
    let username = args.get(2).map(|s| s.to_string()).unwrap_or_else(|| {
        println!("Enter username: ");
        let mut input = String::new();
        std::io::stdin().read_line(&mut input).unwrap();
        input.trim().to_string()
    });
    
    // Create client config
    let config = ClientConfig {
        server_addr: server_addr.to_string(),
        username,
        heartbeat_interval: Duration::from_secs(30),
    };
    
    // Connect and run
    let mut client = Client::connect(config)?;
    client.run()?;
    
    info!("Client shutdown complete");
    Ok(())
}
