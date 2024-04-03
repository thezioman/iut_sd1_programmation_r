par(mfrow= c(1,1))
plot(NA, xlim=c(-5,5),ylim=c(0,1),xlab="X",
     ylab= "densité de probabilité",
     main="densité de probabilités /n de lois normales")
#2
moyenne = c(0, 0, 0, -2)
ecarttype= c(0.45,1,2.25,0.7)
colors=c("red", "blue", "green","orange")
legend_labels= c()
for( i in 1:length(moyenne)){
  serie=rnorm( n= 1000,
               mean= moyenne[i], 
               sd= ecarttype[i])
  lines(density(serie), col = colors[i])
  legend_labels= c( legend_labels, paste ("m=", moyenne[i],",","s=",ecarttype[i]))
}

legend("topright",legend=legend_labels,col=colors, lwd=2,cex=0.8)
#3
serie = rnorm(n = 1e4, mean = 0, sd = 1)
#4
hist(serie, main = "loi normal centrée-réduite",
     probability = TRUE )
lines(density(serie))
#5 
median(serie)
#6
quantile(serie)
#7 
quantile(serie,seq(from=0, to=1, by = 0.01))
quantile(serie, 0.95)
#8
qnorm(p=0.95, mean = 0 , sd = 1)
pnorm(q=1.644854,mean=0,sd=1)
#9
qnorm(p=0.975, mean = 0 , sd =1)
#10
pnorm( 1.96, mean=0 , sd=1 )
# ex 2
#1
colonne=sequence(0,3.9,by=0.1)
prob=c()
for (i in 1:length(colonne)){
  proba=qnorm(p= colonne[i], mean=0, sd=1)
  prob=c(prob,proba)
  prob= round(prob,digits= 4 )
}
#2
prob=c()
ligne= sequence(0,0.09, by=0.01)
for (i in 1:length(colonne)){
  for (j in 1:length(ligne))
    num=ligne[i]+colonne[i]
  proba=qnorm(p= num, mean=0, sd=1)
  prob=c(prob,proba)
  prob= round(prob,digits= 4 )
}
