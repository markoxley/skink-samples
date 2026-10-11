# hello_world_0012

A hello world example that defines a greet function returning "Hey, {name}!" and prints a greeting for mia.

## Code

```skink
module hello_world_0012

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Hey, {target}!"
}

fn main() -> int {
    msg := greet("mia")
    print(msg)
    return 0
}

```
