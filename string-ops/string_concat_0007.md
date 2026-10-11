# string_concat_0007

Demonstrates Skink string concatenation with the + operator and interpolation with {var} syntax.

## Code

```skink
module string_concat_0007

// build_message concatenates strings using + and interpolation.
pub fn build_message(greeting: string, name: string, city: string) -> string {
    // Concatenation with +
    header := greeting + ", " + name + "!"
    // Interpolation with {}
    full := "{header} Welcome from {city}."
    return full
}

fn main() -> int {
    msg := build_message("Hola", "henry", "prague")
    print(msg)
    return 0
}

```
