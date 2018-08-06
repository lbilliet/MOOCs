setwd("C:/Users/lb3/OneDrive/not_sync/git/RMooc")
nb<-0
res <- (cos(sin(nb+10)))^(cos(sin(nb+10)))
# On a fini nos différents traitements et on enregistre le résultat dans un fichier externe
print("Sauvegarde")
save(res, file="res.RData")#on a sauvegardé ici la variable res spécifiquement
