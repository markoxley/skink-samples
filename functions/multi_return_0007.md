# multi_return_0007

Demonstrates a Skink function returning multiple values using tuple syntax (int, int).

## Code

```skink
module multi_return_0007

// divmod returns both the quotient and remainder of a / b.
pub fn divmod(a: int, b: int) -> (int, int) {
    quotient := a / b
    remainder := a % b
    return quotient, remainder
}

fn main() -> int {
    q, r := divmod(44, 3)
    print("Quotient: {q}, Remainder: {r}")
    return 0
}

```
