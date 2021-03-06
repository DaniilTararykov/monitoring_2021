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
install.packages("ggplot2")
library(ggplot2)
# ecological data frame 
# biofuels
biofuels c<- 120, 200, 350, 570, 750 #array of values: c
# oxydative enzimes 
oxydative <- c(1200, 1300, 21000, 34000, 50000)
d <- data.frame(biofuels, oxydative)
d
ggplot(d, aes(x=biofuels, y=oxydative)) + geom_point()

ggplot(d, aes(x=biofuels, y=oxydative)) + geom_point(size=5, color="red")
ggplot(d, aes(x=biofuels, y=oxydative)) + geom_point(size=5, color="red")+ geom_line()
ggplot(d, aes(x=biofuels, y=oxydative)) + geom_polygon()

# import data
# setwd ("path/lab")
setwd ("/Users/hausofdanik/lab/")


setwd("/Users/hausofdanik/Documents/lab")


covid <- read.table("covid_agg.csv", header=TRUE)
head(covid)
summary (covid)
#ggplot2
library(ggplot2)
ggplot(covid, aes(x=lon, y=lat)) + geom_point()


#canging the sze

ggplot(covid, aes(x=lon, y=lat, size = cases)) + geom_point()


# countries on a map

install.packages("rgdal")

library(rgdal)


coastlines <- readOGR("ne_10m_coastline.shp")

plot(density_map, col = cl)
points(covid_planar)
plot(coastlines, add=TRUE)
