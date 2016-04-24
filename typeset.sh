#!/bin/bash

# Build presentation
pdflatex main.tex
pdflatex main.tex

# Remove unnecessary files
rm *.aux *.log *.nav *.out *.snm *.toc *.vrb

# Open presentation
if which xdg-open &> /dev/null; then
    xdg-open main.pdf # GNU/Linux
else
    open main.pdf # Mac OS X
fi
