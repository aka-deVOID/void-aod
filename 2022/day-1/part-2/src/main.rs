use std::{fs::read_to_string, collections::HashMap};

fn main() {
    let mut datas: HashMap<u16, u64> = HashMap::new();
    let mut counter: u64 = 0;
    let mut elf: u16 = 0;
    
    {
        let file_data: Vec<String> = read_to_string("input.txt")
        .expect("Critical Error!!")
        .split("\n")
        .map(|x| x.to_string())
        .collect();

        for line in file_data {
            match line.parse::<u64>() {
                Ok(line) => {
                    counter += line
                },
                Err(_) => {
                    elf += 1;
                    datas.insert(elf, counter);
                    counter = 0;
                    continue;
                }
            };
        };
    }
    
    drop(elf);
    drop(counter);

    let mut final_result: [u64; 3] = [0,0,0];

    for (indx, _) in final_result.into_iter().enumerate() {
        if let Some(i) = datas.iter().max_by_key(|x| x.1) {
            final_result[indx] = *i.1;
            datas.remove(&i.0.clone());
        }
    };
    println!("{:?}", final_result.iter().sum::<u64>())
}
