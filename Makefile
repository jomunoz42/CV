TYPST ?= typst
SOURCE := src/main.typ
OUTPUT := dist/joao_munoz_cv.pdf

all: build

build: $(OUTPUT)

$(OUTPUT): $(shell find src -type f -name '*.typ' | sort)
	@mkdir -p dist
	$(TYPST) compile $(SOURCE) $(OUTPUT)

watch:
	@mkdir -p dist
	$(TYPST) watch $(SOURCE) $(OUTPUT)

clean:
	rm -f $(OUTPUT)

.PHONY: all build watch clean