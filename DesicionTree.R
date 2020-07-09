#Codigo de practica de árboles de desiciones
# Hecho por Jonathan Keneth Rodriguez Bernal
# FIAD-UABC, 17 DE ABRIL,2020

install.packages("rpart")
library(rpart)
library(readr)

dat<- read_csv("Practicas/datos_arbol.csv")
dat

# GENERACIÓN DE ALGORITMO DE ARBOL DE DESICIONES
##Descarga de la Base de Datos a Analizar

library(rpart)
library(readr)

dat<- read_csv("datos_arbol.csv")

View(dat)
names(dat)[1]="Experiments"


## Construcción del Modelo

model<-rpart(Play~Outlook+Temp+Humidity+Windy, data =dat, control = rpart.control(minsplit = 2))

## Modelo Visualizado

plot(model, compress=TRUE)
plot(text(model,cex=0.7, use.n = TRUE, fancy = FALSE, all = TRUE))



help("rpart")
