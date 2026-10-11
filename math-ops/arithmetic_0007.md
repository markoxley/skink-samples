# arithmetic_0007

Demonstrates basic arithmetic operators (+, -, *, /) and a power-of-two function using a for loop.

## Code

```skink
module arithmetic_0007

// arith performs basic arithmetic and returns all results.
pub fn arith(a: int, b: int) -> (int, int, int, int) {
    sum := a + b
    diff := a - b
    prod := a * b
    quot := a / b
    return sum, diff, prod, quot
}

// power_of_two returns 2^n using a loop.
pub fn power_of_two(n: int) -> int {
    result := 1
    for i := 0; i < n; i = i + 1 {
        result = result * 2
    }
    return result
}

fn main() -> int {
    s, d, p, q := arith(35, 2)
    print("Sum: {s}, Diff: {d}, Prod: {p}, Quot: {q}")
    return 0
}

```
