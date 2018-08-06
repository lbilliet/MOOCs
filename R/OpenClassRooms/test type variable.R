chemRepTr<-getwd()
resRchYaf<-grep("lb3", chemRepTr, ignore.case = T)
resRchTourLin<-grep("usr", chemRepTr, ignore.case = T)
setwd("C:/Users/lb3/OneDrive/not_sync/git")
if (resRchYaf==1) {
  setwd("C:/Users/lb3/OneDrive/not_sync/git")
  } else if (resRchTourLin==1) {
  setwd("usr/git")
  }

chnCar<-"abcd efgh"
is.character(chnCar) # test variable si bien type string
is.numeric(chnCar)# test variable si type numérique
is.logical(chnCar)# test variable si bien type booléen

chnCarBool<-"TRUE"
as.character(chnCarBool)#conversion variable en string
as.logical(chnCarBool)#conversion varaiable en booléen

resDiv<-10/3
resDiv
as.integer(resDiv)#conversion en entier tronqué

as.null(42)#renvoie tj null

floor(2.4)#utiliser point pour marquer décimale d'un numérique // floor = arrondi entier inf
ceiling(2.4)# arrondi entier sup
round(2.4)# arrondi entier le plus proche

scan()#demandera différentes entrées numériques à la suite, comme si création de vecteur en attente de contenu de type numériques
scan(nmax=4)#ici contraintes sur dimension max de contenu du vecteur = 2

paste()#pour concaténer, avec argument sep="" pour spécifier l'opérateur logique de concaténation (eg espace / tab etc), et les différents arguments sont à sépa par virgule
age<-28
prenom<-"Louis"
phrase<-paste("Je m\'appelle", prenom, "et j\'ai", age, "ans.", sep = " ")

nchar(phrase)#compte le nb de caractères, y compris whitespace
phraseMaj<-toupper(phrase)#tout en maj
phraseMin<-tolower(phrase)#tout en min
subPhrase<-substr(phrase, 12, 33)#permet de faire subset d'une string avec num char départ / num char end

getwd()#situe le répertoire de travail actuel

sink("test export.txt")#redirige résultats qui sortent normalement dans la console vers un fichier de sortie
age<-28
prenom<-"Louis"
phrase<-paste("Je m\'appelle", prenom, "et j\'ai", age, "ans.", sep = " ")
phrase

sink(NULL)#redirige résultats vers console
age<-28
prenom<-"Louis"
phrase<-paste("Je m\'appelle", prenom, "et j\'ai", age, "ans.", sep = " ")
phrase

nb<-0
res <- (cos(sin(nb+10)))^(cos(sin(nb+10)))
# On a fini nos différents traitements et on enregistre le résultat dans un fichier externe
print("Sauvegarde")
save(res, nb, file="res.RData")#on a sauvegardé ici les variables res et nb spécifiquement
resultat<-load("C:/Users/lb3/OneDrive/not_sync/git/RMooc/res.RData")#charge le NOM de la variable res dans la variable resultat
load("C:/Users/lb3/OneDrive/not_sync/git/RMooc/res.RData")#charge la variable complète (NOM + contenu) dans l'envrionnement de travail

# On lance le premier script qui enregistre la variable resultat
source("gener_resultat.R")

# On efface cette variable
rm(res)

# Et on la réimporte dans le second script
source("analyser_resultat.R")
