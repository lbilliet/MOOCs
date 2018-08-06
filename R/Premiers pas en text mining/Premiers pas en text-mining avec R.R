# install.packages("tm")
# library("tm")
# install.packages("tidytext")
# library("tidytext")
# install.packages("proustr")
# library("proustr")
# install.packages("tidyverse")
# library("tidyverse")
# install.packages("stopwords")
# library("stopwords")
devtools::install_github("ThinkRstat/stopwords")
library("tm")
library("tidytext")
library("proustr")
library("tidyverse")
library("stopwords")
library("dplyr")
books<-proust_books()
books_tidy <- proust_books() %>%
   mutate(text = stringr::str_replace_all(.$text, "’", " ")) %>% 
   unnest_tokens(word, text) %>%
   filter(!word %in% stopwords_iso$fr) %>%
   count(word, sort = TRUE) %>%
   head(10)

books2<-mutate(.books, text = stringr::str_replace_all(.$text, "’", " "))


df <- proust_books()

df$text <- stringr::str_replace_all(df$text, "’", " ")
output <- unnest_tokens(tbl = df, word, text)
str(output)
head(output)

sort(table(output$word),decreasing = T)[1:10]
