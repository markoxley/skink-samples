# dynamic_rules_0004

Implements a dynamic rule source pattern using a struct with Triggered, Action, and Priority methods. The ThresholdSource triggers when its reading exceeds the threshold.

## Code

```skink
module dynamic_rules_0004

// ThresholdSource implements the RuleSource pattern: it triggers when reading > threshold.
// (Note: static ruleset syntax is now implemented — see static_rules_XXXX samples. This uses the dynamic struct-based pattern.)
pub struct ThresholdSource {
    threshold: float
    reading: float

    pub fn Triggered(self: ThresholdSource) -> bool {
        return self.reading > self.threshold
    }

    pub fn Action(self: ThresholdSource) {
        // Rule action would run here
    }

    pub fn Priority(self: ThresholdSource) -> int {
        return 5
    }
}

// check_triggered returns true if the source's reading exceeds its threshold.
pub fn check_triggered(threshold: float, reading: float) -> bool {
    src := ThresholdSource{threshold: threshold, reading: reading}
    return src.Triggered()
}

fn main() -> int {
    triggered := check_triggered(24.1, 29.1)
    print("Triggered: {triggered}")
    return 0
}

```
