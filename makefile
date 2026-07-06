PDFV=evince
TEXC=xelatex
BIBC=biber
BASE=tesis

build:
	-$(TEXC) -interaction=nonstopmode $(BASE).tex > /dev/null
	-$(BIBC) $(BASE).bcf 
	-$(TEXC) -interaction=nonstopmode $(BASE).tex > /dev/null
	-$(TEXC) -interaction=nonstopmode $(BASE).tex > /dev/null

watch:
	latexmk -pvc -pdfxe -interaction=nonstopmode $(BASE).tex

clean:
	rm -rf $(BASE).pdf
	rm -rf $(BASE).bbl
	rm -rf $(BASE).bcf
	rm -rf $(BASE).blg
	rm -rf $(BASE).lof
	rm -rf $(BASE).log
	rm -rf $(BASE).lot
	rm -rf $(BASE).run.xml
	rm -rf $(BASE).toc
	rm -rf $(BASE).aux
	rm -rf $(BASE).fdb_latexmk
	rm -rf $(BASE).fls
	rm -rf $(BASE).xdv

view:
	$(PDFV) ./$(BASE).pdf 1>/dev/null 2>/dev/null




