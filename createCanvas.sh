#!/bin/bash
#Create empty canvas. We know we have 221 colors (not counting transparent). so we can make a 17x13 canvas.
convert -size 17x13 xc:transparent punk_colors.png

#First, we sort column 1, which is occurences, in reverse order (-r).
#then, we save the column 3, which is the hex values, to hexonly.txt while omitting the first 2 lines (title & transparent color)
csvsort -c 1 -r colors_magick.csv | csvcut -c 3 -K 2 > hexonly.txt

#For each hex value, we put it on the canvas from left to right and from top to bottom
i=0
while IFS= read -r line
do
    x=$(($i%17));
    y=$(($i/17));
    echo "Adding color: $line to point $x $y";
    convert punk_colors.png -draw "fill $line color $x,$y point" punk_colors.png;
    i=$((i+1));
done < hexonly.txt;

rm hexonly.txt
