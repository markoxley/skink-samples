# static_service_0001

Demonstrates a static service interface and implementation using the `service` keyword. The `Counter` service defines `Increment`, `GetValue`, and `Reset` methods, implemented for the `CounterImpl` struct.

## Code

```skink
module static_service_0001

service Counter {
    fn Increment(n: int) -> int
    fn GetValue() -> int
    fn Reset()
}

pub struct CounterImpl {
    count: int
}

service Counter for CounterImpl {
    fn Increment(self: *CounterImpl, n: int) -> int {
        self.count = self.count + n
        return self.count
    }

    fn GetValue(self: CounterImpl) -> int {
        return self.count
    }

    fn Reset(self: *CounterImpl) {
        self.count = 0
    }
}

pub fn demo() -> int {
    c := CounterImpl{count: 0}
    c.Increment(5)
    c.Increment(10)
    return c.GetValue()
}

fn main() -> int {
    result := demo()
    print("Count: {result}")
    return 0
}

```
