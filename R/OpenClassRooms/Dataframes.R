source("CleanWd.R")
wd()
rm(list = ls())
setwd("loubill/MOOCs/R/OpenClassRooms/")

#contrairement aux matrices, peuvent contenir des données de nature / type différent par colonne ou ligne
df <-
  data.frame(
    taille = c(185, 178, 165, 171, 172),
    poids = c(82, 81, 55, 65, 68),
    QI = c(110, 108, 125, 99, 124),
    sexe = c("M", "M", "F", "F", "F"),
    row.names = c("Paul", "Matthieu", "Camille", "Mireille", "Capucine"),#arguments qui sert à définir l'index des colonnes => doit donc être unique à chaque fois si on passe comme ça
    stringsAsFactors = F #ici cet argument mis sur F va forcer le fait que les vecteurs de chaîne de caract restent bien des vecteurs, et ne soient pas transformés en facteurs (sinon arg sur T). C'est donc pour éviter de se retrouver à manipd es facteurs de chaîne de caract alors qu'on croit manipuler des vecteurs => TOUJOURS LE METTRE EN FALSE, sauf cas particulier, sinon pb de transformation des valeurs numériques en d'autres avec les adresses d'indexation par expl
  )
df
str(df)
summary(df)

######exo
#taille de camille
df["Camille","taille"]
#QI et sexe des 3 premiers individus
df[1:3,c("QI","sexe")]
#toutes les données relatives à Paul et Capucine
df[c("Paul","Capucine"),]

attach(df)#crée ici une variable pour chaque colonne, portant le nom de cette colonne. Par contre pas dispo dans l'environnement
taille
poids