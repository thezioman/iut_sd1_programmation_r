setwd("L:/BUT/SD/Promo 2023/umirandasenra/r/dataset")
df=read.csv("velov.csv", header = TRUE , sep=";" , dec ="," )
summary(df)
class(df$status)
class(df$CodePostal)
df$status=as.factor(df$status)
df$CodePostal=as.factor(df$CodePostal)
df$bornes = ifelse (df$capacity != (df$bikes + df$stands),"KO", "OK")
table(df$bornes)
hist(df$capacity)
hist(x = df$capacity, 
     main = "Distribution de \n la capacité des stations",
     breaks = 6,
     col="red",
     xlab=" Capacity")
abline(h = 100, col = "blue" , lty = 2 )
hist(x = df$capacity, 
     main = "Distribution de \n la capacité des stations",
     col = "red",
     probability = TRUE,
     xlab = "Capacity")
lines(density(df$capacity),
      lty = 2,
      col = "blue",
      lwd = 4)

hist(x = df$capacity, 
     main = "Distribution de \n la capacité des stations",
     col = "red",
     probability = TRUE,
     xlab = "Capacity",
     ylim = c(0,0.08))

lines(density(df$capacity),
      lty = 2,
      col = "blue",
      lwd = 2)
boxplot (x= df$capacity,
         main = " Boxplot de /n la capacité des stations",
         horizontal= TRUE)
boxplot(x = df$capacity, 
        main = "Boxplot de \n la capacité des stations",
        horizontal = FALSE,
        outline = FALSE)
points(moy, col = "red", pch = 15, cex = 2)
