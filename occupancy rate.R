library(utils)
library(readxl)
library(writexl)
library(stringr)
library(dplyr)
library(tidyverse)

Source_file <- "appendix_2020.pdf"
text <- pdftools::pdf_text(Source_file)[12]
cat(text)
text <-strsplit(text," ")
text<- lapply(text, function(z){ z[!is.na(z) & z != ""]})
A<- unlist(text)
A<- unlist(str_split(A, "\n"))

B <- 0
for (n in 1:length(A)){
  if (str_detect(A[n], "%") == TRUE) {
    B <- cbind(B, A[n])
  } else if (length(B)== 20) {
    break
  } else {
    n <- n+1
  }
}
length(D_2017)
D_2020 <- B
D_2019 <- B
D_2018 <- B
D_2017 <- B
D_2016 <- B

Data <- cbind(D_2020[2:19], D_2019[2:19], D_2018[2:19], D_2017[2:19])
Data.df <- as.data.frame(Data)
write_xlsx(Data.df,"Work.xlsx")

