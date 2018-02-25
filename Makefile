OUTPUT = Projektdokumentation_PREN2.pdf

%.pdf: %.tex
	pdflatex -interaction=nonstopmode -halt-on-error $<
	biber *.bcf
	pdflatex -interaction=nonstopmode -halt-on-error $<
	pdflatex -interaction=nonstopmode -halt-on-error $<

build: $(OUTPUT)

open:
	xdg-open $(OUTPUT)

clean:
	rm *.aux *.bbl *.bcf *.blg *.log *.pdf *.xml *.toc *.lof *.lot *.out

.PHONY: open clean
