library(shiny)
library(ggplot2)
theme_set(theme_minimal())
library(dplyr)

pokemon <- read.csv(file="Pokemon.csv")

names(pokemon)

ggplot(pokemon, aes(x=reorder(Type1, Attack, FUN=median), y=Attack)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle=90, hjust=1, vjust=0.5)) +
  labs(x="Tipo", y="Ataque")





