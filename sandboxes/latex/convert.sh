#!/bin/bash

# Prevent LaTeX from reading/writing files in parent directories
echo 'openout_any = p\nopenin_any = p' > /tmp/texmf.cnf
TEXMFCNF='/tmp:'

echo "\\documentclass[12pt]{article}
\\usepackage{amsmath}
\\usepackage{amssymb}
\\usepackage{amsfonts}
\\usepackage{xcolor}
\\usepackage{siunitx}
\\usepackage[utf8]{inputenc}
\\thispagestyle{empty}
\\begin{document}
\\begin{math}
$(cat in.tex)\
\\end{math}
\\end{document}" > /tmp/equation.tex

# Compile .tex file to .dvi file. Timeout kills it after 5 seconds if held up
timeout 5 latex -no-shell-escape -interaction=nonstopmode -halt-on-error -output-directory=/tmp /tmp/equation.tex > /tmp/convert.log 2>&1
if [ $? -ne 0 ]; then 
    cat /tmp/convert.log
    exit 1
fi

# Convert .dvi to .svg file. Timeout kills it after 5 seconds if held up
if [ -z ${OUTPUT_SCALE+x} ]; then OUTPUT_SCALE='1.0'; fi
timeout 5 dvisvgm --no-fonts --scale=$OUTPUT_SCALE --exact -v 0 -o /tmp/equation.svg /tmp/equation.dvi
if [ $? -ne 0 ]; then 
    exit 1
fi

cat /tmp/equation.svg