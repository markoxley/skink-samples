package main

import "fmt"

// ============================================================
// structs
// ============================================================

func structsPoint() Template {
	return Template{
		Category:     "structs",
		Subcategory:  "point_struct",
		Description:  "Struct with fields and a value-receiver method",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("point_struct", id)
			mod := makeModule(name)
			x1 := floatVal(id, 1)
			y1 := floatVal(id, 2)
			x2 := floatVal(id, 3)
			y2 := floatVal(id, 4)

			code := fmt.Sprintf(`module %s

struct Point {
    x: float
    y: float

    pub fn distance_to(self: Point, other: Point) -> float {
        dx := self.x - other.x
        dy := self.y - other.y
        return dx*dx + dy*dy
    }
}

// distance returns the squared distance between two points.
pub fn distance(x1: float, y1: float, x2: float, y2: float) -> float {
    p1 := Point{x: x1, y: y1}
    p2 := Point{x: x2, y: y2}
    return p1.distance_to(p2)
}

fn main() -> int {
    d := distance(%.1f, %.1f, %.1f, %.1f)
    print("Squared distance: {d}")
    return 0
}
`, mod, x1, y1, x2, y2)

			dx := x1 - x2
			dy := y1 - y2
			expected := dx*dx + dy*dy

			test := testFile(mod, fmt.Sprintf(`pub fn TestDistance() {
    testing.Reset()
    result := %s.distance(%.1f, %.1f, %.1f, %.1f)
    if result != %.1f {
        testing.Errorf("expected %.1f, got {result}")
    }
}
`, mod, x1, y1, x2, y2, expected, expected))

			md := mdDoc(name, "Defines a Point struct with x, y fields and a value-receiver method distance_to. Shows struct initialization with named fields.", code)

			return Sample{
				Category:    "structs",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink struct Point with x and y float fields, and a method distance_to that returns the squared distance to another Point.",
				Explanation: "This sample defines a Point struct with two float fields and a value-receiver method. Structs are initialized with named fields: Point{x: 1.0, y: 2.0}. Methods are declared inside the struct block with self: Point for value receivers.",
			}
		},
	}
}

func structsCounter() Template {
	return Template{
		Category:     "structs",
		Subcategory:  "counter_struct",
		Description:  "Struct with pointer-receiver methods for mutation",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("counter_struct", id)
			mod := makeModule(name)
			start := intVal(id, 1, 50)
			inc := intVal(id, 2, 5) + 1

			code := fmt.Sprintf(`module %s

struct Counter {
    value: int

    pub fn increment(self: *Counter) -> int {
        self.value = self.value + 1
        return self.value
    }

    pub fn add(self: *Counter, n: int) -> int {
        self.value = self.value + n
        return self.value
    }

    pub fn get(self: Counter) -> int {
        return self.value
    }
}

// make_and_increment creates a counter, adds n, and returns the value.
pub fn make_and_increment(start: int, n: int) -> int {
    c := Counter{value: start}
    c.add(n)
    return c.get()
}

fn main() -> int {
    result := make_and_increment(%d, %d)
    print("Counter: {result}")
    return 0
}
`, mod, start, inc)

			expected := start + inc

			test := testFile(mod, fmt.Sprintf(`pub fn TestMakeAndIncrement() {
    testing.Reset()
    result := %s.make_and_increment(%d, %d)
    if result != %d {
        testing.Errorf("expected %d, got {result}")
    }
}
`, mod, start, inc, expected, expected))

			md := mdDoc(name, "Defines a Counter struct with pointer-receiver methods (self: *Counter) that mutate the struct's value field.", code)

			return Sample{
				Category:    "structs",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink struct Counter with a value field and pointer-receiver methods increment and add that mutate the value.",
				Explanation: "This sample shows pointer-receiver methods using self: *Counter, which can mutate the struct's fields. Value receivers (self: Counter) cannot modify the original. The . operator auto-dereferences pointers, so self.value works on both.",
			}
		},
	}
}

