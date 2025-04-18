# Load packages
library(adegenet)
library(ape)
library(poppr)
library(na.tools)
library(paletteer)

# Load data from Multiple SNP Genepop File produced by Stacks
data <- read.genepop(file="04_Population_Structure_DAPC/Lithasia_Duck_min_max_NBA_NoOut_DAPC3.snps.vcf")

# Find the # of Principle Components
grp <- find.clusters(data, max.n.clust=30)

# Run DAPC Using the Best-Fit # of Clusters
dapc2 <- dapc(data,grp$grp)

# Create a Color-Blind Friendly Palette
cbbPalette <- c("#56B4E9","#E69F00", "#0072B2", "#009E73", "#F0E442", "#D55E00", "#CC79A7", "gray")

# Graph the DAPC Results. Uses Built in Graphing Functions in the DAPC Package.
scatter(dapc2, scree.da=FALSE, bg="white", pch=20, cell=0, 
        cstar=0, col=cbbPalette, solid=.4, cex=3,clab=0, leg=TRUE)

scatter.dapc(dapc2, ratio.pca=0.3,solid=0.4,cex=3,clab=0,cell=0,posi.da="topleft",
             bg="white",pch=20, cstar=0, col=cbbPalette, scree.pca=TRUE, 
             posi.pca="topright", legend = TRUE, posi.leg = "top",
             label.inds = list(air = 0.4, pch = 20))

scatter.dapc(dapc2, ratio.pca=0.3,solid=0.4,cex=3,clab=0,cell=0,posi.da="topleft",
             bg="white",pch=20, cstar=0, col=cbbPalette, scree.pca=TRUE, 
             posi.pca="topright", legend = FALSE, posi.leg = "top",
             label.inds = list(air = 0.4, pch = 20))

# Dots w Group Label
scatter(dapc2, ratio.pca=0.3,solid=0.4,cex=3,posi.da="topleft",
        bg="white",pch=20, cstar=0, col=cbbPalette, scree.pca=TRUE, posi.pca="topright",
        label.inds = TRUE, legend = TRUE, posi.leg = "right")

scatter(dapc2, ratio.pca=0.3,solid=0.4,cex=3, scree.da=FALSE,
        bg="white",pch=20, cstar=0, col=cbbPalette,
        label.inds = TRUE)


# Admix Plot Subset

compoplot(dapc2, col=cbbPalette, show.lab = TRUE, posi="top",
          cex.names=0.8)

# Admix Plot Small Font All Samples

compoplot(dapc2, col=cbbPalette, show.lab = TRUE, posi="top",
          cex.names=0.5)

# Admix Plot No Individual Names

compoplot(dapc2, col=cbbPalette, show.lab = TRUE)

compoplot(dapc2, col=cbbPalette)

# Mountain Plot Thing

scatter(dapc2,1,1, col=cbbPalette, bg="white", scree.da=FALSE, legend=TRUE, solid=.4)

# Cluster ID Using Subsets

assignplot(dapc2)

assignplot(dapc2, subset = 201:250)

write.csv(grp[["grp"]], "DuckRiver_DAPC_k6.csv")

dev.off()
