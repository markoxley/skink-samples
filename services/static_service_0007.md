# static_service_0007

Demonstrates a service interface for a FIFO queue. The `QueueService` defines `Enqueue`, `Dequeue`, and `IsEmpty` methods, implemented for `QueueImpl` using a slice-based storage.

## Code

```skink
module static_service_0007

service QueueService {
    fn Enqueue(val: int)
    fn Dequeue() -> int
    fn IsEmpty() -> bool
}

pub struct QueueImpl {
    data: []int
}

service QueueService for QueueImpl {
    fn Enqueue(self: *QueueImpl, val: int) {
        self.data = append(self.data, val)
    }

    fn Dequeue(self: *QueueImpl) -> int {
        n := len(self.data)
        if n == 0 {
            return -1
        }
        val := self.data[0]
        self.data = self.data[1:]
        return val
    }

    fn IsEmpty(self: QueueImpl) -> bool {
        return len(self.data) == 0
    }
}

pub fn demo() -> int {
    q := QueueImpl{data: []int{}}
    q.Enqueue(10)
    q.Enqueue(20)
    q.Enqueue(30)
    first := q.Dequeue()
    return first
}

fn main() -> int {
    result := demo()
    print("First: {result}")
    return 0
}

```
