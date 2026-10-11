# math_functions_0012

Uses std/math functions: Pi constant, Sqrt, and Clamp for numerical computations.

## Code

```skink
module math_functions_0012

import "std/math"

// circle_area returns the area of a circle with the given radius.
pub fn circle_area(radius: float) -> float {
    return math.Pi * radius * radius
}

// hypotenuse returns sqrt(a^2 + b^2) using std/math.
pub fn hypotenuse(a: float, b: float) -> float {
    return math.Sqrt(a*a + b*b)
}

// clamp_val clamps x to [lo, hi].
pub fn clamp_val(x: float, lo: float, hi: float) -> float {
    return math.Clamp(x, lo, hi)
}

fn main() -> int {
    area := circle_area(39.9)
    print("Area: {area}")
    return 0
}

```
