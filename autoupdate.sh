#!/bin/sh
chsum1=""

while [[ true ]]
do
    chsum2=`find ./*.tex -type f -exec md5 {} \;`
    #echo $chsum2
    if [[ $chsum1 != $chsum2 ]] ; then
        xelatex -halt-on-error diploma.tex
        chsum1=$chsum2
    fi
    sleep 1
done
