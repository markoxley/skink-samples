# type_casts_0007

Demonstrates type conversions between int and float using constructor-style casts.

## Code

```skink
module type_casts_0007

// cast_demo shows int-to-float and float-to-int conversions.
pub fn cast_demo(x: float, y: int) -> (int, float) {
    f := float(y)       // int -> float
    i := int(x)         // float -> int (truncates)
    return i, f
}

fn main() -> int {
    i, f := cast_demo(23.4, 52)
    print("int: {i}, float: {f}")
    return 0
}

```
