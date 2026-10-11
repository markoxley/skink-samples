# if_else_0001

Demonstrates Skink's if/else if/else control flow for classifying a numeric score into a letter grade.

## Code

```skink
module if_else_0001

// classify returns a string label for a score.
pub fn classify(score: int) -> string {
    if score >= 90 {
        return "A"
    } else if score >= 80 {
        return "B"
    } else if score >= 70 {
        return "C"
    } else if score >= 60 {
        return "D"
    } else {
        return "F"
    }
}

fn main() -> int {
    grade := classify(48)
    print("Grade: {grade}")
    return 0
}

```
