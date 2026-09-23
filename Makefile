TYPST ?= typst
SOURCE := src/main.typ
OUTPUT := dist/joao_munoz_cv.pdf
SOURCES := $(shell find src -type f -name '*.typ' | sort)
ASSETS := $(shell find assets -type f 2>/dev/null | sort)

all: build

build: $(OUTPUT)

$(OUTPUT): $(SOURCES) $(ASSETS)
	@mkdir -p dist
	$(TYPST) compile --root . $(SOURCE) $(OUTPUT)

watch:
	@mkdir -p dist
	$(TYPST) watch --root . $(SOURCE) $(OUTPUT)

clean:
	rm -f $(OUTPUT)

.PHONY: all build watch clean
