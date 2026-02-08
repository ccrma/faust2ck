#!/bin/bash

REPORT="test_report.txt"
echo "Test Suite Report" > "$REPORT"
echo "Date: $(date)" >> "$REPORT"
echo "========================================" >> "$REPORT"

passed=0
failed=0

# Iterate over all generated examples
# We look for *-test.ck files in builds/*/_examples/
files=$(find builds -name "*-test.ck" | sort)

if [ -z "$files" ]; then
    echo "No test files found. Did you run 'make'?" | tee -a "$REPORT"
    exit 1
fi

for test_file in $files; do
    echo "Running: $test_file"
    
    # Run chuck with --silent flag to suppress audio output
    # The generated test files should automatically terminate after 5 seconds
    # We capture both stdout and stderr
    output=$(chuck --silent  "$test_file" 2>&1)
    status=$?
    
    if [ $status -eq 0 ]; then
        echo "[PASS] $test_file" >> "$REPORT"
        ((passed++))
    else
        echo "[FAIL] $test_file (Exit code: $status)" >> "$REPORT"
        echo "       Output: $output" >> "$REPORT"
        ((failed++))
    fi
done

echo "========================================" >> "$REPORT"
echo "Summary:" >> "$REPORT"
echo "Passed: $passed" >> "$REPORT"
echo "Failed: $failed" >> "$REPORT"

echo "Done. Report saved to $REPORT"
