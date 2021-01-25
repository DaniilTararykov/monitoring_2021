# nc data: the format of our copernicus data is  nc, so we need we need to instal some packages

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

# I downloaded 4 data files of Land Surface Temperature for 2018, 2019, 2020, and 2021 and renamed them to make it easier to work with them

# importing images of Land Surface Temperatura of 2018
tjan18 <- raster("jan18.nc")

#the function plot( ) is the most generic and used function for plotting dataset
#to change the title we use the function "main":
plot(tjan18, main="Land Surface Temperature 2018") 

#col is used to change the colour
#we set the colours with the vector cl and make the final plot with those colors
cl <- colorRampPalette(c('blue','yellow','red'))(100) #
plot(tjan18, col=cl,  main="Land Surface Temperature 2018")

# importing images of Land Surface Temperatura of 2019
tjan19 <- raster("jan19.nc")
plot(tjan19, col=cl, main="Land Surface Temperature 2019")

# importing images of Land Surface Temperatura of 2020
tjan20 <- raster("jan20.nc")
plot(tjan20,  col=cl8, main="Land Surface Temperature 2020")

# importing images of Land Surface Temperatura of 2021
tjan21 <- raster("jan21.nc")
plot(tjan21,  col=cl, main="Land Surface Temperature 2021")

#par function is used to put multiple graphs in a single plot
#mfrow stays for multiframe rows
par(mfrow=c(2,2))
#2,2 means that we will have 4 plots in total divided in 2 rows and 2 columns.
plot(tjan18, col=cl, main="Land Surface Temperature 2018")
plot(tjan19, col=cl, main="Land Surface Temperature 2019")
plot(tjan20, col=cl, main="Land Surface Temperature 2020")
plot(tjan21, col=cl, main="Land Surface Temperature 2021")

dev.off()
 
#Lets see difference between Land Surface Temperarure of 2018 and 2021      
#diff() function in R Language is used to find the difference between each consecutive pair of elements of a vector
diff <- tjan18  - tjan21
cldif <- colorRampPalette(c('blue','white','red'))(100) # 
plot(diff, col=cldif)

dev.off()

#Let crop map to italy data for 2018
tjan_crop18 <- raster("jan18.nc")
#using coordinates
ext <- c(0, 20, 35, 50)
zoom(tjan_crop18, ext=ext)
cl <- colorRampPalette(c('blue','yellow','red'))(100) #
tjan_crop18 <- crop(tjan_crop18, ext)
plot(tjan_crop18, col=cl,  main="Land Surface Temperature Italy 2018")

#Let crop map to italy data for 2019
tjan_crop19 <- raster("jan19.nc")
ext <- c(0, 20, 35, 50)
zoom(tjan_crop19, ext=ext)
cl <- colorRampPalette(c('blue','yellow','red'))(100) #
tjan_crop19 <- crop(tjan_crop19, ext)
plot(tjan_crop19, col=cl,  main="Land Surface Temperature Italy 2019")

#Let crop map to italy data for 2020
tjan_crop20 <- raster("jan20.nc")
ext <- c(0, 20, 35, 50)
zoom(tjan_crop20, ext=ext)
cl <- colorRampPalette(c('blue','yellow','red'))(100) #
tjan_crop20 <- crop(tjan_crop20, ext)
plot(tjan_crop19, col=cl,  main="Land Surface Temperature Italy 2020")

#Let crop map to italy data for 2021
tjan_crop21 <- raster("jan21.nc")
ext <- c(0, 20, 35, 50)
zoom(tjan_crop21, ext=ext)
cl <- colorRampPalette(c('blue','yellow','red'))(100) #
tjan_crop21 <- crop(tjan_crop21, ext)
plot(tjan_crop21, col=cl,  main="Land Surface Temperature Italy 2021")

# Now we can make multiple graph in a single plot
par(mfrow=c(2,2))

plot(tjan_crop18, col=cl, main="Italy 2018")
plot(tjan_crop19, col=cl, main="Italy 2019")
plot(tjan_crop20, col=cl, main="Italy 2020")
plot(tjan_crop21, col=cl, main="Italy 2021")


#Lets see difference between Land Surface Temperarure of 2018 and 2021 in Italy      
diff <- tjan_crop18  - tjan_crop21
cldif <- colorRampPalette(c('blue','white','red'))(100) # 
plot(diff, col=cldif)


 #
