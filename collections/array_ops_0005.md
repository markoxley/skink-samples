# array_ops_0005

Demonstrates Skink dynamic arrays: creation with literals, append, for-in iteration, and len().

## Code

```skink
module array_ops_0005

// sum_arr returns the sum of all elements in an int array.
pub fn sum_arr(arr: []int) -> int {
    total := 0
    for v in arr {
        total = total + v
    }
    return total
}

// build_and_sum creates an array, appends to it, and returns the sum.
pub fn build_and_sum() -> int {
    arr := [13, 10, 7, 4, 1]
    arr = append(arr, 100)
    return sum_arr(arr)
}

fn main() -> int {
    result := build_and_sum()
    print("Sum: {result}")
    return 0
}

```
