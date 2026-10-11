# generic_stack_0002

Defines a generic Stack<T> struct with push, pop, and size methods. Uses append and slice expressions for dynamic arrays.

## Code

```skink
module generic_stack_0002

struct Stack<T> {
    items: []T

    pub fn push(self: *Stack<T>, item: T) {
        self.items = append(self.items, item)
    }

    pub fn pop(self: *Stack<T>) -> (T, bool) {
        n := len(self.items)
        if n == 0 {
            var zero: T
            return zero, false
        }
        item := self.items[n - 1]
        self.items = self.items[0:n - 1]
        return item, true
    }

    pub fn size(self: Stack<T>) -> int {
        return len(self.items)
    }
}

// stack_demo pushes three values and pops them, returning the last popped.
pub fn stack_demo(a: int, b: int, c: int) -> int {
    s := Stack<int>{items: []int{}}
    s.push(a)
    s.push(b)
    s.push(c)
    val, ok := s.pop()
    if ok {
        return val
    }
    return -1
}

fn main() -> int {
    result := stack_demo(80, 97, 14)
    print("Popped: {result}")
    return 0
}

```
