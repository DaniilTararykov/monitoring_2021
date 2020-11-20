# point patern analysis

install.packages("spatstat")
library(spatstat)


######### IMPORT DATA FROM AN EXTERNAL SOURCE
 
# setwd("path/lab")
 
# setwd for Windows
# setwd("C:/lab/")
 
# setwd Mac
# setwd("/Users/yourname/lab/")
 
# Linux
setwd("~/lab/")
covid <- read.table("covid_agg.csv", header=TRUE)
covid

# density of the covid data
# planar point pattern 
attach (covid)
#x,y
covid_planar <- ppp(lon, lat, c(-180,180), c(-90,90))

density_map <- density(covid_planar)

plot(density_map)


cl <- colorRampPalette(c('yellow','orange','red'))(100) #
plot(density_map, col = cl)


#excersice 1
cl <- colorRampPalette(c('blue','lightblue1', 'aquamarine', 'dodgerblue3','orange','red'))(100) #
plot(density_map, col = cl)

#putting countries on a map

install.packages("rgdal")
