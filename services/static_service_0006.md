# static_service_0006

Demonstrates a service interface for a key-value configuration store. The `ConfigService` defines `Set`, `Get`, and `Has` methods, implemented for `ConfigImpl` using parallel string arrays for storage.

## Code

```skink
module static_service_0006

service ConfigService {
    fn Set(key: string, val: string)
    fn Get(key: string) -> string
    fn Has(key: string) -> bool
}

pub struct ConfigImpl {
    keys: []string
    vals: []string
}

service ConfigService for ConfigImpl {
    fn Set(self: *ConfigImpl, key: string, val: string) {
        self.keys = append(self.keys, key)
        self.vals = append(self.vals, val)
    }

    fn Get(self: ConfigImpl, key: string) -> string {
        i := 0
        for i < len(self.keys) {
            if self.keys[i] == key {
                return self.vals[i]
            }
            i = i + 1
        }
        return ""
    }

    fn Has(self: ConfigImpl, key: string) -> bool {
        i := 0
        for i < len(self.keys) {
            if self.keys[i] == key {
                return true
            }
            i = i + 1
        }
        return false
    }
}

pub fn demo() -> string {
    c := ConfigImpl{keys: []string{}, vals: []string{}}
    c.Set("host", "localhost")
    c.Set("port", "8080")
    return c.Get("host")
}

fn main() -> int {
    result := demo()
    print("Host: {result}")
    return 0
}

```
