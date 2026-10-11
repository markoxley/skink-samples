# hello_world_0007

A hello world example that defines a greet function returning "Hola, {name}!" and prints a greeting for henry.

## Code

```skink
module hello_world_0007

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Hola, {target}!"
}

fn main() -> int {
    msg := greet("henry")
    print(msg)
    return 0
}

```
