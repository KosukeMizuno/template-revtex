build:
	nix develop --command latexmk -pdf ./src/main.tex
clean:
	nix develop --command latexmk -c


install:
	nix develop

# arXiv 提出用ファイル一式の生成
build_arxiv:
	nix develop --command arxiv_latex_cleaner ./src --verbose