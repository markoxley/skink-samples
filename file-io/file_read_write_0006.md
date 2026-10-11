# file_read_write_0006

Demonstrates file I/O using std/fs: WriteAll to create a file and ReadAll to read it back.

## Code

```skink
module file_read_write_0006

import "std/fs"
import "std/errors"

// write_and_read writes data to a file, reads it back, and returns the content.
pub fn write_and_read(path: string, data: string) -> string {
    // Write the file
    err := fs.WriteAll(path, data)
    if err.message != "" {
        return "WRITE_ERROR"
    }
    // Read it back
    content, rerr := fs.ReadAll(path)
    if rerr.message != "" {
        return "READ_ERROR"
    }
    return content
}

fn main() -> int {
    result := write_and_read("test_file_read_write_0006.txt", "grape pink")
    print(result)
    return 0
}

```
