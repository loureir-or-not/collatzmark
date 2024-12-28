# Collatzmark

Benchmarking using the Collatz conjecture

---

## Why did you make this?

It's fun to see which language is the fastest!

## Why did you choose Collatz conjecture and why only 10000 iterations?

I chose Collatz conjecture because it was brought up in a chatroom
and I thought:

> Why not write Collatz conjecture in Haskell?

So that is what I did. I then, for some reason, tried writing it
in Rust.

What I didn't know was that Godbolt, the tool I used to write
the code for both Collatz conjectures with, was killing itself
because of how much was being printed. I thought it was about
how fast the execution was. Which confused me and I brought it
up in that same chatroom. Someone else there wrote a custom
version which only printed up to 10000 iterations. Using that,
I tried writing another implementation and now we are here.

## Benchmarks?

This is done with `hyperfine`, it does 20 warmup runs before the benchmark.

- C++:
  
  ![Time (mean ± σ):      38.1 ms ±  13.1 ms](./assets/cpp.png)
- Rust:
  
  ![Time (mean ± σ):      44.0 ms ±   9.1 ms](./assets/rust.png)
- Haskell:
  
  ![Time (mean ± σ):      75.5 ms ±  11.7 ms](./assets/haskell.png)
- Java:
  
  ![Time (mean ± σ):      1.096 s ±  0.056 s](./assets/java.png)
  
  Not fully accurate as this also includes the building process.
- OCaml:
  
  ![Time (mean ± σ):     107.8 ms ±   1.2 ms](./assets/ocaml.png)
- Elixir:
  
  ![Time (mean ± σ):     508.0 ms ±  75.8 ms](./assets/elixir.png)
- Go:
  
  ![Time (mean ± σ):      64.9 ms ±   7.1 ms](./assets/go.png)
- Ruby:

  ![Time (mean ± σ):     351.2 ms ±   4.2 ms](./assets/ruby.png)
- Bash:
  
  ![I am *not* waiting that long.](https://media1.tenor.com/m/SRTerptFEwcAAAAd/homer-simpson.gif)
