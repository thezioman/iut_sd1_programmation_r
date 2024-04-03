#1
salaire_net_cadre=function(sal_mens){
  sal_net=sal_mens-sal_mens*0.25
  return(sal_net)
}
salaire_net_cadre(23000)
#2 
salaire_net_cadre=function(sal_mens=2500){
  sal_net=sal_mens-sal_mens*0.25
  return(sal_net)
}
salaire_net_cadre()
#3
salaire_net_cadre=function(sal_mens=2500,hor=1){
  sal_net=sal_mens-sal_mens*0.25
  sal_net=sal_net*hor
  return(sal_net)
}
salaire_net_cadre(hor=40)
#4
salaire_net_cadre=function(sal_mens=2500,hor=1){
  if(!is.numeric(sal_mens)){
    return("ERREUR: mettre des chiffres pls")
  }
  sal_net=sal_mens-sal_mens*0.25
  sal_net=sal_net*hor
 
  return(sal_net)
}

salaire_net_cadre("bcp",100)
#5
salaire_net_cadre=function(sal_mens=2500,hor=1){
  if(!is.numeric(sal_mens)){
    return("ERREUR: mettre des chiffres pls")
  }
  if (!is.numeric(hor) & ((hor <= 0) | (hor>=1))){
    ("ERREUR: horaire entre 0 et 1")
  } 
  sal_net=sal_mens-sal_mens*0.25
  sal_net=sal_net*hor
  
  return(sal_net)
}
salaire_net_cadre(1500,"lol")

#exercice 2
#1
u=c(1,2,3,4,5)

resultat = 0
for (element in c(1,2,3,4,5)) {
  resultat = resultat +  element
  print(paste("le resultat est : ",resultat))
}

#2
x=0
while ( x >=50){
  x=x+1
  print ("1")}


