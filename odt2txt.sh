#!/bin/sh

mkdir odt2txt
cd odt2txt
unzip -q ../$1
sed 's/<text:p/\n&/' content.xml | sed -n 's/<text:p.*/&/p' | sed 's/<[\/]*text:span[^>]*>//g;s/<[^>]*\/>/\n/g;s/<[^\/][^>]*>//g;s/<\/[^>]*>/\n/g' > ../$1.txt
cd ..
rm -r odt2txt
