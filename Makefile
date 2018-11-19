TEXC = pdflatex

FILE = sbc-template
FINAL = Protocolo_SSNR

SRC = images/*.png images/*.jpg images/*.pdf

.PHONY: all pdf final view viewFinal clean cleanFinal

all: pdf view

final: $(FILE).pdf
	cp $(FILE).pdf $(FINAL).pdf

viewFinal: $(FINAL).pdf
	evince $(FINAL).pdf

view: $(FILE).pdf
	evince $(FILE).pdf

pdf: $(FILE).pdf

$(FILE).pdf: $(FILE).tex $(wildcard $(SRC))
	$(TEXC) $(FILE).tex
	$(TEXC) $(FILE).tex

clean:
	rm -f $(FILE).pdf
	rm -f $(FILE).aux
	rm -f $(FILE).bbl
	rm -f $(FILE).blg
	rm -f $(FILE).dvi
	rm -f $(FILE).log
	rm -f $(FILE).nav
	rm -f $(FILE).out
	rm -f $(FILE).snm
	rm -f $(FILE).toc

cleanFinal:
	rm -f $(FINAL).pdf
