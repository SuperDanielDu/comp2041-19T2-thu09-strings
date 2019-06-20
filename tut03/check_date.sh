#!/bin/sh

hour=`date | cut -d' ' -f5 | cut -d: -f1`
minutes=`date | cut -d' ' -f5 | cut -d: -f2`
echo "$hour $minutes"
if [ "$hour" -ge 9  -a "$hour" -lt 17 ]
then
    exit 0
else
    exit 1
fi
