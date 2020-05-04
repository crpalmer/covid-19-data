#!/bin/bash

mkdir -p states
while read -r state
do
    echo -n "Processing $state...."
    grep ,"$state", us-counties.csv | cut -d ',' -f 1,2,5,6 > "states/$state.txt"
    echo " Done."
done < states.txt
