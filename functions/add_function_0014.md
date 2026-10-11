# add_function_0014

A simple Skink function accumulate that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0014

// accumulate returns the sum of a and b.
pub fn accumulate(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := accumulate(52, 69)
    print("Result: {result}")
    return 0
}

```
