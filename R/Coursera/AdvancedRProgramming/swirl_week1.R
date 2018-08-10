rm(list = ls())
source("CleanWd.R")
wd()
setwd("MOOCs/R/Coursera/AdvancedRProgramming")
library(swirl)

swirl()
Louis
2 # new course
1 # advanced R Programming
2 # functions pour week 1

Sys.Date()
mean(c(2,4,5))

submit()
boring_function('My first function!')

boring_function #appel de la fonction sans les parenthèses => donne le code source de la fonction

submit()
my_mean(c(4, 5, 10))

submit()
remainder(5)

remainder(11,5)

remainder(divisor =  11,num = 5)

remainder(4, div = 2)
args(remainder) # pour visualiser les arguments attendus, et les valeurs par défaut éventuelles
submit()
evaluate(sd, c(1.4, 3.6, 7.9, 8.8))


evaluate(function(x){x+1}, 6)

evaluate(function(x){x[1]}, c(8,4,0))
evaluate(function(x){last(x)}, c(8,4,0))
?paste

paste("Programming", "is", "fun!")

####all arguments after an ellipses in arguments function should have a default value, to make it work well
submit()
telegram("Bientôt la fin")
submit()
mad_libs(place = "Lille", adjective ="crazy", noun = "Louis")

submit()
"I" %p% "love" %p% "R!"

2
