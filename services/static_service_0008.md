# static_service_0008

Demonstrates a service interface for validation. The `ValidatorService` defines `Validate`, `Min`, and `Max` methods, implemented for `RangeValidator` which checks values against configurable min/max bounds.

## Code

```skink
module static_service_0008

service ValidatorService {
    fn Validate(val: int) -> bool
    fn Min(val: int) -> bool
    fn Max(val: int) -> bool
}

pub struct RangeValidator {
    minVal: int
    maxVal: int
}

service ValidatorService for RangeValidator {
    fn Validate(self: RangeValidator, val: int) -> bool {
        return val >= self.minVal && val <= self.maxVal
    }

    fn Min(self: RangeValidator, val: int) -> bool {
        return val >= self.minVal
    }

    fn Max(self: RangeValidator, val: int) -> bool {
        return val <= self.maxVal
    }
}

pub fn demo() -> bool {
    v := RangeValidator{minVal: 10, maxVal: 100}
    return v.Validate(50)
}

fn main() -> int {
    result := demo()
    print("Valid: {result}")
    return 0
}

```
