#!/bin/bash
linenum=0
    filename=$1
    while read empid name age ; do
	((linenum++))
	if [ $linenum -eq 1 ] ; then
	    continue
        fi
        if [ $age -gt 35 ]; then
	    echo "$name"
	fi
done <$filename
