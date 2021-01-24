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

# importing images of Land Surface Temperatura of 2018
tjan18 <- raster("jan18.nc")

#the function plot( ) is the most generic and used function for plotting dataset
#to change the title we use the function "main":
plot(tjan18, main="Land Surface Temperature 2018") 

#col is used to change the colour
cltjan18 <- colorRampPalette(c('blue','yellow','red'))(100) #
plot(tjan18, col=cltjan18,  main="Land Surface Temperature 2018")

# importing images of Land Surface Temperatura of 2019
tjan19 <- raster("jan19.nc")
plot(tjan19, col=cltjan18, main="Land Surface Temperature 2019")


# importing images of Land Surface Temperatura of 2020

tjan20 <- raster("jan20.nc")
plot(tjan20,  col=cltjan18, main="Land Surface Temperature 2020")

# importing images of Land Surface Temperatura of 2021
tjan21 <- raster("jan21.nc")
plot(tjan21,  col=cltjan18, main="Land Surface Temperature 2021")

#par function is used to put multiple graphs in a single plot
#mfrow stays for multiframe rows
par(mfrow=c(2,2))
#2,2 means that we will have 4 plots in total divided in 2 rows and 2 columns.
plot(tjan18, col=cl, main="Land Surface Temperature 2018")
plot(tjan19, col=cl, main="Land Surface Temperature 2019")
plot(tjan20, col=cl, main="Land Surface Temperature 2020")
plot(tjan21, col=cl, main="Land Surface Temperature 2021")

 
     

# как посчитать различие между температурами и сделать цвета

dift <- tjan18 - tjan19 - tjan20 - tjan21

cldif <- colorRampPalette(c('blue','white','red'))(100) # 

plot(dift, col=cldif)



#выбрать определнную часть на карте

ext <- c(0,20,35,55)  # xmin xmax ymin ymax

copNDVI_Italy <- crop(copNDVI, ext)

plot(copNDVI_Italy, col=clymax)


__________


av::av_encode_video(input = "2018.png", "2019.png", "2020.png", "2021.png", output = "video.mp4", framerate = 24,
  vfilter = "null", codec = NULL, audio = NULL, verbose = TRUE)



# Create some PNG images
png("Land Surface Temperature 2018-1.png", "Land Surface Temperature 2019-1.png", "Land Surface Temperature 2020-1.png", "Land Surface Temperature 2021-1.png", width = 1280, height = 720, res = 108)
for(i in 1:10){
  print(ggplot2::qplot(rnorm(100)))
}
dev.off()
lab <- sprintf("Land Surface Temperature 2018-1.png", "Land Surface Temperature 2019-1.png", "Land Surface Temperature 2020-1.png", "Land Surface Temperature 2021-1.png", 1:10)
av::av_encode_video(png_files, 'output.mp4', framerate = 1)
utils::browseURL('output.mp4')

png("tjan18.png", width = 1280, height = 720, res = 108)
for(i in 1:10){
  print(ggplot2::qplot(rnorm(100)))
}


______________
png(file="/Users/hausofdanik/Documents/lab/png_files/plot_2.png", width=600, height=350)
plot(tjan18, col=cl, main="Land Surface Temperature 2019")
dev.off()

setwd("/Users/hausofdanik/Documents/lab/png_files")

install.packages("av")
png_files <- sprintf( ("input%03d.png", 1:10) 1:10)
av::av_encode_video(png_files, 'output.mp4', framerate = 1)
utils::browseURL('output.mp4')


av::av_encode_video(list.files(/Users/hausofdanik/Documents/lab/png_files, '1.png', '2.png'), framerate = 30, output = 'test.mp4')

png_files <- sprintf( "one.png", "two.png", "three.png", "four.png", 1:10)
av::av_encode_video(png_files, output = "video.mp4", framerate = 1,
  vfilter = "null", codec = NULL, audio = NULL, verbose = TRUE)
____________-

av::av_encode_video(png_files, "one.png", "two.png", "three.png", "four.png", framerate = 24, vfilter = "null", codec = NULL, audio = NULL, verbose = TRUE)

png("input%03d.png", width = 1280, height = 720, res = 108)
for(i in 1:10){
  print(ggplot2::qplot(rnorm(100)))
}


png(file="C:/Datamentor/R-tutorial/saving_plot2.png",
width=600, height=350)
hist(Temperature, col="gold")
dev.off()


png(file="/Users/hausofdanik/Documents/lab/png_files/plot_2.png", width=600, height=350)
plot(tjan18, col=cl, main="Land Surface Temperature 2019")
dev.off()
