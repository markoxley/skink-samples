package main

import "fmt"

// ============================================================
// modules (multi-file projects)
// ============================================================

func modulesMathUtils() Template {
	return Template{
		Category:     "modules",
		Subcategory:  "math_utils_module",
		Description:  "Multi-file module project with pub exports and imports",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("math_utils_module", id)
			mod := makeModule(name)
			modName := fmt.Sprintf("mathlib_%04d", id)
			a := intVal(id, 1, 50) + 1
			b := intVal(id, 2, 50) + 1

			// Module file: exports add, max, square
			moduleFile := fmt.Sprintf(`module %s

// add returns the sum of a and b.
pub fn add(a: int, b: int) -> int {
    return a + b
}

// max returns the larger of a and b.
pub fn max(a: int, b: int) -> int {
    if a > b {
        return a
    }
    return b
}

// square returns n * n.
pub fn square(n: int) -> int {
    return n * n
}
`, modName)

			// Main file: imports the module and uses it
			mainFile := fmt.Sprintf(`module main

import "%s"

fn main() -> int {
    sum := %s.add(%d, %d)
    mx := %s.max(%d, %d)
    sq := %s.square(%d)
    print("Sum: {sum}, Max: {mx}, Square: {sq}")
    return 0
}
`, modName, modName, a, b, modName, a, b, modName, a)

			// Test file: tests the module exports
			testFile := fmt.Sprintf(`module %s_test

import "%s"
import "testing"

pub fn TestAdd() {
    testing.Reset()
    if %s.add(10, 20) != 30 {
        testing.Errorf("add(10,20) should be 30")
    }
    if %s.add(0, 0) != 0 {
        testing.Errorf("add(0,0) should be 0")
    }
    if %s.add(-5, 5) != 0 {
        testing.Errorf("add(-5,5) should be 0")
    }
}

pub fn TestMax() {
    testing.Reset()
    if %s.max(10, 20) != 20 {
        testing.Errorf("max(10,20) should be 20")
    }
    if %s.max(20, 10) != 20 {
        testing.Errorf("max(20,10) should be 20")
    }
}

pub fn TestSquare() {
    testing.Reset()
    if %s.square(5) != 25 {
        testing.Errorf("square(5) should be 25")
    }
    if %s.square(0) != 0 {
        testing.Errorf("square(0) should be 0")
    }
    if %s.square(-3) != 9 {
        testing.Errorf("square(-3) should be 9")
    }
}
`, modName, modName, modName, modName, modName, modName, modName, modName, modName, modName)

			md := fmt.Sprintf("# %s\n\nA multi-file Skink module project demonstrating module declaration, pub exports, and cross-file imports.\n\n## Files\n\n- `mathlib_%04d.skink` — module with pub fn add, max, square\n- `main.skink` — imports the module and calls its functions\n- `%s_test.skink` — tests the module's exported functions\n\n## Module File\n\n```skink\n%s\n```\n\n## Main File\n\n```skink\n%s\n```\n", name, id, modName, moduleFile, mainFile)

			return Sample{
				Category:    "modules",
				Name:        name,
				ModuleName:  mod,
				Code:        mainFile,
				Markdown:    md,
				Test:        testFile,
				IsModule:    true,
				ModuleFiles: map[string]string{
					fmt.Sprintf("mathlib_%04d.skink", id): moduleFile,
				},
				Instruction: fmt.Sprintf("Create a Skink multi-file module project: a mathlib module exporting add, max, and square functions, and a main file that imports and uses them."),
				Explanation: "Skink modules are declared with 'module name' at the top of a file. Functions marked 'pub' are exported and visible to importers. The main file uses 'import \"modulename\"' and calls functions with the module prefix: modulename.function().",
			}
		},
	}
}

// ============================================================
// multi-feature
// ============================================================

