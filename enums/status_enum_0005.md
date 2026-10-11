# status_enum_0005

Declares a Status enum with four variants and uses a match expression to map each variant to a description string. Enum variants are int constants accessed by bare name.

## Code

```skink
module status_enum_0005

pub enum Status {
    Idle,
    Running,
    Done,
    Error,
}

// describe returns a human-readable description of a Status value.
pub fn describe(s: int) -> string {
    return match s {
        Idle    => "Waiting to start",
        Running => "In progress",
        Done    => "Completed successfully",
        Error   => "Failed with error",
        _       => "Unknown",
    }
}

fn main() -> int {
    state := Running
    print(describe(state))
    return 0
}

```
