# hello_world_0020

A hello world example that defines a greet function returning "Hello, {name}!" and prints a greeting for alice.

## Code

```skink
module hello_world_0020

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Hello, {target}!"
}

fn main() -> int {
    msg := greet("alice")
    print(msg)
    return 0
}

```
