use std::fs::read_to_string;

fn main() {
    let a: Vec<String> = read_to_string("input.txt")
        .expect("Failed to read input")
        .split("\n")
        .map(|s| s.to_string()) // Convert &str to String
        .collect();

    let mut list: Vec<u64> = Vec::new();
    let mut counter: u64 = 0;

    for b in a {
        match b.parse::<u64>() {
            Ok(line) => counter += line,
            Err(_) => {
                list.push(counter);
                counter = 0;
                continue;
            }
        };
    }

    if let Some(i) = list.iter().max() {
        println!("{i}");
    }
}
