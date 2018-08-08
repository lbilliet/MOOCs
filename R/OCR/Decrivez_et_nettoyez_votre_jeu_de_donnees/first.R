rm(list = ls())
source("CleanWd.R")
wd()
setwd("MOOCs/R/OCR/Decrivez_et_nettoyez_votre_jeu_de_donnees/")

devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec(user = FALSE)

operations<-read.csv("analyse/operations.csv")
head(operations)
