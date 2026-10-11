# hello_world_0004

A hello world example that defines a greet function returning "Greetings, {name}!" and prints a greeting for eve.

## Code

```skink
module hello_world_0004

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Greetings, {target}!"
}

fn main() -> int {
    msg := greet("eve")
    print(msg)
    return 0
}

```
