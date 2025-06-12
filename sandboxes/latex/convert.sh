#!/bin/bash

# Compile the LaTeX input file (in.tex)
# and convert it to SVG format (out.svg).

# Prevent LaTeX from reading/writing files in parent directories
echo 'openout_any = p\nopenin_any = p' > /tmp/texmf.cnf
TEXMFCNF='/tmp:'

echo "\\documentclass[12pt]{article}
\\usepackage{amsmath}
\\usepackage{amssymb}
\\usepackage{amsfonts}
\\usepackage{xcolor}
\\usepackage[utf8]{inputenc}
\\thispagestyle{empty}
\\begin{document}
$(cat in.tex)\
\\end{document}" > /tmp/out.tex

# Compile .tex file to .dvi file with timeout.
timeout 3 latex -no-shell-escape -interaction=nonstopmode -halt-on-error -output-directory=/tmp /tmp/out.tex > /tmp/convert.log 2>&1
if [ $? -ne 0 ]; then 
    cat /tmp/convert.log
    exit 1
fi

# Convert .dvi to .svg file with timeout.
if [ -z ${OUTPUT_SCALE+x} ]; then OUTPUT_SCALE='1.0'; fi
timeout 3 dvisvgm --no-fonts --scale=$OUTPUT_SCALE --exact -v 0 -o /tmp/out.svg /tmp/out.dvi
if [ $? -ne 0 ]; then 
    exit 1
fi

cat /tmp/out.svg
