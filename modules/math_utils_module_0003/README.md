# math_utils_module_0003

A multi-file Skink module project demonstrating module declaration, pub exports, and cross-file imports.

## Files

- `mathlib_0003.skink` — module with pub fn add, max, square
- `main.skink` — imports the module and calls its functions
- `mathlib_0003_test.skink` — tests the module's exported functions

## Module File

```skink
module mathlib_0003

// add returns the sum of a and b.
pub fn add(a: int, b: int) -> int {
    return a + b
}

// max returns the larger of a and b.
pub fn max(a: int, b: int) -> int {
    if a > b {
        return a
    }
    return b
}

// square returns n * n.
pub fn square(n: int) -> int {
    return n * n
}

```

## Main File

```skink
module main

import "mathlib_0003"

fn main() -> int {
    sum := mathlib_0003.add(11, 28)
    mx := mathlib_0003.max(11, 28)
    sq := mathlib_0003.square(11)
    print("Sum: {sum}, Max: {mx}, Square: {sq}")
    return 0
}

```
