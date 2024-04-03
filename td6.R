# ne met pas le chemin complet et n'a pas changer
#sep=, header = TRue, dec ="."  
df =read.csv(file = "D:/r/dataset/NBA2014_2015.csv", sep = ",",
               header = TRUE, dec = ".")
nrow(df$nba)#pas oublier $ pour dire la colonne de quel df 
ncol(df$nba)
colnames(df)  # orthographes ( manque s )

df$PERIOD <- as.factor(df$PERIOD)# prend en compte majuscule ou non 
df$PTS_TYPE <- as.factor(df$PTS_TYPE)#bien écrire nom des colonnes
df$SHOOTER <- as.factor(df$SHOOTER)

##2

length(levels(df$PERIOD))# dif maj plus ecriture length et level 
length(df$PTS_TYPE)# ecriture colonne+ length écriture
length(df$SHOOTER)# //
summary(df)# bien ercire nom df 
sd(df$SHOT_DIST)# ferme les parenthése 
sd(df$SHOT_CLOCK, na.rm=TRUE)# on met entre parenthése et non []+ na .rm pour éviter résult NA
    help(table)

#combien de tirs manqués/réussis
table(df$SHOT_RESULT) # ne pas mettre de , et pas de " juste df$ 
#les quartiles
quantile(df$SHOT_CLOCK, probs = c(0.25,0.5,0.75),na.rm = TRUE) # probs != 4 et ne pas oublier na.rm
#les déciles
quantile(df$CLOSE_DEF_DIST, seq(from=0, to=1, by=0.1),na.rm=TRUE)# quantile sans s, prob!=10, urilisé bonne colonne
 #nombre de matches différents
 liste_game = unique(df$GAME_ID) # bien mettrele bon nb de ()
length(liste_game) #bien réecrire variable
#nombre de joueurs différents
df$SHOOTER <- as.factor(df$SHOOTER)# as.factor et non as_factor
levels(df$SHOOTER)#levels et pas nlevel 
#conversion de la variable SHOT_DIST en mètre pour que les européens comprennent nos chiffres
df$SHOT_DIST_METRE = df$SHOT_DIST * 0.30# mettre bon nom de df et pas oublier le df$ 
#nombre de points qu'a rapporté la tentative (0,2 ou 3)  
df$PTS_MARQUES = ifelse(df$SHOT_RESULT == "made",df$PTS_TYPE, 0)# pas de yes , comparaison donc ==
 #On supprime la variable GAME_RESULT car elle n'est pas utile
df$GAME_RESULT <- NULL # nul avec 2 l (null)
       
#création d'un objet sans la première colonne GAME_ID
df2 <- df[,-1] # [lignes, colonnes]

###3
#Les 100 tirs réussis ou manqués les plus loin
rang <- order(df$SHOT_DIST, decreasing = TRUE)
df3 <- df[rang,]# [ligne , rangs ]( mettre a la place de ligne)
df3 <- df[ 1 : 100 , ]#sep , et pas ; 

#Les 100 tirs réussis les plus loin
df4 = subset(df3, df3$SHOT_RESULT == "made")# made "" et df3$ == pour comparaison
df4 <- df[ 1 : 100 , ]# , comme sep 


#Combien de tirs à 3 points a réussi Kobe Bryant ?
df_kobe = subset(df,SHOT_RESULT == "made" & #== et " " pour made 
                   PTS_TYPE == 3 & # ==
                   SHOOTER == "kobe bryant")   # comparaison(==)+ bien écrire nom

dim(df_kobe)#dim dit nb ligne te colonne
nrow(df_kobe)
#Le TOP5 des joueurs qui ont marqués le plus de points dans la saison
df_total <- aggregate(PTS_MARQUES ~ SHOOTER, data = df, FUN = sum)
df_total_tri <- df_total[order(df_total$PTS_MARQUES,decreasing=TRUE),]#[ ligne, colonnes]
df_top5 <-  df_total_tri[ 5 , ]
View(df_top5)

###4
#Des graphiques adaptés selon le type de variable

#construction de la fonction
build_graph <- function(une_colonne, nom_colonne) {
  if(is.numeric(une_colonne)) {
    print(boxplot(une_colonne, main = nom_colonne))
  }else (as.factor(une_colonne)) {
    tri <- table(une_colonne)
    print(barplot(tri, main = nom_colonne))
  }
  
  #on déroule la fonction sur chaque colonne du data frame.
  
  for (colonne in colnames(df) {
    build_graph(une_colonne = df[colonne , ] , nom_colonne = colone)
  }
}