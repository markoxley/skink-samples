# writer_template_0009

Defines a Writer template (trait) and a StringBuilder struct that satisfies it via duck typing — no explicit implements keyword needed.

## Code

```skink
module writer_template_0009

// Writer is a template (trait) for types that can write strings.
pub template Writer {
    fn Write(self: Writer, data: string) -> int
}

// StringBuilder implements Writer by accumulating strings.
pub struct StringBuilder {
    data: string
}

pub fn Write(self: *StringBuilder, data: string) -> int {
    self.data = self.data + data
    return len(data)
}

pub fn String(self: StringBuilder) -> string {
    return self.data
}

// write_to calls Write on any Writer.
pub fn write_to(w: Writer, msg: string) -> int {
    return w.Write(msg)
}

// demo creates a StringBuilder, writes to it, and returns the content.
pub fn demo() -> string {
    sb := StringBuilder{data: "lemon: "}
    write_to(sb, "hello")
    write_to(sb, " world")
    return sb.String()
}

fn main() -> int {
    result := demo()
    print(result)
    return 0
}

```
