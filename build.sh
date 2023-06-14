#!/bin/sh

files=$(ls *.md | sed -e 's/.md$//g')

rm *.html

for i in $files:
do
    # fix some weird errors
    name=$(echo $i | tr -d :)
    pandoc $name.md -f markdown -t html -s --metadata title="PBL3 Group I website" -o $name.html -c simple-v1.css
done
