package main

import "fmt"

// ============================================================
// string-ops
// ============================================================

func stringOpsConcat() Template {
	return Template{
		Category:     "string-ops",
		Subcategory:  "string_concat",
		Description:  "String concatenation with + and interpolation",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("string_concat", id)
			mod := makeModule(name)
			greeting := pick(greetings, id)
			person := pick(personNames, id)
			city := pick(cities, id)

			code := fmt.Sprintf(`module %s

// build_message concatenates strings using + and interpolation.
pub fn build_message(greeting: string, name: string, city: string) -> string {
    // Concatenation with +
    header := greeting + ", " + name + "!"
    // Interpolation with {}
    full := "{header} Welcome from {city}."
    return full
}

fn main() -> int {
    msg := build_message("%s", "%s", "%s")
    print(msg)
    return 0
}
`, mod, greeting, person, city)

			expected := fmt.Sprintf("%s, %s! Welcome from %s.", greeting, person, city)

			test := testFile(mod, fmt.Sprintf(`pub fn TestBuildMessage() {
    testing.Reset()
    result := %s.build_message("%s", "%s", "%s")
    expected := "%s"
    if result != expected {
        testing.Errorf("expected '{expected}', got '{result}'")
    }
}
`, mod, greeting, person, city, expected))

			md := mdDoc(name, "Demonstrates Skink string concatenation with the + operator and interpolation with {var} syntax.", code)

			return Sample{
				Category:    "string-ops",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: fmt.Sprintf("Write a Skink function build_message that concatenates a greeting, name, and city using + and {var} interpolation."),
				Explanation: "Skink strings support concatenation with + and interpolation with {var} inside double-quoted strings. Interpolation is more readable for combining variables with literal text.",
			}
		},
	}
}

func stringOpsStrModule() Template {
	return Template{
		Category:     "string-ops",
		Subcategory:  "str_module",
		Description:  "Using std/str module functions",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("str_module", id)
			mod := makeModule(name)
			haystack := pick(fruits, id)
			needle := pick(colors, id)

			code := fmt.Sprintf(`module %s

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
    n := count_chars("%s")
    print("Length: {n}")
    found := contains_check("%s", "%s")
    print("Contains: {found}")
    return 0
}
`, mod, haystack, haystack, needle)

			test := testFile(mod, fmt.Sprintf(`pub fn TestCountChars() {
    testing.Reset()
    if %s.count_chars("hello") != 5 {
        testing.Errorf("len('hello') should be 5")
    }
    if %s.count_chars("") != 0 {
        testing.Errorf("len('') should be 0")
    }
    if %s.count_chars("%s") != %d {
        testing.Errorf("len('%s') should be %d")
    }
}

pub fn TestContainsCheck() {
    testing.Reset()
    if !%s.contains_check("hello world", "world") {
        testing.Errorf("should contain 'world'")
    }
    if %s.contains_check("hello", "xyz") {
        testing.Errorf("should not contain 'xyz'")
    }
}

pub fn TestFindIndex() {
    testing.Reset()
    if %s.find_index("hello", "ll") != 2 {
        testing.Errorf("indexOf('hello','ll') should be 2")
    }
    if %s.find_index("hello", "xyz") != -1 {
        testing.Errorf("indexOf('hello','xyz') should be -1")
    }
}
`, mod, mod, mod, haystack, len(haystack), haystack, len(haystack),
				mod, mod, mod, mod))

			md := mdDoc(name, "Uses the std/str module: Len for byte length, Contains for substring check, IndexOf for position.", code)

			return Sample{
				Category:    "string-ops",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write Skink functions using std/str: count_chars returns str.Len, contains_check returns str.Contains, find_index returns str.IndexOf.",
				Explanation: "The std/str module provides string utility functions. Len returns byte length, Contains checks for substrings, IndexOf finds the first occurrence (returns -1 if not found). Import with import \"std/str\".",
			}
		},
	}
}

// ============================================================
// math-ops
// ============================================================

