// Define a trait (like an interface)
trait Summary {
    fn summarize(&self) -> String;
    
    // Default implementation
    fn summarize_author(&self) -> String {
        String::from("(Unknown author)")
    }
}

// Implement trait for a type
struct NewsArticle {
    headline: String,
    location: String,
    author: String,
    content: String,
}

impl Summary for NewsArticle {
    fn summarize(&self) -> String {
        format!("{}, by {} ({})", self.headline, self.author, self.location)
    }
}

struct Tweet {
    username: String,
    content: String,
    reply: bool,
    retweet: bool,
}

impl Summary for Tweet {
    fn summarize(&self) -> String {
        format!("{}: {}", self.username, self.content)
    }
    
    // Override default
    fn summarize_author(&self) -> String {
        format!("@{}", self.username)
    }
}

fn main() {
    let article = NewsArticle {
        headline: String::from("Rust is awesome!"),
        location: String::from("Internet"),
        author: String::from("Jane Doe"),
        content: String::from("Rust is a systems programming language that runs blazingly fast, prevents segfaults, and guarantees thread safety."),
    };
    println!("New article available! {}", article.summarize());
    println!("Author: {}", article.summarize_author());

    let tweet = Tweet {
        username: String::from("rustacean"),
        content: String::from("I love Rust!"),
        reply: false,
        retweet: false,
    };

    println!("New tweet available! {}", tweet.summarize());
    println!("Author: {}", tweet.summarize_author());
}