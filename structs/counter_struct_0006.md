# counter_struct_0006

Defines a Counter struct with pointer-receiver methods (self: *Counter) that mutate the struct's value field.

## Code

```skink
module counter_struct_0006

struct Counter {
    value: int

    pub fn increment(self: *Counter) -> int {
        self.value = self.value + 1
        return self.value
    }

    pub fn add(self: *Counter, n: int) -> int {
        self.value = self.value + n
        return self.value
    }

    pub fn get(self: Counter) -> int {
        return self.value
    }
}

// make_and_increment creates a counter, adds n, and returns the value.
pub fn make_and_increment(start: int, n: int) -> int {
    c := Counter{value: start}
    c.add(n)
    return c.get()
}

fn main() -> int {
    result := make_and_increment(3, 1)
    print("Counter: {result}")
    return 0
}

```
