#!/bin/sh

mlalias cs2041.thu09-strings |
egrep -v ":" |
sed 's/ //g' | 
egrep "." |
while read zid
do
    acc "$zid" |
    egrep "_Student" |
    cut -d: -f2 |
    sed -E 's/[^ ]+_Tutor[^ ]+//' |
    egrep -o "[A-Z]{4}[0-9]{4}"
done |
sort |
uniq -c |
sort -nr
