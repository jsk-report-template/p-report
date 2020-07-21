# p-report
[![Build Status](https://travis-ci.org/jsk-report-template/p-report.svg?branch=master)](https://travis-ci.org/jsk-report-template/p-report)

Latex template for p-report

### 1. Edit LaTeX files

### 2. Make pdf

```bash
make
# or
latexmk -pvc p-report
```

### Optional. Convert Japanese punctuations

```bash
$ make pub
# or
$ make publish
# will convert 「、」「。」 to 「，」「．」 in *.tex
# Original files are backed up as *.tex.orig
```

### Optional. cleaning

```bash
make clean
# or
make wipe
```
