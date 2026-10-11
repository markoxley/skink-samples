package main

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
)

// JSONL entry types for fine-tuning datasets.

type instructionCompletion struct {
	Instruction string `json:"instruction"`
	Output      string `json:"output"`
}

type codeExplanation struct {
	Code       string `json:"code"`
	Explanation string `json:"explanation"`
}

type errorFixing struct {
	Instruction string `json:"instruction"`
	Output      string `json:"output"`
}

func writeFineTune(samples []Sample) error {
	dir := filepath.Join(outputRoot, "finetune")
	if err := os.MkdirAll(dir, 0755); err != nil {
		return err
	}

	// 4a. Instruction-completion pairs (from all non-edge-case samples)
	var icEntries []instructionCompletion
	for _, s := range samples {
		if s.IsEdgeCase {
			continue
		}
		if s.Instruction == "" || s.Code == "" {
			continue
		}
		icEntries = append(icEntries, instructionCompletion{
			Instruction: s.Instruction,
			Output:      s.Code,
		})
	}
	if err := writeJSONL(filepath.Join(dir, "instruction_completion.jsonl"), icEntries); err != nil {
		return err
	}

	// 4b. Code-explanation pairs (from all non-edge-case samples)
	var ceEntries []codeExplanation
	for _, s := range samples {
		if s.IsEdgeCase {
			continue
		}
		if s.Explanation == "" || s.Code == "" {
			continue
		}
		ceEntries = append(ceEntries, codeExplanation{
			Code:       s.Code,
			Explanation: s.Explanation,
		})
	}
	if err := writeJSONL(filepath.Join(dir, "code_explanation.jsonl"), ceEntries); err != nil {
		return err
	}

	// 4c. Multi-feature pairs (from multi-feature category)
	var mfEntries []instructionCompletion
	for _, s := range samples {
		if s.Category != "multi-feature" {
			continue
		}
		if s.Instruction == "" || s.Code == "" {
			continue
		}
		mfEntries = append(mfEntries, instructionCompletion{
			Instruction: s.Instruction,
			Output:      s.Code,
		})
	}
	if err := writeJSONL(filepath.Join(dir, "multi_feature.jsonl"), mfEntries); err != nil {
		return err
	}

	// 4d. Error-fixing pairs (from edge-case samples)
	var efEntries []errorFixing
	for _, s := range samples {
		if !s.IsEdgeCase {
			continue
		}
		if s.Instruction == "" || s.Code == "" {
			continue
		}
		output := s.Code
		if s.FixExplain != "" {
			output = s.Code + "\n\n// Fix explanation: " + s.FixExplain
		}
		efEntries = append(efEntries, errorFixing{
			Instruction: s.Instruction,
			Output:      output,
		})
	}
	if err := writeJSONL(filepath.Join(dir, "error_fixing.jsonl"), efEntries); err != nil {
		return err
	}

	fmt.Printf("  instruction_completion.jsonl: %d entries\n", len(icEntries))
	fmt.Printf("  code_explanation.jsonl: %d entries\n", len(ceEntries))
	fmt.Printf("  multi_feature.jsonl: %d entries\n", len(mfEntries))
	fmt.Printf("  error_fixing.jsonl: %d entries\n", len(efEntries))

	return nil
}

func writeJSONL(path string, entries interface{}) error {
	f, err := os.Create(path)
	if err != nil {
		return err
	}
	defer f.Close()

	enc := json.NewEncoder(f)
	enc.SetEscapeHTML(false)

	switch slice := entries.(type) {
	case []instructionCompletion:
		for _, e := range slice {
			if err := enc.Encode(e); err != nil {
				return err
			}
		}
	case []codeExplanation:
		for _, e := range slice {
			if err := enc.Encode(e); err != nil {
				return err
			}
		}
	case []errorFixing:
		for _, e := range slice {
			if err := enc.Encode(e); err != nil {
				return err
			}
		}
	}

	return nil
}
