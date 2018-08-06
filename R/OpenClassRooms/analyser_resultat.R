setwd("C:/Users/lb3/OneDrive/not_sync/git/RMooc")
# On charge la variable que l'on avait précédemment enregistrée

load("res.RData")

# Et on y applique un nouveau traitement
nouveau_resultat <- (res + 3) ^ 4
nouveau_resultat <-  sqrt(nouveau_resultat)

print(paste("Le nouveau résultat est: ", nouveau_resultat, sep = ""))