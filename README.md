# cs101-cv-template

LaTeX resume template.
 Edit `resume.latex` and replace the placeholders with your own details.

## Prerequisites

- `make` (GNU Make; on Windows use MSYS2, Git for Windows, or `choco install make`)
- A LaTeX distribution providing `pdflatex` (e.g. [MiKTeX](https://miktex.org/), [TeX Live](https://www.tug.org/texlive/))

Both must be on your `PATH`.

## Build

```bash
make
```

Produces `resume.pdf`. Clean generated files with `make clean` (aux files) or `make cleanall` (aux files + PDF).

## Release

CI builds the PDF on every push/PR (as a workflow artifact, not committed).
To publish a versioned PDF, push a tag:

```bash
git tag v1.0.0
git push origin v1.0.0
```

This triggers `.github/workflows/build.yml` to attach `resume.pdf` to a new GitHub Release.
