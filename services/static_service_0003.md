# static_service_0003

Demonstrates a service interface with multiple arithmetic methods. The `MathService` defines `Add`, `Subtract`, and `Multiply`, implemented for `MathImpl` which tracks the number of operations performed.

## Code

```skink
module static_service_0003

service MathService {
    fn Add(a: int, b: int) -> int
    fn Subtract(a: int, b: int) -> int
    fn Multiply(a: int, b: int) -> int
}

pub struct MathImpl {
    ops: int
}

service MathService for MathImpl {
    fn Add(self: *MathImpl, a: int, b: int) -> int {
        self.ops = self.ops + 1
        return a + b
    }

    fn Subtract(self: *MathImpl, a: int, b: int) -> int {
        self.ops = self.ops + 1
        return a - b
    }

    fn Multiply(self: *MathImpl, a: int, b: int) -> int {
        self.ops = self.ops + 1
        return a * b
    }
}

pub fn demo() -> int {
    m := MathImpl{ops: 0}
    r1 := m.Add(10, 20)
    r2 := m.Subtract(r1, 5)
    r3 := m.Multiply(r2, 2)
    return r3
}

fn main() -> int {
    result := demo()
    print("Result: {result}")
    return 0
}

```
