# Kleines Makefile zum Erzeugen eines
# PDF-Dokumentes aus einer Latex-Datei.

DOKUMENT = IISM_vorlage_beamer


all: $(DOKUMENT).pdf


$(DOKUMENT).pdf: $(DOKUMENT).tex
	pdflatex $(DOKUMENT).tex
	biber $(DOKUMENT).bcf
	pdflatex $(DOKUMENT).tex
	pdflatex $(DOKUMENT).tex
silent:
	echo "Hier sieht man nur diesen Text."

nixsilent:
	echo "Hier wird das Kommando mit ausgegeben."


.PHONY: all nixsilent silent
.SILENT: all silent

# ENDE
