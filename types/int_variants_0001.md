# int_variants_0001

Demonstrates Skink's integer types (int8, int16, int32, int64) and explicit conversion with int().

## Code

```skink
module int_variants_0001

// sum_sizes demonstrates different integer types and sizeof.
pub fn sum_sizes() -> int {
    var s8: int8 = 49
    var s16: int16 = 98
    var s32: int32 = 147
    var s64: int64 = 196
    total := int(s8) + int(s16) + int(s32) + int(s64)
    return total
}

fn main() -> int {
    total := sum_sizes()
    print("Total: {total}")
    return 0
}

```
