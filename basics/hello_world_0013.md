# hello_world_0013

A hello world example that defines a greet function returning "Welcome, {name}!" and prints a greeting for nora.

## Code

```skink
module hello_world_0013

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Welcome, {target}!"
}

fn main() -> int {
    msg := greet("nora")
    print(msg)
    return 0
}

```
