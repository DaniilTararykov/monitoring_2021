install.packages("rasterdiv")

library(rasterdiv)
library(raster)

data(copNDVI)

plot(copNDVI)

copNDVI <- reclassify(copNDVI, cbind(253:255, NA))
plot(copNDVI)

install.packages("rasterVis")
library(rasterVis)

levelplot(copNDVI)

plot(copNDVI)
clymin <- colorRampPalette(c('yellow','red','blue'))(100) #
plot(copNDVI, col=clymin)


clymed <- colorRampPalette(c('red','yellow','blue'))(100) # 
plot(copNDVI, col=clymed)

clymax <- colorRampPalette(c('red','blue','yellow'))(100) #
plot(copNDVI, col=clymax)

clymax <- colorRampPalette(c('blue','red','yellow'))(100) #
plot(copNDVI, col=clymax)

#пар помогает сделать коллаж 
par(mfrow=c(1,2))
clymed <- colorRampPalette(c('red','yellow','blue'))(100) #
plot(copNDVI, col=clymed)
clymax <- colorRampPalette(c('blue','red','yellow'))(100) #
plot(copNDVI, col=clymax)


#выбрать определнную часть на карте

ext <- c(0,20,35,55)  # xmin xmax ymin ymax

copNDVI_Italy <- crop(copNDVI, ext)

plot(copNDVI_Italy, col=clymax)

# deforesation examples

library(raster)
library(RStoolbox)

setwd("/Users/hausofdanik/Documents/lab")

# притягиваем файл

defor1 <- brick("defor1_.png")  #defor1_.png if errors come out: defor1_.png.jpg

plotRGB(defor1, 1, 2, 3, stretch="Lin")


#второй файл
defor2 <- brick("defor2_.png")

plotRGB(defor2, r=1, g=2, b=3, stretch="Lin")

# соединяем файлы
par(mfrow=c(2,1))
plotRGB(defor1, r=1, g=2, b=3, stretch="Lin")
plotRGB(defor2, r=1, g=2, b=3, stretch="Lin")


# dvi for the first period
dvi1 <- defor1$defor1_.1 - defor1$defor1_.2
 
dev.off()
plot(dvi1)

cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100) # specifying a color scheme
plot(dvi1, col=cl)

dvi2 <- defor2$defor2_.1 - defor2$defor2_.2
cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100) # specifying a color scheme
plot(dvi2, col=cl)

# сравнить две
par(mfrow=c(2,1))
plot(dvi1, col=cl)
plot(dvi2, col=cl)

# добавить надпись

par(mfrow=c(2,1))
plot(dvi1, col=cl, main="DVI before cut")
plot(dvi2, col=cl, main="DVI after cut")


# difference biomass before cut and after cut
difdvi <- dvi1 -dvi2
dev.off()
plot(difdvi)

cldif <- colorRampPalette(c('blue','white','red'))(100) 
plot(difdvi, col=cldif)


cldif <- colorRampPalette(c('blue','white','red'))(100) 
plot(difdvi, col=cldif, main="amount of energy lost!")

hist(difdvi, col="red")

# колаж всего

par(mfrow=c(3,2))
plotRGB(defor1, r=1, g=2, b=3, stretch="Lin")
plotRGB(defor2, r=1, g=2, b=3, stretch="Lin")
plot(dvi1, col=cl, main="biomass before cut")
plot(dvi2, col=cl, main="biomass after cut")
plot(difdvi, col=cldif, main="amount of energy lost!")

hist(difdvi,col="red")
