#!/bin/bash

SCR_IMG=".screentemp.jpg"
TEMP_TXT=".screentext.txt"

gnome-screenshot -a --file=$SCR_IMG

tesseract $SCR_IMG $TEMP_TXT -l eng

cat $TEMP_TXT* | xsel -b

rm $SCR_IMG $TEMP_TXT*
