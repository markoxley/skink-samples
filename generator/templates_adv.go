package main

import "fmt"

// ============================================================
// error-handling
// ============================================================

func errorHandlingDivide() Template {
	return Template{
		Category:     "error-handling",
		Subcategory:  "divide_error",
		Description:  "Function returning (float, error) with nil check",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("divide_error", id)
			mod := makeModule(name)
			a := floatVal(id, 1) + 1.0
			b := floatVal(id, 2) + 1.0

			code := fmt.Sprintf(`module %s

import "std/errors"

// divide returns a / b, or an error if b is zero.
pub fn divide(a: float, b: float) -> (float, error) {
    if b == 0.0 {
        return 0.0, errors.New("division by zero")
    }
    return a / b, nil
}

// safe_divide wraps divide, returning -1 on error.
pub fn safe_divide(a: float, b: float) -> float {
    result, err := divide(a, b)
    if err != nil {
        return -1.0
    }
    return result
}

fn main() -> int {
    result := safe_divide(%.1f, %.1f)
    print("Result: {result}")
    return 0
}
`, mod, a, b)

			expected := a / b

			test := testFile(mod, fmt.Sprintf(`pub fn TestSafeDivide() {
    testing.Reset()
    result := %s.safe_divide(%.1f, %.1f)
    if result != %.4f {
        testing.Errorf("expected %.4f, got {result}")
    }
    // Division by zero should return -1
    result2 := %s.safe_divide(10.0, 0.0)
    if result2 != -1.0 {
        testing.Errorf("division by zero should return -1, got {result2}")
    }
}
`, mod, a, b, expected, expected, mod))

			md := mdDoc(name, "Demonstrates Skink error handling: a function returning (float, error), nil for success, errors.New for failure, and err != nil check.", code)

			return Sample{
				Category:    "error-handling",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function divide(a, b) that returns (float, error), returning errors.New(\"division by zero\") when b is 0. Write safe_divide that returns -1 on error.",
				Explanation: "Skink error handling uses multi-return (T, error). The error interface is satisfied by errors.New(). Functions return nil for the error on success. Callers check err != nil to detect failures.",
			}
		},
	}
}

func errorHandlingPropagation() Template {
	return Template{
		Category:     "error-handling",
		Subcategory:  "error_propagation",
		Description:  "Error propagation with the ? operator",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("error_propagation", id)
			mod := makeModule(name)
			a := floatVal(id, 1) + 1.0
			b := floatVal(id, 2) + 1.0
			c := floatVal(id, 3) + 1.0

			code := fmt.Sprintf(`module %s

import "std/errors"

// divide returns a / b, or an error if b is zero.
pub fn divide(a: float, b: float) -> (float, error) {
    if b == 0.0 {
        return 0.0, errors.New("division by zero")
    }
    return a / b, nil
}

// chain_divide divides a by b, then the result by c, using ? for propagation.
pub fn chain_divide(a: float, b: float, c: float) -> (float, error) {
    result := divide(divide(a, b)?, c)?
    return result, nil
}

// safe_chain wraps chain_divide, returning -1 on error.
pub fn safe_chain(a: float, b: float, c: float) -> float {
    result, err := chain_divide(a, b, c)
    if err != nil {
        return -1.0
    }
    return result
}

fn main() -> int {
    result := safe_chain(%.1f, %.1f, %.1f)
    print("Result: {result}")
    return 0
}
`, mod, a, b, c)

			expected := (a / b) / c

			test := testFile(mod, fmt.Sprintf(`pub fn TestSafeChain() {
    testing.Reset()
    result := %s.safe_chain(%.1f, %.1f, %.1f)
    if result != %.4f {
        testing.Errorf("expected %.4f, got {result}")
    }
    // Division by zero in chain should return -1
    result2 := %s.safe_chain(10.0, 0.0, 2.0)
    if result2 != -1.0 {
        testing.Errorf("chain with zero divisor should return -1, got {result2}")
    }
}
`, mod, a, b, c, expected, expected, mod))

			md := mdDoc(name, "Demonstrates the ? operator for error propagation in Skink. If divide fails, chain_divide immediately returns the error.", code)

			return Sample{
				Category:    "error-handling",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function chain_divide that divides a/b then result/c, using the ? operator to propagate errors from divide.",
				Explanation: "The ? operator in Skink propagates errors: if the called function returns a non-nil error, the current function immediately returns that error. This avoids manual if err != nil checks. The function's last return type must be the error interface.",
			}
		},
	}
}

