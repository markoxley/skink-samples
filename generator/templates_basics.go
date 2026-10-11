package main

import "fmt"

// ============================================================
// basics
// ============================================================

func basicsHelloWorld() Template {
	return Template{
		Category:     "basics",
		Subcategory:  "hello_world",
		Description:  "Hello world with string interpolation and a greet function",
		VariantCount: 20,
		Generate: func(id int) Sample {
			name := makeName("hello_world", id)
			mod := makeModule(name)
			greeting := pick(greetings, id)
			person := pick(personNames, id)

			code := fmt.Sprintf(`module %s

// greet returns a greeting message for the given name.
pub fn greet(target: string) -> string {
    return "%s, {target}!"
}

fn main() -> int {
    msg := greet("%s")
    print(msg)
    return 0
}
`, mod, greeting, person)

			test := testFile(mod, fmt.Sprintf(`pub fn TestGreet() {
    testing.Reset()
    result := %s.greet("%s")
    expected := "%s, %s!"
    if result != expected {
        testing.Errorf("expected '{expected}', got '{result}'")
    }
}
`, mod, person, greeting, person))

			md := mdDoc(name, fmt.Sprintf("A hello world example that defines a greet function returning \"%s, {name}!\" and prints a greeting for %s.", greeting, person), code)

			return Sample{
				Category:    "basics",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: fmt.Sprintf("Write a Skink function called greet that takes a name and returns \"%s, {name}!\". Call it from main with the name %s and print the result.", greeting, person),
				Explanation: fmt.Sprintf("This sample defines a pub fn greet that uses string interpolation to build a greeting. The main function calls greet with %q and prints the result. The {target} syntax inside the string literal interpolates the variable's value at runtime.", person),
			}
		},
	}
}

func basicsVariableDecl() Template {
	return Template{
		Category:     "basics",
		Subcategory:  "variable_decl",
		Description:  "Variable declaration styles: :=, var, const",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("variable_decl", id)
			mod := makeModule(name)
			factor := intVal(id, 1, 10) + 1 // 1..10
			a := intVal(id, 2, 100) + 1     // 1..100
			b := intVal(id, 3, 100) + 1     // 1..100

			code := fmt.Sprintf(`module %s

const Factor = %d

// compute demonstrates different variable declaration styles.
pub fn compute(a: int, b: int) -> int {
    // := inferred declaration
    sum := a + b
    // var with explicit type
    var product: int = a * b
    // var without initial value
    var result: int
    result = sum + product / Factor
    return result
}

fn main() -> int {
    val := compute(%d, %d)
    print("Result: {val}")
    return 0
}
`, mod, factor, a, b)

			expected := a + b + (a*b)/factor

			test := testFile(mod, fmt.Sprintf(`pub fn TestCompute() {
    testing.Reset()
    result := %s.compute(%d, %d)
    if result != %d {
        testing.Errorf("expected %d, got {result}")
    }
}
`, mod, a, b, expected, expected))

			md := mdDoc(name, fmt.Sprintf("Demonstrates Skink variable declaration styles: := for inference, var with type annotation, and const for compile-time constants. Uses Factor=%d.", factor), code)

			return Sample{
				Category:    "basics",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: fmt.Sprintf("Write a Skink function compute(a, b) that uses :=, var, and const declarations. Use a const Factor=%d. Return a + b + (a*b)/Factor.", factor),
				Explanation: "This sample shows three variable declaration styles in Skink: := for type-inferred locals, var with explicit type annotations, and const for compile-time constants. The compute function combines all three.",
			}
		},
	}
}

// ============================================================
// types
// ============================================================

func typesIntVariants() Template {
	return Template{
		Category:     "types",
		Subcategory:  "int_variants",
		Description:  "Using different integer types (int8, int16, int32, int64)",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("int_variants", id)
			mod := makeModule(name)
			val := intVal(id, 1, 200) + 1 // 1..200

			code := fmt.Sprintf(`module %s

// sum_sizes demonstrates different integer types and sizeof.
pub fn sum_sizes() -> int {
    var s8: int8 = %d
    var s16: int16 = %d
    var s32: int32 = %d
    var s64: int64 = %d
    total := int(s8) + int(s16) + int(s32) + int(s64)
    return total
}

fn main() -> int {
    total := sum_sizes()
    print("Total: {total}")
    return 0
}
`, mod, val, val*2, val*3, val*4)

			expected := val + val*2 + val*3 + val*4

			test := testFile(mod, fmt.Sprintf(`pub fn TestSumSizes() {
    testing.Reset()
    result := %s.sum_sizes()
    if result != %d {
        testing.Errorf("expected %d, got {result}")
    }
}
`, mod, expected, expected))

			md := mdDoc(name, "Demonstrates Skink's integer types (int8, int16, int32, int64) and explicit conversion with int().", code)

			return Sample{
				Category:    "types",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function that uses int8, int16, int32, and int64 variables, converts them to int, and returns their sum.",
				Explanation: "This sample shows Skink's fixed-width integer types. Each variable is declared with an explicit type, then converted to int using the int() constructor before summing, since Skink requires explicit type conversion.",
			}
		},
	}
}

