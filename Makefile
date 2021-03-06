TEXSRCS=$(wildcard chapter-*/body.tex)
MAIN=dissertation.tex
MISC=$(wildcard misc/*.tex)
BIBTEXSRCS=all.bib

all : pdf

clean:
	latexmk -C
	rm dissertation.bbl

pdf : $(TEXSRCS) $(MAIN) $(BIBTEXSRCS) $(MISC)
	latexmk -pdf -pdflatex="pdflatex --shell-escape %O %S"
