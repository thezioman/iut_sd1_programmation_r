getwd()
setwd("L:/BUT/SD/Promo 2023/umirandasenra/r/dataset")
getwd()
bodies_kart=read.csv(file="bodies_karts.csv",header=TRUE,sep=";",dec=",")
drivers=read.csv(file="drivers.csv",header=TRUE,sep=";",dec=",")
gliders=read.csv(file="gliders.csv",header=TRUE,sep="|",dec=".")
tires=read.csv(file="tires.csv",header=TRUE,sep="\t",dec=",")

dim(bodies_kart)
dim(tires)
dim(gliders)
dim(drivers)

summary(bodies_kart)
summary(drivers)
summary(tires)
summary(gliders)

plot(x=drivers$Weight,y=drivers$Acceleration,
     main = " poids en fonction de l'accéleration")   # $ sert à dire d'ou vient la variable

cor(x=drivers$Weight,y=drivers$Acceleration)
#sd == ecart type 
covXY = cov(x = drivers$Weight,
            y = drivers$Acceleration)

sX = sd(drivers$Weight)
sY = sd(drivers$Acceleration)
print(covXY / (sX*sY))
coefcorr = cor(x=drivers$Weight,y=drivers$Acceleration)
coefDeter= coefcorr^2
print(coefDeter)

matriceCor= cor(drivers[,-1])
matriceCor=round(matriceCor,2)
View(matriceCor)

install.packages("corrplot")
library(corrplot) #je charge mon package pour pouvoir utiliser ses fonctionalités
corrplot(matriceCor, method="circle")

matriceCor = round(cor(tires[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE )

matriceCor = round(cor(bodies_karts[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE 
)

matriceCor = round(cor(gliders[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE 
)

#exercice 3
resultat = drivers [, c("Driver","Weight")]
View(resultat)

resulat=
