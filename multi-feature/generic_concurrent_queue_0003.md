# generic_concurrent_queue_0003

Combines generics, concurrency, and structs: a ConcurrentQueue<T> using a buffered channel, with spawn for async enqueue.

## Code

```skink
module generic_concurrent_queue_0003

// ConcurrentQueue is a generic queue that sends items through a buffered channel.
pub struct ConcurrentQueue<T> {
    ch: chan<T>

    pub fn Enqueue(self: *ConcurrentQueue<T>, item: T) {
        self.ch <- item
    }

    pub fn Dequeue(self: *ConcurrentQueue<T>) -> T {
        return <-self.ch
    }
}

// queue_demo creates a queue, enqueues a value via spawn, and dequeues it.
pub fn queue_demo(val: int) -> int {
    q := ConcurrentQueue<int>{ch: make(chan<int>, 5)}
    spawn fn() {
        q.Enqueue(val * 2)
    }()
    result := q.Dequeue()
    return result
}

fn main() -> int {
    result := queue_demo(11)
    print("Dequeued: {result}")
    return 0
}

```
