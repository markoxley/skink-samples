# service_pattern_0005

Implements a service-like pattern using struct methods. The CounterService struct provides increment and get_count methods, mimicking the service interface pattern.

## Code

```skink
module service_pattern_0005

// CounterService provides a service-like interface using struct methods.
// (The service keyword is now implemented — see static_service_XXXX samples.
// This uses the struct-method pattern as an alternative approach.)
pub struct CounterService {
    count: int

    pub fn increment(self: *CounterService, n: int) -> int {
        self.count = self.count + n
        return self.count
    }

    pub fn get_count(self: CounterService) -> int {
        return self.count
    }
}

// demo creates a CounterService, increments it, and returns the count.
pub fn demo() -> int {
    c := CounterService{count: 0}
    c.increment(5)
    c.increment(10)
    return c.get_count()
}

fn main() -> int {
    result := demo()
    print("Count: {result}")
    return 0
}

```
