# hello_world_0002

A hello world example that defines a greet function returning "Hey, {name}!" and prints a greeting for carol.

## Code

```skink
module hello_world_0002

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Hey, {target}!"
}

fn main() -> int {
    msg := greet("carol")
    print(msg)
    return 0
}

```
