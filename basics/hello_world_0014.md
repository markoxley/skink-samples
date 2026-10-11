# hello_world_0014

A hello world example that defines a greet function returning "Greetings, {name}!" and prints a greeting for oscar.

## Code

```skink
module hello_world_0014

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Greetings, {target}!"
}

fn main() -> int {
    msg := greet("oscar")
    print(msg)
    return 0
}

```
