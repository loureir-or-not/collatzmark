# Collatzmark

## Benchmarking using the Collatz conjecture.

### Why?

It's fun to check and see which language is the fastest! I also got
this idea when Haskell got to iteration 207 before exiting when Rust
only got up to 171.

### Benchmarks?

- C++:
  
  ![Time (mean ± σ):     833.7 µs ± 268.0 µs](./assets/cpp.png)
  
  POSSIBLY WRONG: It doesn't print anything to stdout, so who knows. Maybe it's skipping the operations.
- Rust:
  
  ![Time (mean ± σ):      44.0 ms ±   9.1 ms](./assets/rust.png)
- Haskell:
  
  ![Time (mean ± σ):      75.5 ms ±  11.7 ms](./assets/haskell.png)
- Java:
  
  ![Time (mean ± σ):      1.096 s ±  0.056 s](./assets/java.png)
  
  Not fully accurate as this also includes the building process.
- OCaml:
  
  ![Time (mean ± σ):     107.8 ms ±   1.2 ms](./assets/ocaml.png)