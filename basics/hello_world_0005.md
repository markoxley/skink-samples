# hello_world_0005

A hello world example that defines a greet function returning "Howdy, {name}!" and prints a greeting for frank.

## Code

```skink
module hello_world_0005

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Howdy, {target}!"
}

fn main() -> int {
    msg := greet("frank")
    print(msg)
    return 0
}

```
