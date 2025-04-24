# PLPA_6820_Final_Project_DuckRiver_PopGen

This is a repository that includes all the necessary data files and scripts for the project: Duck River Population Genetics.

#### Links to Directories
The current directories are as follows:

- [01_Linux_Scripts](https://github.com/sad0046/PLPA_6820_Final_Project_DuckRiver_PopGen/tree/main/01_Linux_Scripts)
- [02_Genetic_Diversity_Estimates](https://github.com/sad0046/PLPA_6820_Final_Project_DuckRiver_PopGen/tree/main/02_Genetic_Diversity_Estimates)
- [03_Population_Structure_AMOVA](https://github.com/sad0046/PLPA_6820_Final_Project_DuckRiver_PopGen/tree/main/03_Population_Structure_AMOVA)
- [04_Population_Structure_DAPC](https://github.com/sad0046/PLPA_6820_Final_Project_DuckRiver_PopGen/tree/main/04_Population_Structure_DAPC)
- [05_Population_Structure_Admixture](https://github.com/sad0046/PLPA_6820_Final_Project_DuckRiver_PopGen/tree/main/05_Population_Structure_Admixture)
- [06_Genetic_CoAncestry](https://github.com/sad0046/PLPA_6820_Final_Project_DuckRiver_PopGen/tree/main/06_Genetic_CoAncestry)

Note: The files in the directory 01_Linux_Scripts/ are to be run on a Linux Server. The rest (02-06) can be run + knitted using R Markdown.

#### Link to the R Markdown viewable on Github (.md)

*[DuckRiver RMarkdown](https://github.com/sad0046/PLPA_6820_Final_Project_DuckRiver_PopGen/blob/main/README.md)

#### File Tree

```
├── 01_Linux_Scripts
│   ├── 01.1_Process_Radtags.sh
│   ├── 01.2_Clone_Filtering.sh
│   ├── 01.3_Paris_etal_2017_Parameter_Testing.sh
│   ├── 01.4_Denovo_Pipeline_plus_Populations.sh
│   ├── DuckRiver_Paris_etal_2017_Parameter_Testing.csv
│   └── Illumina_Barcodes
│       ├── Lithasia_Plate1_Barcodes_Updated_2025.txt
│       ├── Lithasia_Plate2_Barcodes_Updated_2025.txt
│       ├── Lithasia_Plate3_Barcodes_Updated_2025.txt
│       ├── Lithasia_Plate4_Barcodes_Updated_2025.txt
│       ├── Lithasia_Plate5_Barcodes_Updated_2025.txt
│       ├── Lithasia_Plate6_Barcodes_Updated_2025.txt
│       ├── Lithasia_Plate7_Barcodes_Updated_2025.txt
│       ├── Lithasia_Plate8_Barcodes_Updated_2025.txt
│       ├── Lithasia_Plate9_Barcodes_Updated_wRedos_2025.txt
│       └── Lithasia_Plate_itru7index_Barcodes.txt
├── 02_Genetic_Diversity_Estimates
│   ├── 02_Genetic_Diversity_Estimates.R
│   ├── Duttoniana_min_max_1pop_Multi.sumstats_summary.tsv
│   ├── Fuliginosa_min_max_DAPC_4pops_Multi.sumstats_summary.tsv
│   └── Geniculata_min_max_NBA_2pop_Multi.sumstats_summary.tsv
├── 03_Population_Structure_AMOVA
│   ├── AMOVA_Scripts.R
│   ├── Fuliginosa_min_max_DAPC_4pops_Multi.haps.gen
│   └── Geniculata_min_max_NBA_2pop_Multi.haps.gen
├── 04_Population_Structure_DAPC
│   ├── 04_DAPC_Analysis_ThreeSpecies.R
│   ├── DuckRiver_DAPC_k7.csv
│   └── Lithasia_Duck_min_max_NBA_NoOut_DAPC3.snps.gen
├── 05_Population_Structure_Admixture
│   ├── 05_LEA_Admixture_Script.R
│   ├── Duttoniana_Metadata.csv
│   ├── Duttoniana_min_max_NBA_Single.snps.geno
│   ├── Duttoniana_min_max_NBA_Single.snps.vcf
│   ├── Fuliginosa_Metadata.csv
│   ├── Fuliginosa_min_max_DAPC_4pops_Single.snps.geno
│   ├── Fuliginosa_min_max_DAPC_4pops_Single.snps.vcf
│   ├── Geniculata_Metadata.csv
│   ├── Geniculata_min_max_2Pops_NBA_Single.snps.geno
│   └── Geniculata_min_max_2Pops_NBA_Single.snps.vcf
├── 06_Genetic_CoAncestry
│   ├── 06_Genetic_Coancestry_Linux_Commands.sh
│   ├── Duttoniana_min_max_1pop_Multi.haps_chunks.mcmc.xml
│   ├── Duttoniana_min_max_1pop_Multi.haps_chunks.mcmcTree.xml
│   ├── Duttoniana_min_max_1pop_Multi.haps_chunks.out
│   ├── FinestructureDendrogram.R
│   ├── FinestructureLibrary.R
│   ├── Fuliginosa_min_max_DAPC_4pops_Multi.haps_chunks.mcmc.xml
│   ├── Fuliginosa_min_max_DAPC_4pops_Multi.haps_chunks.mcmcTree.xml
│   ├── Fuliginosa_min_max_DAPC_4pops_Multi.haps_chunks.out
│   ├── Geniculata_min_max_NBA_2pop_Multi.haps_chunks.mcmc.xml
│   ├── Geniculata_min_max_NBA_2pop_Multi.haps_chunks.mcmcTree.xml
│   ├── Geniculata_min_max_NBA_2pop_Multi.haps_chunks.out
│   ├── RADpainter_R_Plots
│   └── RADpainter_Standard.R
├── Donohoo_PLPA_6820_FinalProject.html
├── Donohoo_PLPA_6820_FinalProject.md
├── Donohoo_PLPA_6820_FinalProject.Rmd
├── Donohoo_PLPA_6820_FinalProject_files
│   └── figure-gfm
│       ├── 04_DAPC_Analysis-1.png
│       ├── 05_LEA_Admixture_Analysis L. duttoniana P3-1.png
│       ├── 05_LEA_Admixture_Analysis L. fuliginosa Part 3-1.png
│       └── 05_LEA_Admixture_Analysis L. geniculata Part 3-1.png
├── PLPA_6820_Final_Project_DuckRiver_PopGen.Rproj
└── README.md
```