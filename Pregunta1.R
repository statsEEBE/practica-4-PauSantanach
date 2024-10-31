#codi problema 1

#per veure-ho i guiar-nos una mica dibuixem la poisson

X<- 0:30  #posem que com a màxim rebem 30 trucades per hora, per la fcking face

#ens donenen la esperança, i en el cas de poisson, la esperança és directament el valor de lambda, així doncs, seguint la formula de la funció de distribució per poisson podem trobar que P(X=20) serà:
exp(-25)*25^20/factorial(20)

#això és f(20), per tant també ho podem calcular fent:
dpois(20,25)

#veiem que posem x = 20 i lambda(paràmetre) = 25 i veiem que dona el mateix

#si volguessim veure tots els valors de f(x) hauriem de fer el següent

dpois(X,25)

#així veiem la P(X = 0) fins a P(X = 30) ja que abans hem limitat a 30 però podem canviar-ho això

#ara podem fer el gràfic per veure això millor.

f<- dpois(X,25)

plot(X,f,type = "h", col = "red")


#si ens demanessin la probabilitat de tenir com a màxim 20 trucades, ens estarien demanant P(X<=20) i això en el fons és (F(20)) i per ant ho podem calcular com:
ppois(20,25)

#si ens demanen la P(18 <= X >= 22)

#doncs seria fer:

ppois(22,25)-ppois(17,25) #si ens hi fixem aquí estem restant les xinxetes fins a 17 (el 18 no ja que és inclòs) de les xinxetes fins a 25, d'aquesta manera obtenim només les xinxetes de 18 (inclòs) fins a 25(inclòs)


#anem ara a graficar F(X)
plot(X,ppois(X,25), type="s", col="red")

#ens poden demanar la mediana d'això, doncs haurem de fer l'antiimatge de 0,5 és a dir F(0,5)^-1, i ho farem així:
qpois(0.5,25)

#si ens demanessin el primer quartil:
qpois(0.25,25)


#resum comandos
#d--> f(x) (dpois,en el cas de poisson)
#p--> F(x) (ppois en el cas de poisson)
#q--> per a fer els quartils i la mediana (F(x)^-1)

#Això era per veure una mica com és poisson, ara anema  resoldre l'exercici de veritat,

#pregunta 1

#ara tindrem que la nostra nova lambda és 0.033*lambda(anterior) això sempre és així, si agafem una part de la mostra la lamba canvia així, pex. si agafessim 2 cops la mostra la lambda seria 2*lambda i així

#però nosaltres volem saber la P(x= 0, t) probabilitat de que x = 0 en l'interval t, que en el nostre cas t seria: 0 - 0.033

# per això hem de pasar al model de distribució exponencial

#però per a respondre la primera pregunta no cal gaire res, recordem que la probabilitat de que una funció continua prengui un valor complet és 0 per tant la resposta a la preguta 1 és 0,la segona pregunta sí que la podem resoldre ja que en demanen: P(X>=0.052

#es resol així
1 -pexp(0.052,25)

#dibuixem la funció de densitat
t<- seq(0,1,0.01)
plot(t, dexp(t,25), type= "l", col= "red")

#distribució:
plot(t,pexp(t,25), type = "l", col = "red")


#llavors si no sabem quan és la mitjana la podem trobar fent una simulació de molttes proves i claucular la mitjana d'això

#les simulacions les fem amb r...

mean(rexp(500000,25))

#i veuriem que la mitjana és un valor proper a 0,04
