# hello_world_0008

A hello world example that defines a greet function returning "Ciao, {name}!" and prints a greeting for iris.

## Code

```skink
module hello_world_0008

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Ciao, {target}!"
}

fn main() -> int {
    msg := greet("iris")
    print(msg)
    return 0
}

```
