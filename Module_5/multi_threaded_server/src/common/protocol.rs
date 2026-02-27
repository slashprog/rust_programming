use serde::{Serialize, Deserialize};
use std::time::{SystemTime, UNIX_EPOCH};

/// Message types exchanged between client and server
#[derive(Debug, Clone, Serialize, Deserialize, PartialEq)]
pub enum Message {
    /// Client sends a chat message
    Chat {
        sender: String,
        content: String,
        timestamp: u64,
    },
    
    /// Client announces presence
    Join {
        username: String,
    },
    
    /// Client leaves
    Leave {
        username: String,
    },
    
    /// Server broadcasts to all clients
    Broadcast {
        from: String,
        content: String,
        timestamp: u64,
    },
    
    /// Server sends private message
    Private {
        from: String,
        to: String,
        content: String,
        timestamp: u64,
    },
    
    /// Server acknowledges connection
    Welcome {
        message: String,
        connected_clients: Vec<String>,
    },
    
    /// Server notifies of new client
    UserJoined {
        username: String,
    },
    
    /// Server notifies of leaving client
    UserLeft {
        username: String,
    },
    
    /// Heartbeat to keep connection alive
    Ping,
    
    /// Response to ping
    Pong,
    
    /// Error message
    Error {
        code: u16,
        message: String,
    },
}

impl Message {
    /// Create a new chat message
    pub fn chat(sender: String, content: String) -> Self {
        Message::Chat {
            sender,
            content,
            timestamp: current_timestamp(),
        }
    }
    
    /// Create a new broadcast message
    pub fn broadcast(from: String, content: String) -> Self {
        Message::Broadcast {
            from,
            content,
            timestamp: current_timestamp(),
        }
    }
    
    /// Create a new private message
    pub fn private(from: String, to: String, content: String) -> Self {
        Message::Private {
            from,
            to,
            content,
            timestamp: current_timestamp(),
        }
    }
    
    /// Serialize message to bytes for sending
    pub fn to_bytes(&self) -> Result<Vec<u8>, bincode::Error> {
        bincode::serialize(self)
    }
    
    /// Deserialize message from bytes
    pub fn from_bytes(bytes: &[u8]) -> Result<Self, bincode::Error> {
        bincode::deserialize(bytes)
    }
}

/// Get current timestamp in seconds
fn current_timestamp() -> u64 {
    SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .unwrap_or_default()
        .as_secs()
}

/// Length-prefixed framing for TCP streams
pub struct FramedMessage;

impl FramedMessage {
    /// Maximum message size (1MB)
    pub const MAX_MESSAGE_SIZE: usize = 1024 * 1024;
    
    /// Encode a message with length prefix
    pub fn encode(message: &Message) -> Result<Vec<u8>, anyhow::Error> {
        let data = message.to_bytes()?;
        if data.len() > Self::MAX_MESSAGE_SIZE {
            anyhow::bail!("Message too large: {} bytes", data.len());
        }
        
        let len = data.len() as u32;
        let mut frame = len.to_be_bytes().to_vec();
        frame.extend(data);
        Ok(frame)
    }
    
    /// Decode a message from a stream (call this repeatedly with incoming data)
    pub fn decode(buffer: &mut Vec<u8>) -> Result<Option<Message>, anyhow::Error> {
        if buffer.len() < 4 {
            return Ok(None); // Not enough data for length prefix
        }
        
        // Read length prefix
        let len_bytes: [u8; 4] = buffer[0..4].try_into()?;
        let msg_len = u32::from_be_bytes(len_bytes) as usize;
        
        if msg_len > Self::MAX_MESSAGE_SIZE {
            anyhow::bail!("Invalid message length: {}", msg_len);
        }
        
        if buffer.len() < 4 + msg_len {
            return Ok(None); // Not enough data for complete message
        }
        
        // Extract message
        let msg_data = buffer[4..4 + msg_len].to_vec();
        buffer.drain(0..4 + msg_len);
        
        let message = Message::from_bytes(&msg_data)?;
        Ok(Some(message))
    }
}
