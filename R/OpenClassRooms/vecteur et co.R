#vetceur = liste d'éléments tous du même type
numVec<-vector("numeric", 10)#num default = 0
numeric(10)#wrappers équivalent
vector("character", 5)#char par défaut = null
character(5)#équivalent wrapper
vector("logical", 8)#vlaeur par défaut = F
logical(8)#équivalent wrapper

vector()#par défaut vecteur longueur 0 booléen F
vector(length = 10)#crée vec bool lgr 10

print(numVec<-99:85)
print(strVec<-rep("h2g2",8))#répétition 8 fois du string
print(numVec<-seq(42,33))#seq avec pas par défaut = 1 et dégressif
print(numVec<-seq(42,666,42))#ici dernier argument = le pas

#nommer les éléments du vecteur
names(numVec)<-c("la réponse à tout ce qui est","idem+42","idemBis+42","idemTer+42")
numVec#les élements non nommés sont avec un nom NA

numVec[c("la réponse à tout ce qui est","idemTer+42")]#récupération contenu du vecteur aux endroits des noms incriminés
numVec[c(2,4)]#récup contenu vecteur aux index numériques

print(numVecRep<-numVec[rep(8,5)])#création d'un vecteur qui contient 5 fois le contenu du vecteur initial en posiion index 8
print(numVec[-(30:4)])#retient tout le contenu du vecteur sauf ceux depuis la fin jusqu'à l'index 4

#exercice : sélectionner uniquement les valeurs sup à 7 dans vecteur à suivre
vecteur2 <- c(1:12, 8:5, rep(2,4), 8:15, 16:11)
vecteur2>7#crée un vecteur booléen testant la proposition, de même longueur que le vecteur initial
print(vectSup7<-vecteur2[vecteur2>7])#sélectionne uniquement les valeurs >7 du vecteur initial
length(vectSup7)

print(vecteur2[vecteur2>7]<-seq(42,666,66))