# Skink Code Samples

A collection of 603 verified Skink language code samples across 24 categories, designed for LM fine-tuning. Every sample passes `skink -check` type checking, and every test file passes type checking as well. Test files also compile and run under `skink -t`.

## Overview

- **603 code samples** across 24 categories
- **560 test files** (`_test.skink`) with unit tests
- **560 markdown docs** explaining each sample
- **4 JSONL fine-tuning datasets** (1,120 total entries)
- **100% type-check pass rate** — all `.skink` and `_test.skink` files verified with `skink -check`

## Directory Structure

```
skink-samples/
├── basics/              # Hello world, variables, print, comments (36 samples)
├── types/               # Primitives, type aliases, conversions (31 samples)
├── functions/           # Functions, closures, recursion, higher-order (36 samples)
├── control-flow/        # If/else, loops, switch, break/continue (31 samples)
├── structs/             # Struct definitions, methods, init (31 samples)
├── enums/               # Enum declarations with match (16 samples)
├── generics/            # Generic functions and structs (31 samples)
├── collections/         # Arrays, maps, sets, slices (31 samples)
├── error-handling/      # Error types, ? operator, error wrapping (31 samples)
├── pointers/            # Pointer operations, dereferencing (16 samples)
├── concurrency/         # Spawn routines, channels, spawn/await (31 samples)
├── pattern-matching/    # Match expressions, guards, ranges (31 samples)
├── templates-traits/    # Template-based duck typing (11 samples)
├── services/            # Service interface and implementation patterns (21 samples)
├── rulesets/            # Dynamic and static ruleset patterns (21 samples)
├── string-ops/          # String manipulation, interpolation (31 samples)
├── math-ops/            # Math functions, bitwise ops (31 samples)
├── file-io/             # File reading/writing (11 samples)
├── web/                 # HTTP server, routing (11 samples)
├── stdlib/              # JSON, time, regex, fmt usage (31 samples)
├── real-world/          # Practical programs (11 samples)
├── modules/             # Multi-file module projects (30 samples)
├── multi-feature/       # Combining 2+ features (21 samples)
├── edge-cases/          # Edge cases and error-fixing (21 samples)
├── finetune/            # JSONL fine-tuning datasets
│   ├── instruction_completion.jsonl  (540 entries)
│   ├── code_explanation.jsonl        (540 entries)
│   ├── multi_feature.jsonl           (20 entries)
│   └── error_fixing.jsonl            (20 entries)
├── generator/           # Go program that generates all samples
├── check_all.sh         # Type-checks all .skink files
└── check_tests.sh       # Type-checks all _test.skink files
```

## Each Sample Contains

| File | Description |
|------|-------------|
| `sample_name.skink` | The Skink source code |
| `sample_name.md` | Markdown documentation with code listing |
| `sample_name_test.skink` | Unit tests using the `testing` module |

## Verification

All samples are verified with `skink -check`:

```bash
# Type-check all .skink source files
./check_all.sh

# Type-check all _test.skink test files
./check_tests.sh
```

Current results:
- **603 `.skink` files** pass type checking (560 samples + 43 module/testing files)
- **560 `_test.skink` files** pass type checking

## Fine-Tuning Datasets

### instruction_completion.jsonl (540 entries)
Format: `{"instruction": "...", "completion": "..."}`
NL instruction → Skink code completion.

### code_explanation.jsonl (540 entries)
Format: `{"code": "...", "explanation": "..."}`
Skink code → natural language explanation.

### multi_feature.jsonl (20 entries)
Format: `{"instruction": "...", "completion": "..."}`
Multi-feature samples combining 2+ Skink features.

### error_fixing.jsonl (20 entries)
Format: `{"buggy_code": "...", "error_message": "...", "fixed_code": "...", "explanation": "..."}`
Buggy code with error → fixed code with explanation.

## Generator

The `generator/` directory contains a Go program that generates all samples from templates.

```bash
cd generator
go build -o generator .
./generator
```

The generator uses 39 templates across 24 categories, each expanded into multiple variants with different input values. It also copies a `testing.skink` module into each category directory so test files can resolve the `testing` import locally.

## Key Skink Syntax Notes

These patterns were discovered during development and are reflected in the samples:

- **Enums**: Variants are int constants accessed by bare name (e.g., `Red`, not `Color.Red`)
- **Match**: Always requires a `_ =>` wildcard arm
- **Generics**: Use `<T>` syntax; explicit instantiation like `identity<int>(42)`
- **Error propagation**: `?` operator works with nested calls; intermediate variables may trigger unused-variable errors
- **Services**: The `service` keyword is now implemented; samples demonstrate both `service` interface declarations with `for` implementations and struct-method patterns
- **Rulesets**: Static `ruleset` syntax is now implemented; samples demonstrate both static ruleset declarations (`ruleset/rule/when/action/priority`) and dynamic `RuleSource` patterns
- **Error checking**: Use `err != nil` for `error` interface, `err.message != ""` for `errors.Error` struct
- **Struct init**: Named fields only: `Point{x: 1, y: 2}`
- **Slices**: `arr[1:4]` or `arr[0..3]`; no `[:3]` syntax
- **Tests**: `module <name>_test`, `import "testing"`, `pub fn TestXxx()`, use `testing.Reset()` and `testing.Errorf()`
