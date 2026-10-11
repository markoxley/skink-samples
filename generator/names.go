package main

import (
	"fmt"
	"strings"
)

// Name pools for parameterization.

var personNames = []string{
	"alice", "bob", "carol", "dave", "eve", "frank", "grace",
	"henry", "iris", "jack", "karen", "leo", "mia", "nora",
	"oscar", "paul", "quinn", "ruby", "sam", "tina",
}

var funcNames = []string{
	"add", "sub", "mul", "compute", "process", "calculate",
	"transform", "evaluate", "validate", "convert", "parse",
	"format", "filter", "reduce", "accumulate", "generate",
}

var structNames = []string{
	"Point", "Vector", "Counter", "Buffer", "Config", "Record",
	"Item", "Entry", "Node", "Cell", "Packet", "Message",
	"Sensor", "Metric", "Task", "Logger", "Cache", "Stack",
}

var intTypes = []string{"int", "int32", "int64"}

var greetings = []string{
	"Hello", "Hi", "Hey", "Welcome", "Greetings",
	"Howdy", "Bonjour", "Hola", "Ciao", "Aloha",
}

var fruits = []string{"apple", "banana", "cherry", "date", "elderberry",
	"fig", "grape", "honeydew", "kiwi", "lemon",
	"mango", "nectarine", "orange", "peach", "plum"}

var colors = []string{"red", "green", "blue", "yellow", "purple",
	"orange", "pink", "cyan", "magenta", "teal"}

var cities = []string{"tokyo", "paris", "london", "berlin", "madrid",
	"rome", "oslo", "prague", "vienna", "lisbon"}

// pick returns element at index i mod len(pool).
func pick(pool []string, i int) string {
	return pool[i%len(pool)]
}

// pickN returns n elements from pool starting at offset i, cycling through.
func pickN(pool []string, n, i int) []string {
	result := make([]string, n)
	for j := 0; j < n; j++ {
		result[j] = pool[(i+j)%len(pool)]
	}
	return result
}

// intVal returns a deterministic int value for variant id and seed.
func intVal(id, seed, max int) int {
	v := (id*31 + seed*17) % max
	if v < 0 {
		v = -v
	}
	return v
}

// floatVal returns a deterministic float value.
func floatVal(id, seed int) float64 {
	v := float64((id*31+seed*17)%1000) / 10.0
	return v
}

// titleCase capitalizes the first letter.
func titleCase(s string) string {
	if s == "" {
		return s
	}
	return strings.ToUpper(s[:1]) + s[1:]
}

// commaList joins strings with ", ".
func commaList(items []string) string {
	return strings.Join(items, ", ")
}

// quoteList returns a string of "item", "item", ... for Skink array literals.
func quoteList(items []string) string {
	quoted := make([]string, len(items))
	for i, s := range items {
		quoted[i] = fmt.Sprintf("%q", s)
	}
	return strings.Join(quoted, ", ")
}

// intList returns a string of n, n, ... for Skink array literals.
func intList(vals []int) string {
	strs := make([]string, len(vals))
	for i, v := range vals {
		strs[i] = fmt.Sprintf("%d", v)
	}
	return strings.Join(strs, ", ")
}
