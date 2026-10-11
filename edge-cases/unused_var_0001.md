# unused_var_0001 — Unused Variable

## Buggy Code

```skink
module unused_var_0001

pub fn add(a: int, b: int) -> int {
    unused := 42
    return a + b
}

fn main() -> int {
    return add(49, 16)
}

```

## Error

`error: unused variable 'unused'`

## Fixed Code

```skink
module unused_var_0001

pub fn add(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := add(49, 16)
    return result
}

```

## Explanation

The variable `unused` is declared but never used. Skink reports an error for unused variables. The fix is to remove the unused declaration.
