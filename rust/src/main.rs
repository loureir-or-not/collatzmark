fn collatz(x: i32) -> i32 {
    if x % 2 == 0 {
        x / 2
    } else {
        x * 3 + 1
    }
}

fn collatz_list(mut i: i32) -> Vec<i32> {
    let mut vec: Vec<i32> = Vec::new();
    while i != 1 {
        vec.push(i);
        i = collatz(i);
    }

    vec
}

fn main() {
    for i in 1..=10000 {
        println!("{}: {:?}", i, collatz_list(i));
    }
}
