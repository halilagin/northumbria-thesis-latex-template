FILE='thesis'

rm -rf *.blg 
rm -rf *.out 
rm -rf *.bbl 
rm -rf *.log
rm -rf *.ind
rm -rf *.ilg
rm -rf *.lot
rm -rf *.lof
rm -rf *.ind
rm -rf *.idx
rm -rf *.aux
rm -rf *.toc
rm -f $FILE.pdf

pdflatex -shell-escape $FILE.tex
pdflatex -shell-escape $FILE.tex
makeindex $FILE
bibtex $FILE
pdflatex -shell-escape $FILE.tex
pdflatex -shell-escape $FILE.tex
