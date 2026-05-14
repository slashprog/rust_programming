macro_rules! make_vec {
    ($($item:expr),*) => {
        {
            let mut v = Vec::new();
            $(v.push($item);)*
            v
        }
    };
}

// TODO: create a macro make_hashmap that takes key-value pairs and creates a HashMap
macro_rules! make_hashmap {
    ($($key:expr => $value:expr),*) => {
        {
            let mut map = std::collections::HashMap::new();
            $(map.insert($key, $value);)*
            map
        }
    };
}


fn main() {
    let nums = make_vec![10, 20, 30];
    println!("{:?}", nums);  // [10, 20, 30]

    let users = make_hashmap! {
        "Alice" => 30,
        "Bob" => 25,
        "Charlie" => 35
    };

    println!("{:?}", users);  // {"Alice": 30, "Bob": 25, "Charlie": 35}
}