# workspace/Cargo.toml
[workspace]
members = [
    "crates/core",
    "crates/utils",
    "crates/app",
]

resolver = "2"  # Use new feature resolver

# Optional: default members for cargo commands
default-members = ["crates/app"]

# Optional: workspace dependencies
[workspace.dependencies]
serde = { version = "1.0", features = ["derive"] }
anyhow = "1.0"
thiserror = "1.0"
