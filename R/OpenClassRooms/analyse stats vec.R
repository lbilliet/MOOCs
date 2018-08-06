poids <- c(85,78,54,98,66,78,77,62,89,92,76,77,55,68,71,72,99,102,54,66,98,75,82,83,75)
print(poidsPl1<-poids + 1)#ici "recyclage" avec vecteur de même lgr avec addition à chaque vlaeur
length(poids)#ici pour savoir de cb de multiple on a besoin pour additionner via vecteur à suivre
print(poids+c(0,200,1000,5,500))#ici on additionne avec la séq décrite, répétée autant de fois que nécessaire
print(pdsEnLivresUnSurDeux<-poids*c(1,1/2))#ici on convertit 1 fois /2 en livres les poids du vec de départ
print(length(poids<-poids[2:length(poids)]))#suppression de la 1ère valeur du vecteur de pds
head(poidsPl1)#sélectionne les 6 permiers du vec car valeur par défaut
head(poidsPl1, 9)#sélectionne les 9 permiers du vec car précisé
tail(poidsPl1)#sélectionne les 6 derniers du vec car valeur par défaut
tail(poidsPl1, 13)#sélectionne les 13 derniers du vec

poids <- head(poids, length(poids) - 1)#permet ici d'enlever la DERNIERE valeur

####tri
#fonction sort retourne le vecteur mais avec le contenu ordonné
sort(c("A","C","b","a","B"))#prio alpha puis min/maj
sort(c(TRUE, FALSE, T, F))#prio FALSE pour booléens
#fonction order retourne les index du vecteur après le tri
order(poids)#ici le premier élément est le plus petit, puis l'anté-antépénuitième etc
poids[order(poids)]#autre moyen de faire le tri directement = même chose que sort()
rank(poids)#ici la première valeur est celle la plus faible EX AEQUO avec une autre puisqu'étant une décimale

####stats

median(poids, na.rm = T)#argument pour évincer NA
quantile(poids, probs=seq(0,1,0.1))#ici ce sera des déciles vu la séq déterminant le pas
