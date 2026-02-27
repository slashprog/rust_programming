mod server;
mod common;

use std::sync::Arc;
use std::time::Duration;
use log::{info, error};
use env_logger::Env;

use server::listener::{Server, ServerConfig};

fn main() -> Result<(), anyhow::Error> {
    // Initialize logging
    env_logger::Builder::from_env(Env::default().default_filter_or("info")).init();
    
    info!("Starting multi-threaded server...");
    
    // Parse command line arguments
    let args: Vec<String> = std::env::args().collect();
    let bind_addr = args.get(1).map(|s| s.as_str()).unwrap_or("127.0.0.1:8080");
    
    // Create server config
    let config = ServerConfig {
        bind_addr: bind_addr.to_string(),
        max_connections: 100,
        connection_timeout: Duration::from_secs(30),
    };
    
    // Setup Ctrl+C handler
    let running = Arc::new(std::sync::atomic::AtomicBool::new(true));
    let r = running.clone();
    
    ctrlc::set_handler(move || {
        info!("Received shutdown signal, cleaning up...");
        r.store(false, std::sync::atomic::Ordering::SeqCst);
    })?;
    
    // Run server
    let server = Server::new(config);
    
    if let Err(e) = server.run() {
        error!("Server error: {}", e);
    }
    
    info!("Server shutdown complete");
    Ok(())
}
