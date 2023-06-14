#!/bin/sh

files=$(ls *.md | sed -e 's/.md$//g')

for i in $files:
do
    # fix some weird errors
    name=$(echo $i | tr -d :)
    pandoc $name.md -f markdown -t html -s -o tmp-$name.html -c simple-v1.css

    # if [ "$i" = "final-idea" ]; then
    #     cp to-add.html index.html
    #     cat tmp-$i.html >> index.html
    # else
    #     cp to-add.html "$i.html"
    #     cat tmp-$i.html >> "$i.html"
    # fi

done

#rm tmp-*.html
