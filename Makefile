NAME=dissertation
TEXSRCS=$(wildcard chapter-*/body.tex)
BIBTEXSRCS=all.bib
USE_PDFLATEX=1

include /Users/bsweene/.local/share/latex-mk/latex.gmk
