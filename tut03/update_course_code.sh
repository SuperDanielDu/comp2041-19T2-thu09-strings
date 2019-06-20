#!/bin/sh

for arg in "$@"
do
    if test -d "$arg"
    then
        $0 "$arg"/*
        # echo "$0 $arg"
    else
        out=`sed s/2041/2042/g < "$arg"`
        echo "$out" > "$arg"
    fi
done
