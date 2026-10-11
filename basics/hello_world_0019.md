# hello_world_0019

A hello world example that defines a greet function returning "Aloha, {name}!" and prints a greeting for tina.

## Code

```skink
module hello_world_0019

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Aloha, {target}!"
}

fn main() -> int {
    msg := greet("tina")
    print(msg)
    return 0
}

```
