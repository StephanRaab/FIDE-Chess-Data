#Import libraries
library(data.table);library(readr);library(dplyr);library(tidyr);library(xts);library(dygraphs)

#Set working directory of the file path of the FOLDER this file is located within
setwd(choose.dir());

#Import functions in scripts
source("download_script.R"); source("text_to_csv.R"); source("reformat.R")

#Choose a destination to put the downloaded files in
download_directory <- choose.dir()

#Download files (takes about 15 minutes)
download(download_directory)

#Convert text files to csvs (takes about 40 minutes)
txt_to_csv(download_directory)

#Reformat data (takes about 5 minutes)
reformat(download_directory)
