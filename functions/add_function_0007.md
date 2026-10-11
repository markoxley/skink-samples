# add_function_0007

A simple Skink function evaluate that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0007

// evaluate returns the sum of a and b.
pub fn evaluate(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := evaluate(35, 52)
    print("Result: {result}")
    return 0
}

```
