# static_rules_0010

A real-world temperature and humidity monitoring system using a static ruleset with four severity levels. The `MonitorSystem` ruleset tracks temperature and humidity readings, firing critical, high, medium, and low alerts based on configurable thresholds and priorities.

## Code

```skink
module static_rules_0010

import "std/time"

var temperature: float = 20.0
var humidity: float = 50.0

var criticalAlerts: int = 0
var highAlerts: int = 0
var mediumAlerts: int = 0
var lowAlerts: int = 0

ruleset MonitorSystem {
    rule critical_temp when temperature > 40.0 {
        action: {
            criticalAlerts = criticalAlerts + 1
        }
        priority: 1
    }

    rule high_temp when temperature > 30.0 && temperature <= 40.0 {
        action: {
            highAlerts = highAlerts + 1
        }
        priority: 2
    }

    rule high_humidity when humidity > 80.0 {
        action: {
            mediumAlerts = mediumAlerts + 1
        }
        priority: 5
    }

    rule low_temp when temperature < 5.0 {
        action: {
            lowAlerts = lowAlerts + 1
        }
        priority: 3
    }
}

pub fn check_monitor(temp: float, humid: float) -> (int, int, int, int) {
    temperature = temp
    humidity = humid
    criticalAlerts = 0
    highAlerts = 0
    mediumAlerts = 0
    lowAlerts = 0

    MonitorSystem.start()
    time.SleepMs(50)
    MonitorSystem.stop()
    time.SleepMs(20)
    MonitorSystem.reset()

    return criticalAlerts, highAlerts, mediumAlerts, lowAlerts
}

fn main() -> int {
    c, h, m, l := check_monitor(42.0, 85.0)
    print("Critical: {c}, High: {h}, Medium: {m}, Low: {l}")
    return 0
}

```
