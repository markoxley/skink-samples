# spawn_worker_0010

Demonstrates Skink's spawn keyword for goroutines. A worker function is spawned and sends its result on a channel.

## Code

```skink
module spawn_worker_0010

// worker sends val*2 on the channel.
fn worker(ch: chan<int>, val: int) {
    ch <- val * 2
}

// spawn_compute spawns a worker and returns its result.
pub fn spawn_compute(val: int) -> int {
    ch := make(chan<int>)
    spawn worker(ch, val)
    result := <-ch
    return result
}

fn main() -> int {
    result := spawn_compute(28)
    print("Computed: {result}")
    return 0
}

```
