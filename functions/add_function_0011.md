# add_function_0011

A simple Skink function format that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0011

// format returns the sum of a and b.
pub fn format(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := format(59, 76)
    print("Result: {result}")
    return 0
}

```
