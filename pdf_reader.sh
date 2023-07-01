#!/bin/sh

while [ $pdf -z ]
do 
category=$(ls ~/Documents/pdfs | dmenu -i -l 100 -fn Hack-15) && cd ~/Documents/pdfs/"$category" 
[ $category -z ] || pdf=$(ls ~/Documents/pdfs/"$category" | dmenu -i -l 100 -fn Hack-15) 
[ $category -z ] && [ $pdf -z ] && exit
done

zathura ~/Documents/pdfs/"$category"/"$pdf"
