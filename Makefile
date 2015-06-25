BUILDDIR=build
OS=$(shell uname -s)
FILE=p-report
ifeq ($(OS), Linux)
	OPEN=evince #open
endif
ifeq ($(OS), Darwin)
	OPEN=open
endif

COPYFILES= $(BUILDDIR)/$(FILE).tex $(BUILDDIR)/$(FILE).bib $(BUILDDIR)/$(FILE).ps $(BUILDDIR)/preamble.tex $(BUILDDIR)/preport.cls $(BUILDDIR)/fig

all: $(FILE).pdf

$(FILE).pdf: $(BUILDDIR)/$(FILE).pdf $(COPYFILES)
	cp -f $(BUILDDIR)/$(FILE).pdf $(FILE).pdf
	$(OPEN) $(FILE).pdf

$(BUILDDIR)/$(FILE).pdf: $(COPYFILES)
	cd $(BUILDDIR); make

$(BUILDDIR)/$(FILE).tex: $(FILE).tex
$(BUILDDIR)/$(FILE).bib: $(FILE).bib
$(BUILDDIR)/$(FILE).ps: $(FILE).ps
$(BUILDDIR)/preamble.tex: preamble.tex
$(BUILDDIR)/preport.cls: preport.cls
$(BUILDDIR)/fig:
	cp -rf fig $(BUILDDIR)/fig

$(BUILDDIR)/%:
	cp -f $< $@

clean:
	cd $(BUILDDIR); make clean

wipe:
	cd $(BUILDDIR); make wipe
	rm -f $(FILE).pdf
	rm -rf $(COPYFILES)
