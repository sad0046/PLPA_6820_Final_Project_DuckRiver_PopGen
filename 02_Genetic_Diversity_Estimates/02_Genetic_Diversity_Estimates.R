# Load Data from the Multiple SNPS Sumstats_Summary File produced by Stacks
Dutt.sumstats <- read.table("02_Genetic_Diversity_Estimates/Duttoniana_min_max_1pop_Multi.sumstats_summary.tsv", header = TRUE, na.strings = "NA")
Ful.sumstats <- read.table("02_Genetic_Diversity_Estimates/Fuliginosa_min_max_DAPC_4pops_Multi.sumstats_summary.tsv", header = TRUE, na.strings = "NA")
Gent.sumstats <- read.table("02_Genetic_Diversity_Estimates/Geniculata_min_max_NBA_2pop_Multi.sumstats_summary.tsv", header = TRUE, na.strings = "NA")

# Split by Population
Dutt.sumstats$Pop_ID<-factor(Dutt.sumstats$Pop_ID, levels=unique(Dutt.sumstats$Pop_ID))
Dutt.sumstats_list<-split(Dutt.sumstats,Dutt.sumstats$Pop_ID)

#Calculate Averages for each Population
Dutt.stats_table=data.frame()
for (i in Dutt.sumstats_list){
  pop_data<-as.data.frame(i)
  pop<-pop_data$Pop_ID
  Ho<-round(mean(pop_data[,9]),digits=4)
  Ho_SE<-round((pop_data[,11]),digits=5)
  He<-round(mean(pop_data[,15]),digits=4)
  He_SE<-round((pop_data[,16]),digits=5)
  Pi<-round(mean(pop_data[,21]),digits=4)
  Pi_SE<-round((pop_data[,22]),digits=5)
  Fis<-round(mean(pop_data[,24]),digits=4)
  Fis_SE<-round((pop_data[,25]),digits=5)
  Dutt.stats_table<-rbind(Dutt.stats_table,list(pop,Ho,Ho_SE,He,He_SE,Pi,Pi_SE,Fis,Fis_SE))
}

# Rename Columns
names(Dutt.stats_table)<-c("Population","Ho","Ho_SE","He","He_SE","Pi","Pi_SE","Fis","Fis_SE")

# View Table
Dutt.stats_table


# Split by Population
Ful.sumstats$Pop_ID<-factor(Ful.sumstats$Pop_ID, levels=unique(Ful.sumstats$Pop_ID))
Ful.sumstats_list<-split(Ful.sumstats,Ful.sumstats$Pop_ID)

#Calculate Averages for each Population
Ful.stats_table=data.frame()
for (i in Ful.sumstats_list){
  pop_data<-as.data.frame(i)
  pop<-pop_data$Pop_ID
  Ho<-round(mean(pop_data[,9]),digits=4)
  Ho_SE<-round((pop_data[,11]),digits=5)
  He<-round(mean(pop_data[,15]),digits=4)
  He_SE<-round((pop_data[,16]),digits=5)
  Pi<-round(mean(pop_data[,21]),digits=4)
  Pi_SE<-round((pop_data[,22]),digits=5)
  Fis<-round(mean(pop_data[,24]),digits=4)
  Fis_SE<-round((pop_data[,25]),digits=5)
  Ful.stats_table<-rbind(Ful.stats_table,list(pop,Ho,Ho_SE,He,He_SE,Pi,Pi_SE,Fis,Fis_SE))
}

# Rename Columns
names(Ful.stats_table)<-c("Population","Ho","Ho_SE","He","He_SE","Pi","Pi_SE","Fis","Fis_SE")

# View Table
Ful.stats_table

# Split by Population
Gent.sumstats$Pop_ID<-factor(Gent.sumstats$Pop_ID, levels=unique(Gent.sumstats$Pop_ID))
Gent.sumstats_list<-split(Gent.sumstats,Gent.sumstats$Pop_ID)

#Calculate Averages for each Population
Gent.stats_table=data.frame()
for (i in Gent.sumstats_list){
  pop_data<-as.data.frame(i)
  pop<-pop_data$Pop_ID
  Ho<-round(mean(pop_data[,9]),digits=4)
  Ho_SE<-round((pop_data[,11]),digits=5)
  He<-round(mean(pop_data[,15]),digits=4)
  He_SE<-round((pop_data[,16]),digits=5)
  Pi<-round(mean(pop_data[,21]),digits=4)
  Pi_SE<-round((pop_data[,22]),digits=5)
  Fis<-round(mean(pop_data[,24]),digits=4)
  Fis_SE<-round((pop_data[,25]),digits=5)
  Gent.stats_table<-rbind(Gent.stats_table,list(pop,Ho,Ho_SE,He,He_SE,Pi,Pi_SE,Fis,Fis_SE))
}

# Rename Columns
names(Gent.stats_table)<-c("Population","Ho","Ho_SE","He","He_SE","Pi","Pi_SE","Fis","Fis_SE")

# View Table
Gent.stats_table
