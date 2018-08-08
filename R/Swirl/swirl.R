source("CleanWd.R")
wd()
setwd("MOOCs/R/Swirl")
rm(list = ls())
library(swirl)

x <- runif(1, 0, 10)#generate random number once (1st arg), between 0 & 10
if(x > 3) {
  y <- 10
} else {
  y <- 0
}


####installation réussie
# install_course("R Programming")
# install_course("Regression Models")
# install_course("Getting and Cleaning Data")
# install_course("Statistical Inference")
# install_course("Advanced R Programming")

#install fail
install_course("Open Intro")
install_course("Data Analysis")
install_course("Mathematical Biostatistics Boot Camp")

swirl()
Louis
1