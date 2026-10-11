# json_marshal_0001

Uses std/json to build a JSON object with FromObject/FromString/FromNumber and serialize with MarshalValue. Also parses with Unmarshal and extracts fields.

## Code

```skink
module json_marshal_0001

import "std/json"

// make_person_json creates a JSON object with name and age, returns the string.
pub fn make_person_json(name: string, age: int) -> string {
    obj := json.FromObject(
        ["name", "age"],
        [json.FromString(name), json.FromNumber(float(age))]
    )
    return json.MarshalValue(obj)
}

// parse_name extracts the "name" field from a JSON string.
pub fn parse_name(jsonStr: string) -> string {
    v, err := json.Unmarshal(jsonStr)
    if err.message != "" {
        return "PARSE_ERROR"
    }
    return json.AsString(json.ObjectGet(v, "name"))
}

fn main() -> int {
    text := make_person_json("bob", 68)
    print(text)
    name := parse_name(text)
    print("Name: {name}")
    return 0
}

```