func multiFeatureGenericQueue() Template {
	return Template{
		Category:     "multi-feature",
		Subcategory:  "generic_concurrent_queue",
		Description:  "Generic queue struct with channel-based send/receive (generics + concurrency + structs)",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("generic_concurrent_queue", id)
			mod := makeModule(name)
			val := intVal(id, 1, 100) + 1

			code := fmt.Sprintf(`module %s

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
    result := queue_demo(%d)
    print("Dequeued: {result}")
    return 0
}
`, mod, val)

			expected := val * 2

			test := testFile(mod, fmt.Sprintf(`pub fn TestQueueDemo() {
    testing.Reset()
    result := %s.queue_demo(%d)
    if result != %d {
        testing.Errorf("expected %d, got {result}")
    }
}
`, mod, val, expected, expected))

			md := mdDoc(name, "Combines generics, concurrency, and structs: a ConcurrentQueue<T> using a buffered channel, with spawn for async enqueue.", code)

			return Sample{
				Category:    "multi-feature",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink generic ConcurrentQueue<T> struct with a buffered channel and Enqueue/Dequeue methods. Write a queue_demo that spawns an enqueue and dequeues the result.",
				Explanation: "This sample combines three Skink features: generics (<T> for any type), concurrency (chan<T> and spawn), and structs with methods. The queue uses a buffered channel internally, and spawn allows async enqueue while the main function blocks on dequeue.",
			}
		},
	}
}

func multiFeatureErrorJSONParser() Template {
	return Template{
		Category:     "multi-feature",
		Subcategory:  "error_json_parser",
		Description:  "JSON parsing with error handling (stdlib + error-handling + structs)",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("error_json_parser", id)
			mod := makeModule(name)
			person := pick(personNames, id)
			age := intVal(id, 1, 60) + 20

			code := fmt.Sprintf(`module %s

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
    jsonStr := "{\"name\":\"%s\",\"age\":%d}"
    p := safe_parse(jsonStr)
    print("Name: {p.name}, Age: {p.age}")
    return 0
}
`, mod, person, age)

			test := testFile(mod, fmt.Sprintf(`pub fn TestSafeParse() {
    testing.Reset()
    p := %s.safe_parse("{\"name\":\"alice\",\"age\":30}")
    if p.name != "alice" {
        testing.Errorf("expected name 'alice', got '{p.name}'")
    }
    if p.age != 30 {
        testing.Errorf("expected age 30, got {p.age}")
    }
}

pub fn TestSafeParseInvalid() {
    testing.Reset()
    p := %s.safe_parse("not valid json")
    if p.name != "unknown" {
        testing.Errorf("expected 'unknown' for invalid JSON, got '{p.name}'")
    }
}
`, mod, mod))

			md := mdDoc(name, "Combines stdlib JSON parsing, error handling with (T, error) returns, and struct construction. Parses JSON into a Person struct.", code)

			return Sample{
				Category:    "multi-feature",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function parse_person that uses std/json.Unmarshal to parse a JSON string into a Person struct, returning (Person, error). Write safe_parse that returns a default on error.",
				Explanation: "This sample combines JSON parsing (std/json), error handling ((T, error) returns, err != nil check), and structs. Unmarshal returns (Value, errors.Error), which is checked before extracting fields with ObjectGet and AsString/AsNumber.",
			}
		},
	}
}

// ============================================================
// edge-cases (buggy code + fixed code)
// ============================================================

