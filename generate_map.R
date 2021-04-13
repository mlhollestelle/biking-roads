library(strafica)
library(sp)
library(leaflet)
library(htmlwidgets)

roads = read.gpkg("data/processed/digiroad_simple.gpkg")
roads = sp.to.lines(roads)



lines = SpatialLines(roads$lines)

# widget = 
  
leaflet() %>% addProviderTiles("CartoDB.Positron") %>%
  addPolylines(data=lines, weight = 3, opacity = 1, color = "#420d91")

saveWidget(widget, file="index.html")




leaflet() %>% addProviderTiles("CartoDB.DarkMatter") %>%
  addPolylines(data=lines, weight = 3, opacity = 0.4, color = "#ffff00")
