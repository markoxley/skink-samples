# match_enum_0006

Uses a match expression to map Color enum variants to their string names. Enum variants are int constants used by bare name in match arms.

## Code

```skink
module match_enum_0006

pub enum Color {
    Red,
    Green,
    Blue,
}

// color_name returns the name of a Color value.
pub fn color_name(c: int) -> string {
    return match c {
        Red   => "red",
        Green => "green",
        Blue  => "blue",
        _     => "unknown",
    }
}

fn main() -> int {
    c := Green
    print(color_name(c))
    return 0
}

```
