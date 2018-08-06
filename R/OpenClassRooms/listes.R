source("CleanWd.R")
wd()
rm(list = ls())
setwd("loubill/MOOCs/R/OpenClassRooms/")

#les listes peuvent servir à palier le pb des tableaux de données qui nécessitent des vecteurs / facteurs de même dimensions, par exemple quand pr plusieurs individus, on n'a pas le même nb d'observations
athletes <-
  list(
    Didier = c(630, 625, 628, 599, 635, 633, 622),
    Jules = c(610, 590, 595, 582, 601, 603),
    Pierre = c(644, 638, 639, 627, 642, 633, 639),
    Matthieu = c(622, 625, 633, 641, 610),
    Georges = c(561, 572, 555, 569, 653, 549, 558, 561),
    Khaled = c(611, 621, 619, 618, 623, 614, 623),
    Guillaume = c(599, 601, 612, 609, 607, 608, 594),
    Hermann = c(624, 630, 631, 629, 634, 618, 622),
    Carlos = c(528, 531, 519, 533, 521),
    Keith = c(513)
  )
summary(athletes)
str(athletes)
#pour l'indexation, utilisation de DOUBLES crochets si sélection unique
athletes[["Khaled"]]
#si sléection multiples, utilisation crochets SIMPLES
athletes[seq(3, 7, 1)]
#☻si retour de sélection dans liste eest un vecteur, posssib d'indexer facielement et donc sléectionner valeurs d'intérêt
athletes$Guillaume[2:6]

#####fonction lapply permet de faire des ttt itératifs sur les composant d'une liste
lapply(athletes, min, na.rm=T) #premier arg = list à laquelle appliquer la fonction, deuxième = nom de la fonction à appliquer sans les parenthèses, autres arg = ceux optionneles de la fonction concernée
lapply(athletes, max, na.rm=T)
lapply(athletes, length)
lapply(athletes, mean, na.rm=T)

#pb avec lapply, certaines fonction n'acceptent pas en entrée des listes, comme summary / sort par expl => passer à du sapply(), notamment gain en terme de présentation / manip
moyenne<-sapply(athletes,mean, na.rm=T)
sort(moyenne, decreasing = T)
resume<-sapply(athletes,summary, na.rm=T)
resume

test<-cor.test(athletes$Didier, athletes$Khaled)
is.list(test)#ici l'objet retourné par la fonction de test de corrélation est bien une liste, donc avec différentes attributs / colonnes
str(test)#on détaille la structure de cette liste
test$p.value#on récupère la p-value de cette fameuse liste
