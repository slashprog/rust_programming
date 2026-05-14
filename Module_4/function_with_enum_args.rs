enum Direction {
    Up(i32),
    Down(i32),
    Left(i32),
    Right(i32),
}

fn move_character(direction: Direction) {
    match direction {
        Direction::Up(steps) => println!("Moving up {} steps", steps),
        Direction::Down(steps) => println!("Moving down {} steps", steps),
        Direction::Left(steps) => println!("Moving left {} steps", steps),
        Direction::Right(steps) => println!("Moving right {} steps", steps),
    }
}

fn main() {
    let direction = Direction::Up(5);
    move_character(direction);

    let direction = Direction::Left(3);
    move_character(direction);
}