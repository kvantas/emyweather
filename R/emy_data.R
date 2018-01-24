#' Climatic data from the Greek National Meteorological Service
#'
#' The climatic data are taken from the Greek National Meteorological Service
#' and come from 21 weather stations, with a time step of 3 hours. The time
#' period is from 1975 to 2004. These time series were not checked for
#' consistency or errors.
#'
#' @format A data frame with 1679308 rows and 13 variables:
#' \describe{
#'   \item{date}{the observation's date}
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
