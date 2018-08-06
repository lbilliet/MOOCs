chemRepTr<-getwd()
chemRepTr
resRchYaf<-grep("lb3", chemRepTr, ignore.case = T)
resRchYaf
resRchTourLin<-grep("/home/louis", chemRepTr, ignore.case = T)
resRchTourLin
if (resRchYaf==1) {
  setwd("C:/Users/lb3/OneDrive/not_sync/git")
  } else if (resRchTourLin==1) {
  setwd("~/git")
  }
rm(chemRepTr, resRchTourLin, resRchYaf)

df<-load("Chapitre7.RData")
str(df)
summary(df)
names(performanceF)
names(performanceG)
names(tailleF)
names(tailleG)

#########exercice :
###cb d'individus au total inclus ?
#via commande union()
print(lgTtlF<-length(union(names(performanceF),names(tailleF))))
print(lgTtlG<-length(union(names(performanceG),names(tailleG))))
print(nbTtl<-lgTtlG+lgTtlF)
###pour quels individus on a une taille ET une msr de saut ?
#via commande intersect()
communF<-intersect(names(performanceF),names(tailleF))
print(lgCommunF<-length(communF))
communG<-intersect(names(performanceG),names(tailleG))
commun<-c(communF,communG)
lgCommun<-commun
lgCommun
length(communF)
length(communG)
length(lgCommun)
###pour quels individus on a une seule de ces variables ?
#via commande setdiff(x,y)
print(unqValF1<-setdiff(names(performanceF),names(tailleF)))
print(unqValF2<-setdiff(names(tailleF),names(performanceF)))#on récupère les éléments de A non présents dans B, MAIS AUSSI ensuite les éléments de B non présentes dans A
unqValF<-c(unqValF1,unqValF2)
unqValF
lgUnqValF<-length(unqValF)
lgUnqValF
unqvalG1<-setdiff(names(performanceG),names(tailleG))
unqvalG2<-setdiff(names(tailleG),names(performanceG))
unqValG<-c(unqvalG1,unqvalG2)
unqValG
lgUnqValG<-length(unqValG)
lgUnqValG
lgUnqVal=lgUnqValF+lgUnqValG
lgUnqVal
###construire nouveaux vecteurs ne contenant que les données qu'on peut analyser
names(tailleG) %in% names(performanceG) #x %in% y => renvoie les booléesn des éléments de x communs avec y
tailleG [names(tailleG) %in% names(performanceG)]#retourne les valeurs en commun

###########réciprocité des données
#On créé deux nouveaux vecteurs en utilisant le même vecteur de noms afin d'avoir une réprocité des données entre les deux vecteurs
tailleG2<-tailleG[communG]
performanceG2<-performanceG[communG]
tailleG2
performanceG2
#le fait d'avoir créé les nouveaux vecteurs en utilisant un même index permet d'avoir de nouveaux vecteurs ordonnés de la même manière.

#####on souhaite maintenant trier les vecteurs tailleG2 et tailleF2 par ordre de taille croissant tout en conservant la réciprocité avec leurs vecteurs associés performanceG2 et performanceF2
tailleG2Tri<-tailleG2[order(tailleG2)]
tailleG2Tri
performanceG2Tri<-performanceG2[order(performanceG2)]
performanceG2Tri

########corrélations et régression linéaire

####corrélation
cor(tailleG2,performanceG2)#pour utiliser fonction cor, il faut vecteur de valeurs numériques de même longueur ET avec données réciproques
#ici vu que proche de 0 plutôt que 1 ou -1 => pas de corrélation linéaire, MAIS, possible que ce soit un autre type de corrélation, non linéaire (polynomiale / autre)

###régression linéaire
#via la fonction lm(x~y) pour linear model
lm(performanceG2~tailleG2)

###test corrélation
cor.test(performanceG2,tailleG2)
