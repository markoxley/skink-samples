# hello_world_0001

A hello world example that defines a greet function returning "Hi, {name}!" and prints a greeting for bob.

## Code

```skink
module hello_world_0001

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Hi, {target}!"
}

fn main() -> int {
    msg := greet("bob")
    print(msg)
    return 0
}

```
