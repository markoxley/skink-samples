# add_function_0005

A simple Skink function calculate that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0005

// calculate returns the sum of a and b.
pub fn calculate(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := calculate(73, 90)
    print("Result: {result}")
    return 0
}

```
