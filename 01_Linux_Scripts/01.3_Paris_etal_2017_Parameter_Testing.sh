#!/bin/bash

# Make Directories for Parameter Testing

mkdir m3M1n1/
mkdir m3M2n2/
mkdir m3M3n3/
mkdir m3M4n4/
mkdir m3M5n5/

# Stacks Parameter Testing. Increase M and N incremently.

denovo_map.pl --paired --samples ~/Samples/cloneFiltered/ --popmap DuckRiver_Popmap_Param.txt -m 3 -M 1 -n 1 -T 20 -o m3M1n1/ -X "populations: -R 0.8"

denovo_map.pl --paired --samples ~/Samples/cloneFiltered/ --popmap DuckRiver_Popmap_Param.txt -m 3 -M 2 -n 2 -T 20 -o m3M2n2/ -X "populations: -R 0.8"

denovo_map.pl --paired --samples ~/Samples/cloneFiltered/ --popmap DuckRiver_Popmap_Param.txt -m 3 -M 3 -n 3 -T 20 -o m3M3n3/ -X "populations: -R 0.8"

denovo_map.pl --paired --samples ~/Samples/cloneFiltered/ --popmap DuckRiver_Popmap_Param.txt -m 3 -M 4 -n 4 -T 20 -o m3M4n4/ -X "populations: -R 0.8"

denovo_map.pl --paired --samples ~/Samples/cloneFiltered/ --popmap DuckRiver_Popmap_Param.txt -m 3 -M 5 -n 5 -T 20 -o m3M5n5/ -X "populations: -R 0.8"