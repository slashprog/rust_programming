#[derive(Debug)] // This allows us to print the Months enum using {:?}
enum Months {
    January(u32), // This variant has an associated value (number of days in January)
    February(u32),
    March(u32),
    April(u32),
    May(u32),
    June(u32),
    July(u32),
    August(u32),
    September(u32),
    October(u32),
    November(u32),
    December(u32)
}

fn main() {
    let month1 = Months::December(31);
    let month2 = Months::February(28);
    
    println!("The month1 is: {:?}", month1);
    println!("The month2 is: {:?}", month2);


    let ndays = if let Months::February(days) = month2 {
        days
    } else if let Months::December(days) = month1 {
        days
    } else {
        0 // Default value if it's not February or December 
    };

    println!("Number of days: {}", ndays);
}