// ============================================================
// enums
// ============================================================

func enumsStatus() Template {
	return Template{
		Category:     "enums",
		Subcategory:  "status_enum",
		Description:  "Enum declaration with match expression",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("status_enum", id)
			mod := makeModule(name)

			code := fmt.Sprintf(`module %s

pub enum Status {
    Idle,
    Running,
    Done,
    Error,
}

// describe returns a human-readable description of a Status value.
pub fn describe(s: int) -> string {
    return match s {
        Idle    => "Waiting to start",
        Running => "In progress",
        Done    => "Completed successfully",
        Error   => "Failed with error",
        _       => "Unknown",
    }
}

fn main() -> int {
    state := Running
    print(describe(state))
    return 0
}
`, mod)

			test := testFile(mod, fmt.Sprintf(`pub fn TestDescribe() {
    testing.Reset()
    if %s.describe(Idle) != "Waiting to start" {
        testing.Errorf("Idle description wrong")
    }
    if %s.describe(Running) != "In progress" {
        testing.Errorf("Running description wrong")
    }
    if %s.describe(Done) != "Completed successfully" {
        testing.Errorf("Done description wrong")
    }
    if %s.describe(Error) != "Failed with error" {
        testing.Errorf("Error description wrong")
    }
    if %s.describe(99) != "Unknown" {
        testing.Errorf("Unknown description wrong")
    }
}
`, mod, mod, mod, mod, mod))

			md := mdDoc(name, "Declares a Status enum with four variants and uses a match expression to map each variant to a description string. Enum variants are int constants accessed by bare name.", code)

			return Sample{
				Category:    "enums",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink enum Status with Idle, Running, Done, and Error variants, and a describe function using match that returns a description for each. Include a _ wildcard arm.",
				Explanation: "Skink enums are declared with enum Name { Variant1, Variant2, ... }. Variants are int constants accessed by bare name (not EnumType.Variant). Match expressions require a _ wildcard arm. The describe function takes int since enum variants are integers.",
			}
		},
	}
}

// ============================================================
// generics
// ============================================================

func genericsSwap() Template {
	return Template{
		Category:     "generics",
		Subcategory:  "generic_identity",
		Description:  "Generic function with type parameter <T>",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("generic_identity", id)
			mod := makeModule(name)
			a := intVal(id, 1, 100) + 1

			code := fmt.Sprintf(`module %s

// identity returns the input value unchanged. Demonstrates generic type parameter <T>.
pub fn identity<T>(x: T) -> T {
    return x
}

// do_identity calls identity<int> with a value.
pub fn do_identity(a: int) -> int {
    return identity<int>(a)
}

fn main() -> int {
    result := do_identity(%d)
    print("Identity: {result}")
    return 0
}
`, mod, a)

			test := testFile(mod, fmt.Sprintf(`pub fn TestDoIdentity() {
    testing.Reset()
    if %s.do_identity(%d) != %d {
        testing.Errorf("identity(%d) should return %d")
    }
    if %s.do_identity(0) != 0 {
        testing.Errorf("identity(0) should return 0")
    }
    if %s.do_identity(-1) != -1 {
        testing.Errorf("identity(-1) should return -1")
    }
}
`, mod, a, a, a, a, mod, mod))

			md := mdDoc(name, "Defines a generic identity function using type parameter <T>. Shows explicit type instantiation identity<int>.", code)

			return Sample{
				Category:    "generics",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink generic function identity<T> that returns the input value unchanged. Demonstrate it with int by calling identity<int>.",
				Explanation: "Skink generics use <T> syntax for type parameters. Callers specify the type explicitly: identity<int>(42). The compiler monomorphizes each instantiation, generating a specialized version for each concrete type used.",
			}
		},
	}
}

