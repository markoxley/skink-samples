# hello_world_0003

A hello world example that defines a greet function returning "Welcome, {name}!" and prints a greeting for dave.

## Code

```skink
module hello_world_0003

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Welcome, {target}!"
}

fn main() -> int {
    msg := greet("dave")
    print(msg)
    return 0
}

```
