# math_utils_module_0005

A multi-file Skink module project demonstrating module declaration, pub exports, and cross-file imports.

## Files

- `mathlib_0005.skink` — module with pub fn add, max, square
- `main.skink` — imports the module and calls its functions
- `mathlib_0005_test.skink` — tests the module's exported functions

## Module File

```skink
module mathlib_0005

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

import "mathlib_0005"

fn main() -> int {
    sum := mathlib_0005.add(23, 40)
    mx := mathlib_0005.max(23, 40)
    sq := mathlib_0005.square(23)
    print("Sum: {sum}, Max: {mx}, Square: {sq}")
    return 0
}

```