func genericsStack() Template {
	return Template{
		Category:     "generics",
		Subcategory:  "generic_stack",
		Description:  "Generic stack struct with push and pop methods",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("generic_stack", id)
			mod := makeModule(name)
			vals := []int{
				intVal(id, 1, 100) + 1,
				intVal(id, 2, 100) + 1,
				intVal(id, 3, 100) + 1,
			}

			code := fmt.Sprintf(`module %s

struct Stack<T> {
    items: []T

    pub fn push(self: *Stack<T>, item: T) {
        self.items = append(self.items, item)
    }

    pub fn pop(self: *Stack<T>) -> (T, bool) {
        n := len(self.items)
        if n == 0 {
            var zero: T
            return zero, false
        }
        item := self.items[n - 1]
        self.items = self.items[0:n - 1]
        return item, true
    }

    pub fn size(self: Stack<T>) -> int {
        return len(self.items)
    }
}

// stack_demo pushes three values and pops them, returning the last popped.
pub fn stack_demo(a: int, b: int, c: int) -> int {
    s := Stack<int>{items: []int{}}
    s.push(a)
    s.push(b)
    s.push(c)
    val, ok := s.pop()
    if ok {
        return val
    }
    return -1
}

fn main() -> int {
    result := stack_demo(%d, %d, %d)
    print("Popped: {result}")
    return 0
}
`, mod, vals[0], vals[1], vals[2])

			test := testFile(mod, fmt.Sprintf(`pub fn TestStackDemo() {
    testing.Reset()
    result := %s.stack_demo(%d, %d, %d)
    if result != %d {
        testing.Errorf("expected %d, got {result}")
    }
}
`, mod, vals[0], vals[1], vals[2], vals[2], vals[2]))

			md := mdDoc(name, "Defines a generic Stack<T> struct with push, pop, and size methods. Uses append and slice expressions for dynamic arrays.", code)

			return Sample{
				Category:    "generics",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink generic struct Stack<T> with items []T, and push, pop, size methods. Demonstrate with int.",
				Explanation: "This generic struct uses <T> as a type parameter. The push method uses append to grow the dynamic array, and pop uses slice expression [0:n-1] to shrink it. The pop returns (T, bool) to handle the empty case.",
			}
		},
	}
}

// ============================================================
// collections
// ============================================================

func collectionsArrayOps() Template {
	return Template{
		Category:     "collections",
		Subcategory:  "array_ops",
		Description:  "Array creation, append, iteration, and sum",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("array_ops", id)
			mod := makeModule(name)
			n := intVal(id, 1, 5) + 3 // 3..7 elements
			vals := make([]int, n)
			for i := 0; i < n; i++ {
				vals[i] = intVal(id, i+1, 20) + 1
			}

			code := fmt.Sprintf(`module %s

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
    arr := [%s]
    arr = append(arr, 100)
    return sum_arr(arr)
}

fn main() -> int {
    result := build_and_sum()
    print("Sum: {result}")
    return 0
}
`, mod, intList(vals))

			expected := 100
			for _, v := range vals {
				expected += v
			}

			test := testFile(mod, fmt.Sprintf(`pub fn TestSumArr() {
    testing.Reset()
    if %s.sum_arr([]int{1, 2, 3}) != 6 {
        testing.Errorf("sum([1,2,3]) should be 6")
    }
    if %s.sum_arr([]int{}) != 0 {
        testing.Errorf("sum([]) should be 0")
    }
    result := %s.build_and_sum()
    if result != %d {
        testing.Errorf("expected %d, got {result}")
    }
}
`, mod, mod, mod, expected, expected))

			md := mdDoc(name, "Demonstrates Skink dynamic arrays: creation with literals, append, for-in iteration, and len().", code)

			return Sample{
				Category:    "collections",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function sum_arr that iterates over a []int with for-in and returns the sum. Also write build_and_sum that creates an array, appends 100, and returns the sum.",
				Explanation: "Skink arrays are dynamic (like Go slices). Create with [1, 2, 3], append with append(arr, val), iterate with for v in arr, and get length with len(arr). The []int type annotation is used for empty array literals.",
			}
		},
	}
}

