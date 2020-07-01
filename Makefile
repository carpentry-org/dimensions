.PHONY: test docs

test:
	./test-all.sh

# Since Carp uses a type's name as a filename, we need to alter
# Index.html here to avoid serving it as a homepage.
docs:
	carp -x gendocs.carp && \
	mv docs/Index.html docs/index-type.html && \
	mv docs/dimensions_index.html docs/index.html && \
	sed -i '' 's/Index.html/index-type.html/g' docs/*