// ============================================================
// concurrency
// ============================================================

func concurrencyChannel() Template {
	return Template{
		Category:     "concurrency",
		Subcategory:  "channel_basic",
		Description:  "Channel send and receive",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("channel_basic", id)
			mod := makeModule(name)
			val := intVal(id, 1, 100) + 1

			code := fmt.Sprintf(`module %s

// send_recv creates a channel, sends val, receives it, and returns it.
pub fn send_recv(val: int) -> int {
    ch := make(chan<int>)
    ch <- val
    result := <-ch
    return result
}

fn main() -> int {
    result := send_recv(%d)
    print("Received: {result}")
    return 0
}
`, mod, val)

			test := testFile(mod, fmt.Sprintf(`pub fn TestSendRecv() {
    testing.Reset()
    if %s.send_recv(%d) != %d {
        testing.Errorf("send_recv(%d) should return %d")
    }
    if %s.send_recv(0) != 0 {
        testing.Errorf("send_recv(0) should return 0")
    }
}
`, mod, val, val, val, val, mod))

			md := mdDoc(name, "Demonstrates Skink channels: make(chan<T>), send with <-, receive with <-ch.", code)

			return Sample{
				Category:    "concurrency",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function send_recv that creates a channel with make(chan<int>), sends a value, receives it, and returns it.",
				Explanation: "Skink channels are created with make(chan<T>) for unbuffered or make(chan<T>, n) for buffered. The <- operator sends (ch <- val) and receives (val := <-ch). Unbuffered channels block until both sender and receiver are ready.",
			}
		},
	}
}

func concurrencySpawn() Template {
	return Template{
		Category:     "concurrency",
		Subcategory:  "spawn_worker",
		Description:  "Spawn a goroutine that sends a result on a channel",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("spawn_worker", id)
			mod := makeModule(name)
			val := intVal(id, 1, 100) + 1

			code := fmt.Sprintf(`module %s

// worker sends val*2 on the channel.
fn worker(ch: chan<int>, val: int) {
    ch <- val * 2
}

// spawn_compute spawns a worker and returns its result.
pub fn spawn_compute(val: int) -> int {
    ch := make(chan<int>)
    spawn worker(ch, val)
    result := <-ch
    return result
}

fn main() -> int {
    result := spawn_compute(%d)
    print("Computed: {result}")
    return 0
}
`, mod, val)

			expected := val * 2

			test := testFile(mod, fmt.Sprintf(`pub fn TestSpawnCompute() {
    testing.Reset()
    if %s.spawn_compute(%d) != %d {
        testing.Errorf("spawn_compute(%d) should return %d")
    }
    if %s.spawn_compute(0) != 0 {
        testing.Errorf("spawn_compute(0) should return 0")
    }
}
`, mod, val, expected, val, expected, mod))

			md := mdDoc(name, "Demonstrates Skink's spawn keyword for goroutines. A worker function is spawned and sends its result on a channel.", code)

			return Sample{
				Category:    "concurrency",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function spawn_compute that spawns a worker goroutine, which sends val*2 on a channel, and returns the received result.",
				Explanation: "The spawn keyword starts a function as a concurrent goroutine. The main function blocks on <-ch until the worker sends a value. Channels synchronize communication between goroutines.",
			}
		},
	}
}

// ============================================================
// pattern-matching
// ============================================================

func patternMatchEnum() Template {
	return Template{
		Category:     "pattern-matching",
		Subcategory:  "match_enum",
		Description:  "Match expression on enum values",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("match_enum", id)
			mod := makeModule(name)

			code := fmt.Sprintf(`module %s

pub enum Color {
    Red,
    Green,
    Blue,
}

// color_name returns the name of a Color value.
pub fn color_name(c: int) -> string {
    return match c {
        Red   => "red",
        Green => "green",
        Blue  => "blue",
        _     => "unknown",
    }
}

fn main() -> int {
    c := Green
    print(color_name(c))
    return 0
}
`, mod)

			test := testFile(mod, fmt.Sprintf(`pub fn TestColorName() {
    testing.Reset()
    if %s.color_name(Red) != "red" {
        testing.Errorf("Red should be 'red'")
    }
    if %s.color_name(Green) != "green" {
        testing.Errorf("Green should be 'green'")
    }
    if %s.color_name(Blue) != "blue" {
        testing.Errorf("Blue should be 'blue'")
    }
    if %s.color_name(99) != "unknown" {
        testing.Errorf("Unknown should be 'unknown'")
    }
}
`, mod, mod, mod, mod))

			md := mdDoc(name, "Uses a match expression to map Color enum variants to their string names. Enum variants are int constants used by bare name in match arms.", code)

			return Sample{
				Category:    "pattern-matching",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink enum Color with Red, Green, Blue variants and a color_name function using match that returns the color name string. Include a _ wildcard arm.",
				Explanation: "Skink match expressions require a _ wildcard arm. Enum variants are int constants accessed by bare name (e.g., Red, not Color.Red). Match arms use Pattern => expression syntax and always return a value.",
			}
		},
	}
}

