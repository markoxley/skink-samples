# error_json_parser_0001

Combines stdlib JSON parsing, error handling with (T, error) returns, and struct construction. Parses JSON into a Person struct.

## Code

```skink
module error_json_parser_0001

import "std/json"
import "std/errors"

// Person holds parsed JSON data.
pub struct Person {
    name: string
    age: int
}

// parse_person parses a JSON string into a Person struct.
pub fn parse_person(jsonStr: string) -> (Person, error) {
    v, err := json.Unmarshal(jsonStr)
    if err.message != "" {
        return Person{name: "", age: 0}, errors.New("invalid JSON")
    }
    name := json.AsString(json.ObjectGet(v, "name"))
    ageVal := json.AsNumber(json.ObjectGet(v, "age"))
    return Person{name: name, age: int(ageVal)}, nil
}

// safe_parse wraps parse_person, returning a default on error.
pub fn safe_parse(jsonStr: string) -> Person {
    p, err := parse_person(jsonStr)
    if err != nil {
        return Person{name: "unknown", age: 0}
    }
    return p
}

fn main() -> int {
    jsonStr := "{\"name\":\"bob\",\"age\":68}"
    p := safe_parse(jsonStr)
    print("Name: {p.name}, Age: {p.age}")
    return 0
}

```
