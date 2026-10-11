# static_rules_0006

Demonstrates a static ruleset with string-based conditions. The `StatusRules` ruleset checks string equality against system status values ("error", "warning", "ok") and fires corresponding rules.

## Code

```skink
module static_rules_0006

import "std/time"

var currentStatus: string = "ok"
var actionFired: int = 0

ruleset StatusRules {
    rule onError when currentStatus == "error" {
        action: {
            actionFired = actionFired + 1
        }
        priority: 1
    }

    rule onWarning when currentStatus == "warning" {
        action: {
            actionFired = actionFired + 1
        }
        priority: 2
    }

    rule onOk when currentStatus == "ok" {
        action: {
            actionFired = actionFired + 1
        }
        priority: 10
    }
}

pub fn check_status(status: string) -> int {
    currentStatus = status
    actionFired = 0
    StatusRules.start()
    time.SleepMs(50)
    StatusRules.stop()
    time.SleepMs(20)
    StatusRules.reset()
    return actionFired
}

fn main() -> int {
    result := check_status("error")
    print("Fired: {result}")
    return 0
}

```
