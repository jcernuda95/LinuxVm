#!/bin/bash

if [ "$#" -ne 3 ]; then
	echo "You input $# paremeterswhen 3 are needed"
	exit 1
fi

i=$1
j=$2
k=$3

if ! ([[ "$i" =~ ^[0-9]+$ ]] && [[ "$j" =~ ^[0-9]+$ ]] && [[ "$k" =~ ^[0-9]+$ ]]); then
	echo "Arguments must be positive integers"
	exit 1
fi

for x in $(seq 0 $i ); do
	for y in $(seq 0 $j ); do
		for z in $(seq 0 $k ); do
			echo -e "Iteration with values i:$x, j:$y, k:$z\n"
		done
	done
done