func edgeCaseUnusedVar() Template {
	return Template{
		Category:     "edge-cases",
		Subcategory:  "unused_var",
		Description:  "Unused variable error and fix",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("unused_var", id)
			mod := makeModule(name)
			a := intVal(id, 1, 50) + 1
			b := intVal(id, 2, 50) + 1

			buggyCode := fmt.Sprintf(`module %s

pub fn add(a: int, b: int) -> int {
    unused := 42
    return a + b
}

fn main() -> int {
    return add(%d, %d)
}
`, mod, a, b)

			fixedCode := fmt.Sprintf(`module %s

pub fn add(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := add(%d, %d)
    return result
}
`, mod, a, b)

			errorMsg := "error: unused variable 'unused'"

			test := testFile(mod, fmt.Sprintf(`pub fn TestAdd() {
    testing.Reset()
    if %s.add(%d, %d) != %d {
        testing.Errorf("add(%d, %d) should be %d")
    }
}
`, mod, a, b, a+b, a, b, a+b))

			md := fmt.Sprintf("# %s — Unused Variable\n\n## Buggy Code\n\n```skink\n%s\n```\n\n## Error\n\n`%s`\n\n## Fixed Code\n\n```skink\n%s\n```\n\n## Explanation\n\nThe variable `unused` is declared but never used. Skink reports an error for unused variables. The fix is to remove the unused declaration.\n", name, buggyCode, errorMsg, fixedCode)

			return Sample{
				Category:       "edge-cases",
				Name:           name,
				ModuleName:     mod,
				Code:           fixedCode,
				Markdown:       md,
				Test:           test,
				IsEdgeCase:     true,
				BuggyCode:      buggyCode,
				ErrorMessage:   errorMsg,
				FixExplain:     "The variable `unused` is declared but never used. Skink reports an error for unused variables. The fix is to remove the unused declaration.",
				Instruction:    fmt.Sprintf("Fix this Skink code that has an unused variable error:\n\n```skink\n%s\n```\n\nError: %s", buggyCode, errorMsg),
				Explanation:    "The fix removes the unused variable declaration. In Skink, unused variables cause a compiler error, similar to Go.",
			}
		},
	}
}

func edgeCaseTypeMismatch() Template {
	return Template{
		Category:     "edge-cases",
		Subcategory:  "type_mismatch",
		Description:  "Type mismatch error and fix",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("type_mismatch", id)
			mod := makeModule(name)
			val := intVal(id, 1, 50) + 1

			buggyCode := fmt.Sprintf(`module %s

pub fn double(x: int) -> int {
    return x * 2.0
}

fn main() -> int {
    return double(%d)
}
`, mod, val)

			fixedCode := fmt.Sprintf(`module %s

pub fn double(x: int) -> int {
    return x * 2
}

fn main() -> int {
    result := double(%d)
    return result
}
`, mod, val)

			errorMsg := "error: type mismatch: cannot multiply int by float"

			test := testFile(mod, fmt.Sprintf(`pub fn TestDouble() {
    testing.Reset()
    if %s.double(%d) != %d {
        testing.Errorf("double(%d) should be %d")
    }
    if %s.double(0) != 0 {
        testing.Errorf("double(0) should be 0")
    }
}
`, mod, val, val*2, val, val*2, mod))

			md := fmt.Sprintf("# %s — Type Mismatch\n\n## Buggy Code\n\n```skink\n%s\n```\n\n## Error\n\n`%s`\n\n## Fixed Code\n\n```skink\n%s\n```\n\n## Explanation\n\nThe code multiplies an int by a float literal (2.0). Skink requires explicit type conversion — there is no implicit conversion between int and float. The fix uses an int literal (2) instead.\n", name, buggyCode, errorMsg, fixedCode)

			return Sample{
				Category:       "edge-cases",
				Name:           name,
				ModuleName:     mod,
				Code:           fixedCode,
				Markdown:       md,
				Test:           test,
				IsEdgeCase:     true,
				BuggyCode:      buggyCode,
				ErrorMessage:   errorMsg,
				FixExplain:     "The code multiplies an int by a float literal (2.0). Skink requires explicit type conversion. The fix uses an int literal (2) instead.",
				Instruction:    fmt.Sprintf("Fix this Skink code that has a type mismatch error:\n\n```skink\n%s\n```\n\nError: %s", buggyCode, errorMsg),
				Explanation:    "The fix replaces the float literal 2.0 with the int literal 2. Skink has no implicit type conversion — you must explicitly cast with int() or float().",
			}
		},
	}
}
