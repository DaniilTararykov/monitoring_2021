# Hey there

# R code for plotting the relationship among ecological variables

install.packages("sp")

library(sp)
data(meuse)
meuse

View(meuse)
head(meuse)
summary(meuse)
#  Excercise: plot zins (y) against cadium (x)
# error
plot(cadmium, zinc)

# $

plot(meuse$cadmium, meuse$zinc)


attach(meuse)
plot(cadmium, zinc)


plot(cadmium, lead)

# how to impress your supervisior
# trivial
pairs(meuse)

