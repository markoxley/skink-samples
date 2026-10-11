# type_mismatch_0007 — Type Mismatch

## Buggy Code

```skink
module type_mismatch_0007

pub fn double(x: int) -> int {
    return x * 2.0
}

fn main() -> int {
    return double(35)
}

```

## Error

`error: type mismatch: cannot multiply int by float`

## Fixed Code

```skink
module type_mismatch_0007

pub fn double(x: int) -> int {
    return x * 2
}

fn main() -> int {
    result := double(35)
    return result
}

```

## Explanation

The code multiplies an int by a float literal (2.0). Skink requires explicit type conversion — there is no implicit conversion between int and float. The fix uses an int literal (2) instead.
