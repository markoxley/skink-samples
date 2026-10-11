# add_function_0010

A simple Skink function parse that takes two int parameters and returns their sum.

## Code

```skink
module add_function_0010

// parse returns the sum of a and b.
pub fn parse(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := parse(28, 45)
    print("Result: {result}")
    return 0
}

```
