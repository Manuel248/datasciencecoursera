
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

