#' Climatic data from the Greek National Meteorological Service
#'
#' The climatic data are taken from the Greek National Meteorological Service
#' and come from 21 weather stations, with a time step of 3 hours. The time
#' period is from 1975 to 2004. These time series were not checked for
#' consistency or errors.
#'
#' @format A tibble with 1679308 rows and 13 variables:
#' \describe{
#'   \item{date}{The observation's date}
#'   \item{station_id}{Greek National Meteorological Service station ID}
#'   \item{pressure}{Pressure, in hPa}
#'   \item{dry_temp}{Dry temperature, in degree Celsius}
#'   \item{wet_temp}{Wet temperature, in degree Celsius}
#'   \item{max_temp}{Maximum temperature, in degree Celsius}
#'   \item{min_temp}{Minimum temperature, in degree Celsius}
#'   \item{rel_humidity}{Relative humidity, in percent}
#'   \item{wind_direction}{Wind direction, in degrees}
#'   \item{wind_force_knot}{Wind force, in knots}
#'   \item{visibility}{Visibility, in km}
#'   \item{total_cloud_amount}{Total cloud amount, in values 0 to 9}
#'   \item{precipitation}{Precipitation height, in mm}
#' }
#' @source \url{http://www.emy.gr/}
"emy_data"

#' Greek National Meteorological Service Stations
#'
#' The stations' data are taken from the Greek National Data Bank for
#' Hydrological and Meteorological Information, Hydroscope. The variables are:
#' stations' id, coordinates, altitude and water division.
#'
#' @format A tibble with 21 rows and 7 variables:
#' \describe{
#'   \item{name}{The station's name}
#'   \item{station_id}{Greek National Meteorological Service station ID}
#'   \item{hydroscope_id}{The station's ID from kyy.hydroscope.gr database}
#'   \item{water_division}{The station's Water Division}
#'   \item{longitude}{The station's longitude in decimal degrees, ETRS89}
#'   \item{latitude}{The station's latitude in decimal degrees, ETRS89}
#'   \item{altitude}{The station's altitude, meters above sea level}
#' }
#' @source \url{http://www.hydroscope.gr/}
"emy_stations"


#' Greek borders
#'
#' The borders of Greece are taken from geodata.gov.gr.  The variables are
#' created using the function tidy from the broom package. This data frame
#' was created for use with the geom_polygon from ggplot2 package.
#'
#' @format A tibble with 18474 rows and 8 variables:
#' \describe{
#'   \item{long}{Longitude in decimal degrees, ETRS89}
#'   \item{lat}{Latitude in decimal degrees, ETRS89}
#'   \item{order}{order, integer}
#'   \item{hole}{hole, boolean}
#'   \item{piece}{piece, integer}
#'   \item{group}{group, numeric}
#' }
#' @source \url{http://geodata.gov.gr/}
"borders"
