# r code for the exam
# nc data: we need library

install.packages("ncdf4")

library(ncdf4)
library(raster)
setwd("/Users/hausofdanik/Documents/lab")

# загрузить первый файл даты
tjan <- raster("c_gls_LST10-DC_202101010000_GLOBE_GEO_V1.2.1.nc")
plot(tjan)

# изменить цвет 
 cltjan <- colorRampPalette(c('green','red','yellow'))(100) #
 # ДАНЯ ТЫ ГЕНИЙ, берешь нзвание плота это будет первым в скобках, потом берешь кол и приравниваешь к названи. колорампаллет
plot(tjan, col=cltjan)

#  второй цвет
cltjan <- colorRampPalette(c('blue','yellow','red'))(100) #
plot(tjan, col=cltjan)

# загрузить второй файл даты 


toct <- raster("c_gls_LST10-DC_202010010000_GLOBE_GEO_V1.2.1.nc")
plot(toct, col=cltjan)


# как посчитать различие между температурами и сделать цвета

dift <- tjan - toct

cldif <- colorRampPalette(c('blue','white','red'))(100) # 

plot(dift, col=cldif)
