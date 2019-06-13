#!/bin/sh
while read sid name init
do
    echo `egrep "$sid" marks | cut -d' ' -f2` $name $init
done < students