func mathOpsFunctions() Template {
	return Template{
		Category:     "math-ops",
		Subcategory:  "math_functions",
		Description:  "Using std/math module functions",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("math_functions", id)
			mod := makeModule(name)
			r := floatVal(id, 1) + 1.0 // 1.0..100.9

			code := fmt.Sprintf(`module %s

import "std/math"

// circle_area returns the area of a circle with the given radius.
pub fn circle_area(radius: float) -> float {
    return math.Pi * radius * radius
}

// hypotenuse returns sqrt(a^2 + b^2) using std/math.
pub fn hypotenuse(a: float, b: float) -> float {
    return math.Sqrt(a*a + b*b)
}

// clamp_val clamps x to [lo, hi].
pub fn clamp_val(x: float, lo: float, hi: float) -> float {
    return math.Clamp(x, lo, hi)
}

fn main() -> int {
    area := circle_area(%.1f)
    print("Area: {area}")
    return 0
}
`, mod, r)

			test := testFile(mod, fmt.Sprintf(`pub fn TestCircleArea() {
    testing.Reset()
    area := %s.circle_area(1.0)
    if area < 3.14 || area > 3.15 {
        testing.Errorf("circle_area(1.0) should be ~3.14, got {area}")
    }
    area2 := %s.circle_area(0.0)
    if area2 != 0.0 {
        testing.Errorf("circle_area(0.0) should be 0, got {area2}")
    }
}

pub fn TestHypotenuse() {
    testing.Reset()
    h := %s.hypotenuse(3.0, 4.0)
    if h < 4.99 || h > 5.01 {
        testing.Errorf("hypotenuse(3,4) should be 5, got {h}")
    }
}

pub fn TestClampVal() {
    testing.Reset()
    if %s.clamp_val(15.0, 0.0, 10.0) != 10.0 {
        testing.Errorf("clamp(15,0,10) should be 10")
    }
    if %s.clamp_val(-5.0, 0.0, 10.0) != 0.0 {
        testing.Errorf("clamp(-5,0,10) should be 0")
    }
    if %s.clamp_val(5.0, 0.0, 10.0) != 5.0 {
        testing.Errorf("clamp(5,0,10) should be 5")
    }
}
`, mod, mod, mod, mod, mod, mod))

			md := mdDoc(name, "Uses std/math functions: Pi constant, Sqrt, and Clamp for numerical computations.", code)

			return Sample{
				Category:    "math-ops",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write Skink functions using std/math: circle_area returns Pi*r*r, hypotenuse returns math.Sqrt(a*a+b*b), clamp_val uses math.Clamp.",
				Explanation: "The std/math module provides mathematical constants (Pi, E) and functions (Sqrt, Clamp, Abs, Sin, Cos, etc.). Import with import \"std/math\" and call as math.Pi, math.Sqrt(x).",
			}
		},
	}
}

func mathOpsArithmetic() Template {
	return Template{
		Category:     "math-ops",
		Subcategory:  "arithmetic",
		Description:  "Basic arithmetic operations",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("arithmetic", id)
			mod := makeModule(name)
			a := intVal(id, 1, 50) + 1
			b := intVal(id, 2, 50) + 1

			code := fmt.Sprintf(`module %s

// arith performs basic arithmetic and returns all results.
pub fn arith(a: int, b: int) -> (int, int, int, int) {
    sum := a + b
    diff := a - b
    prod := a * b
    quot := a / b
    return sum, diff, prod, quot
}

// power_of_two returns 2^n using a loop.
pub fn power_of_two(n: int) -> int {
    result := 1
    for i := 0; i < n; i = i + 1 {
        result = result * 2
    }
    return result
}

fn main() -> int {
    s, d, p, q := arith(%d, %d)
    print("Sum: {s}, Diff: {d}, Prod: {p}, Quot: {q}")
    return 0
}
`, mod, a, b)

			test := testFile(mod, fmt.Sprintf(`pub fn TestArith() {
    testing.Reset()
    s, d, p, q := %s.arith(%d, %d)
    if s != %d { testing.Errorf("sum should be %d, got {s}") }
    if d != %d { testing.Errorf("diff should be %d, got {d}") }
    if p != %d { testing.Errorf("prod should be %d, got {p}") }
    if q != %d { testing.Errorf("quot should be %d, got {q}") }
}

pub fn TestPowerOfTwo() {
    testing.Reset()
    if %s.power_of_two(0) != 1 { testing.Errorf("2^0 should be 1") }
    if %s.power_of_two(1) != 2 { testing.Errorf("2^1 should be 2") }
    if %s.power_of_two(5) != 32 { testing.Errorf("2^5 should be 32") }
    if %s.power_of_two(10) != 1024 { testing.Errorf("2^10 should be 1024") }
}
`, mod, a, b, a+b, a+b, a-b, a-b, a*b, a*b, a/b, a/b,
				mod, mod, mod, mod))

			md := mdDoc(name, "Demonstrates basic arithmetic operators (+, -, *, /) and a power-of-two function using a for loop.", code)

			return Sample{
				Category:    "math-ops",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function arith(a, b) that returns (sum, diff, prod, quot) and a power_of_two(n) function using a loop.",
				Explanation: "Skink supports standard arithmetic operators: + (add), - (subtract), * (multiply), / (integer divide), and %% (modulo). Integer division truncates toward zero.",
			}
		},
	}
}

// ============================================================
// file-io
// ============================================================

