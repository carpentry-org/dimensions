# Run all unit tests (using the test suite)
for f in test/*.carp; do
  echo "Running tests in $f"
  carp -x --log-memory $f
  echo
done
