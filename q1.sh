#!/bin/bash
x=`cat $1 | wc -l`
n=`expr $x % 2`
if [ $n -eq 1 ]
then
	x=`expr $x / 2`
	x=`expr $x + 1`
else
	x=`expr $x / 2`
fi
awk "NR == $x" $1
