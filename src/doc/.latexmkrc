## Latexmk initialization file.
## https://raw.githubusercontent.com/dokempf/UseLatexMk/dae39130f1e585b3970ff80edbf8acb227ba9fab/latexmkrc.cmake
$ENV{'TZ'}='America/Lima';

# Write pdflatex-generated auxiliary files (aux, log, etc.) in a separate folder
# to keep working directory tidy
#$aux_dir = 'build';

# Compile *.tex into pdf using pdflatex
$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;

# Run pdflatex with the following options enabled:
# -synctex=1:
# -interaction=nonstopmode:
# -file-line-error:
$pdflatex = 'lualatex %O %S -shell-escape -interaction=batchmode -draftmode';
$pdflatex = 'lualatex %O %S -shell-escape -interaction=batchmode -draftmode';
$pdflatex = 'lualatex %O %S -shell-escape -interaction=batchmode -synctex=1';

$clean_ext = "aux fdb_latexmk fls lof log lol run.xml out toc bbl blg bcf";
