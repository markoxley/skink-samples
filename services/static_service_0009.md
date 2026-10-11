# static_service_0009

Demonstrates a service interface for a key-value storage with float values. The `StorageService` defines `Store`, `Retrieve`, and `Clear` methods, implemented for `StorageImpl` using parallel string and float arrays.

## Code

```skink
module static_service_0009

service StorageService {
    fn Store(key: string, val: float)
    fn Retrieve(key: string) -> float
    fn Clear()
}

pub struct StorageImpl {
    keys: []string
    vals: []float
}

service StorageService for StorageImpl {
    fn Store(self: *StorageImpl, key: string, val: float) {
        self.keys = append(self.keys, key)
        self.vals = append(self.vals, val)
    }

    fn Retrieve(self: StorageImpl, key: string) -> float {
        i := 0
        for i < len(self.keys) {
            if self.keys[i] == key {
                return self.vals[i]
            }
            i = i + 1
        }
        return 0.0
    }

    fn Clear(self: *StorageImpl) {
        self.keys = []string{}
        self.vals = []float{}
    }
}

pub fn demo() -> float {
    s := StorageImpl{keys: []string{}, vals: []float{}}
    s.Store("pi", 3.14)
    s.Store("e", 2.71)
    return s.Retrieve("pi")
}

fn main() -> int {
    result := demo()
    print("Value: {result}")
    return 0
}

```
