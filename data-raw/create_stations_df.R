emy_stations <- read.csv("./data-raw/stations.csv", stringsAsFactors = FALSE)
emy_stations <- tibble::as.tibble(emy_stations)
devtools::use_data(emy_stations, overwrite = TRUE)
