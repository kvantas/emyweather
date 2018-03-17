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
#' @section Borders of Greece:
#'
#' The variables are created using the function \code{tidy} from the
#' \code{broom} package for use with the \code{ggplot2} package.
#'
#' @section Data Sources:
#'
#' The data are retrieved from:
#' \itemize{
#'  \item \href{http://www.emy.gr}{Greek National Meteorological Service}
#'  \item \href{http://www.hydroscope.gr/}{Hydroscope}
#'  \item \href{http://geodata.gov.gr/}{GEODATA.gov.gr}
#' }
#' @name emyweather
#' @aliases emyweather-package
#' @docType package
"_PACKAGE"
