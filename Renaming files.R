library(stringr)
library(tidyverse)
library(dplyr)


#Prepare files

Type <- "Elective"
Source_file <- paste0("I:Actuarial/IfNSW/TMF/General Lines/Contributions/2021-22/Mock Run/MM/Input/BHI Downloads/BHI by LHD Quarterly Excel/", Type, "/")
(File <- list.files(Source_file))
File <- File[31:34]
File_path <- paste0(Source_file, File)

Year <-2013
Time <- c(1, 2, 3, 4)
Quarter <- paste0(Year, Time)

New_name <- paste0(Source_file, "BHI_HQ_",Quarter, "_", Type, ".xlsx")
file.copy(from = File_path, to = New_name, overwrite=TRUE)
file.remove(File_path)


#Remove certain text to isolate LHD Title,
Removal1 <- "BHI"
str_sub(File_path, end=6)
LHD <- str_remove(File, Removal1)


#Activate code if more items to remove from name
#Removal2 <- "BHI_HQ_20204"
#LHD <- str_remove (LHD, Removal2)

#Create files with new name and remove old named files
#Make sure it is in right file form ie. file path ends with .pdf or .xlsx
New_name <- paste0(Source_file, "BHI_HQ_",Quarter, "_",LHD)

#Activate code if you want to replace text
#New_name <- str_replace(New_name, "ES", "Elective")

file.copy(from = File_path, to = New_name, overwrite=TRUE)
file.remove(File_path)

