## Load library
library(foreign)
## Import dataset
sav <- read.spss("Taungya questionnaire.sav")
## Look summary and initial plots
summary(sav)
plot(sav$Vill_name, sav$Age)
plot(sav$Vill_name, sav$Fam_mem)
### Descriptive statistics
## Preparation
sav$Vill_name == "Daggea"
which(sav$Vill_name == "Daggea")
## Only Daggea data
sav$Fam_mem[sav$Vill_name == "Daggea"]
### Plotting param
plot(sav$Vill_name, sav$Fam_mem, las = 2, xlab = "")
plot(sav$Vill_name, sav$Fam_mem, las = 2, xlab = "", ylab = "Family members")

## 
sav.short = sav[-95]
sav.short = sav[-length(sav)]
sav.df <- as.data.frame(sav.short)
