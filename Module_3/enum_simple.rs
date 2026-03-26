enum WeekDays {
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday
}

enum Coin {
    Penny(i32),
    Nickel(i32),
    Dime(i32),
    Quarter(i32)
}

fn main() {
    let today = WeekDays::Wednesday;
    let tomorrow = WeekDays::Thursday;

    match today {
        WeekDays::Monday => println!("Today is Monday"),
        WeekDays::Tuesday => println!("Today is Tuesday"),
        WeekDays::Wednesday => println!("Today is Wednesday"),
        WeekDays::Thursday => println!("Today is Thursday"),
        WeekDays::Friday => println!("Today is Friday"),
        WeekDays::Saturday => println!("Today is Saturday"),
        WeekDays::Sunday => println!("Today is Sunday"),
    }

    let coin = Coin::Quarter(25);
    let coin2 = Coin::Quarter(50);
    let coin3 = Coin::Dime(10);

    println!("Coin value: {}", match coin3 {
        Coin::Penny(value) => value,
        Coin::Nickel(value) => value,
        Coin::Dime(value) => value,
        Coin::Quarter(value) => value,
    });
}