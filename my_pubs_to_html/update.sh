#!/bin/bash

bibtool -- 'sort.format={%d(date)}' -S -i my_pubs.bib -o my_pubs_sorted.bib

pandoc --filter=pandoc-citeproc --csl elsevier-vancouver.csl --standalone my_pubs.md -o my_pubs.html
