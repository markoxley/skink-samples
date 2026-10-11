# add_function_0012

A simple Skink function filter that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0012

// filter returns the sum of a and b.
pub fn filter(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := filter(90, 7)
    print("Result: {result}")
    return 0
}

```
