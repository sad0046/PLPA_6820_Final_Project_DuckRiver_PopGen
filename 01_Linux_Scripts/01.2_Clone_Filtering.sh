#!/bin/bash

# Remove Cloned Reads using Clone Filters

# Create a Seperate Folder
mkdir cloneFiltered

# Run a for Loop to Clean Each Sample
for FILE in *.1.fq.gz
do
NAME2=`echo $FILE |sed 's/\.1\./\.2\./'`
echo $NAME2
clone_filter -1 $FILE -2 $NAME2 -i gzfastq -o cloneFiltered/ --null_index --oligo-len-2 8
done
