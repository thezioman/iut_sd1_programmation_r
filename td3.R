library(readxl)
pokemon <- read_excel(path = "L:/BUT/SD/Promo 2023/umirandasenra/r/pokemon.xlsx",sheet = "pokemon")
 # 2
dim(pokemon) #retourne ligne/colonne
#3
summary(pokemon) #resumé de donnée 
#4 transforme en facteur 
pokemon$is_legandary=as.factor(pokemon$is_legendary)
pokemon$generation=as.factor(pokemon$generation)
pokemon$type=as.factor(pokemon$type)
#5 
summary(pokemon)

#exercice 2  # crée une collonne avec test if 
pokemon$attack_group=ifelse( test=pokemon$attack>= median(pokemon$attack),"attack+","attack-")
pokemon$attack_group=as.factor(pokemon$attack_group)
summary(pokemon)

#2
pokemon$water_fire=ifelse(pokemon$type %in% c("water","fire"),"yes","no")
pokemon$water_fire=as.factor(pokemon$water_fire)
summary(pokemon)
#3
quart_attack= quantile(pokemon$attack,probs=c(0.25,0.5,0.75))
quert_def =quantile(pokemon$defense,probs=c(0.25,0.5,0.75))
quart_speed= quantile(pokemon$speed, probs=c(0.25,0.5,0.75))
pokemon$best=ifelse(pokemon$attack>=quart_attack[3]
                    & pokemon$defense>=quert_def[3] 
                    & pokemon$speed>=quart_speed[3],"yes","no")
pokemon$best=as.factor(pokemon$best)
