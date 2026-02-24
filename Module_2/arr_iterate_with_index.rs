fn main() {
    let arr = [10, 20, 30, 40];
    for r in arr.iter().enumerate() {
        println!("r = {:?}", r);
    }

    for (i, v) in arr.iter().enumerate() {
        println!("Index: {}, Value: {}", i, v);
    }   
}