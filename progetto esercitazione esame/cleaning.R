library(tidyverse)
library(readxl)
library(dplyr)
library(tidyr)
library(janitor)
library(stringr)

view(data)
head(data)
str(data)
glimpse(data)

#pulizia dataset

dati <- read_excel("data.xlsx") |>
  clean_names() |>
  filter(!if_all(everything(), is.na)) |>
  mutate(across(where(is.character), ~ str_squish(.x))) |>
  fill(species, island, SDh, .direction = "down") |>
head(dati) 

#"SDh" non me la trova perchè usando clean_names() me l'ha rinominata in qualche altro modo

dati <- read_excel("data.xlsx") |>
  clean_names()

names(dati) #così controllo come me l'ha nominata

#riprovo lo script ssotituendo il nome

dati <- read_excel("data.xlsx") |>
  clean_names() |>
  filter(!if_all(everything(), is.na)) |>
  mutate(across(where(is.character), ~ str_squish(.x))) |>
  fill(species, island, s_dh, .direction = "down")

#vediamo con uno script senza clean_names() e quindi senza che i nomi vengano modificati

dati <- read_excel("data.xlsx") |>
  filter(!if_all(everything(), is.na)) |>
  fill(Species, Island, `SDh`, .direction = "down")

names(dati)

view(dati)
head(dati)
str(dati)
glimpse(dati)
