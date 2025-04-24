#!/bin/bash

## Process_Radtags to Demultiplex By Plate

process_radtags -i gzfastq -p ../GC3F_Files/ -o . -b ../Barcodes/Lithasia_Plate_itru7index_Barcodes.txt -r --index_null --retain_header --disable_rad_check -T 64 -P


## Create Plate Directories and Run Process_Radtags on Individual GC3F Plate Files

for i in [1..9]
do
mkdir Lithasia_Plate_$i_2025
process_radtags -1 Lithasia_2024_Plate_$i.1.fq.gz -2 Lithasia_2024_Plate_$i.1.fq.gz -b Lithasia_Plate$i_Barcodes_Updated_2025.txt -o Lithasia_Plate_$i_2025/ -q -r -D --inline_inline --renz_1 NsiI --renz_2 DdeI --filter_illumina --retain_header
done