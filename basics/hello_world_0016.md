# hello_world_0016

A hello world example that defines a greet function returning "Bonjour, {name}!" and prints a greeting for quinn.

## Code

```skink
module hello_world_0016

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Bonjour, {target}!"
}

fn main() -> int {
    msg := greet("quinn")
    print(msg)
    return 0
}

```
