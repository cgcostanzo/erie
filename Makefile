.PHONY: main clean FORCE

# Theme files live in the Quarto extension folder; tell TeX where to find them.
export TEXINPUTS := ./_extensions/erie//:

main: presentation.pdf

%.pdf: FORCE
	latexmk -pdflatex='lualatex -interaction nonstopmode' -pdf $(patsubst %.pdf,%.tex,$@)

clean:
	latexmk -pdf -C