func typesCasts() Template {
	return Template{
		Category:     "types",
		Subcategory:  "type_casts",
		Description:  "Type conversions between int and float",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("type_casts", id)
			mod := makeModule(name)
			fval := floatVal(id, 1) // 0.0..99.9
			ival := intVal(id, 2, 100) + 1

			code := fmt.Sprintf(`module %s

// cast_demo shows int-to-float and float-to-int conversions.
pub fn cast_demo(x: float, y: int) -> (int, float) {
    f := float(y)       // int -> float
    i := int(x)         // float -> int (truncates)
    return i, f
}

fn main() -> int {
    i, f := cast_demo(%.1f, %d)
    print("int: {i}, float: {f}")
    return 0
}
`, mod, fval, ival)

			expectedI := int(fval)
			expectedF := float64(ival)

			test := testFile(mod, fmt.Sprintf(`pub fn TestCastDemo() {
    testing.Reset()
    i, f := %s.cast_demo(%.1f, %d)
    if i != %d {
        testing.Errorf("expected int %d, got {i}")
    }
    if f != %.1f {
        testing.Errorf("expected float %.1f, got {f}")
    }
}
`, mod, fval, ival, expectedI, expectedI, expectedF, expectedF))

			md := mdDoc(name, "Demonstrates type conversions between int and float using constructor-style casts.", code)

			return Sample{
				Category:    "types",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function that converts an int to float and a float to int, returning both.",
				Explanation: "Skink uses constructor-style type conversions: float(y) converts int y to float, and int(x) truncates float x toward zero. There is no implicit type conversion.",
			}
		},
	}
}

// ============================================================
// functions
// ============================================================

func functionsAdd() Template {
	return Template{
		Category:     "functions",
		Subcategory:  "add_function",
		Description:  "Simple function with parameters and return value",
		VariantCount: 20,
		Generate: func(id int) Sample {
			name := makeName("add_function", id)
			mod := makeModule(name)
			a := intVal(id, 1, 100) + 1
			b := intVal(id, 2, 100) + 1
			fname := pick(funcNames, id)

			code := fmt.Sprintf(`module %s

// %s returns the sum of a and b.
pub fn %s(a: int, b: int) -> int {
    return a + b
}

fn main() -> int {
    result := %s(%d, %d)
    print("Result: {result}")
    return 0
}
`, mod, fname, fname, fname, a, b)

			test := testFile(mod, fmt.Sprintf(`pub fn Test%s() {
    testing.Reset()
    result := %s.%s(%d, %d)
    if result != %d {
        testing.Errorf("expected %d, got {result}")
    }
}
`, titleCase(fname), mod, fname, a, b, a+b, a+b))

			md := mdDoc(name, fmt.Sprintf("A simple Skink function %s that takes two int parameters and returns their sum.", fname), code)

			return Sample{
				Category:    "functions",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: fmt.Sprintf("Write a Skink function called %s that takes two int parameters and returns their sum.", fname),
				Explanation: fmt.Sprintf("This sample defines a pub fn %s with two int parameters and a single int return value. The function body uses the + operator and returns the result.", fname),
			}
		},
	}
}

