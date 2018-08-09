rm(list = ls())
source("CleanWd.R")
wd()
setwd("MOOCs/R/Coursera/AdvancedRProgramming")

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
for(i in seq_along(x)) { # seq_along() commonly used in order to generate an integer sequence based on the length of an object

  print(x[i])
}

for(letter in x) { #It is not necessary to use an index-type variable
  print(letter)
}

for(i in 1:4) print(x[i]) #For one line loops, the curly braces are not strictly necessary. but not reccomanded not adding them (curvy braces = {})

x <- matrix(1:6, 2, 3)
for(i in seq_len(nrow(x))) { #nested loop, beginning with x[1,1] then [1,2] ... [2,1] then [2,2] etc
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}

for(i in 1:100) {
  if(i <= 20) {
    
    next           # next is used to skip an iteration of a loop.
    ## so here skip the first 20 iterations
  }
  ## Do something here
}

for(i in 1:100) {
  print(i)
  
  if(i > 20) {
    ## Stop loop after 20 iterations
    break  # break is used to exit a loop immediately, regardless of what iteration the loop may be on.
  }     
}