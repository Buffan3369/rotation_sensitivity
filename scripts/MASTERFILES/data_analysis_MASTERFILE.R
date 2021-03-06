############################################### DATA ANALYSIS ########################################################


#Author: Lucas Buffan
#Copyright (c) Lucas Buffan
#e-mail: lucas.l.buffan@gmail.com


###### SIMULATION PART ######

## Build the equal-area grid that we are going to rotate ----------------------------------------------
source("./scripts/data_analysis/build_grid.R")   #may take some time, maybe don't run


# Rotating in Gplates, treatment of the outputs in the "rotating.R" file, raw outputs not joined in this repo as too heavy. Feel free to ask the corresponding author if you need them.


## COMPARISON ------------------------------------------------------------------------------------------
source("./scripts/data_analysis/lat_sd.R") # Latitude and Longitude standard deviations: TAKES A WHILE TO RUN
source("./scripts/data_analysis/MST.R") # MST computation (TAKES A WHILE!!)


###### CASE STUDY ######

## Data pre-processing --------------------------------------------------------------------------------
source("./scripts/data_analysis/prepare_fossil_reef_data.R") # cleaning corals data
source("./scripts/data_analysis/prepare_fossil_croc_data.R") #cleaning crocs data
source("./scripts/data_analysis/create_sfs.R") #prepare input shapefiles for Gplates

# rotating in Gplates and output shapefiles not provided as too heavy: for each model and each taxon, the coordinates of the rotated occurrences are pooled in one RDS file
# see "./scripts/data_analysis/extract_fossils_palaeocoordinates.R" for that

## Rotating fossil occurrences with Chronosphere package (instead of manually in Gplates) -------------
source("./scripts/data_analysis/rotate_fossils_with_chronosphere.R")
