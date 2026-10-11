# error_propagation_0002

Demonstrates the ? operator for error propagation in Skink. If divide fails, chain_divide immediately returns the error.

## Code

```skink
module error_propagation_0002

import "std/errors"

// divide returns a / b, or an error if b is zero.
pub fn divide(a: float, b: float) -> (float, error) {
    if b == 0.0 {
        return 0.0, errors.New("division by zero")
    }
    return a / b, nil
}

// chain_divide divides a by b, then the result by c, using ? for propagation.
pub fn chain_divide(a: float, b: float, c: float) -> (float, error) {
    result := divide(divide(a, b)?, c)?
    return result, nil
}

// safe_chain wraps chain_divide, returning -1 on error.
pub fn safe_chain(a: float, b: float, c: float) -> float {
    result, err := chain_divide(a, b, c)
    if err != nil {
        return -1.0
    }
    return result
}

fn main() -> int {
    result := safe_chain(8.9, 10.6, 12.3)
    print("Result: {result}")
    return 0
}

```
