# Load packages
library(poppr)

# Load Data from Multiple HAPS Genepop File produced by Stacks
Ful.geneid = read.genepop("03_Population_Structure_AMOVA/Fuliginosa_min_max_DAPC_4pops_Multi.haps.gen")
Gent.geneid = read.genepop("03_Population_Structure_AMOVA/Geniculata_min_max_NBA_2pop_Multi.haps.gen")

# Create a function that conducts an AMOVA using Poppr
Amova.Poppr <- function(geneid){

# Create Strata from Population Information in Geneid
genclone<-as.genclone(geneid)
genclone$strata
strata(genclone)<-(as.data.frame(geneid$pop))

# Run an AMOVA
genclone
genclone$strata
amova.pop = poppr.amova(genclone, ~geneid.pop, cutoff = 0.5, method = "ade4")
}

# Lithasia geniculata AMOVA
Ful.amova <- Amova.Poppr(Ful.geneid)
# View AMOVA Results
Ful.amova

# Lithasia geniculata AMOVA
Gent.amova <- Amova.Poppr(Gent.geneid)
# View AMOVA Results
Gent.amova
