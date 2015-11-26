###########################################################
# Thesis Generator for Creative Informatics
# Author: Yuki Furuta <furushchev@jsk.imi.i.u-tokyo.ac.jp>
# Date: 2015/11/12
###########################################################


.PHONY: all open clean wipe forever preinstall
OS=$(shell uname -s)
ifeq ($(OS), Linux)
	PREINSTALL=sudo apt-get install -y omake fam
endif
ifeq ($(OS), Darwin)
	PREINSTALL=brew install opam && opam init && eval `opam config env` && opam install omake
endif

all: preinstall
	omake

forever: preinstall
	omake -P

open: preinstall
	omake preview

clean: preinstall
	omake clean

wipe: clean
	rm -f .omakedb* *.omc

preinstall:
	@if ! which omake > /dev/null; then $(PREINSTALL); fi
