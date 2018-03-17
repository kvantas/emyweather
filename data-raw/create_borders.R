# load packages
library(ggplot2)
library(broom)
library(rgdal)
library(ggmap)

#load greece polygon
borders <- readOGR(dsn = "./data-raw/greece_shp", layer = "greece")
proj4string(borders) = CRS("+init=epsg:2100")

#convert to ETRS89
etrs89 <- CRS("+init=epsg:4258")
borders <- spTransform(borders, etrs89)

# convert shp file to dataframe
borders <- broom::tidy(borders)

# remove id variable (no values in there)
borders$id <- NULL

map <-
  get_map(
    location = c(lon = mean(borders$lon), mean(borders$lat)),
    color = 'bw',
    zoom = 6,
    maptype = "watercolor",
    language = 'greek'
  )
p <- ggmap(map)


# plot data
p+
  geom_polygon( data = borders,
    aes(x = long, y = lat, group = group),
    color = "black",
    size = 0.5,
    alpha = 0.1,
    fill = NA
  ) +
  geom_point(
    data = emy_stations,
    aes(x = longitude, y = latitude),
    color = "black",
    fill = "red",
    shape = 21,
    size = 3
  ) + theme_bw()+
  xlim(min(borders$lon), max(borders$lon)) +
  ylim(min(borders$lat), max(borders$lat))+
  labs(x = "Longitude", y = "Latitude")

# save data
borders <- tibble::as.tibble(borders)
devtools::use_data(borders, overwrite = TRUE)