func patternMatchRange() Template {
	return Template{
		Category:     "pattern-matching",
		Subcategory:  "match_range",
		Description:  "Match with range patterns and wildcard",
		VariantCount: 15,
		Generate: func(id int) Sample {
			name := makeName("match_range", id)
			mod := makeModule(name)

			code := fmt.Sprintf(`module %s

// grade returns a letter grade for a score using range patterns.
pub fn grade(score: int) -> string {
    return match score {
        90..101 => "A",
        80..90  => "B",
        70..80  => "C",
        60..70  => "D",
        _       => "F",
    }
}

fn main() -> int {
    g := grade(%d)
    print("Grade: {g}")
    return 0
}
`, mod, intVal(id, 1, 100))

			test := testFile(mod, fmt.Sprintf(`pub fn TestGrade() {
    testing.Reset()
    if %s.grade(95) != "A" {
        testing.Errorf("95 should be A")
    }
    if %s.grade(85) != "B" {
        testing.Errorf("85 should be B")
    }
    if %s.grade(75) != "C" {
        testing.Errorf("75 should be C")
    }
    if %s.grade(65) != "D" {
        testing.Errorf("65 should be D")
    }
    if %s.grade(55) != "F" {
        testing.Errorf("55 should be F")
    }
    if %s.grade(0) != "F" {
        testing.Errorf("0 should be F")
    }
}
`, mod, mod, mod, mod, mod, mod))

			md := mdDoc(name, "Uses match with range patterns (90..101) and the _ wildcard to classify a score into a letter grade.", code)

			return Sample{
				Category:    "pattern-matching",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink function grade(score) using match with range patterns: 90..101 => A, 80..90 => B, 70..80 => C, 60..70 => D, _ => F.",
				Explanation: "Skink match supports range patterns with the .. operator (half-open: 90..101 matches 90-100). The _ wildcard catches all remaining values. Range patterns make match more expressive than switch for numeric ranges.",
			}
		},
	}
}

// ============================================================
// templates-traits
// ============================================================

func templatesTraitsWriter() Template {
	return Template{
		Category:     "templates-traits",
		Subcategory:  "writer_template",
		Description:  "Template (trait) with duck-typed implementation",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("writer_template", id)
			mod := makeModule(name)
			prefix := pick(fruits, id)

			code := fmt.Sprintf(`module %s

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
    sb := StringBuilder{data: "%s: "}
    write_to(sb, "hello")
    write_to(sb, " world")
    return sb.String()
}

fn main() -> int {
    result := demo()
    print(result)
    return 0
}
`, mod, prefix)

			test := testFile(mod, fmt.Sprintf(`pub fn TestDemo() {
    testing.Reset()
    result := %s.demo()
    expected := "%s: hello world"
    if result != expected {
        testing.Errorf("expected '{expected}', got '{result}'")
    }
}
`, mod, prefix))

			md := mdDoc(name, "Defines a Writer template (trait) and a StringBuilder struct that satisfies it via duck typing — no explicit implements keyword needed.", code)

			return Sample{
				Category:    "templates-traits",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink template Writer with a Write method, and a StringBuilder struct that satisfies it via duck typing. Write a demo function that uses it.",
				Explanation: "Skink templates (traits) define method signatures. A struct automatically satisfies a template by defining methods with matching signatures — no implements keyword. Functions can accept template types as parameters, enabling ad-hoc polymorphism.",
			}
		},
	}
}

// ============================================================
// services
// ============================================================

