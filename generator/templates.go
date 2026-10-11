package main

// allTemplates returns the full list of templates for the vertical slice.
func allTemplates() []Template {
	var t []Template

	// === basics ===
	t = append(t, basicsHelloWorld())
	t = append(t, basicsVariableDecl())

	// === types ===
	t = append(t, typesIntVariants())
	t = append(t, typesCasts())

	// === functions ===
	t = append(t, functionsAdd())
	t = append(t, functionsMultiReturn())

	// === control-flow ===
	t = append(t, controlFlowIfElse())
	t = append(t, controlFlowForLoop())

	// === structs ===
	t = append(t, structsPoint())
	t = append(t, structsCounter())

	// === enums ===
	t = append(t, enumsStatus())

	// === generics ===
	t = append(t, genericsSwap())
	t = append(t, genericsStack())

	// === collections ===
	t = append(t, collectionsArrayOps())
	t = append(t, collectionsMapOps())

	// === error-handling ===
	t = append(t, errorHandlingDivide())
	t = append(t, errorHandlingPropagation())

	// === pointers ===
	t = append(t, pointersSwap())

	// === concurrency ===
	t = append(t, concurrencyChannel())
	t = append(t, concurrencySpawn())

	// === pattern-matching ===
	t = append(t, patternMatchEnum())
	t = append(t, patternMatchRange())

	// === templates-traits ===
	t = append(t, templatesTraitsWriter())

	// === services ===
	t = append(t, servicesLogger())
	t = append(t, servicesStatic())

	// === rulesets ===
	t = append(t, rulesetsDynamic())
	t = append(t, rulesetsStatic())

	// === string-ops ===
	t = append(t, stringOpsConcat())
	t = append(t, stringOpsStrModule())

	// === math-ops ===
	t = append(t, mathOpsFunctions())
	t = append(t, mathOpsArithmetic())

	// === file-io ===
	t = append(t, fileIOReadWrite())

	// === web ===
	t = append(t, webHelloServer())

	// === stdlib ===
	t = append(t, stdlibJSON())
	t = append(t, stdlibTime())

	// === real-world ===
	t = append(t, realWorldCalculator())

	// === modules ===
	t = append(t, modulesMathUtils())

	// === multi-feature ===
	t = append(t, multiFeatureGenericQueue())
	t = append(t, multiFeatureErrorJSONParser())

	// === edge-cases ===
	t = append(t, edgeCaseUnusedVar())
	t = append(t, edgeCaseTypeMismatch())

	return t
}
