# static_rules_0008

Demonstrates the `restart()` lifecycle method, which stops and then starts the ruleset again. This allows rules to continue firing after a temporary halt without needing to re-register rules.

## Code

```skink
module static_rules_0008

import "std/time"

var currentTemp: float = 20.0
var firedCount: int = 0

ruleset TempRules {
    rule high when currentTemp > 30.0 {
        action: {
            firedCount = firedCount + 1
        }
        priority: 1
    }
}

pub fn test_restart(temp: float) -> int {
    currentTemp = temp
    firedCount = 0

    TempRules.start()
    time.SleepMs(50)

    TempRules.restart()
    time.SleepMs(50)
    secondRun := firedCount

    TempRules.stop()
    time.SleepMs(20)
    TempRules.reset()

    return secondRun
}

fn main() -> int {
    result := test_restart(35.0)
    print("Total fired: {result}")
    return 0
}

```