func servicesLogger() Template {
	return Template{
		Category:     "services",
		Subcategory:  "service_pattern",
		Description:  "Service-like pattern using struct methods (alternative to service keyword)",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("service_pattern", id)
			mod := makeModule(name)

			code := fmt.Sprintf(`module %s

// CounterService provides a service-like interface using struct methods.
// (The service keyword is now implemented — see static_service_XXXX samples.
// This uses the struct-method pattern as an alternative approach.)
pub struct CounterService {
    count: int

    pub fn increment(self: *CounterService, n: int) -> int {
        self.count = self.count + n
        return self.count
    }

    pub fn get_count(self: CounterService) -> int {
        return self.count
    }
}

// demo creates a CounterService, increments it, and returns the count.
pub fn demo() -> int {
    c := CounterService{count: 0}
    c.increment(5)
    c.increment(10)
    return c.get_count()
}

fn main() -> int {
    result := demo()
    print("Count: {result}")
    return 0
}
`, mod)

			test := testFile(mod, fmt.Sprintf(`pub fn TestDemo() {
    testing.Reset()
    result := %s.demo()
    if result != 15 {
        testing.Errorf("expected 15, got {result}")
    }
}
`, mod))

			md := mdDoc(name, "Implements a service-like pattern using struct methods. The CounterService struct provides increment and get_count methods, mimicking the service interface pattern.", code)

			return Sample{
				Category:    "services",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink CounterService struct with increment (pointer receiver) and get_count (value receiver) methods. Write a demo that increments by 5 and 10 and returns the count.",
				Explanation: "The service keyword is now implemented in the compiler — see static_service samples. This sample uses the struct-method pattern as an alternative approach. Pointer receivers (self: *CounterService) allow mutation, while value receivers (self: CounterService) are read-only.",
			}
		},
	}
}

// servicesStatic generates samples using the static service keyword syntax
// (service Name { fn ... } + service Name for Type { fn ... }).
func servicesStatic() Template {
	return Template{
		Category:     "services",
		Subcategory:  "static_service",
		Description:  "Static service interface and implementation using service keyword",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("static_service", id)
			mod := makeModule(name)
			inc1 := intVal(id, 1, 50) + 1
			inc2 := intVal(id, 2, 50) + 1

			code := fmt.Sprintf(`module %s

// Counter is a service interface defining increment and get operations.
service Counter {
    fn Increment(n: int) -> int
    fn GetValue() -> int
}

// CounterImpl is the concrete struct that implements the Counter service.
pub struct CounterImpl {
    count: int
}

service Counter for CounterImpl {
    fn Increment(self: *CounterImpl, n: int) -> int {
        self.count = self.count + n
        return self.count
    }

    fn GetValue(self: CounterImpl) -> int {
        return self.count
    }
}

pub fn demo() -> int {
    c := CounterImpl{count: 0}
    c.Increment(%d)
    c.Increment(%d)
    return c.GetValue()
}

fn main() -> int {
    result := demo()
    print("Count: {result}")
    return 0
}
`, mod, inc1, inc2)

			test := testFile(mod, fmt.Sprintf(`pub fn TestDemo() {
    testing.Reset()
    result := %s.demo()
    if result != %d {
        testing.Errorf("demo should return %d, got {result}")
    }
}
`, mod, inc1+inc2, inc1+inc2))

			md := mdDoc(name, "Demonstrates a static service interface and implementation using the service keyword. The Counter service defines Increment and GetValue methods, implemented for the CounterImpl struct.", code)

			return Sample{
				Category:    "services",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink static service with an interface declaration and an implementation for a struct. Use the service/for syntax.",
				Explanation: "Skink's service keyword allows declaring service interfaces and implementing them for concrete types using 'service Name for Type { fn ... }'. Methods are called on the struct directly, with pointer receivers allowing mutation and value receivers being read-only.",
			}
		},
	}
}

// ============================================================
// rulesets (using std/rules.RuleSource template)
// ============================================================

