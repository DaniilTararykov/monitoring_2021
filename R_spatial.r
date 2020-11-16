# R spatial

install.packages("sp")
library(sp)

data(meuse)

head(meuse)

coordinates(meuse) = ~x+y
plot(meuse)

# splot is used to plot elements like zinc, lead etc.
spplot(meuse, "zinc", main="Concentration of zinc")

# excercise 1
spplot(meuse, "copper", main="Concentration of copper")

# excercise 2 
spplot(meuse, c("copper", "zinc"))

bubble(meuse, "zinc")

# excercise 3
bubble(meuse, "lead")
bubble(meuse, "lead", col="blue")



# installing the ggplot2 library 