func collectionsMapOps() Template {
	return Template{
		Category:     "collections",
		Subcategory:  "map_ops",
		Description:  "Map creation, access, and lookup with default",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("map_ops", id)
			mod := makeModule(name)
			keys := pickN(fruits, 3, id)
			val1 := intVal(id, 1, 100) + 1
			val2 := intVal(id, 2, 100) + 1
			val3 := intVal(id, 3, 100) + 1

			code := fmt.Sprintf(`module %s

// lookup_or_zero returns the value for key in the map, or 0 if not found.
pub fn lookup_or_zero(m: map[string]int, key: string) -> int {
    val := m[key]
    return val
}

// build_and_lookup creates a map and looks up a key.
pub fn build_and_lookup(key: string) -> int {
    m := make(map[string]int)
    m["%s"] = %d
    m["%s"] = %d
    m["%s"] = %d
    return lookup_or_zero(m, key)
}

fn main() -> int {
    result := build_and_lookup("%s")
    print("Lookup: {result}")
    return 0
}
`, mod, keys[0], val1, keys[1], val2, keys[2], val3, keys[0])

			test := testFile(mod, fmt.Sprintf(`pub fn TestLookupOrZero() {
    testing.Reset()
    if %s.build_and_lookup("%s") != %d {
        testing.Errorf("lookup('%s') should be %d")
    }
    if %s.build_and_lookup("nonexistent") != 0 {
        testing.Errorf("lookup('nonexistent') should be 0")
    }
}
`, mod, keys[0], val1, keys[0], val1, mod))

			md := mdDoc(name, "Demonstrates Skink's built-in map type: make(map[string]int), key assignment, access, and zero-value default for missing keys.", code)

			return Sample{
				Category:    "collections",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function that creates a map[string]int, adds entries, and looks up a key returning 0 if not found.",
				Explanation: "Skink's built-in map type is created with make(map[K]V). Accessing a missing key returns the zero value for V (0 for int). Keys can be strings or integers for built-in maps.",
			}
		},
	}
}

// ============================================================
// pointers
// ============================================================

func pointersSwap() Template {
	return Template{
		Category:     "pointers",
		Subcategory:  "pointer_swap",
		Description:  "Pointer operations: address-of, dereference, pointer passing",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("pointer_swap", id)
			mod := makeModule(name)
			a := intVal(id, 1, 100) + 1

			code := fmt.Sprintf(`module %s

// double_ptr doubles the value pointed to by p.
pub fn double_ptr(p: *int) {
    *p = *p * 2
}

// double_val returns twice the input, using pointer operations internally.
pub fn double_val(x: int) -> int {
    v := x
    double_ptr(&v)
    return v
}

fn main() -> int {
    result := double_val(%d)
    print("Doubled: {result}")
    return 0
}
`, mod, a)

			expected := a * 2

			test := testFile(mod, fmt.Sprintf(`pub fn TestDoubleVal() {
    testing.Reset()
    if %s.double_val(%d) != %d {
        testing.Errorf("double_val(%d) should be %d")
    }
    if %s.double_val(0) != 0 {
        testing.Errorf("double_val(0) should be 0")
    }
}
`, mod, a, expected, a, expected, mod))

			md := mdDoc(name, "Demonstrates Skink pointer operations: & for address-of, * for dereference, and passing *int to functions.", code)

			return Sample{
				Category:    "pointers",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function double_ptr that takes *int and doubles the pointed-to value using * dereference. Write double_val that uses it.",
				Explanation: "Skink pointers use *T for the type, &x for address-of, and *p for dereference. Functions can take pointer parameters to modify the caller's variable. There is no -> operator; the . auto-dereferences.",
			}
		},
	}
}
