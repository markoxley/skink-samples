# time_duration_0014

Uses std/time Duration constructors (FromSeconds, FromMinutes) and conversion methods (Milliseconds, Seconds).

## Code

```skink
module time_duration_0014

import "std/time"

// seconds_to_ms converts seconds to milliseconds using time.Duration.
pub fn seconds_to_ms(secs: int) -> int {
    d := time.FromSeconds(int64(secs))
    return int(d.Milliseconds())
}

// minutes_to_seconds converts minutes to seconds.
pub fn minutes_to_seconds(mins: int) -> int {
    d := time.FromMinutes(int64(mins))
    return int(d.Seconds())
}

fn main() -> int {
    ms := seconds_to_ms(32)
    print("{ms} ms")
    return 0
}

```
