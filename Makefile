MAIN = matrek

.PHONY: all clean $(MAIN).pdf

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex preamble.tex pengantar.tex bab1.tex bab2.tex bab3.tex bab4.tex bab5.tex bab6.tex bab7.tex references.bib
	pdflatex $(MAIN)
	biber $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

clean:
	rm -f *.aux *.log *.toc *.lof *.lot *.out *.bbl *.bcf *.blg *.run.xml *.synctex.gz
