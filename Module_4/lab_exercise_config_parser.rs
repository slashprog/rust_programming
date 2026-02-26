use std::collections::HashMap;
use thiserror::Error;

// Configuration structure
#[derive(Debug, PartialEq)]
struct AppConfig {
    host: String,
    port: u16,
    timeout: u64,
    debug: bool,
}

// Error types
#[derive(Error, Debug)]
enum ConfigError {
    #[error("IO error: {0}")]
    Io(#[from] std::io::Error),
    
    #[error("Parse error for field '{field}': {message}")]
    ParseError {
        field: String,
        message: String,
        value: String,
    },
    
    #[error("Missing required field: {0}")]
    MissingField(String),
    
    #[error("Validation error: {0}")]
    Validation(String),
    
    #[error("Environment error: {0}")]
    Env(#[from] std::env::VarError),
}

// Trait for config sources
trait ConfigSource {
    fn read(&self) -> Result<HashMap<String, String>, ConfigError>;
    fn name(&self) -> &'static str;
}

// File source
struct FileSource {
    path: String,
}

impl ConfigSource for FileSource {
    fn read(&self) -> Result<HashMap<String, String>, ConfigError> {
        use std::fs;
        use std::collections::HashMap;
        
        let content = fs::read_to_string(&self.path)?;
        let mut map = HashMap::new();
        
        for line in content.lines() {
            if line.trim().is_empty() || line.starts_with('#') {
                continue;
            }
            
            if let Some((key, value)) = line.split_once('=') {
                map.insert(key.trim().to_string(), value.trim().to_string());
            }
        }
        
        Ok(map)
    }
    
    fn name(&self) -> &'static str {
        "file"
    }
}

// Environment variable source
struct EnvSource {
    prefix: String,
}

impl ConfigSource for EnvSource {
    fn read(&self) -> Result<HashMap<String, String>, ConfigError> {
        let mut map = HashMap::new();
        
        for (key, value) in std::env::vars() {
            if key.starts_with(&self.prefix) {
                let config_key = key[self.prefix.len()..].to_lowercase();
                map.insert(config_key, value);
            }
        }
        
        Ok(map)
    }
    
    fn name(&self) -> &'static str {
        "environment"
    }
}

// String source (for testing)
struct StringSource {
    content: String,
}

impl ConfigSource for StringSource {
    fn read(&self) -> Result<HashMap<String, String>, ConfigError> {
        let mut map = HashMap::new();
        
        for line in self.content.lines() {
            if line.trim().is_empty() || line.starts_with('#') {
                continue;
            }
            
            if let Some((key, value)) = line.split_once('=') {
                map.insert(key.trim().to_string(), value.trim().to_string());
            }
        }
        
        Ok(map)
    }
    
    fn name(&self) -> &'static str {
        "string"
    }
}

struct ConfigParser {
    sources: Vec<Box<dyn ConfigSource>>,
}

impl ConfigParser {
    fn new() -> Self {
        Self { sources: Vec::new() }
    }
    
    fn add_source(&mut self, source: Box<dyn ConfigSource>) {
        self.sources.push(source);
    }
    
    fn parse(&self) -> Result<AppConfig, ConfigError> {
        let mut config_map = HashMap::new();
        
        // Merge configs from all sources (later sources override)
        for source in &self.sources {
            match source.read() {
                Ok(values) => {
                    for (key, value) in values {
                        config_map.insert(key, value);
                    }
                }
                Err(e) => {
                    eprintln!("Warning from {}: {}", source.name(), e);
                    // Continue with other sources
                }
            }
        }
        
        // Parse with validation
        Ok(AppConfig {
            host: self.parse_string(&config_map, "host")?,
            port: self.parse_u16(&config_map, "port")?,
            timeout: self.parse_u64(&config_map, "timeout")?,
            debug: self.parse_bool(&config_map, "debug").unwrap_or(false),
        })
    }
}

// ---------

impl ConfigParser {
    fn parse_string(&self, map: &HashMap<String, String>, key: &str) -> Result<String, ConfigError> {
        map.get(key)
            .cloned()
            .ok_or_else(|| ConfigError::MissingField(key.to_string()))
    }
    
    fn parse_u16(&self, map: &HashMap<String, String>, key: &str) -> Result<u16, ConfigError> {
        let value = map.get(key)
            .ok_or_else(|| ConfigError::MissingField(key.to_string()))?;
        
        value.parse::<u16>()
            .map_err(|_| ConfigError::ParseError {
                field: key.to_string(),
                message: format!("Invalid u16: '{}'", value),
                value: value.clone(),
            })
    }
    
    fn parse_u64(&self, map: &HashMap<String, String>, key: &str) -> Result<u64, ConfigError> {
        let value = map.get(key)
            .ok_or_else(|| ConfigError::MissingField(key.to_string()))?;
        
        value.parse::<u64>()
            .map_err(|_| ConfigError::ParseError {
                field: key.to_string(),
                message: format!("Invalid u64: '{}'", value),
                value: value.clone(),
            })
    }
    
    fn parse_bool(&self, map: &HashMap<String, String>, key: &str) -> Option<bool> {
        map.get(key).and_then(|v| match v.to_lowercase().as_str() {
            "true" | "yes" | "1" => Some(true),
            "false" | "no" | "0" => Some(false),
            _ => None,
        })
    }
}

fn main() -> Result<(), ConfigError> {
    // Create parser
    let mut parser = ConfigParser::new();
    
    // Add sources
    parser.add_source(Box::new(FileSource {
        path: "config.txt".to_string(),
    }));
    
    parser.add_source(Box::new(EnvSource {
        prefix: "APP_".to_string(),
    }));
    
    // Parse config
    match parser.parse() {
        Ok(config) => {
            println!("Config loaded successfully:");
            println!("  host: {}", config.host);
            println!("  port: {}", config.port);
            println!("  timeout: {}", config.timeout);
            println!("  debug: {}", config.debug);
            Ok(())
        }
        Err(e) => {
            eprintln!("Failed to load config: {}", e);
            
            // Show error chain
            let mut source = e.source();
            while let Some(err) = source {
                eprintln!("  caused by: {}", err);
                source = err.source();
            }
            
            Err(e)
        }
    }
}
