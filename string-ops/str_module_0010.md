# str_module_0010

Uses the std/str module: Len for byte length, Contains for substring check, IndexOf for position.

## Code

```skink
module str_module_0010

import "std/str"

// count_chars returns the length of the input string.
pub fn count_chars(s: string) -> int {
    return str.Len(s)
}

// contains_check returns true if haystack contains needle.
pub fn contains_check(haystack: string, needle: string) -> bool {
    return str.Contains(haystack, needle)
}

// find_index returns the index of needle in haystack, or -1.
pub fn find_index(haystack: string, needle: string) -> int {
    return str.IndexOf(haystack, needle)
}

fn main() -> int {
    n := count_chars("mango")
    print("Length: {n}")
    found := contains_check("mango", "red")
    print("Contains: {found}")
    return 0
}

```
