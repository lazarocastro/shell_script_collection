#!/bin/bash


for file in *;
do
newname=`echo "$file" | iconv -t 'ascii//TRANSLIT'`


mv "$file" "$newname"


done

for i in *' '* ; do mv "$i" "${i// /_}" ; done

