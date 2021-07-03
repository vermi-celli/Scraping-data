install.packages("pdftools")
library(pdftools)

#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20181.pdf")[6]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "activity") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- A[m]
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)

n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
  n <- n+1
}
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- c("1", "2", "3", "4")
Data1 <- rbind(Data1, Data)
#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20182.pdf")[6]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "to") {
  n <- n+1}
Quarter <- A[n+1]

n <- 1
while (A[n] != "activity") {
  n <- n+1}
Year <- A[n+1]
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)

n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)



#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20183.pdf")[6]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "activity") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- A[m]
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)

n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)
#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20184.pdf")[6]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "activity") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- A[m]
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)

n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)
#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20201.pdf")[6]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "activity") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- A[m]
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)

n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)
#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20202.pdf")[6]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "activity") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- A[m]
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)

n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)
#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20203.pdf")[6]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "activity") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- A[m]
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)

n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)
#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20204.pdf")[6]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "activity") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- A[m]
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)

n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)
#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20161.pdf")[9]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "to") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- as.numeric(A[m])
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)


n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)
#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20162.pdf")[9]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "to") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- as.numeric(A[m])
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)

n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)
#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20163.pdf")[9]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "to") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- as.numeric(A[m])
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)


n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)
#####
tx <- pdftools::pdf_text("/Users/ivykim/Downloads/BHI/BHI_HQ_20164.pdf")[9]
A<-strsplit(tx," ")
A<- lapply(A, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(A)

# Find time
n <- 1
while (A[n] != "to") {
  n <- n+1}

n <- n+1
Quarter <- A[n]
m <- n+1
Year <- as.numeric(A[m])
Year_Last <- as.numeric(Year)-1
Time <- paste(Quarter, Year)
Time_Last <- paste(Quarter, Year_Last)


n <- 1
for (n in 1:1000){
  if (A[n] == "from"&&A[n+1]=="NSW"&&A[n+2]=="EDs") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Emer_admission <- A[n]
Emer_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "admitted"&&A[n+1]=="patient"&&A[n+2]=="episodes") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Total_admission <- A[n]
Total_admission_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "NSW"&&A[n+1]=="public"&&A[n+2]=="hospitals") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Baby <- A[n]
Baby_last <- A[n+1]

n <- 1
for (n in 1:1000){
  if (A[n] == "surgical"&&A[n+1]=="procedures"&&A[n+2]=="performed") {
    n <- n+3
    break
  } else {
    n <- n+1
  }
}
Elective <- A[n]
Elective_last <- A[n+1]


This_year <- c (Emer_admission, Baby, Total_admission, Elective)
Last_year <- c(Emer_admission_last, Baby_last, Total_admission_last, Elective_last)
Data <- rbind(Last_year, This_year)
rownames(Data) <- c(Time_Last, Time)
Data1 <- rbind(Data1, Data)
#####

Data1
install.packages("writexl")
library(writexl)
write_xlsx(Data1, "/Users/ivykim/Downloads/BHI/admissions.xlsx")
