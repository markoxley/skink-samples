# if_else_0007

Demonstrates Skink's if/else if/else control flow for classifying a numeric score into a letter grade.

## Code

```skink
module if_else_0007

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
    grade := classify(34)
    print("Grade: {grade}")
    return 0
}

```
