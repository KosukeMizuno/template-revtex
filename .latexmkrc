$root_doc = 'src/main.tex';
$out_dir = 'src';
$aux_dir = 'src/tempfiles';

$ENV{'BIBINPUTS'} = 'src//:';

$pdf_mode = 1;
$bibtex_use = 1;
$interaction = 'nonstopmode';
$synctex = 1;
$clean_ext = 'aux bbl blg log out toc lof lot fls fdb_latexmk synctex.gz';
$silent = 0;
