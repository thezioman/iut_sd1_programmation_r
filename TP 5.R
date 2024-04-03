#2
fichiers = list.files(path = getwd(),
                       pattern = ".csv$",
                       full.names = TRUE)
#3
library(tools)
print(fichiers[1])
nom_fichier = basename(path = fichiers[1])
nom_fichier_sans_extension = file_path_sans_ext(x = nom_fichier)
print(nom_fichier_sans_extension)
#4
assign(nom_fichier_sans_extension, read.csv(fichiers[1],sep =",",
                                               dec ="."))
#5
# Boucle pour lire chaque fichier CSV
for (fichier in fichiers) {
  # Extraire le nom du fichier sans extension
  nom_objet <- file_path_sans_ext(basename(fichier))
  
  # Lire le fichier CSV et l'affecter à une variable avec le nom du fichier
  start_time <- Sys.time()
  assign(nom_objet, read.csv(fichier, 
                             sep = ",",
                             dec = "."))
  end_time <- Sys.time()
  # Calcul du temps écoulé
  execution_time <- end_time - start_time
  cat("Importation : ",nom_objet, "=" , execution_time , "\n")
}
#exercice 2
df_x = subset(team, city == "Los Angeles", select = c("id", "city"))
df_y = subset(game, select = c("game_id", "team_id_home"))
dfJoin = merge(x = df_x, y = df_y, 
               by.x = "id", 
               by.y = "team_id_home", 
               all.x = TRUE)
nrow(dfJoin)
 #2 
df_x = subset(game_info,select = c ("game_id", "attendance"))
df_y = dfJoin


dfJoin=merge(x=df_x, y=df_y,
             by ="game_id",
             all.x=TRUE)
mean(dfJoin$attendance, na.rm=TRUE)
View(dfJoin)
