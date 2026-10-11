# add_function_0006

A simple Skink function transform that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0006

// transform returns the sum of a and b.
pub fn transform(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := transform(4, 21)
    print("Result: {result}")
    return 0
}

```
