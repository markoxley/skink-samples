# add_function_0001

A simple Skink function sub that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0001

// sub returns the sum of a and b.
pub fn sub(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := sub(49, 66)
    print("Result: {result}")
    return 0
}

```