func rulesetsDynamic() Template {
	return Template{
		Category:     "rulesets",
		Subcategory:  "dynamic_rules",
		Description:  "Dynamic rule source pattern (RuleSource-style struct)",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("dynamic_rules", id)
			mod := makeModule(name)
			threshold := floatVal(id, 1) + 10.0 // 10..109.9
			reading := threshold + 5.0          // always above threshold

			code := fmt.Sprintf(`module %s

// ThresholdSource implements the RuleSource pattern: it triggers when reading > threshold.
// (Note: static ruleset syntax is now implemented — see static_rules_XXXX samples. This uses the dynamic struct-based pattern.)
pub struct ThresholdSource {
    threshold: float
    reading: float

    pub fn Triggered(self: ThresholdSource) -> bool {
        return self.reading > self.threshold
    }

    pub fn Action(self: ThresholdSource) {
        // Rule action would run here
    }

    pub fn Priority(self: ThresholdSource) -> int {
        return 5
    }
}

// check_triggered returns true if the source's reading exceeds its threshold.
pub fn check_triggered(threshold: float, reading: float) -> bool {
    src := ThresholdSource{threshold: threshold, reading: reading}
    return src.Triggered()
}

fn main() -> int {
    triggered := check_triggered(%.1f, %.1f)
    print("Triggered: {triggered}")
    return 0
}
`, mod, threshold, reading)

			test := testFile(mod, fmt.Sprintf(`pub fn TestCheckTriggered() {
    testing.Reset()
    if !%s.check_triggered(%.1f, %.1f) {
        testing.Errorf("should be triggered when reading > threshold")
    }
    if %s.check_triggered(100.0, 50.0) {
        testing.Errorf("should not be triggered when reading < threshold")
    }
}
`, mod, threshold, reading, mod))

			md := mdDoc(name, "Implements a dynamic rule source pattern using a struct with Triggered, Action, and Priority methods. The ThresholdSource triggers when its reading exceeds the threshold.", code)

			return Sample{
				Category:    "rulesets",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink ThresholdSource struct with Triggered, Action, and Priority methods following the RuleSource pattern. Write a function that checks if triggered.",
				Explanation: "Skink's static ruleset syntax (ruleset/rule/when/action) is now implemented in the compiler — see static_rules samples. Dynamic rules use a struct-based pattern with Triggered, Action, and Priority methods. Action and Priority are capitalized because lowercase versions are reserved keywords.",
			}
		},
	}
}

// rulesetsStatic generates samples using the static ruleset syntax
// (ruleset/rule/when/action/priority) that is implemented in the compiler.
func rulesetsStatic() Template {
	return Template{
		Category:     "rulesets",
		Subcategory:  "static_rules",
		Description:  "Static ruleset declaration with rule/when/action/priority",
		VariantCount: 10,
		Generate: func(id int) Sample {
			name := makeName("static_rules", id)
			mod := makeModule(name)
			threshold := floatVal(id, 1) + 10.0
			reading := threshold + 5.0

			code := fmt.Sprintf(`module %s

import "std/time"

var currentTemp: float = 20.0
var firedCount: int = 0

// TempRules is a static ruleset with a high-temperature rule.
ruleset TempRules {
    rule high when currentTemp > %.1f {
        action: {
            firedCount = firedCount + 1
        }
        priority: 1
    }
}

// check_high sets the temperature, runs the ruleset briefly, and returns
// the number of times the high rule fired.
pub fn check_high(temp: float) -> int {
    currentTemp = temp
    firedCount = 0
    TempRules.start()
    time.SleepMs(50)
    TempRules.stop()
    time.SleepMs(20)
    TempRules.reset()
    return firedCount
}

fn main() -> int {
    result := check_high(%.1f)
    print("Fired: {result}")
    return 0
}
`, mod, threshold, reading)

			test := testFile(mod, fmt.Sprintf(`pub fn TestCheckHighTriggered() {
    testing.Reset()
    result := %s.check_high(%.1f)
    if result == 0 {
        testing.Errorf("high rule should fire when temp > threshold")
    }
}

pub fn TestCheckHighNotTriggered() {
    testing.Reset()
    result := %s.check_high(%.1f)
    if result > 0 {
        testing.Errorf("high rule should not fire when temp <= threshold")
    }
}
`, mod, reading, mod, threshold-5.0))

			md := mdDoc(name, "Demonstrates a static ruleset with a threshold rule using the ruleset/rule/when/action/priority syntax. The rule fires when the temperature exceeds the threshold.", code)

			return Sample{
				Category:    "rulesets",
				Name:        name,
				ModuleName:  mod,
				Code:        code,
				Markdown:    md,
				Test:        test,
				Instruction: "Write a Skink static ruleset with a rule that fires when a temperature variable exceeds a threshold. Use the ruleset/rule/when/action/priority syntax.",
				Explanation: "Skink's static ruleset syntax allows declaring rules inline with when conditions, action blocks, and priority levels. The ruleset runs in a background thread when start() is called, evaluating each rule's condition and executing its action if true. stop() halts evaluation and reset() clears all rules.",
			}
		},
	}
}
