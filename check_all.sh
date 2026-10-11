#!/bin/bash
# Type-check all generated .skink samples with skink -check
# Reports pass/fail counts and lists failures.

PASS=0
FAIL=0
FAILED_FILES=""

for f in $(find . -name '*.skink' -not -name '*_test.skink' | sort); do
    output=$(skink -check "$f" 2>&1)
    if echo "$output" | grep -q "type check passed"; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        FAILED_FILES="$FAILED_FILES\n  FAIL: $f\n    $output"
    fi
done

echo "=== Type Check Results ==="
echo "Passed: $PASS"
echo "Failed: $FAIL"
if [ $FAIL -gt 0 ]; then
    echo -e "\nFailed files:$FAILED_FILES"
fi
