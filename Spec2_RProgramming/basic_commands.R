
# coercion : 
x <- 0:6
x
as.numeric(x)
as.logical(x)


#c-/r-binding : 
x <-1:3
y <-10:12


cbind(x,y)   # column-Binding
rbind(x,y)   # row-binding 


# Kategorisierung : Factor : 

x<- factor(c("yes","no","yes","yes","no"))
x

table(x)


# wie wird es abgespeichert ? : 

unclass(x)


# Tabellen : dataframe:

x<- data.frame(Autos=1:4,Feature_vorhanden=c(T,F,F,T))



# Objekten innerhalb eines Vektors direkt Namen zuordnen : 

x<- 1:3
names(x)<- c("Albert","Brummbert","Camembert")


# Namen auch in Liste  : 

x<- list(a=1,b=2,c=3)


# Matrix beschriften : sowohl Spalten- als auch Zeilennamen über die Namen der Dimensionen 

m<- matrix(1:4,ncol=2,nrow=2)
dimnames(m)<- list(c("a","b"),c("c","d"))


# saving an object using dput :

y<- data.frame(a=1,b="a")
dput(y)

dput(y,file="y.R")

new.y<- dget("y.R")
new.y



# Teilauslese : Subsetting : 

x<- list(foo=1:4,bar = 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]




# NUR FUNKTIONIERENDE TUPEL AUSLESEN ! WICHTIG , UM GUT ANALYSIERBARE DATENSÄTZE ZU ERHALTEN: 

x<- c(1,2,NA,4,NA,5)
y<- c("a","b",NA,"d",NA,"f")
good<- complete.cases(x,y)
good
x[good]
y[good]





