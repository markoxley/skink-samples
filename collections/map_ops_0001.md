# map_ops_0001

Demonstrates Skink's built-in map type: make(map[string]int), key assignment, access, and zero-value default for missing keys.

## Code

```skink
module map_ops_0001

// lookup_or_zero returns the value for key in the map, or 0 if not found.
pub fn lookup_or_zero(m: map[string]int, key: string) -> int {
    val := m[key]
    return val
}

// build_and_lookup creates a map and looks up a key.
pub fn build_and_lookup(key: string) -> int {
    m := make(map[string]int)
    m["banana"] = 49
    m["cherry"] = 66
    m["date"] = 83
    return lookup_or_zero(m, key)
}

fn main() -> int {
    result := build_and_lookup("banana")
    print("Lookup: {result}")
    return 0
}

```
