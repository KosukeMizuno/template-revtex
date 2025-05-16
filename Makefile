all:
	nix develop --command latexmk -pdf ./src/main.tex
clean:
	nix develop --command latexmk -c