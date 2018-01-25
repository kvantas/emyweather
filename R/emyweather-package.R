#' emyweather: Open data from the Greek National Meteorological Service
#'
#' This package contains climatic data from the Greek National
#' Meteorological Service, as well as a number of useful other related data
#' sets.
#'
#' @section Climatic Data:
#'
#' The climatic data are taken from the Greek National Meteorological Service
#' and come from 21 weather stations, with a time step of 3 hours. The time
#' period is from 1975 to 2004. The variables are: air pressure, temperature
#' (dry, wet, max and min), relative humidity, wind (direction and speed),
#' visibility, total cloud amount and precipitation. These time series were not
#' checked for consistency or errors.
#'
#' @section Stations:
#'
#' The stations' data are taken from the Greek National Data Bank for
#' Hydrological and Meteorological Information, Hydroscope. The variables are:
#' stations' id, coordinates, altitude and water division.
#'
#' @section Data Sources:
#'
#' The data are retrieved from:
#'  \url{http://www.meteo.gr/}
#'  \url{http://www.hydroscope.gr/}
#'
#' @name emyweather
#' @aliases emyweather-package
#' @docType package
"_PACKAGE"
