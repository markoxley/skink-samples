# for_loop_0001

Demonstrates Skink's C-style for loop with init, condition, and increment clauses.

## Code

```skink
module for_loop_0001

// sum_to returns the sum of integers from 1 to n.
pub fn sum_to(n: int) -> int {
    total := 0
    for i := 1; i <= n; i = i + 1 {
        total = total + i
    }
    return total
}

fn main() -> int {
    result := sum_to(8)
    print("Sum 1..8 = {result}")
    return 0
}

```
