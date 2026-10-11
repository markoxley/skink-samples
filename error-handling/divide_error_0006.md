# divide_error_0006

Demonstrates Skink error handling: a function returning (float, error), nil for success, errors.New for failure, and err != nil check.

## Code

```skink
module divide_error_0006

import "std/errors"

// divide returns a / b, or an error if b is zero.
pub fn divide(a: float, b: float) -> (float, error) {
    if b == 0.0 {
        return 0.0, errors.New("division by zero")
    }
    return a / b, nil
}

// safe_divide wraps divide, returning -1 on error.
pub fn safe_divide(a: float, b: float) -> float {
    result, err := divide(a, b)
    if err != nil {
        return -1.0
    }
    return result
}

fn main() -> int {
    result := safe_divide(21.3, 23.0)
    print("Result: {result}")
    return 0
}

```
