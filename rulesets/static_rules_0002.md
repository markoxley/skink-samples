# static_rules_0002

Demonstrates a static ruleset with multiple rules covering different temperature ranges. The `ClimateRules` ruleset has three rules — high, low, and normal — each with its own condition, action, and priority.

## Code

```skink
module static_rules_0002

import "std/time"

var currentTemp: float = 20.0
var highFired: int = 0
var lowFired: int = 0
var normalFired: int = 0

// ClimateRules contains three rules covering all temperature ranges.
ruleset ClimateRules {
    rule high when currentTemp > 30.0 {
        action: {
            highFired = highFired + 1
        }
        priority: 1
    }

    rule low when currentTemp < 10.0 {
        action: {
            lowFired = lowFired + 1
        }
        priority: 2
    }

    rule normal when currentTemp >= 10.0 && currentTemp <= 30.0 {
        action: {
            normalFired = normalFired + 1
        }
        priority: 10
    }
}

// check_climate sets the temperature and runs the ruleset, returning
// the count of high, low, and normal rule firings.
pub fn check_climate(temp: float) -> (int, int, int) {
    currentTemp = temp
    highFired = 0
    lowFired = 0
    normalFired = 0
    ClimateRules.start()
    time.SleepMs(50)
    ClimateRules.stop()
    time.SleepMs(20)
    ClimateRules.reset()
    return highFired, lowFired, normalFired
}

fn main() -> int {
    h, l, n := check_climate(35.0)
    print("High: {h}, Low: {l}, Normal: {n}")
    return 0
}

```
