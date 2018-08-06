source("CleanWd.R")
wd()
rm(list=ls())
setwd("loubill/MOOCs/R/OpenClassRooms/")
#comme pour les vecteurs, les matrices ne peuvent contenir qu'un seul type d'élément (num / char / bool)
#toutes les colonnes doivent avoir la même longueur, toutes les lignes même longueur aussi

#pour créer matrice, oblig préciser nb col et nb lignes au mini
mtx<-matrix(nrow = 10,ncol = 8)
mtx
#on remplit avec des valeurs, en précisant un arguement qui dit qu'on remplit ligne par ligne ici (possible de faire colonne par colonne)
mtx<-matrix(data = seq(0,666,42), byrow = TRUE)
mtx
#ici pb, il faut respécifier à chaque fois les dimensions de la matrice
mtx<-matrix(data = seq(from=0,to=666,by=42),nrow=10, ncol = 10 ,byrow = TRUE)
#ici pb car seq pas en accord avec la capacité de la matrice => mettre un mutliple/dividende de 16
mtx<-matrix(data = seq(from=0,to=666,by=42),nrow=32, ncol = 4 ,byrow = TRUE)
mtx

###########
#exercice : matrice de notes d'élèves en histoire, bio, sport
Pierre <- c(8,9,15)
Nathalie <- c(17,12,13)
Jacques <- c(11,15,7)
Julie <- c(5,12,19)

mtxNotes<-matrix(data=c(Pierre,Nathalie,Jacques,Julie), nrow = 4, ncol = 3, byrow = T)
mtxNotes
rownames(mtxNotes)<-c("Pierre","Nathalie","Jacques","Julie")
colnames(mtxNotes)<-c("histoire","biologie","sport")
mtxNotes


mtxNotes[sort(rownames(mtxNotes))[1:3], colnames(mtxNotes)[c(1,3)]] ### que renvoie ce code ?
mtxNotes[c("Jacques","Julie","Nathalie"),c("histoire","sport")]