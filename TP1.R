class(iris)
View (iris)
nrow(iris)
ncol(iris)
colnames(iris)
summary(iris)

iris[c("Sepal.Length","Species")]# colonne
iris[c(100,103,105),]#ligne
iris[50:100,]
mean(iris$Sepal.Length)#moyenne
median(iris$Sepal.Width)#mediane
sd(iris$Petal.Length) #ecart type
quantile(iris$Petal.Width, probs= seq(from=0.1, to = 0.9, by=0.1)) # deciles
dfmanga=read.csv(file="L:/BUT/SD/Promo 2023/umirandasenra/r/manga.csv",header = TRUE, sep= ",", dec = ".")
dfanime=read.csv(file="L:/BUT/SD/Promo 2023/umirandasenra/r/anime.csv",header = TRUE, sep= ",", dec = ".")
View(dfanime)
View(dfmanga)
class(dfmanga)
class(dfanime)
dim(dfmanga) #nb colonne ligne
dim(dfanime)
mean(dfmanga$Score)#moyenne
mean(dfanime$Score)
sum(dfmanga$Vote)
length ( dfanime$Vote)
sd(dfmanga$Score) # manga + homogénes 
sd(dfanime$Score)

