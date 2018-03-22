#!/bin/bash

celllist="celllist.txt"

if [ ! -d "$2" ]
then
	mkdir $2
	echo "--- Output directory doesn't exist..."
	echo "--- Create output directory..."
fi

echo "--- Output directory: $2"

for ckt in $(cat $celllist)
do
	sed '/\/\*.*\*\//d' $1/$ckt.syn_y.v > $2/$ckt.syn_y2.v
done
