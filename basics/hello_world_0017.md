# hello_world_0017

A hello world example that defines a greet function returning "Hola, {name}!" and prints a greeting for ruby.

## Code

```skink
module hello_world_0017

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Hola, {target}!"
}

fn main() -> int {
    msg := greet("ruby")
    print(msg)
    return 0
}

```
