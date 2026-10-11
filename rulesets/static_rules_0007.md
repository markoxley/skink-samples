# static_rules_0007

Demonstrates combining static rules with dynamic rule registration. The `MixedRules` ruleset has two static rules (high and low temperature) and also accepts a dynamically registered `SensorSource` via `registerRule()`. Both static and dynamic rules fire during evaluation.

## Code

```skink
module static_rules_0007

import "std/time"

var currentTemp: float = 20.0
var staticFired: int = 0
var dynamicFired: int = 0

struct SensorSource {
    threshold: float
    reading: float

    pub fn name(self: *SensorSource) -> string {
        return "sensor_source"
    }

    pub fn start(self: *SensorSource) {
    }

    pub fn stop(self: *SensorSource) {
    }

    pub fn triggered(self: *SensorSource) -> bool {
        return self.reading > self.threshold
    }

    pub fn Action(self: *SensorSource) {
        dynamicFired = dynamicFired + 1
    }

    pub fn Priority(self: *SensorSource) -> int {
        return 5
    }

    pub fn SetReading(self: *SensorSource, r: float) {
        self.reading = r
    }
}

ruleset MixedRules {
    rule high when currentTemp > 30.0 {
        action: {
            staticFired = staticFired + 1
        }
        priority: 1
    }

    rule low when currentTemp < 10.0 {
        action: {
            staticFired = staticFired + 1
        }
        priority: 2
    }
}

pub fn check_mixed(temp: float, sensorReading: float) -> (int, int) {
    currentTemp = temp
    staticFired = 0
    dynamicFired = 0

    src := SensorSource{threshold: 50.0, reading: 0.0}
    MixedRules.registerRule(&src)
    src.SetReading(sensorReading)

    MixedRules.start()
    time.SleepMs(50)
    MixedRules.stop()
    time.SleepMs(20)
    MixedRules.reset()

    return staticFired, dynamicFired
}

fn main() -> int {
    s, d := check_mixed(35.0, 60.0)
    print("Static: {s}, Dynamic: {d}")
    return 0
}

```
