# add_function_0009

A simple Skink function convert that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0009

// convert returns the sum of a and b.
pub fn convert(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := convert(97, 14)
    print("Result: {result}")
    return 0
}

```
