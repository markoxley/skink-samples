#!/bin/bash
# Type-check all _test.skink files with skink -check.
# Test files import their corresponding sample module, so they must be
# checked from the same directory.

PASS=0
FAIL=0
FAILED_FILES=""

for f in $(find . -name '*_test.skink' | sort); do
    dir=$(dirname "$f")
    output=$(cd "$dir" && skink -check "$(basename "$f")" 2>&1)
    if echo "$output" | grep -q "type check passed"; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        FAILED_FILES="$FAILED_FILES\n  FAIL: $f\n    $output"
    fi
done

echo "=== Test File Type Check Results ==="
echo "Passed: $PASS"
echo "Failed: $FAIL"
if [ $FAIL -gt 0 ]; then
    echo -e "\nFailed files:$FAILED_FILES"
fi
