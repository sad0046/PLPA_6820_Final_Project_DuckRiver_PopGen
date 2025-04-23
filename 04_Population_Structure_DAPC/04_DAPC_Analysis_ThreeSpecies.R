# Load packages
library(adegenet)
library(ape)
library(poppr)
library(na.tools)
library(paletteer)

# Load Lithasia.data from Multiple SNP Genepop File produced by Stacks
Lithasia.data <- read.genepop(file="04_Population_Structure_DAPC/Lithasia_Duck_min_max_NBA_NoOut_DAPC3.snps.gen")

# Find the Best-Fit # of Principle Components (Genetic Clusters)
grp <- find.clusters(Lithasia.data, max.n.clust=30, n.pca = 500, n.clust = 7)

# Run DAPC Using the Best-Fit # of Clusters, but Apply (NAME) K-1
dapc2 <- dapc(Lithasia.data,grp$grp, n.pca = 6, n.da = 5)

# Create a Color-Blind Friendly Palette
cbbPalette <- c("#56B4E9","#E69F00", "#0072B2", "#009E73", "#F0E442", "#D55E00", "#CC79A7", "gray")

# Graph the DAPC Results. Uses Built in Graphing Functions in the DAPC Package.
# Initial Scatterplot with Cluster Assignments
scatter(dapc2, scree.da=FALSE, bg="white", pch=20, cell=0,
        cstar=0, col=cbbPalette, solid=.4, cex=3,clab=0, leg=TRUE, posi.leg = "bottomright")

# Final Scatterplot with Cluster Assignments, and DA / PCA Eigenvalues
scatter(dapc2, solid=0.4, cex=3, 
        ratio.da = 0.2, posi.da = "topright", scree.da = TRUE,
        posi.pca = "bottomright", scree.pca = TRUE, ratio.pca=0.3,
        bg="white",pch=20, cstar=0, col=cbbPalette,
        label.inds = TRUE)

# Assignment Plot Small Font All Samples
compoplot(dapc2, col=cbbPalette, show.lab = TRUE, posi="top",
          cex.names=0.5)

# Mountain Plot
scatter(dapc2,1,1, col=cbbPalette, bg="white", scree.da=FALSE, legend=TRUE, solid=.4)

# Cluster ID Using Subsets
assignplot(dapc2)

# Write Qmatrix to CSV
write.csv(grp[["grp"]], "04_Population_Structure_DAPC/DuckRiver_DAPC_k7.csv")
