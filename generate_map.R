library(strafica)
library(sp)
library(leaflet)
library(htmlwidgets)

roads = read.gpkg("data/processed/digiroad_simple.gpkg")
lines = SpatialLines(roads@lines)

widget = leaflet() %>% addProviderTiles("CartoDB.Positron") %>%
  addPolylines(data=lines, weight = 3, opacity = 1, color = "#420d91")

saveWidget(widget, file="index.html")
