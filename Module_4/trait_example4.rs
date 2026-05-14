trait CalcTime {
    fn hours(&self) -> u32;
    fn minutes(&self) -> u32;
}

impl CalcTime for u32 {
    fn hours(&self) -> u32 {
        self / (60 * 60)
    }

    fn minutes(&self) -> u32 {
        self / 60
    }
}

fn main() {
    let time_in_seconds: u32 = 7661;
    println!("Time in hours: {}", time_in_seconds.hours());
    println!("Time in minutes: {}", time_in_seconds.minutes());
}