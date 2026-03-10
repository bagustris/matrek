MAIN = matrek
SOURCES = $(MAIN).tex preamble.tex pengantar.tex bab1.tex bab2.tex bab3.tex bab4.tex bab5.tex bab6.tex bab7.tex references.bib
HASH_FILE = .sources.hash

.PHONY: all clean

all:
	@current=$$(cat $(SOURCES) | md5sum | cut -d' ' -f1); \
	stored=$$(cat $(HASH_FILE) 2>/dev/null); \
	if [ ! -f $(MAIN).pdf ] || [ "$$current" != "$$stored" ]; then \
		pdflatex $(MAIN); \
		biber $(MAIN); \
		pdflatex $(MAIN); \
		pdflatex $(MAIN); \
		echo "$$current" > $(HASH_FILE); \
	else \
		echo "Sources unchanged, skipping build."; \
	fi

clean:
	rm -f *.aux *.log *.toc *.lof *.lot *.out *.bbl *.bcf *.blg *.run.xml *.synctex.gz $(HASH_FILE)
