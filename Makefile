.PHONY: test docs

test:
	./test-all.sh

docs:
	carp -x gendocs.carp
