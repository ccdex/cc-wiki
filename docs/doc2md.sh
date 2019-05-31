#!/bin/sh
#*.txt/*doc -> *md

#yum install -y unoconv pandoc

unoconv -f html -o file.html $1
pandoc -f html -t markdown -o file.md file.html
rm file.html
