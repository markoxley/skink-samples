# for_loop_0014

Demonstrates Skink's C-style for loop with init, condition, and increment clauses.

## Code

```skink
module for_loop_0014

// sum_to returns the sum of integers from 1 to n.
pub fn sum_to(n: int) -> int {
    total := 0
    for i := 1; i <= n; i = i + 1 {
        total = total + i
    }
    return total
}

fn main() -> int {
    result := sum_to(6)
    print("Sum 1..6 = {result}")
    return 0
}

```
