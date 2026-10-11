# hello_world_0009

A hello world example that defines a greet function returning "Aloha, {name}!" and prints a greeting for jack.

## Code

```skink
module hello_world_0009

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Aloha, {target}!"
}

fn main() -> int {
    msg := greet("jack")
    print(msg)
    return 0
}

```
