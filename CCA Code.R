#CCA Test
library(vegan)
library(labdsv)
library(tidyverse)
data(varespec)
data(varechem)

vare.cca <- cca(varespec ~ Baresoil+Humdepth+pH+N+P+K+Ca+Mg+S+Al+Fe, data=varechem)
vare.cca
plot(vare.cca)
summary(vare.cca)

#tidy data example
FHG<-Fall_Habitat_Matrix[,c(3,4,5,6,7,8,9,10)]

#CCA Test with Data
Fall.cca<-cca(Fall_Genus_Matrix ~ LeafL+LeafD+BareG+Veg+Stone+Deadwood+Compaction+Slope, data=Fall_Habitat_Matrix)
Fall.cca
plot(Fall.cca)
