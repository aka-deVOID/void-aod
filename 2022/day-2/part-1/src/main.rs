use std::fs::read_to_string;

fn main() {
    // A: ROCK, B: PAPER, C: Scissors // X: ROCK +1 , Y: PAPER +2, Z: Scissors +3 // Lose: 0 , Draw: 3 , Win: 6
    let file_data = read_to_string("input.txt")
        .expect("Critical Error!!")
        .split('\n')
        .map(|x| x.to_string())
        .collect::<Vec<String>>();

    let mut a;
    let mut point: u32 = 0;

    for line in &file_data {
        a = line
            .split(" ")
            .collect::<String>()
            .chars()
            .collect::<Vec<char>>();

        if a[1] == 'X' {
            point += 1;
            if a[0] == 'A' {
                point += 3;
            } else if a[0] == 'C' {
                point += 6;
            };
        } else if a[1] == 'Y' {
            point += 2;
            if a[0] == 'A' {
                point += 6;
            } else if a[0] == 'B' {
                point += 3
            };
        } else if a[1] == 'Z' {
            point += 3;
            if a[0] == 'B' {
                point += 6;
            } else if a[0] == 'C' {
                point += 3;
            };
        };
    }
    println!("{}", point);
}
