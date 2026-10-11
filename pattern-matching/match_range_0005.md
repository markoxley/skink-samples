# match_range_0005

Uses match with range patterns (90..101) and the _ wildcard to classify a score into a letter grade.

## Code

```skink
module match_range_0005

// grade returns a letter grade for a score using range patterns.
pub fn grade(score: int) -> string {
    return match score {
        90..101 => "A",
        80..90  => "B",
        70..80  => "C",
        60..70  => "D",
        _       => "F",
    }
}

fn main() -> int {
    g := grade(72)
    print("Grade: {g}")
    return 0
}

```
