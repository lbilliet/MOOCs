rm(list = ls())
source("CleanWd.R")
wd()
setwd("MOOCs/R/Coursera/")

x <- runif(1, 0, 10)#generate random number once (1st arg), between 0 & 10
if(x > 3) {
  y <- 10
} else {
  y <- 0
}

numbers <- rnorm(10) #crée un vecteur numérique de 10 valeurs selon une distribution normale
for(i in 1:10) {
  print(numbers[i])
}

x <- c("a", "b", "c", "d")
## Generate a sequence based on length of 'x'
for(i in seq_along(x)) # seq_along() commonly used in order to generate an integer sequence based on the length of an object
{
  print(x[i])
}