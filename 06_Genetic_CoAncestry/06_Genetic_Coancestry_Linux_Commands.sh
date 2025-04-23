#!/bin/bash

# Assessing Genetic Co-ancestry in fineSTRUCTURE using Multiple SNPS per Locus Datasets
## Lithasia duttoniana

RADpainter paint Duttoniana_min_max_1pop_Multi.haps.radpainter

finestructure -x 100000 -y 100000 Duttoniana_min_max_1pop_Multi.haps_chunks.out Duttoniana_min_max_1pop_Multi.haps_chunks.mcmc.xml

finestructure -m T -x 10000 Duttoniana_min_max_1pop_Multi.haps_chunks.out Duttoniana_min_max_1pop_Multi.haps_chunks.mcmc.xml Duttoniana_min_max_1pop_Multi.haps_chunks.mcmcTree.xml

## Lithasia fuliginosa

RADpainter paint Fuliginosa_min_max_DAPC_4pops_Multi.haps.radpainter

finestructure -x 100000 -y 100000 Fuliginosa_min_max_DAPC_4pops_Multi.haps_chunks.out Fuliginosa_min_max_DAPC_4pops_Multi.haps_chunks.mcmc.xml

finestructure -m T -x 10000 Fuliginosa_min_max_DAPC_4pops_Multi.haps_chunks.out Fuliginosa_min_max_DAPC_4pops_Multi.haps_chunks.mcmc.xml Fuliginosa_min_max_DAPC_4pops_Multi.haps_chunks.mcmcTree.xml

## Lithasia duttoniana

RADpainter paint Geniculata_min_max_NBA_2pop_Multi.haps.radpainter

finestructure -x 100000 -y 100000 Geniculata_min_max_NBA_2pop_Multi.haps_chunks.out Geniculata_min_max_NBA_2pop_Multi.haps_chunks.mcmc.xml

finestructure -m T -x 10000 Geniculata_min_max_NBA_2pop_Multi.haps_chunks.out Geniculata_min_max_NBA_2pop_Multi.haps_chunks.mcmc.xml Geniculata_min_max_NBA_2pop_Multi.haps_chunks.mcmcTree.xml