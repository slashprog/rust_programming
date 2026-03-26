// Traits define SHARED BEHAVIOR (like interfaces in other languages)

// Define a trait
trait Summarizable {
    fn summary(&self) -> String;
    
    // Can provide default implementation
    fn author(&self) -> String {
        String::from("Unknown")
    }
}

// Implement for a type
struct NewsArticle {
    headline: String,
    location: String,
}

impl Summarizable for NewsArticle {
    fn summary(&self) -> String {
        format!("{} ({})", self.headline, self.location)
    }
    
    // Override default
    fn author(&self) -> String {
        String::from("Staff Writer")
    }
}

// Different type, same behavior
struct Tweet {
    username: String,
    content: String,
}

impl Summarizable for Tweet {
    fn summary(&self) -> String {
        format!("{}: {}", self.username, self.content)
    }
    // Uses default author()
}

fn main() {
    let article = NewsArticle {
        headline: String::from("Rust is awesome"),
        location: String::from("Internet"),
    };

    let tweet = Tweet {
        username: String::from("user123"),
        content: String::from("Hello, world!"),
    };

    println!("Article summary: {}", article.summary());
    println!("Article author: {}", article.author());

    println!("Tweet summary: {}", tweet.summary());
    println!("Tweet author: {}", tweet.author());
}