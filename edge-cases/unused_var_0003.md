# unused_var_0003 — Unused Variable

## Buggy Code

```skink
module unused_var_0003

pub fn add(a: int, b: int) -> int {
    unused := 42
    return a + b
}

fn main() -> int {
    return add(11, 28)
}

```

## Error

`error: unused variable 'unused'`

## Fixed Code

```skink
module unused_var_0003

pub fn add(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := add(11, 28)
    return result
}

```

## Explanation

The variable `unused` is declared but never used. Skink reports an error for unused variables. The fix is to remove the unused declaration.
