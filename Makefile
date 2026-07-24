LATEX ?= pdflatex
LATEXFLAGS ?= -interaction=nonstopmode -halt-on-error

MAIN := resume
AUX_EXTENSIONS := aux log out toc fls fdb_latexmk synctex.gz
AUX_FILES := $(foreach ext,$(AUX_EXTENSIONS),$(MAIN).$(ext))

ifeq ($(OS),Windows_NT)
	RM := del /F /Q
else
	RM := rm -f
endif

.DEFAULT_GOAL := all

.PHONY: all clean cleanall

all: $(MAIN).pdf

%.pdf: %.latex
	$(LATEX) $(LATEXFLAGS) $<
	$(LATEX) $(LATEXFLAGS) $<

clean:
	-$(RM) $(AUX_FILES)

cleanall: clean
	-$(RM) $(MAIN).pdf
