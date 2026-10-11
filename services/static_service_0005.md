# static_service_0005

Demonstrates a service interface for a multi-level logger. The `LoggerService` defines `Info`, `Warn`, `Error`, and `Count` methods, implemented for `LoggerImpl` which tracks the total number of log calls.

## Code

```skink
module static_service_0005

service LoggerService {
    fn Info(msg: string)
    fn Warn(msg: string)
    fn Error(msg: string)
    fn Count() -> int
}

pub struct LoggerImpl {
    count: int
}

service LoggerService for LoggerImpl {
    fn Info(self: *LoggerImpl, msg: string) {
        self.count = self.count + 1
    }

    fn Warn(self: *LoggerImpl, msg: string) {
        self.count = self.count + 1
    }

    fn Error(self: *LoggerImpl, msg: string) {
        self.count = self.count + 1
    }

    fn Count(self: LoggerImpl) -> int {
        return self.count
    }
}

pub fn demo() -> int {
    l := LoggerImpl{count: 0}
    l.Info("starting")
    l.Warn("low memory")
    l.Error("disk full")
    return l.Count()
}

fn main() -> int {
    result := demo()
    print("Log count: {result}")
    return 0
}

```
