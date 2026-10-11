# variable_decl_0009

Demonstrates Skink variable declaration styles: := for inference, var with type annotation, and const for compile-time constants. Uses Factor=7.

## Code

```skink
module variable_decl_0009

const Factor = 7

// compute demonstrates different variable declaration styles.
pub fn compute(a: int, b: int) -> int {
    // := inferred declaration
    sum := a + b
    // var with explicit type
    var product: int = a * b
    // var without initial value
    var result: int
    result = sum + product / Factor
    return result
}

fn main() -> int {
    val := compute(14, 31)
    print("Result: {val}")
    return 0
}

```
