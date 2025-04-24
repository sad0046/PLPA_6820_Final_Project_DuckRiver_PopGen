#!/bin/bash

# Make Directory to Store Results of STACKS denovo.pl

mkdir DuckRiver_Lithasia_NoBadApples/

# Denovo Pipeline to Create Datasets

denovo_map.pl --samples ~/Samples/cloneFiltered/ --popmap DuckRiver_Lithasia_NoBadApples.txt -m 3 -M 2 -n 2 -T 24 -o DuckRiver_Lithasia_NoBadApples/

# Make Directory to Store Results of STACKS populations

mkdir DuckRiver_m3M2n2_min_max_Multi
mkdir DuckRiver_m3M2n2_min_max_Single

# Run populations. Create a Multiple SNPS per Locus Dataset and a Single SNP per Locus Dataset. Repeat for Complete Dataset and Individual Species.

# Multiple SNPS
populations -P DuckRiver_Lithasia_NoBadApples/ --popmap DuckRiver_Lithasia_NoBadApples.txt -t 32 -O DuckRiver_m3M2n2_min_max_Multi/ -R 0.8 --min-maf 0.025 --max-obs-het 0.5 --fasta-samples --vcf --radpainter --structure --genepop

# Single SNPS
populations -P DuckRiver_Lithasia_NoBadApples/ --popmap DuckRiver_Lithasia_NoBadApples.txt -t 32 -O DuckRiver_m3M2n2_min_max_Single/ -R 0.8 --min-maf 0.025 --max-obs-het 0.5 --fasta-samples --vcf --radpainter --structure --genepop --write-single-snp