func fileIOReadWrite() Template {
	return Template{
		Category:     "file-io",
		Subcategory:  "file_read_write",
		Description:  "Write and read a file using std/fs",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("file_read_write", id)
			mod := makeModule(name)
			data := pick(fruits, id) + " " + pick(colors, id)
			filename := fmt.Sprintf("test_%s.txt", mod)

			code := fmt.Sprintf(`module %s

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
    result := write_and_read("%s", "%s")
    print(result)
    return 0
}
`, mod, filename, data)

			test := testFile(mod, fmt.Sprintf(`pub fn TestWriteAndRead() {
    testing.Reset()
    result := %s.write_and_read("%s", "%s")
    if result != "%s" {
        testing.Errorf("expected '%s', got '{result}'")
    }
    // Test with different data
    result2 := %s.write_and_read("%s", "hello world")
    if result2 != "hello world" {
        testing.Errorf("expected 'hello world', got '{result2}'")
    }
}
`, mod, filename, data, data, data, mod, filename+"_2"))

			md := mdDoc(name, "Demonstrates file I/O using std/fs: WriteAll to create a file and ReadAll to read it back.", code)

			return Sample{
				Category:    "file-io",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function write_and_read that uses std/fs.WriteAll to write data to a file and fs.ReadAll to read it back.",
				Explanation: "The std/fs module provides file operations. WriteAll(path, data) creates or overwrites a file. ReadAll(path) returns (string, errors.Error). Check err.message != \"\" for errors.",
			}
		},
	}
}

// ============================================================
// web
// ============================================================

func webHelloServer() Template {
	return Template{
		Category:     "web",
		Subcategory:  "hello_server",
		Description:  "Basic web server with std/web router",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("hello_server", id)
			mod := makeModule(name)
			port := 8000 + intVal(id, 1, 100)
			route := "/" + pick(fruits, id)

			code := fmt.Sprintf(`module %s

import "std/web/router"
import "std/web/types"

// setup_routes creates a router with a hello route and returns the route path.
pub fn setup_routes() -> string {
    r := router.NewRouter()
    r.Get("%s", fn(req: types.Request, w: *types.ResponseWriter) {
        w.Write("Hello from Skink!")
    })
    return "%s"
}

fn main() -> int {
    route := setup_routes()
    print("Configured route: {route}")
    // Server setup (not started in this sample):
    // s := server.NewServer(%d, &r)
    // s.ListenAndServe()
    return 0
}
`, mod, route, route, port)

			test := testFile(mod, fmt.Sprintf(`pub fn TestSetupRoutes() {
    testing.Reset()
    route := %s.setup_routes()
    if route != "%s" {
        testing.Errorf("expected route '%s', got '{route}'")
    }
}
`, mod, route, route))

			md := mdDoc(name, "Sets up a web router with a GET handler using std/web/router. Shows the handler closure syntax for HTTP routes.", code)

			return Sample{
				Category:    "web",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function that creates a web router with std/web/router, adds a GET handler with a closure, and returns the route path.",
				Explanation: "The std/web/router module provides NewRouter() and route registration methods (Get, Post, etc.). Handlers are closures: fn(req: types.Request, w: *types.ResponseWriter) { ... }. The ResponseWriter.Write method sends the response body.",
			}
		},
	}
}

// ============================================================
// stdlib
// ============================================================

func stdlibJSON() Template {
	return Template{
		Category:     "stdlib",
		Subcategory:  "json_marshal",
		Description:  "JSON marshaling with std/json",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("json_marshal", id)
			mod := makeModule(name)
			person := pick(personNames, id)
			age := intVal(id, 1, 60) + 20 // 20..79

			code := fmt.Sprintf(`module %s

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
    text := make_person_json("%s", %d)
    print(text)
    name := parse_name(text)
    print("Name: {name}")
    return 0
}
`, mod, person, age)

			test := testFile(mod, fmt.Sprintf(`pub fn TestMakePersonJSON() {
    testing.Reset()
    result := %s.make_person_json("%s", %d)
    expected := "{\"name\":\"%s\",\"age\":%d}"
    if result != expected {
        testing.Errorf("expected '{expected}', got '{result}'")
    }
}

pub fn TestParseName() {
    testing.Reset()
    name := %s.parse_name("{\"name\":\"bob\",\"age\":25}")
    if name != "bob" {
        testing.Errorf("expected 'bob', got '{name}'")
    }
}
`, mod, person, age, person, age, mod))

			md := mdDoc(name, "Uses std/json to build a JSON object with FromObject/FromString/FromNumber and serialize with MarshalValue. Also parses with Unmarshal and extracts fields.", code)

			return Sample{
				Category:    "stdlib",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write Skink functions using std/json: make_person_json builds a JSON object with name and age, parse_name extracts the name field from a JSON string.",
				Explanation: "The std/json module uses a Value type for dynamic JSON. FromObject(keys, vals) creates an object, FromString/FromNumber create primitives. MarshalValue serializes to a string. Unmarshal parses, and ObjectGet/AsString extract fields.",
			}
		},
	}
}

