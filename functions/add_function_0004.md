# add_function_0004

A simple Skink function process that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0004

// process returns the sum of a and b.
pub fn process(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := process(42, 59)
    print("Result: {result}")
    return 0
}

```
