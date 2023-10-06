#!/usr/bin/env sh

for PU in *.pu; do
    PNG=$(basename $PU .pu).png
    SVG=$(basename $PU .pu).svg
    if [ ! -e $PNG -o $PU -nt $PNG ]; then
        plantuml $PU
        optipng $PNG &
    fi
    if [ ! -e $SVG -o $PU -nt $SVG ]; then
        plantuml -tsvg $PU
        scour -q $SVG tmp.svg
        mv -f tmp.svg $SVG
    fi
done
#convert component-diagram.png -size 1920x1920 -gravity center -background white -extent 1920x1920 output.png
