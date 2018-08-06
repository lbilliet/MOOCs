source("CleanWd.R")
wd()
rm(list=ls())
setwd("loubill/MOOCs/R/OpenClassRooms/")
####### facteurs sous R = servent à stocker infos qualit, donc avec valeur descriptive
####### facteurs, contrairement aux vecteurs, peuvent contenir des éléments de types différents
####### un des attributs du fact = niveaux, qui est le vecteur qui contient lensemble des valeurs qui peuvent être prises pas les éléments (UNIVERS DES DONNEES)
notes <-
  factor(c(14, 19, 16.5, 13, 17, 5, 10, 12, 8, 9, 10, 14, 3, 13.5, 12, 8.75))
notes  #partie 'levels' renvoie l'univers des données ici, basé sur le contenu unitaire
notes <- factor(levels = c(0:20))
notes  #ici définition a priori univers des données de 0 à 20
notes <-
  factor(c(14, 19, 16, 13, 17, 5, 10, 12, 8, 9, 10, 14, 3, 13.5, 12, 8.75),
         levels = c(0:20))
notes  #suppr des valeurs aberrantes en conflit avec univers des données pour les passer en NA
names(notes) <- c("DM1", "DM2", "DS1", "DM3", "DS2", "DS3", "DS4")
summary(notes)
notes
notes <-
  factor(c(14, 19, 16, 13, 17, 5, 10, 12, 8, 9, 10, 14, 3, 13.5, 12, 8.75),
         levels = seq(0,20,0.25))
notes
summary(notes)
table(notes)
str(notes)
####### pas moyen de faire de l'arithmétique sur des facteurs par contre => les transformer en vecteurs au besoin
vecNotes<-as.vector(notes)
vecNotes
summary(vecNotes)
table(vecNotes)
str(vecNotes)

##### attention à ne pas vouloir convertir via as.numeric => exemple :
notes
notePbCvrs<-as.numeric(notes)
notePbCvrs
#ici en fait R stocke pour chaque élément du facteur un identifiant interne numérique invisible pour l'utilisateur, et c'est finalement ce qu'on convertit ici en vecteur de numériques