# static_rules_0005

Demonstrates a static ruleset with integer-based conditions. The `CounterRules` ruleset monitors a request counter and fires alert and warning rules when the count exceeds integer thresholds.

## Code

```skink
module static_rules_0005

import "std/time"

// requestCount simulates a counter for incoming requests.
var requestCount: int = 0
// alertFired tracks how many times the alert rule fired.
var alertFired: int = 0

// CounterRules uses integer-based conditions to trigger alerts
// when the request count exceeds thresholds.
ruleset CounterRules {
    rule alert when requestCount > 100 {
        action: {
            alertFired = alertFired + 1
        }
        priority: 1
    }

    rule warn when requestCount > 50 && requestCount <= 100 {
        action: {
            alertFired = alertFired + 1
        }
        priority: 2
    }
}

// check_counter sets the request count and returns the number of alerts.
pub fn check_counter(count: int) -> int {
    requestCount = count
    alertFired = 0
    CounterRules.start()
    time.SleepMs(50)
    CounterRules.stop()
    time.SleepMs(20)
    CounterRules.reset()
    return alertFired
}

fn main() -> int {
    result := check_counter(150)
    print("Alerts: {result}")
    return 0
}

```
