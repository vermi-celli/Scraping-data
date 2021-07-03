setwd("C:/")
Total <- read_xlsx("BHI_DAT_FinityConsulting.xlsx", sheet="Completed episodes")
Obstetrics <- read_xlsx("BHI_DAT_FinityConsulting.xlsx", sheet="Babies born")
ED <- read_xlsx("BHI_DAT_FinityConsulting.xlsx", sheet="ED admitted to hospital")

colnames(ED) <- ED[2,]
ED <- ED[-c(1,2),]

colnames(Obstetrics) <- Obstetrics[2,]
Obstetrics <- Obstetrics[-c(1,2),]

colnames(Total) <- Total[2,]
Total <- Total[-c(1,2),]



Total

Data <- filter(Total, "Entity code"=="NSW")

select(Total, Quarter, "Entity Name", Episodes)
select(Obstetrics, )

Total_NSW <- filter(Total, Level=="State")
Total_NSW %>%
  select(Quarter, Episodes)

Obstetrics_NSW <- filter(Obstetrics, Level=="State")
Obstetrics_NSW %>%
  select(Quarter, "Babies born")

ED_NSW <- filter(ED, Level=="State")
ED_NSW[2]

Quarter <- unlist(ED[2])
Quarter <- Quarter[1:43]
Other_NSW <- as.numeric(Total_NSW[6])-as.numeric(Obstetrics_NSW[6]) - as.numeric(ED_NSW[6])
as.numeric(Total_NSW[6])
Total_NSW <- as.numeric(unlist(Total_NSW[6]))
Obstetrics_NSW <- as.numeric(unlist(Obstetrics_NSW[6]))
ED_NSW <-  as.numeric(unlist(ED_NSW[6]))
Other_NSW <- Total_NSW - Obstetrics_NSW - ED_NSW
Data <- cbind(Quarter,Obstetrics_NSW, ED_NSW, Other_NSW, Total_NSW)
Data
i<-1

A <- Data[i,]
A[1]
Name <- colnames(Data)
Stacked <- c(0,0)
for (i in 1:43) {
  A <- Data[i,]
  Quarter <- A[1]
  B <- c(Quarter, Quarter, Quarter, Quarter)
  C <- c(A[2], A[3], A[4], A[5])
  D <- rbind(B, C)
  colnames(D) <- c("Obstetrics", "Emergency", "Other", "Total")
  Stacked <- bind(Stacked, D, c(0,0))
}
  
Data.df <- as.data.frame(Stacked)
write_xlsx(Data.df,"Workbook.xlsx")
Data




Total %>%
  select(Quarter, "Entity code", Episodes) %>%
  filter("Entity code" == "NSW")
