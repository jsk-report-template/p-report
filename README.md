# p-report

Latex template for short thesis

[![Build Status](https://travis-ci.org/furushchev/p-report-template.svg)](https://travis-ci.org/furushchev/p-report-template)

### 1. Prerequisities

```bash
$ sudo apt-add-repository ppa:texlive-backports/ppa
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install texlive-lang-cjk
```

### 2. Edit `p-report.tex`

### 3. Make pdf

```bash
$ make
```

### 4. Release pdf

1. fetch github token, and edit `.travis.yml`
2. Tag by `git --tag <your tag>`
3. `git push --tag`
4. you can check pdf in `releases` page.

### Optional. cleaning

```bash
$ make clean
# or
$ make wipe
```