func stdlibTime() Template {
	return Template{
		Category:     "stdlib",
		Subcategory:  "time_duration",
		Description:  "Using std/time Duration for time conversions",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("time_duration", id)
			mod := makeModule(name)
			secs := intVal(id, 1, 60) + 1 // 1..60

			code := fmt.Sprintf(`module %s

import "std/time"

// seconds_to_ms converts seconds to milliseconds using time.Duration.
pub fn seconds_to_ms(secs: int) -> int {
    d := time.Duration.FromSeconds(int64(secs))
    return int(d.Milliseconds())
}

// minutes_to_seconds converts minutes to seconds.
pub fn minutes_to_seconds(mins: int) -> int {
    d := time.Duration.FromMinutes(int64(mins))
    return int(d.Seconds())
}

fn main() -> int {
    ms := seconds_to_ms(%d)
    print("{ms} ms")
    return 0
}
`, mod, secs)

			expectedMs := secs * 1000

			test := testFile(mod, fmt.Sprintf(`pub fn TestSecondsToMs() {
    testing.Reset()
    if %s.seconds_to_ms(%d) != %d {
        testing.Errorf("seconds_to_ms(%d) should be %d")
    }
    if %s.seconds_to_ms(1) != 1000 {
        testing.Errorf("seconds_to_ms(1) should be 1000")
    }
    if %s.seconds_to_ms(0) != 0 {
        testing.Errorf("seconds_to_ms(0) should be 0")
    }
}

pub fn TestMinutesToSeconds() {
    testing.Reset()
    if %s.minutes_to_seconds(1) != 60 {
        testing.Errorf("minutes_to_seconds(1) should be 60")
    }
    if %s.minutes_to_seconds(5) != 300 {
        testing.Errorf("minutes_to_seconds(5) should be 300")
    }
}
`, mod, secs, expectedMs, secs, expectedMs, mod, mod, mod, mod))

			md := mdDoc(name, "Uses std/time Duration constructors (FromSeconds, FromMinutes) and conversion methods (Milliseconds, Seconds).", code)

			return Sample{
				Category:    "stdlib",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write Skink functions using std/time: seconds_to_ms converts using Duration.FromSeconds and Milliseconds, minutes_to_seconds uses FromMinutes and Seconds.",
				Explanation: "The std/time module provides Duration with constructor methods (FromSeconds, FromMinutes, FromHours) and conversion methods (Milliseconds, Seconds, Hours). Durations are created via factory methods since constants are private.",
			}
		},
	}
}

// ============================================================
// real-world
// ============================================================

func realWorldCalculator() Template {
	return Template{
		Category:     "real-world",
		Subcategory:  "calculator",
		Description:  "Simple calculator with switch-based operation dispatch",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("calculator", id)
			mod := makeModule(name)
			a := floatVal(id, 1) + 1.0
			b := floatVal(id, 2) + 1.0

			code := fmt.Sprintf(`module %s

// calc performs a basic arithmetic operation.
// op: "add", "sub", "mul", "div"
pub fn calc(a: float, b: float, op: string) -> float {
    switch op {
    case "add":
        return a + b
    case "sub":
        return a - b
    case "mul":
        return a * b
    case "div":
        if b == 0.0 {
            return 0.0
        }
        return a / b
    default:
        return 0.0
    }
}

fn main() -> int {
    result := calc(%.1f, %.1f, "add")
    print("Result: {result}")
    return 0
}
`, mod, a, b)

			test := testFile(mod, fmt.Sprintf(`pub fn TestCalc() {
    testing.Reset()
    if %s.calc(10.0, 5.0, "add") != 15.0 {
        testing.Errorf("add should be 15")
    }
    if %s.calc(10.0, 5.0, "sub") != 5.0 {
        testing.Errorf("sub should be 5")
    }
    if %s.calc(10.0, 5.0, "mul") != 50.0 {
        testing.Errorf("mul should be 50")
    }
    if %s.calc(10.0, 5.0, "div") != 2.0 {
        testing.Errorf("div should be 2")
    }
    if %s.calc(10.0, 0.0, "div") != 0.0 {
        testing.Errorf("div by zero should be 0")
    }
    if %s.calc(1.0, 1.0, "unknown") != 0.0 {
        testing.Errorf("unknown op should be 0")
    }
}
`, mod, mod, mod, mod, mod, mod))

			md := mdDoc(name, "A simple calculator using switch/case/default to dispatch arithmetic operations. Handles division by zero.", code)

			return Sample{
				Category:    "real-world",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink calculator function calc(a, b, op) that uses switch to perform add, sub, mul, div based on the op string, with a default case returning 0.",
				Explanation: "This calculator uses switch/case/default for operation dispatch. Skink switch has no fall-through between cases. The default case handles unknown operations. Division by zero is guarded with an if check.",
			}
		},
	}
}
