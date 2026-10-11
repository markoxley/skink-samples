# add_function_0019

A simple Skink function compute that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0019

// compute returns the sum of a and b.
pub fn compute(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := compute(7, 24)
    print("Result: {result}")
    return 0
}

```
