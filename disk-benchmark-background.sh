#!/bin/bash


command="{ time dd bs=1G count=10 if=/dev/zero of=/root/test conv=fdatasync > disk-benchmark-background-log.txt 2>&1; } >> disk-benchmark-background-log.txt 2>&1 &"

screen -dmS "Disk-Benchmark";
screen -S "Disk-Benchmark" -X stuff "$command\n";

