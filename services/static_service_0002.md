# static_service_0002

Demonstrates a service interface for string processing. The `StringProcessor` service defines `Process` and `Length` methods, implemented for the `UpperProcessor` struct which tracks how many times Process was called.

## Code

```skink
module static_service_0002

service StringProcessor {
    fn Process(s: string) -> string
    fn Length(s: string) -> int
}

pub struct UpperProcessor {
    shifts: int
}

service StringProcessor for UpperProcessor {
    fn Process(self: *UpperProcessor, s: string) -> string {
        self.shifts = self.shifts + 1
        return s
    }

    fn Length(self: UpperProcessor, s: string) -> int {
        return len(s)
    }
}

pub fn demo() -> (string, int) {
    p := UpperProcessor{shifts: 0}
    result := p.Process("hello")
    n := p.Length("hello")
    return result, n
}

fn main() -> int {
    s, n := demo()
    print("Result: {s}, Length: {n}")
    return 0
}

```
