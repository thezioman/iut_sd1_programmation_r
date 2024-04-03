#exercice 1

setwd("L:/BUT/SD/Promo 2023/umirandasenra/r/dataset")
df=read.csv(file="fao.csv", header =TRUE, sep =";", dec= ",")
View(fao)
nbpays=nrow(fao)
summary(fao)

#exercice 2 
moydis=mean(fao$Dispo_alim)
nb_habitant=sum(fao$Population,na.rm=TRUE )
ecarttype_prod=sd(fao$Prod_viande,na.rm=TRUE)
quart_kcal=quantile(fao$Dispo_alim, probs=c(0.25,0.5,0.75))

cent=quantile(fao$Import_viande, probs=(1:100)/100)
print(cent)

#exercice 3

pays5=head( fao[order(fao$Population, decreasing = FALSE),],5)

payspeup= head(df[order(df$Population,decreasing=TRUE),],5)
print(payspeup)

prodv5=head(df[order(df$Prod_viande, decreasing=TRUE),],5)
print(prodv5)

expv5=head(df[order(df$Export_viande, decreasing=TRUE),],5)
print(expv5)

