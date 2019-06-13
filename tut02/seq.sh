#!/bin/sh

if [ $# -eq 1 ]
then
    first=1
    increment=1
    last=$1
elif test $# -eq 2
then
    first=$1
    increment=1
    last=$2
elif test $# -eq 3
then
    first=$1
    increment=$2
    last=$3
else

fi

for i in `seq $first $increment $last`
do
    echo "$i"
done
