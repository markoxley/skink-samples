# add_function_0016

A simple Skink function add that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0016

// add returns the sum of a and b.
pub fn add(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := add(14, 31)
    print("Result: {result}")
    return 0
}

```
