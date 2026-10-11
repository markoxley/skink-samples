# static_service_0004

Demonstrates a service interface for a LIFO stack. The `StackService` defines `Push`, `Pop`, `Peek`, and `Size` methods, implemented for `StackImpl` using a slice-based storage.

## Code

```skink
module static_service_0004

service StackService {
    fn Push(val: int)
    fn Pop() -> int
    fn Peek() -> int
    fn Size() -> int
}

pub struct StackImpl {
    data: []int
}

service StackService for StackImpl {
    fn Push(self: *StackImpl, val: int) {
        self.data = append(self.data, val)
    }

    fn Pop(self: *StackImpl) -> int {
        n := len(self.data)
        if n == 0 {
            return -1
        }
        val := self.data[n - 1]
        self.data = self.data[:n - 1]
        return val
    }

    fn Peek(self: StackImpl) -> int {
        n := len(self.data)
        if n == 0 {
            return -1
        }
        return self.data[n - 1]
    }

    fn Size(self: StackImpl) -> int {
        return len(self.data)
    }
}

pub fn demo() -> int {
    s := StackImpl{data: []int{}}
    s.Push(10)
    s.Push(20)
    s.Push(30)
    popped := s.Pop()
    size := s.Size()
    return popped + size
}

fn main() -> int {
    result := demo()
    print("Result: {result}")
    return 0
}

```
