# nc data: the format of our copernicus datф is  nc, so we need we need to instal some packages

# ncdf4 is package which provides to data files written using Unidata's netCDF library
# the function install.packages is used to install something from outside (present in the CRAN) with the use of " "
install.packages("ncdf4")

#sp is a package for spatial data
install.packages("sp")

#library is to start using the data present in the package
library(ncdf4)
library(raster)

#setting the working directory (where data is coming from and going to)
#for my mac is setwd("/Users/yourname/lab")

setwd("/Users/hausofdanik/Documents/lab")

tjan <- raster("c_gls_LST10-DC_202001010000_GLOBE_GEO_V1.2.1.nc")

plot(tjan)

#выбрать определнную часть на карте

ext <- c(0,20,35,55)  # xmin xmax ymin ymax

copNDVI_Italy <- crop(copNDVI, ext)

plot(copNDVI_Italy, col=clymax)
