# static_rules_0009

Demonstrates multiple independent rulesets in a single module. `RulesetA` and `RulesetB` each monitor a separate temperature sensor with different thresholds, and both can be started, stopped, and reset independently.

## Code

```skink
module static_rules_0009

import "std/time"

var tempA: float = 20.0
var tempB: float = 20.0
var firedA: int = 0
var firedB: int = 0

ruleset RulesetA {
    rule highA when tempA > 30.0 {
        action: {
            firedA = firedA + 1
        }
        priority: 1
    }
}

ruleset RulesetB {
    rule highB when tempB > 40.0 {
        action: {
            firedB = firedB + 1
        }
        priority: 1
    }
}

pub fn check_both(a: float, b: float) -> (int, int) {
    tempA = a
    tempB = b
    firedA = 0
    firedB = 0

    RulesetA.start()
    RulesetB.start()
    time.SleepMs(50)
    RulesetA.stop()
    RulesetB.stop()
    time.SleepMs(20)
    RulesetA.reset()
    RulesetB.reset()

    return firedA, firedB
}

fn main() -> int {
    a, b := check_both(35.0, 45.0)
    print("A: {a}, B: {b}")
    return 0
}

```
