# add_function_0002

A simple Skink function mul that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0002

// mul returns the sum of a and b.
pub fn mul(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := mul(80, 97)
    print("Result: {result}")
    return 0
}

```
