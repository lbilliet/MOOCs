rm(list = ls())
source("CleanWd.R")
wd()
setwd("MOOCs/R/Coursera/AdvancedRProgramming")
library(readr)
library(dplyr)

## Download data from RStudio (if we haven't already)
if(!file.exists("data/2016-07-20.csv.gz")) {
  download.file("http://cran-logs.rstudio.com/2016/2016-07-20.csv.gz", 
                "data/2016-07-20.csv.gz")
} else {
  "données déjà présentes" %>% print
}
cran <- read_csv("data/2016-07-20.csv.gz", col_types = "ccicccccci")
cran %>% filter(package == "filehash") %>% nrow
#ici intérêt de pouvoir faire changer les variables injectées pour le jour, et pour le nom du package recherché
#go to function avec arg spécifiques sur ces variables

## pkgname: package name (character)
## date: YYYY-MM-DD format (character)
num_download <- function(pkgname, date) {
  ## Construct web URL
  year <- substr(date, 1, 4)
  src <- sprintf("http://cran-logs.rstudio.com/%s/%s.csv.gz",
                 year, date) #ici concéténation et injection du contenu des variables year et date via le "%s"
  
  ## Construct path for storing local file
  dest <- file.path("data", basename(src))
  
  ## Don't download if the file is already there!
  if(!file.exists(dest))
    download.file(src, dest, quiet = TRUE)
  
  cran <- read_csv(dest, col_types = "ccicccccci", progress = FALSE)
  cran %>% filter(package == pkgname) %>% nrow
}

num_download("quanteda", "2016-07-20")

num_download <- function(pkgname, date = "2016-07-20") { #ici une valeur par défaut pour la date est bien spécifiée, si non renseignée par l'utilisateur
  year <- substr(date, 1, 4)
  src <- sprintf("http://cran-logs.rstudio.com/%s/%s.csv.gz",
                 year, date)
  dest <- file.path("data", basename(src))
  if(!file.exists(dest))
    download.file(src, dest, quiet = TRUE)
  cran <- read_csv(dest, col_types = "ccicccccci", progress = FALSE)
  cran %>% filter(package == pkgname) %>% nrow
}

num_download("Rcpp")

check_for_logfile <- function(date) { #création d'une fonction intermédiaire qui sert à DL / créer le fichier et son chemin si DL il y a
  year <- substr(date, 1, 4)
  src <- sprintf("http://cran-logs.rstudio.com/%s/%s.csv.gz",
                 year, date)
  dest <- file.path("data", basename(src))
  if(!file.exists(dest)) {
    val <- download.file(src, dest, quiet = TRUE)
    if(!val)# ajout d'un check si dl a bien pu se faire si jamais il est souhaité
      stop("unable to download file ", src) #print un message d'erreur au besoin
  }
  dest
}

num_download <- function(pkgname, date = "2016-07-20") {
  dest <- check_for_logfile(date)
  cran <- read_csv(dest, col_types = "ccicccccci", progress = FALSE)
  cran %>% filter(package == pkgname) %>% nrow
}   

####check dependencies
check_pkg_deps <- function() {
  if(!require(readr)) {#check si le package est installé, et si non, lance l'install (ici un "require(readr)" retourne TRUE car package déjà installé... donc il faut l'inverse pour remplir la condition du if)
    message("installing the 'readr' package")
    install.packages("readr")
  }
  if(!require(dplyr))
    stop("the 'dplyr' package needs to be installed first")
}

num_download <- function(pkgname, date = "2016-07-20") { #Now, our updated function can check for package dependencies.
  check_pkg_deps()
  dest <- check_for_logfile(date)
  cran <- read_csv(dest, col_types = "ccicccccci", progress = FALSE)
  cran %>% filter(package == pkgname) %>% nrow
}

#####Vectorization
## 'pkgname' can now be a character vector of names
num_download <- function(pkgname, date = "2016-07-20") {
  check_pkg_deps()
  dest <- check_for_logfile(date)
  cran <- read_csv(dest, col_types = "ccicccccci", progress = FALSE)
  cran %>% filter(package %in% pkgname) %>% #Use a group_by() %>% summarize() combination to count the downloads for each package.
    group_by(package) %>%
    summarize(n = n())
}    

num_download(c("filehash", "weathermetrics", "quanteda"))

#####argument checking
num_download <- function(pkgname, date = "2016-07-20") {
  check_pkg_deps()
  
  ## Check arguments
  if(!is.character(pkgname))
    stop("'pkgname' should be character")
  if(!is.character(date))
    stop("'date' should be character")
  if(length(date) != 1)
    stop("'date' should be length 1")
  
  dest <- check_for_logfile(date)
  cran <- read_csv(dest, col_types = "ccicccccci", 
                   progress = FALSE)
  cran %>% filter(package %in% pkgname) %>% 
    group_by(package) %>%
    summarize(n = n())
}    