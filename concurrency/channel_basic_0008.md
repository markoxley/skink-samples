# channel_basic_0008

Demonstrates Skink channels: make(chan<T>), send with <-, receive with <-ch.

## Code

```skink
module channel_basic_0008

// send_recv creates a channel, sends val, receives it, and returns it.
pub fn send_recv(val: int) -> int {
    ch := make(chan<int>, 1)
    ch <- val
    result := <-ch
    return result
}

fn main() -> int {
    result := send_recv(66)
    print("Received: {result}")
    return 0
}

```
