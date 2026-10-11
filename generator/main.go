package main

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
)

// Sample represents one generated sample with all its files.
type Sample struct {
	Category     string // directory name (e.g. "basics")
	Name         string // base filename without extension (e.g. "hello_world_0001")
	ModuleName   string // Skink module name (e.g. "hello_world_0001")
	Code         string // .skink file content
	Markdown     string // .md file content
	Test         string // _test.skink file content
	Instruction  string // NL instruction for fine-tuning
	Explanation  string // code explanation for fine-tuning
	IsEdgeCase   bool
	BuggyCode    string
	ErrorMessage string
	FixExplain   string
	IsModule     bool              // true for multi-file module projects
	ModuleFiles  map[string]string // extra files for module projects
}

// Template is a generator template that produces N variants.
type Template struct {
	Category     string
	Subcategory  string
	Description  string
	VariantCount int
	Generate     func(id int) Sample
}

const outputRoot = "/home/mark/Documents/GitHub/skink-samples/"

// testingSkinkContent is the content of the testing module that test files
// import. It's copied into each category directory so test files can resolve
// the "testing" import locally (the compiler's resolver checks the local
// directory first).
const testingSkinkContent = `module testing

var failed: bool = false

// Reset clears the failure state before each test.
pub fn Reset() {
    failed = false
}

// Errorf records a test failure and prints a message.
pub fn Errorf(msg: string) {
    print("FAIL: " + msg)
    failed = true
}

// Failed reports whether the test has failed.
pub fn Failed() -> bool {
    return failed
}

// Helper marks the calling function as a test helper.
pub fn Helper() {
    // No-op for now; used to adjust failure line numbers in future.
}
`

func main() {
	templates := allTemplates()
	fmt.Printf("Loaded %d templates\n", len(templates))

	var allSamples []Sample
	for _, tmpl := range templates {
		for i := 1; i <= tmpl.VariantCount; i++ {
			s := tmpl.Generate(i)
			allSamples = append(allSamples, s)
		}
	}
	fmt.Printf("Generated %d samples\n", len(allSamples))

	// Track which directories need testing.skink
	dirsNeedingTesting := map[string]bool{}

	// Write files
	for i, s := range allSamples {
		if err := writeSample(s); err != nil {
			fmt.Fprintf(os.Stderr, "ERROR writing sample %d (%s): %v\n", i, s.Name, err)
			os.Exit(1)
		}
		// Track directory for testing.skink
		dir := filepath.Join(outputRoot, s.Category)
		if s.IsModule {
			dir = filepath.Join(dir, s.Name)
		}
		if s.Test != "" {
			dirsNeedingTesting[dir] = true
		}
	}

	// Write testing.skink to each directory that has test files
	for dir := range dirsNeedingTesting {
		if err := os.WriteFile(filepath.Join(dir, "testing.skink"), []byte(testingSkinkContent), 0644); err != nil {
			fmt.Fprintf(os.Stderr, "ERROR writing testing.skink to %s: %v\n", dir, err)
			os.Exit(1)
		}
	}

	// Write JSONL fine-tuning datasets
	if err := writeFineTune(allSamples); err != nil {
		fmt.Fprintf(os.Stderr, "ERROR writing fine-tune data: %v\n", err)
		os.Exit(1)
	}

	fmt.Printf("Wrote %d samples + fine-tuning JSONL files\n", len(allSamples))
}

func writeSample(s Sample) error {
	dir := filepath.Join(outputRoot, s.Category)

	// Module samples go in their own subdirectory
	if s.IsModule {
		dir = filepath.Join(dir, s.Name)
	}

	if err := os.MkdirAll(dir, 0755); err != nil {
		return err
	}

	// For module samples, Code is the main.skink content and goes in the subdir.
	// For regular samples, Code is the .skink file with the sample name.
	if s.IsModule {
		// Write main entry point
		if err := os.WriteFile(filepath.Join(dir, "main.skink"), []byte(s.Code), 0644); err != nil {
			return err
		}
		// Write extra module files
		for fname, content := range s.ModuleFiles {
			if err := os.WriteFile(filepath.Join(dir, fname), []byte(content), 0644); err != nil {
				return err
			}
		}
		// Write .md
		if err := os.WriteFile(filepath.Join(dir, "README.md"), []byte(s.Markdown), 0644); err != nil {
			return err
		}
		// Write test file
		if s.Test != "" {
			if err := os.WriteFile(filepath.Join(dir, s.Name+"_test.skink"), []byte(s.Test), 0644); err != nil {
				return err
			}
		}
		return nil
	}

	// Regular single-file sample
	base := filepath.Join(dir, s.Name)

	// Write .skink
	if err := os.WriteFile(base+".skink", []byte(s.Code), 0644); err != nil {
		return err
	}

	// Write .md
	if err := os.WriteFile(base+".md", []byte(s.Markdown), 0644); err != nil {
		return err
	}

	// Write _test.skink
	if s.Test != "" {
		if err := os.WriteFile(base+"_test.skink", []byte(s.Test), 0644); err != nil {
			return err
		}
	}

	return nil
}

// makeName creates a unique sample name like "hello_world_0001".
func makeName(subcat string, id int) string {
	return fmt.Sprintf("%s_%04d", subcat, id)
}

// makeModule creates a valid Skink module name from a sample name.
func makeModule(name string) string {
	return strings.ReplaceAll(name, "-", "_")
}

// mdDoc creates a markdown documentation file for a sample.
func mdDoc(title, description, codeSnippet string) string {
	return fmt.Sprintf("# %s\n\n%s\n\n## Code\n\n```skink\n%s\n```\n", title, description, codeSnippet)
}

// testFile creates a test file that imports the sample module.
func testFile(moduleName, testBody string) string {
	return fmt.Sprintf(`module %s_test

import "%s"
import "testing"

%s
`, moduleName, moduleName, testBody)
}

// header returns the module declaration + optional imports.
func header(moduleName string, imports ...string) string {
	var sb strings.Builder
	fmt.Fprintf(&sb, "module %s\n", moduleName)
	if len(imports) > 0 {
		sb.WriteString("\n")
		for _, imp := range imports {
			fmt.Fprintf(&sb, "import %q\n", imp)
		}
	}
	sb.WriteString("\n")
	return sb.String()
}
