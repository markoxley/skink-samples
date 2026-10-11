# hello_world_0018

A hello world example that defines a greet function returning "Ciao, {name}!" and prints a greeting for sam.

## Code

```skink
module hello_world_0018

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "Ciao, {target}!"
}

fn main() -> int {
    msg := greet("sam")
    print(msg)
    return 0
}

```
