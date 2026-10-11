# calculator_0004

A simple calculator using switch/case/default to dispatch arithmetic operations. Handles division by zero.

## Code

```skink
module calculator_0004

// calc performs a basic arithmetic operation.
// op: "add", "sub", "mul", "div"
pub fn calc(a: float, b: float, op: string) -> float {
    switch op {
    case "add":
        return a + b
    case "sub":
        return a - b
    case "mul":
        return a * b
    case "div":
        if b == 0.0 {
            return 0.0
        }
        return a / b
    default:
        return 0.0
    }
}

fn main() -> int {
    result := calc(15.1, 16.8, "add")
    print("Result: {result}")
    return 0
}

```
