# João Muñoz CV

This repository contains the code-driven Typst version of João Muñoz's one-page CV. `current_cv.pdf` is the original visual/content reference; the editable source lives under `src/` and compiles to `dist/joao_munoz_cv.pdf`.

## Requirements

- [Typst CLI](https://github.com/typst/typst/releases) 0.15.1 or newer
- GNU Make (optional; the Typst command can also be run directly)
- Ubuntu Sans, an open-source font commonly packaged with Ubuntu. Typst can use a system installation of the font.

Install Typst using the prebuilt binary for your platform from the official release page and place `typst` on your `PATH`. Package-manager alternatives include `brew install typst` on macOS, `winget install --id Typst.Typst` on Windows, or `cargo install --locked typst-cli` with Rust installed.

The reference PDF uses embedded Futura LT Pro, Now, and Aileron fonts. Those files are not redistributed here. Ubuntu Sans is the documented open-source substitute used by the Typst source; this keeps the repository portable while retaining similar proportions and tone.

## Build

```sh
make
```

Or invoke Typst directly:

```sh
typst compile --root . src/main.typ dist/joao_munoz_cv.pdf
```

For live editing:

```sh
typst watch --root . src/main.typ dist/joao_munoz_cv.pdf
```

The generated document is `dist/joao_munoz_cv.pdf`.

## Repository structure

```text
.
├── current_cv.pdf             # authoritative reference
├── assets/icons/              # embedded SVG icons used by the CV
├── src/
│   ├── main.typ               # document assembly
│   ├── data.typ               # CV content and structured records
│   ├── style.typ              # page, type, color, and circuit decoration
│   ├── components.typ         # reusable entry/heading renderers
│   └── sections/              # section-level modules
├── dist/                      # generated PDF output
├── .github/workflows/         # compile check and PDF artifact
├── Makefile
└── requirements.txt
```

Edit contact details, experience, education, projects, skills, and languages in `src/data.typ`. Section modules control section-specific layout, reusable patterns live in `src/components.typ`, and document-wide visual settings live in `src/style.typ`. Contact and project-link symbols are local SVG assets under `assets/icons/`, so the PDF does not depend on symbol fonts or emoji glyph support.

`requirements.txt` is intentionally empty apart from a note: the build has no Python dependency, and Typst is installed as a standalone CLI rather than through pip.