func functionsMultiReturn() Template {
	return Template{
		Category:     "functions",
		Subcategory:  "multi_return",
		Description:  "Function returning multiple values (quotient and remainder)",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("multi_return", id)
			mod := makeModule(name)
			a := intVal(id, 1, 100) + 10 // 10..109
			b := intVal(id, 2, 10) + 2   // 2..11

			code := fmt.Sprintf(`module %s

// divmod returns both the quotient and remainder of a / b.
pub fn divmod(a: int, b: int) -> (int, int) {
    quotient := a / b
    remainder := a %% b
    return quotient, remainder
}

fn main() -> int {
    q, r := divmod(%d, %d)
    print("Quotient: {q}, Remainder: {r}")
    return 0
}
`, mod, a, b)

			q := a / b
			r := a % b

			test := testFile(mod, fmt.Sprintf(`pub fn TestDivmod() {
    testing.Reset()
    q, r := %s.divmod(%d, %d)
    if q != %d {
        testing.Errorf("expected quotient %d, got {q}")
    }
    if r != %d {
        testing.Errorf("expected remainder %d, got {r}")
    }
}
`, mod, a, b, q, q, r, r))

			md := mdDoc(name, "Demonstrates a Skink function returning multiple values using tuple syntax (int, int).", code)

			return Sample{
				Category:    "functions",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function divmod(a, b) that returns both the quotient and remainder of a divided by b as (int, int).",
				Explanation: "Skink functions can return multiple values using the (T1, T2) syntax. The caller uses q, r := divmod(a, b) to receive both values, or _ to ignore one.",
			}
		},
	}
}

// ============================================================
// control-flow
// ============================================================

func controlFlowIfElse() Template {
	return Template{
		Category:     "control-flow",
		Subcategory:  "if_else",
		Description:  "If/else if/else chain for classification",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("if_else", id)
			mod := makeModule(name)

			code := fmt.Sprintf(`module %s

// classify returns a string label for a score.
pub fn classify(score: int) -> string {
    if score >= 90 {
        return "A"
    } else if score >= 80 {
        return "B"
    } else if score >= 70 {
        return "C"
    } else if score >= 60 {
        return "D"
    } else {
        return "F"
    }
}

fn main() -> int {
    grade := classify(%d)
    print("Grade: {grade}")
    return 0
}
`, mod, intVal(id, 1, 100))

			test := testFile(mod, fmt.Sprintf(`pub fn TestClassify() {
    testing.Reset()
    if %s.classify(95) != "A" {
        testing.Errorf("95 should be A")
    }
    if %s.classify(85) != "B" {
        testing.Errorf("85 should be B")
    }
    if %s.classify(75) != "C" {
        testing.Errorf("75 should be C")
    }
    if %s.classify(65) != "D" {
        testing.Errorf("65 should be D")
    }
    if %s.classify(55) != "F" {
        testing.Errorf("55 should be F")
    }
}
`, mod, mod, mod, mod, mod))

			md := mdDoc(name, "Demonstrates Skink's if/else if/else control flow for classifying a numeric score into a letter grade.", code)

			return Sample{
				Category:    "control-flow",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function classify(score) that returns \"A\" for 90+, \"B\" for 80+, \"C\" for 70+, \"D\" for 60+, and \"F\" otherwise.",
				Explanation: "This sample uses a chain of if/else if/else branches to classify a score. Each condition is checked in order, and the first matching branch executes its return statement.",
			}
		},
	}
}

func controlFlowForLoop() Template {
	return Template{
		Category:     "control-flow",
		Subcategory:  "for_loop",
		Description:  "C-style for loop with accumulation",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("for_loop", id)
			mod := makeModule(name)
			n := intVal(id, 1, 15) + 5 // 5..19

			code := fmt.Sprintf(`module %s

// sum_to returns the sum of integers from 1 to n.
pub fn sum_to(n: int) -> int {
    total := 0
    for i := 1; i <= n; i = i + 1 {
        total = total + i
    }
    return total
}

fn main() -> int {
    result := sum_to(%d)
    print("Sum 1..%d = {result}")
    return 0
}
`, mod, n, n)

			expected := n * (n + 1) / 2

			test := testFile(mod, fmt.Sprintf(`pub fn TestSumTo() {
    testing.Reset()
    if %s.sum_to(5) != 15 {
        testing.Errorf("sum_to(5) should be 15")
    }
    if %s.sum_to(10) != 55 {
        testing.Errorf("sum_to(10) should be 55")
    }
    if %s.sum_to(0) != 0 {
        testing.Errorf("sum_to(0) should be 0")
    }
    if %s.sum_to(%d) != %d {
        testing.Errorf("sum_to(%d) should be %d")
    }
}
`, mod, mod, mod, mod, n, expected, n, expected))

			md := mdDoc(name, "Demonstrates Skink's C-style for loop with init, condition, and increment clauses.", code)

			return Sample{
				Category:    "control-flow",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function sum_to(n) that uses a C-style for loop to compute the sum of integers from 1 to n.",
				Explanation: "This sample uses the C-style for loop: for i := 1; i <= n; i = i + 1. The three clauses are initialization, condition, and increment. The loop accumulates the total and returns it.",
			}
		},
	}
}
