#!/bin/bash


server="google.com"
input_file="network-test-machine-list.txt"
output_file="network-test-latency.txt"

#Clean file between retrials
> $output_file
while read p; do
	output="$(ping -c 3 "$p" | tail -1 | awk '{print $4}' | awk -F '/' '{print$2}')"
	echo "$p $output" >> $output_file
done < $input_file
