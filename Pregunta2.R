#pregunta 2

#Tenim que la mitjana és 10000 hores i per formula la mitjana és 1/lambda, així doncs, lambda és 1/10000

#pregunta 1 ens demanen la P(T>= 13000) que això ho feiem fent 1-F(13000):

1-pexp(13000,(1/10000))

#en la segona pregunta el que ens demanen és el següent: F^-1(0.8) = t

qexp(0.8,1/10000)


#segon apartat
#lu de la semilla és perquè tots obtinguem el mateix resultat

#hem d'executar el nostre codi immediatament després de la semilla
set.seed(85)
simulacio<-rexp(100, 1/10000)
#ens ho guardem a la variable "simulació" per no haver d'anar executant tot cada cop

mean(simulacio)
median(simulacio)
var(simulacio)
