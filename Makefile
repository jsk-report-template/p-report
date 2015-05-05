QKC = nkf -w8 --overwrite
LATEX =  platex -kanji=utf8 -src-specials -interaction=nonstopmode
BIBTEX = pbibtex -kanji=utf8
DVIPDF = dvipdfmx

.SUFFIXES: .txt .tex .bbl .bb .jpg
FILE=p-report

JPEG_FILES = $(shell find fig -name *.jpg)
BB_FILES = $(patsubst %.jpg,%.bb,$(JPEG_FILES))

.jpg.bb:
	ebb -b ./$< ; if [ -e $(@F) ]; then mv $(@F) $@; fi

all: $(FILE).pdf

nj: $(BB_FILES)
	$(LATEX) $(FILE).tex

jb:
	$(BIBTEX) $(FILE)

$(FILE).dvi: $(FILE).tex
	make nj
	make jb
	make nj
	make nj
	@echo "========================================"
	@grep War *.log | cat
	@echo "========================================"


$(FILE).pdf: $(FILE).dvi
	$(DVIPDF) $(FILE).dvi

clean:
	rm -f *~ *.aux *.log *.bbl *.blg *.pbm fig/*.bb

distclean: clean
	rm -f *.pdf *.dvi
