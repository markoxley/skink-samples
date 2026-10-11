# int_variants_0005

Demonstrates Skink's integer types (uint8, int16, int32, int64) and explicit conversion with int().

## Code

```skink
module int_variants_0005

// sum_sizes demonstrates different integer types and sizeof.
pub fn sum_sizes() -> int {
    var s8: uint8 = 173
    var s16: int16 = 346
    var s32: int32 = 519
    var s64: int64 = 692
    total := int(s8) + int(s16) + int(s32) + int(s64)
    return total
}

fn main() -> int {
    total := sum_sizes()
    print("Total: {total}")
    return 0
}

```
