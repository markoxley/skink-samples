# unused_var_0005 — Unused Variable

## Buggy Code

```skink
module unused_var_0005

pub fn add(a: int, b: int) -> int {
    unused := 42
    return a + b
}

fn main() -> int {
    return add(23, 40)
}

```

## Error

`error: unused variable 'unused'`

## Fixed Code

```skink
module unused_var_0005

pub fn add(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := add(23, 40)
    return result
}

```

## Explanation

The variable `unused` is declared but never used. Skink reports an error for unused variables. The fix is to remove the unused declaration.
