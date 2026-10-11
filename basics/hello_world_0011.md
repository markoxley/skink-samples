# hello_world_0011

A hello world example that defines a greet function returning "Hi, {name}!" and prints a greeting for leo.

## Code

```skink
module hello_world_0011

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Hi, {target}!"
}

fn main() -> int {
    msg := greet("leo")
    print(msg)
    return 0
}

```
